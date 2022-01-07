; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_bbt.c_create_bbt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_bbt.c_create_bbt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32, i32 }
%struct.nand_bbt_descr = type { i32 }
%struct.mtd_info = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"Scanning device for bad blocks\0A\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"create_bbt(): chipnr (%d) > available chips (%d)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@NAND_BBT_NO_OOB = common dso_local global i32 0, align 4
@BBT_BLOCK_FACTORY_BAD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"Bad eraseblock %d at 0x%012llx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*, i32*, %struct.nand_bbt_descr*, i32)* @create_bbt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_bbt(%struct.nand_chip* %0, i32* %1, %struct.nand_bbt_descr* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nand_chip*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.nand_bbt_descr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.mtd_info*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.nand_bbt_descr* %2, %struct.nand_bbt_descr** %8, align 8
  store i32 %3, i32* %9, align 4
  %17 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %18 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %17, i32 0, i32 1
  %19 = call i32 @nanddev_target_size(i32* %18)
  store i32 %19, i32* %10, align 4
  %20 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %21 = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %20)
  store %struct.mtd_info* %21, %struct.mtd_info** %11, align 8
  %22 = call i32 @pr_info(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* %9, align 4
  %24 = icmp eq i32 %23, -1
  br i1 %24, label %25, label %33

25:                                               ; preds = %4
  %26 = load %struct.mtd_info*, %struct.mtd_info** %11, align 8
  %27 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %30 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = ashr i32 %28, %31
  store i32 %32, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %66

33:                                               ; preds = %4
  %34 = load i32, i32* %9, align 4
  %35 = sext i32 %34 to i64
  %36 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %37 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %36, i32 0, i32 1
  %38 = call i64 @nanddev_ntargets(i32* %37)
  %39 = icmp uge i64 %35, %38
  br i1 %39, label %40, label %49

40:                                               ; preds = %33
  %41 = load i32, i32* %9, align 4
  %42 = add nsw i32 %41, 1
  %43 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %44 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %43, i32 0, i32 1
  %45 = call i64 @nanddev_ntargets(i32* %44)
  %46 = call i32 @pr_warn(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %42, i64 %45)
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %5, align 4
  br label %116

49:                                               ; preds = %33
  %50 = load i32, i32* %10, align 4
  %51 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %52 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = ashr i32 %50, %53
  store i32 %54, i32* %13, align 4
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* %13, align 4
  %57 = mul nsw i32 %55, %56
  store i32 %57, i32* %14, align 4
  %58 = load i32, i32* %14, align 4
  %59 = load i32, i32* %13, align 4
  %60 = add nsw i32 %59, %58
  store i32 %60, i32* %13, align 4
  %61 = load i32, i32* %14, align 4
  %62 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %63 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = shl i32 %61, %64
  store i32 %65, i32* %15, align 4
  br label %66

66:                                               ; preds = %49, %25
  %67 = load i32, i32* %14, align 4
  store i32 %67, i32* %12, align 4
  br label %68

68:                                               ; preds = %112, %66
  %69 = load i32, i32* %12, align 4
  %70 = load i32, i32* %13, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %115

72:                                               ; preds = %68
  %73 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %8, align 8
  %74 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @NAND_BBT_NO_OOB, align 4
  %77 = and i32 %75, %76
  %78 = call i32 @BUG_ON(i32 %77)
  %79 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %80 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %8, align 8
  %81 = load i32, i32* %15, align 4
  %82 = load i32*, i32** %7, align 8
  %83 = call i32 @scan_block_fast(%struct.nand_chip* %79, %struct.nand_bbt_descr* %80, i32 %81, i32* %82)
  store i32 %83, i32* %16, align 4
  %84 = load i32, i32* %16, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %72
  %87 = load i32, i32* %16, align 4
  store i32 %87, i32* %5, align 4
  br label %116

88:                                               ; preds = %72
  %89 = load i32, i32* %16, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %105

91:                                               ; preds = %88
  %92 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %93 = load i32, i32* %12, align 4
  %94 = load i32, i32* @BBT_BLOCK_FACTORY_BAD, align 4
  %95 = call i32 @bbt_mark_entry(%struct.nand_chip* %92, i32 %93, i32 %94)
  %96 = load i32, i32* %12, align 4
  %97 = load i32, i32* %15, align 4
  %98 = sext i32 %97 to i64
  %99 = call i32 @pr_warn(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %96, i64 %98)
  %100 = load %struct.mtd_info*, %struct.mtd_info** %11, align 8
  %101 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %102, align 4
  br label %105

105:                                              ; preds = %91, %88
  %106 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %107 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = shl i32 1, %108
  %110 = load i32, i32* %15, align 4
  %111 = add nsw i32 %110, %109
  store i32 %111, i32* %15, align 4
  br label %112

112:                                              ; preds = %105
  %113 = load i32, i32* %12, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %12, align 4
  br label %68

115:                                              ; preds = %68
  store i32 0, i32* %5, align 4
  br label %116

116:                                              ; preds = %115, %86, %40
  %117 = load i32, i32* %5, align 4
  ret i32 %117
}

declare dso_local i32 @nanddev_target_size(i32*) #1

declare dso_local %struct.mtd_info* @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i64 @nanddev_ntargets(i32*) #1

declare dso_local i32 @pr_warn(i8*, i32, i64) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @scan_block_fast(%struct.nand_chip*, %struct.nand_bbt_descr*, i32, i32*) #1

declare dso_local i32 @bbt_mark_entry(%struct.nand_chip*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
