; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-reg.c_fimc_hw_camblk_cfg_writeback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-reg.c_fimc_hw_camblk_cfg_writeback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fimc_dev = type { i32, %struct.regmap* }
%struct.regmap = type { i32 }

@SYSREG_CAMBLK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"not supported id: %d\0A\00", align 1
@SYSREG_CAMBLK_FIFORST_ISP = common dso_local global i32 0, align 4
@SYSREG_CAMBLK_ISPWB_FULL_EN = common dso_local global i32 0, align 4
@SYSREG_ISPBLK_FIFORST_CAM_BLK = common dso_local global i32 0, align 4
@SYSREG_ISPBLK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fimc_hw_camblk_cfg_writeback(%struct.fimc_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fimc_dev*, align 8
  %4 = alloca %struct.regmap*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.fimc_dev* %0, %struct.fimc_dev** %3, align 8
  %9 = load %struct.fimc_dev*, %struct.fimc_dev** %3, align 8
  %10 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %9, i32 0, i32 1
  %11 = load %struct.regmap*, %struct.regmap** %10, align 8
  store %struct.regmap* %11, %struct.regmap** %4, align 8
  %12 = load %struct.regmap*, %struct.regmap** %4, align 8
  %13 = icmp eq %struct.regmap* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %92

15:                                               ; preds = %1
  %16 = load %struct.regmap*, %struct.regmap** %4, align 8
  %17 = load i32, i32* @SYSREG_CAMBLK, align 4
  %18 = call i32 @regmap_read(%struct.regmap* %16, i32 %17, i32* %7)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %15
  %22 = load i32, i32* %7, align 4
  %23 = and i32 %22, 7340032
  %24 = lshr i32 %23, 20
  %25 = icmp ne i32 %24, 3
  br i1 %25, label %26, label %28

26:                                               ; preds = %21, %15
  %27 = load i32, i32* %8, align 4
  store i32 %27, i32* %2, align 4
  br label %92

28:                                               ; preds = %21
  %29 = load %struct.fimc_dev*, %struct.fimc_dev** %3, align 8
  %30 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp sge i32 %31, 3
  %33 = zext i1 %32 to i32
  %34 = load %struct.fimc_dev*, %struct.fimc_dev** %3, align 8
  %35 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @WARN(i32 %33, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %28
  %40 = load %struct.fimc_dev*, %struct.fimc_dev** %3, align 8
  %41 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = add nsw i32 %42, 20
  %44 = shl i32 1, %43
  store i32 %44, i32* %6, align 4
  br label %46

45:                                               ; preds = %28
  store i32 0, i32* %6, align 4
  br label %46

46:                                               ; preds = %45, %39
  %47 = load i32, i32* @SYSREG_CAMBLK_FIFORST_ISP, align 4
  %48 = load i32, i32* @SYSREG_CAMBLK_ISPWB_FULL_EN, align 4
  %49 = or i32 %47, %48
  store i32 %49, i32* %5, align 4
  %50 = load %struct.regmap*, %struct.regmap** %4, align 8
  %51 = load i32, i32* @SYSREG_CAMBLK, align 4
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @regmap_update_bits(%struct.regmap* %50, i32 %51, i32 %52, i32 %53)
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %46
  %58 = load i32, i32* %8, align 4
  store i32 %58, i32* %2, align 4
  br label %92

59:                                               ; preds = %46
  %60 = call i32 @usleep_range(i32 1000, i32 2000)
  %61 = load i32, i32* @SYSREG_CAMBLK_FIFORST_ISP, align 4
  %62 = load i32, i32* %6, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %6, align 4
  %64 = load %struct.regmap*, %struct.regmap** %4, align 8
  %65 = load i32, i32* @SYSREG_CAMBLK, align 4
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @regmap_update_bits(%struct.regmap* %64, i32 %65, i32 %66, i32 %67)
  store i32 %68, i32* %8, align 4
  %69 = load i32, i32* %8, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %59
  %72 = load i32, i32* %8, align 4
  store i32 %72, i32* %2, align 4
  br label %92

73:                                               ; preds = %59
  %74 = load i32, i32* @SYSREG_ISPBLK_FIFORST_CAM_BLK, align 4
  store i32 %74, i32* %5, align 4
  %75 = load %struct.regmap*, %struct.regmap** %4, align 8
  %76 = load i32, i32* @SYSREG_ISPBLK, align 4
  %77 = load i32, i32* %5, align 4
  %78 = load i32, i32* %5, align 4
  %79 = xor i32 %78, -1
  %80 = call i32 @regmap_update_bits(%struct.regmap* %75, i32 %76, i32 %77, i32 %79)
  store i32 %80, i32* %8, align 4
  %81 = load i32, i32* %8, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %73
  %84 = load i32, i32* %8, align 4
  store i32 %84, i32* %2, align 4
  br label %92

85:                                               ; preds = %73
  %86 = call i32 @usleep_range(i32 1000, i32 2000)
  %87 = load %struct.regmap*, %struct.regmap** %4, align 8
  %88 = load i32, i32* @SYSREG_ISPBLK, align 4
  %89 = load i32, i32* %5, align 4
  %90 = load i32, i32* %5, align 4
  %91 = call i32 @regmap_update_bits(%struct.regmap* %87, i32 %88, i32 %89, i32 %90)
  store i32 %91, i32* %2, align 4
  br label %92

92:                                               ; preds = %85, %83, %71, %57, %26, %14
  %93 = load i32, i32* %2, align 4
  ret i32 %93
}

declare dso_local i32 @regmap_read(%struct.regmap*, i32, i32*) #1

declare dso_local i32 @WARN(i32, i8*, i32) #1

declare dso_local i32 @regmap_update_bits(%struct.regmap*, i32, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
