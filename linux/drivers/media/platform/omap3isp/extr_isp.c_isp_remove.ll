; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_isp.c_isp_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_isp.c_isp_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.isp_device = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @isp_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isp_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.isp_device*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %4 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %5 = call %struct.isp_device* @platform_get_drvdata(%struct.platform_device* %4)
  store %struct.isp_device* %5, %struct.isp_device** %3, align 8
  %6 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %7 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %6, i32 0, i32 0
  %8 = call i32 @v4l2_async_notifier_unregister(i32* %7)
  %9 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %10 = call i32 @isp_unregister_entities(%struct.isp_device* %9)
  %11 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %12 = call i32 @isp_cleanup_modules(%struct.isp_device* %11)
  %13 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %14 = call i32 @isp_xclk_cleanup(%struct.isp_device* %13)
  %15 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %16 = call i32 @__omap3isp_get(%struct.isp_device* %15, i32 0)
  %17 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %18 = call i32 @isp_detach_iommu(%struct.isp_device* %17)
  %19 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %20 = call i32 @__omap3isp_put(%struct.isp_device* %19, i32 0)
  %21 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %22 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %21, i32 0, i32 1
  %23 = call i32 @media_entity_enum_cleanup(i32* %22)
  %24 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %25 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %24, i32 0, i32 0
  %26 = call i32 @v4l2_async_notifier_cleanup(i32* %25)
  %27 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %28 = call i32 @kfree(%struct.isp_device* %27)
  ret i32 0
}

declare dso_local %struct.isp_device* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @v4l2_async_notifier_unregister(i32*) #1

declare dso_local i32 @isp_unregister_entities(%struct.isp_device*) #1

declare dso_local i32 @isp_cleanup_modules(%struct.isp_device*) #1

declare dso_local i32 @isp_xclk_cleanup(%struct.isp_device*) #1

declare dso_local i32 @__omap3isp_get(%struct.isp_device*, i32) #1

declare dso_local i32 @isp_detach_iommu(%struct.isp_device*) #1

declare dso_local i32 @__omap3isp_put(%struct.isp_device*, i32) #1

declare dso_local i32 @media_entity_enum_cleanup(i32*) #1

declare dso_local i32 @v4l2_async_notifier_cleanup(i32*) #1

declare dso_local i32 @kfree(%struct.isp_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
