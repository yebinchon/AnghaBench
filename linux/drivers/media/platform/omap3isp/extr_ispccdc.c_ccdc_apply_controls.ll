; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispccdc.c_ccdc_apply_controls.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispccdc.c_ccdc_apply_controls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isp_ccdc_device = type { i32 }

@OMAP3ISP_CCDC_ALAW = common dso_local global i32 0, align 4
@OMAP3ISP_CCDC_LPF = common dso_local global i32 0, align 4
@OMAP3ISP_CCDC_BLCLAMP = common dso_local global i32 0, align 4
@OMAP3ISP_CCDC_BCOMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isp_ccdc_device*)* @ccdc_apply_controls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ccdc_apply_controls(%struct.isp_ccdc_device* %0) #0 {
  %2 = alloca %struct.isp_ccdc_device*, align 8
  store %struct.isp_ccdc_device* %0, %struct.isp_ccdc_device** %2, align 8
  %3 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %2, align 8
  %4 = getelementptr inbounds %struct.isp_ccdc_device, %struct.isp_ccdc_device* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @OMAP3ISP_CCDC_ALAW, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %18

9:                                                ; preds = %1
  %10 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %2, align 8
  %11 = call i32 @ccdc_configure_alaw(%struct.isp_ccdc_device* %10)
  %12 = load i32, i32* @OMAP3ISP_CCDC_ALAW, align 4
  %13 = xor i32 %12, -1
  %14 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %2, align 8
  %15 = getelementptr inbounds %struct.isp_ccdc_device, %struct.isp_ccdc_device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = and i32 %16, %13
  store i32 %17, i32* %15, align 4
  br label %18

18:                                               ; preds = %9, %1
  %19 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %2, align 8
  %20 = getelementptr inbounds %struct.isp_ccdc_device, %struct.isp_ccdc_device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @OMAP3ISP_CCDC_LPF, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %18
  %26 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %2, align 8
  %27 = call i32 @ccdc_configure_lpf(%struct.isp_ccdc_device* %26)
  %28 = load i32, i32* @OMAP3ISP_CCDC_LPF, align 4
  %29 = xor i32 %28, -1
  %30 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %2, align 8
  %31 = getelementptr inbounds %struct.isp_ccdc_device, %struct.isp_ccdc_device* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = and i32 %32, %29
  store i32 %33, i32* %31, align 4
  br label %34

34:                                               ; preds = %25, %18
  %35 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %2, align 8
  %36 = getelementptr inbounds %struct.isp_ccdc_device, %struct.isp_ccdc_device* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @OMAP3ISP_CCDC_BLCLAMP, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %34
  %42 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %2, align 8
  %43 = call i32 @ccdc_configure_clamp(%struct.isp_ccdc_device* %42)
  %44 = load i32, i32* @OMAP3ISP_CCDC_BLCLAMP, align 4
  %45 = xor i32 %44, -1
  %46 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %2, align 8
  %47 = getelementptr inbounds %struct.isp_ccdc_device, %struct.isp_ccdc_device* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = and i32 %48, %45
  store i32 %49, i32* %47, align 4
  br label %50

50:                                               ; preds = %41, %34
  %51 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %2, align 8
  %52 = getelementptr inbounds %struct.isp_ccdc_device, %struct.isp_ccdc_device* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @OMAP3ISP_CCDC_BCOMP, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %66

57:                                               ; preds = %50
  %58 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %2, align 8
  %59 = call i32 @ccdc_configure_black_comp(%struct.isp_ccdc_device* %58)
  %60 = load i32, i32* @OMAP3ISP_CCDC_BCOMP, align 4
  %61 = xor i32 %60, -1
  %62 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %2, align 8
  %63 = getelementptr inbounds %struct.isp_ccdc_device, %struct.isp_ccdc_device* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = and i32 %64, %61
  store i32 %65, i32* %63, align 4
  br label %66

66:                                               ; preds = %57, %50
  ret void
}

declare dso_local i32 @ccdc_configure_alaw(%struct.isp_ccdc_device*) #1

declare dso_local i32 @ccdc_configure_lpf(%struct.isp_ccdc_device*) #1

declare dso_local i32 @ccdc_configure_clamp(%struct.isp_ccdc_device*) #1

declare dso_local i32 @ccdc_configure_black_comp(%struct.isp_ccdc_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
