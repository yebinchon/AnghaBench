; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/extr_sm_ftl.c_sm_write_block.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/extr_sm_ftl.c_sm_write_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sm_ftl = type { i32, i64, i64 }
%struct.sm_oob = type { i32, i32, i32 }

@SM_OOB_SIZE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@SM_SECTOR_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [80 x i8] c"sector %d of block at LBA %d of zone %d couldn't be read, marking it as invalid\00", align 1
@SM_SMALL_PAGE = common dso_local global i32 0, align 4
@CONFIG_MTD_NAND_ECC_SW_HAMMING_SMC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sm_ftl*, i32*, i32, i32, i32, i64)* @sm_write_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sm_write_block(%struct.sm_ftl* %0, i32* %1, i32 %2, i32 %3, i32 %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.sm_ftl*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.sm_oob, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.sm_ftl* %0, %struct.sm_ftl** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i64 %5, i64* %13, align 8
  store i32 0, i32* %16, align 4
  %17 = load i32, i32* @SM_OOB_SIZE, align 4
  %18 = call i32 @memset(%struct.sm_oob* %14, i32 255, i32 %17)
  %19 = load i32, i32* %12, align 4
  %20 = call i32 @sm_write_lba(%struct.sm_oob* %14, i32 %19)
  br label %21

21:                                               ; preds = %104, %6
  %22 = load %struct.sm_ftl*, %struct.sm_ftl** %8, align 8
  %23 = getelementptr inbounds %struct.sm_ftl, %struct.sm_ftl* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load i32, i32* @EIO, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %7, align 4
  br label %117

29:                                               ; preds = %21
  store i32 0, i32* %15, align 4
  br label %30

30:                                               ; preds = %112, %29
  %31 = load i32, i32* %15, align 4
  %32 = load %struct.sm_ftl*, %struct.sm_ftl** %8, align 8
  %33 = getelementptr inbounds %struct.sm_ftl, %struct.sm_ftl* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp slt i32 %31, %34
  br i1 %35, label %36, label %116

36:                                               ; preds = %30
  %37 = getelementptr inbounds %struct.sm_oob, %struct.sm_oob* %14, i32 0, i32 0
  store i32 255, i32* %37, align 4
  %38 = load i32, i32* %15, align 4
  %39 = load i32, i32* @SM_SECTOR_SIZE, align 4
  %40 = sdiv i32 %38, %39
  %41 = call i64 @test_bit(i32 %40, i64* %13)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %36
  %44 = load i32, i32* %15, align 4
  %45 = load i32, i32* @SM_SECTOR_SIZE, align 4
  %46 = sdiv i32 %44, %45
  %47 = load i32, i32* %12, align 4
  %48 = load i32, i32* %10, align 4
  %49 = call i32 @sm_printk(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str, i64 0, i64 0), i32 %46, i32 %47, i32 %48)
  %50 = getelementptr inbounds %struct.sm_oob, %struct.sm_oob* %14, i32 0, i32 0
  store i32 0, i32* %50, align 4
  br label %51

51:                                               ; preds = %43, %36
  %52 = load %struct.sm_ftl*, %struct.sm_ftl** %8, align 8
  %53 = getelementptr inbounds %struct.sm_ftl, %struct.sm_ftl* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %80

56:                                               ; preds = %51
  %57 = load i32*, i32** %9, align 8
  %58 = load i32, i32* %15, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* @SM_SMALL_PAGE, align 4
  %62 = getelementptr inbounds %struct.sm_oob, %struct.sm_oob* %14, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @CONFIG_MTD_NAND_ECC_SW_HAMMING_SMC, align 4
  %65 = call i32 @IS_ENABLED(i32 %64)
  %66 = call i32 @__nand_calculate_ecc(i32* %60, i32 %61, i32 %63, i32 %65)
  %67 = load i32*, i32** %9, align 8
  %68 = load i32, i32* %15, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* @SM_SMALL_PAGE, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* @SM_SMALL_PAGE, align 4
  %75 = getelementptr inbounds %struct.sm_oob, %struct.sm_oob* %14, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @CONFIG_MTD_NAND_ECC_SW_HAMMING_SMC, align 4
  %78 = call i32 @IS_ENABLED(i32 %77)
  %79 = call i32 @__nand_calculate_ecc(i32* %73, i32 %74, i32 %76, i32 %78)
  br label %80

80:                                               ; preds = %56, %51
  %81 = load %struct.sm_ftl*, %struct.sm_ftl** %8, align 8
  %82 = load i32, i32* %10, align 4
  %83 = load i32, i32* %11, align 4
  %84 = load i32, i32* %15, align 4
  %85 = load i32*, i32** %9, align 8
  %86 = load i32, i32* %15, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = call i32 @sm_write_sector(%struct.sm_ftl* %81, i32 %82, i32 %83, i32 %84, i32* %88, %struct.sm_oob* %14)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %92, label %91

91:                                               ; preds = %80
  br label %112

92:                                               ; preds = %80
  %93 = load i32, i32* %16, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %105, label %95

95:                                               ; preds = %92
  %96 = load %struct.sm_ftl*, %struct.sm_ftl** %8, align 8
  %97 = load i32, i32* %10, align 4
  %98 = load i32, i32* %11, align 4
  %99 = call i64 @sm_erase_block(%struct.sm_ftl* %96, i32 %97, i32 %98, i32 0)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %95
  %102 = load i32, i32* @EIO, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %7, align 4
  br label %117

104:                                              ; preds = %95
  store i32 1, i32* %16, align 4
  br label %21

105:                                              ; preds = %92
  %106 = load %struct.sm_ftl*, %struct.sm_ftl** %8, align 8
  %107 = load i32, i32* %10, align 4
  %108 = load i32, i32* %11, align 4
  %109 = call i32 @sm_mark_block_bad(%struct.sm_ftl* %106, i32 %107, i32 %108)
  %110 = load i32, i32* @EIO, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %7, align 4
  br label %117

112:                                              ; preds = %91
  %113 = load i32, i32* @SM_SECTOR_SIZE, align 4
  %114 = load i32, i32* %15, align 4
  %115 = add nsw i32 %114, %113
  store i32 %115, i32* %15, align 4
  br label %30

116:                                              ; preds = %30
  store i32 0, i32* %7, align 4
  br label %117

117:                                              ; preds = %116, %105, %101, %26
  %118 = load i32, i32* %7, align 4
  ret i32 %118
}

declare dso_local i32 @memset(%struct.sm_oob*, i32, i32) #1

declare dso_local i32 @sm_write_lba(%struct.sm_oob*, i32) #1

declare dso_local i64 @test_bit(i32, i64*) #1

declare dso_local i32 @sm_printk(i8*, i32, i32, i32) #1

declare dso_local i32 @__nand_calculate_ecc(i32*, i32, i32, i32) #1

declare dso_local i32 @IS_ENABLED(i32) #1

declare dso_local i32 @sm_write_sector(%struct.sm_ftl*, i32, i32, i32, i32*, %struct.sm_oob*) #1

declare dso_local i64 @sm_erase_block(%struct.sm_ftl*, i32, i32, i32) #1

declare dso_local i32 @sm_mark_block_bad(%struct.sm_ftl*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
