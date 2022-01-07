; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-reg.c_fimc_hw_set_camera_polarity.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-reg.c_fimc_hw_set_camera_polarity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fimc_dev = type { i64 }
%struct.fimc_source_info = type { i32 }

@FIMC_REG_CIGCTRL = common dso_local global i64 0, align 8
@FIMC_REG_CIGCTRL_INVPOLPCLK = common dso_local global i32 0, align 4
@FIMC_REG_CIGCTRL_INVPOLVSYNC = common dso_local global i32 0, align 4
@FIMC_REG_CIGCTRL_INVPOLHREF = common dso_local global i32 0, align 4
@FIMC_REG_CIGCTRL_INVPOLHSYNC = common dso_local global i32 0, align 4
@FIMC_REG_CIGCTRL_INVPOLFIELD = common dso_local global i32 0, align 4
@V4L2_MBUS_PCLK_SAMPLE_FALLING = common dso_local global i32 0, align 4
@V4L2_MBUS_VSYNC_ACTIVE_LOW = common dso_local global i32 0, align 4
@V4L2_MBUS_HSYNC_ACTIVE_LOW = common dso_local global i32 0, align 4
@V4L2_MBUS_FIELD_EVEN_LOW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fimc_hw_set_camera_polarity(%struct.fimc_dev* %0, %struct.fimc_source_info* %1) #0 {
  %3 = alloca %struct.fimc_dev*, align 8
  %4 = alloca %struct.fimc_source_info*, align 8
  %5 = alloca i32, align 4
  store %struct.fimc_dev* %0, %struct.fimc_dev** %3, align 8
  store %struct.fimc_source_info* %1, %struct.fimc_source_info** %4, align 8
  %6 = load %struct.fimc_dev*, %struct.fimc_dev** %3, align 8
  %7 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @FIMC_REG_CIGCTRL, align 8
  %10 = add nsw i64 %8, %9
  %11 = call i32 @readl(i64 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* @FIMC_REG_CIGCTRL_INVPOLPCLK, align 4
  %13 = load i32, i32* @FIMC_REG_CIGCTRL_INVPOLVSYNC, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @FIMC_REG_CIGCTRL_INVPOLHREF, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @FIMC_REG_CIGCTRL_INVPOLHSYNC, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @FIMC_REG_CIGCTRL_INVPOLFIELD, align 4
  %20 = or i32 %18, %19
  %21 = xor i32 %20, -1
  %22 = load i32, i32* %5, align 4
  %23 = and i32 %22, %21
  store i32 %23, i32* %5, align 4
  %24 = load %struct.fimc_source_info*, %struct.fimc_source_info** %4, align 8
  %25 = getelementptr inbounds %struct.fimc_source_info, %struct.fimc_source_info* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @V4L2_MBUS_PCLK_SAMPLE_FALLING, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %2
  %31 = load i32, i32* @FIMC_REG_CIGCTRL_INVPOLPCLK, align 4
  %32 = load i32, i32* %5, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %5, align 4
  br label %34

34:                                               ; preds = %30, %2
  %35 = load %struct.fimc_source_info*, %struct.fimc_source_info** %4, align 8
  %36 = getelementptr inbounds %struct.fimc_source_info, %struct.fimc_source_info* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @V4L2_MBUS_VSYNC_ACTIVE_LOW, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %34
  %42 = load i32, i32* @FIMC_REG_CIGCTRL_INVPOLVSYNC, align 4
  %43 = load i32, i32* %5, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %5, align 4
  br label %45

45:                                               ; preds = %41, %34
  %46 = load %struct.fimc_source_info*, %struct.fimc_source_info** %4, align 8
  %47 = getelementptr inbounds %struct.fimc_source_info, %struct.fimc_source_info* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @V4L2_MBUS_HSYNC_ACTIVE_LOW, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %45
  %53 = load i32, i32* @FIMC_REG_CIGCTRL_INVPOLHREF, align 4
  %54 = load i32, i32* %5, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %5, align 4
  br label %56

56:                                               ; preds = %52, %45
  %57 = load %struct.fimc_source_info*, %struct.fimc_source_info** %4, align 8
  %58 = getelementptr inbounds %struct.fimc_source_info, %struct.fimc_source_info* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @V4L2_MBUS_HSYNC_ACTIVE_LOW, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %56
  %64 = load i32, i32* @FIMC_REG_CIGCTRL_INVPOLHSYNC, align 4
  %65 = load i32, i32* %5, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %5, align 4
  br label %67

67:                                               ; preds = %63, %56
  %68 = load %struct.fimc_source_info*, %struct.fimc_source_info** %4, align 8
  %69 = getelementptr inbounds %struct.fimc_source_info, %struct.fimc_source_info* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @V4L2_MBUS_FIELD_EVEN_LOW, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %67
  %75 = load i32, i32* @FIMC_REG_CIGCTRL_INVPOLFIELD, align 4
  %76 = load i32, i32* %5, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %5, align 4
  br label %78

78:                                               ; preds = %74, %67
  %79 = load i32, i32* %5, align 4
  %80 = load %struct.fimc_dev*, %struct.fimc_dev** %3, align 8
  %81 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @FIMC_REG_CIGCTRL, align 8
  %84 = add nsw i64 %82, %83
  %85 = call i32 @writel(i32 %79, i64 %84)
  ret i32 0
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
