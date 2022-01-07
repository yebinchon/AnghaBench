; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-lite-reg.c_flite_hw_set_camera_bus.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-lite-reg.c_flite_hw_set_camera_bus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fimc_lite = type { i64 }
%struct.fimc_source_info = type { i32, i64, i32 }

@FLITE_REG_CIGCTRL = common dso_local global i64 0, align 8
@FIMC_BUS_TYPE_MIPI_CSI2 = common dso_local global i64 0, align 8
@FLITE_REG_CIGCTRL_SELCAM_MIPI = common dso_local global i32 0, align 4
@FLITE_REG_CIGCTRL_INVPOLPCLK = common dso_local global i32 0, align 4
@FLITE_REG_CIGCTRL_INVPOLVSYNC = common dso_local global i32 0, align 4
@FLITE_REG_CIGCTRL_INVPOLHREF = common dso_local global i32 0, align 4
@V4L2_MBUS_PCLK_SAMPLE_FALLING = common dso_local global i32 0, align 4
@V4L2_MBUS_VSYNC_ACTIVE_LOW = common dso_local global i32 0, align 4
@V4L2_MBUS_HSYNC_ACTIVE_LOW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @flite_hw_set_camera_bus(%struct.fimc_lite* %0, %struct.fimc_source_info* %1) #0 {
  %3 = alloca %struct.fimc_lite*, align 8
  %4 = alloca %struct.fimc_source_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.fimc_lite* %0, %struct.fimc_lite** %3, align 8
  store %struct.fimc_source_info* %1, %struct.fimc_source_info** %4, align 8
  %7 = load %struct.fimc_lite*, %struct.fimc_lite** %3, align 8
  %8 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @FLITE_REG_CIGCTRL, align 8
  %11 = add nsw i64 %9, %10
  %12 = call i32 @readl(i64 %11)
  store i32 %12, i32* %5, align 4
  %13 = load %struct.fimc_source_info*, %struct.fimc_source_info** %4, align 8
  %14 = getelementptr inbounds %struct.fimc_source_info, %struct.fimc_source_info* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %6, align 4
  %16 = load %struct.fimc_source_info*, %struct.fimc_source_info** %4, align 8
  %17 = getelementptr inbounds %struct.fimc_source_info, %struct.fimc_source_info* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @FIMC_BUS_TYPE_MIPI_CSI2, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %59

21:                                               ; preds = %2
  %22 = load i32, i32* @FLITE_REG_CIGCTRL_SELCAM_MIPI, align 4
  %23 = load i32, i32* @FLITE_REG_CIGCTRL_INVPOLPCLK, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @FLITE_REG_CIGCTRL_INVPOLVSYNC, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @FLITE_REG_CIGCTRL_INVPOLHREF, align 4
  %28 = or i32 %26, %27
  %29 = xor i32 %28, -1
  %30 = load i32, i32* %5, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @V4L2_MBUS_PCLK_SAMPLE_FALLING, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %21
  %37 = load i32, i32* @FLITE_REG_CIGCTRL_INVPOLPCLK, align 4
  %38 = load i32, i32* %5, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %5, align 4
  br label %40

40:                                               ; preds = %36, %21
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @V4L2_MBUS_VSYNC_ACTIVE_LOW, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %40
  %46 = load i32, i32* @FLITE_REG_CIGCTRL_INVPOLVSYNC, align 4
  %47 = load i32, i32* %5, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %5, align 4
  br label %49

49:                                               ; preds = %45, %40
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* @V4L2_MBUS_HSYNC_ACTIVE_LOW, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %49
  %55 = load i32, i32* @FLITE_REG_CIGCTRL_INVPOLHREF, align 4
  %56 = load i32, i32* %5, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %5, align 4
  br label %58

58:                                               ; preds = %54, %49
  br label %63

59:                                               ; preds = %2
  %60 = load i32, i32* @FLITE_REG_CIGCTRL_SELCAM_MIPI, align 4
  %61 = load i32, i32* %5, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %5, align 4
  br label %63

63:                                               ; preds = %59, %58
  %64 = load i32, i32* %5, align 4
  %65 = load %struct.fimc_lite*, %struct.fimc_lite** %3, align 8
  %66 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @FLITE_REG_CIGCTRL, align 8
  %69 = add nsw i64 %67, %68
  %70 = call i32 @writel(i32 %64, i64 %69)
  %71 = load %struct.fimc_lite*, %struct.fimc_lite** %3, align 8
  %72 = load %struct.fimc_source_info*, %struct.fimc_source_info** %4, align 8
  %73 = getelementptr inbounds %struct.fimc_source_info, %struct.fimc_source_info* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @flite_hw_set_camera_port(%struct.fimc_lite* %71, i32 %74)
  ret void
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @flite_hw_set_camera_port(%struct.fimc_lite*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
