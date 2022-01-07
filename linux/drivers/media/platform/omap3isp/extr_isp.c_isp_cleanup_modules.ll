; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_isp.c_isp_cleanup_modules.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_isp.c_isp_cleanup_modules.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isp_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isp_device*)* @isp_cleanup_modules to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @isp_cleanup_modules(%struct.isp_device* %0) #0 {
  %2 = alloca %struct.isp_device*, align 8
  store %struct.isp_device* %0, %struct.isp_device** %2, align 8
  %3 = load %struct.isp_device*, %struct.isp_device** %2, align 8
  %4 = call i32 @omap3isp_h3a_aewb_cleanup(%struct.isp_device* %3)
  %5 = load %struct.isp_device*, %struct.isp_device** %2, align 8
  %6 = call i32 @omap3isp_h3a_af_cleanup(%struct.isp_device* %5)
  %7 = load %struct.isp_device*, %struct.isp_device** %2, align 8
  %8 = call i32 @omap3isp_hist_cleanup(%struct.isp_device* %7)
  %9 = load %struct.isp_device*, %struct.isp_device** %2, align 8
  %10 = call i32 @omap3isp_resizer_cleanup(%struct.isp_device* %9)
  %11 = load %struct.isp_device*, %struct.isp_device** %2, align 8
  %12 = call i32 @omap3isp_preview_cleanup(%struct.isp_device* %11)
  %13 = load %struct.isp_device*, %struct.isp_device** %2, align 8
  %14 = call i32 @omap3isp_ccdc_cleanup(%struct.isp_device* %13)
  %15 = load %struct.isp_device*, %struct.isp_device** %2, align 8
  %16 = call i32 @omap3isp_ccp2_cleanup(%struct.isp_device* %15)
  %17 = load %struct.isp_device*, %struct.isp_device** %2, align 8
  %18 = call i32 @omap3isp_csi2_cleanup(%struct.isp_device* %17)
  %19 = load %struct.isp_device*, %struct.isp_device** %2, align 8
  %20 = call i32 @omap3isp_csiphy_cleanup(%struct.isp_device* %19)
  ret void
}

declare dso_local i32 @omap3isp_h3a_aewb_cleanup(%struct.isp_device*) #1

declare dso_local i32 @omap3isp_h3a_af_cleanup(%struct.isp_device*) #1

declare dso_local i32 @omap3isp_hist_cleanup(%struct.isp_device*) #1

declare dso_local i32 @omap3isp_resizer_cleanup(%struct.isp_device*) #1

declare dso_local i32 @omap3isp_preview_cleanup(%struct.isp_device*) #1

declare dso_local i32 @omap3isp_ccdc_cleanup(%struct.isp_device*) #1

declare dso_local i32 @omap3isp_ccp2_cleanup(%struct.isp_device*) #1

declare dso_local i32 @omap3isp_csi2_cleanup(%struct.isp_device*) #1

declare dso_local i32 @omap3isp_csiphy_cleanup(%struct.isp_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
