; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_bbt.c_nand_scan_bbt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_bbt.c_nand_scan_bbt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32, i32, i32*, %struct.nand_bbt_descr*, %struct.nand_bbt_descr* }
%struct.nand_bbt_descr = type { i32 }
%struct.mtd_info = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"nand_bbt: can't scan flash and build the RAM-based BBT\0A\00", align 1
@NAND_BBT_ABSPAGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*, %struct.nand_bbt_descr*)* @nand_scan_bbt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nand_scan_bbt(%struct.nand_chip* %0, %struct.nand_bbt_descr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nand_chip*, align 8
  %5 = alloca %struct.nand_bbt_descr*, align 8
  %6 = alloca %struct.mtd_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.nand_bbt_descr*, align 8
  %11 = alloca %struct.nand_bbt_descr*, align 8
  store %struct.nand_chip* %0, %struct.nand_chip** %4, align 8
  store %struct.nand_bbt_descr* %1, %struct.nand_bbt_descr** %5, align 8
  %12 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %13 = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %12)
  store %struct.mtd_info* %13, %struct.mtd_info** %6, align 8
  %14 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %15 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %14, i32 0, i32 4
  %16 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %15, align 8
  store %struct.nand_bbt_descr* %16, %struct.nand_bbt_descr** %10, align 8
  %17 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %18 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %17, i32 0, i32 3
  %19 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %18, align 8
  store %struct.nand_bbt_descr* %19, %struct.nand_bbt_descr** %11, align 8
  %20 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %21 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %24 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = add nsw i32 %25, 2
  %27 = ashr i32 %22, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %2
  br label %31

30:                                               ; preds = %2
  br label %31

31:                                               ; preds = %30, %29
  %32 = phi i32 [ %27, %29 ], [ 1, %30 ]
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = call i32* @kzalloc(i32 %33, i32 %34)
  %36 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %37 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %36, i32 0, i32 2
  store i32* %35, i32** %37, align 8
  %38 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %39 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %38, i32 0, i32 2
  %40 = load i32*, i32** %39, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %31
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %136

45:                                               ; preds = %31
  %46 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %10, align 8
  %47 = icmp ne %struct.nand_bbt_descr* %46, null
  br i1 %47, label %56, label %48

48:                                               ; preds = %45
  %49 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %50 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %5, align 8
  %51 = call i32 @nand_memory_bbt(%struct.nand_chip* %49, %struct.nand_bbt_descr* %50)
  store i32 %51, i32* %8, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %48
  %54 = call i32 @pr_err(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  br label %128

55:                                               ; preds = %48
  store i32 0, i32* %3, align 4
  br label %136

56:                                               ; preds = %45
  %57 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %58 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %10, align 8
  %59 = call i32 @verify_bbt_descr(%struct.nand_chip* %57, %struct.nand_bbt_descr* %58)
  %60 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %61 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %11, align 8
  %62 = call i32 @verify_bbt_descr(%struct.nand_chip* %60, %struct.nand_bbt_descr* %61)
  %63 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %64 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = shl i32 1, %65
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* %7, align 4
  %68 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %69 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = ashr i32 %67, %70
  %72 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %73 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = mul nsw i32 %71, %74
  %76 = load i32, i32* %7, align 4
  %77 = add nsw i32 %76, %75
  store i32 %77, i32* %7, align 4
  %78 = load i32, i32* %7, align 4
  %79 = call i32* @vmalloc(i32 %78)
  store i32* %79, i32** %9, align 8
  %80 = load i32*, i32** %9, align 8
  %81 = icmp ne i32* %80, null
  br i1 %81, label %85, label %82

82:                                               ; preds = %56
  %83 = load i32, i32* @ENOMEM, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %8, align 4
  br label %128

85:                                               ; preds = %56
  %86 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %10, align 8
  %87 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @NAND_BBT_ABSPAGE, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %85
  %93 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %94 = load i32*, i32** %9, align 8
  %95 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %10, align 8
  %96 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %11, align 8
  %97 = call i32 @read_abs_bbts(%struct.nand_chip* %93, i32* %94, %struct.nand_bbt_descr* %95, %struct.nand_bbt_descr* %96)
  br label %104

98:                                               ; preds = %85
  %99 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %100 = load i32*, i32** %9, align 8
  %101 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %10, align 8
  %102 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %11, align 8
  %103 = call i32 @search_read_bbts(%struct.nand_chip* %99, i32* %100, %struct.nand_bbt_descr* %101, %struct.nand_bbt_descr* %102)
  br label %104

104:                                              ; preds = %98, %92
  %105 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %106 = load i32*, i32** %9, align 8
  %107 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %5, align 8
  %108 = call i32 @check_create(%struct.nand_chip* %105, i32* %106, %struct.nand_bbt_descr* %107)
  store i32 %108, i32* %8, align 4
  %109 = load i32, i32* %8, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %104
  br label %125

112:                                              ; preds = %104
  %113 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %114 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %10, align 8
  %115 = call i32 @mark_bbt_region(%struct.nand_chip* %113, %struct.nand_bbt_descr* %114)
  %116 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %11, align 8
  %117 = icmp ne %struct.nand_bbt_descr* %116, null
  br i1 %117, label %118, label %122

118:                                              ; preds = %112
  %119 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %120 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %11, align 8
  %121 = call i32 @mark_bbt_region(%struct.nand_chip* %119, %struct.nand_bbt_descr* %120)
  br label %122

122:                                              ; preds = %118, %112
  %123 = load i32*, i32** %9, align 8
  %124 = call i32 @vfree(i32* %123)
  store i32 0, i32* %3, align 4
  br label %136

125:                                              ; preds = %111
  %126 = load i32*, i32** %9, align 8
  %127 = call i32 @vfree(i32* %126)
  br label %128

128:                                              ; preds = %125, %82, %53
  %129 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %130 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %129, i32 0, i32 2
  %131 = load i32*, i32** %130, align 8
  %132 = call i32 @kfree(i32* %131)
  %133 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %134 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %133, i32 0, i32 2
  store i32* null, i32** %134, align 8
  %135 = load i32, i32* %8, align 4
  store i32 %135, i32* %3, align 4
  br label %136

136:                                              ; preds = %128, %122, %55, %42
  %137 = load i32, i32* %3, align 4
  ret i32 %137
}

declare dso_local %struct.mtd_info* @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local i32* @kzalloc(i32, i32) #1

declare dso_local i32 @nand_memory_bbt(%struct.nand_chip*, %struct.nand_bbt_descr*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @verify_bbt_descr(%struct.nand_chip*, %struct.nand_bbt_descr*) #1

declare dso_local i32* @vmalloc(i32) #1

declare dso_local i32 @read_abs_bbts(%struct.nand_chip*, i32*, %struct.nand_bbt_descr*, %struct.nand_bbt_descr*) #1

declare dso_local i32 @search_read_bbts(%struct.nand_chip*, i32*, %struct.nand_bbt_descr*, %struct.nand_bbt_descr*) #1

declare dso_local i32 @check_create(%struct.nand_chip*, i32*, %struct.nand_bbt_descr*) #1

declare dso_local i32 @mark_bbt_region(%struct.nand_chip*, %struct.nand_bbt_descr*) #1

declare dso_local i32 @vfree(i32*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
