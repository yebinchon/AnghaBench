; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_isp.c_isp_unregister_entities.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_isp.c_isp_unregister_entities.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isp_device = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isp_device*)* @isp_unregister_entities to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @isp_unregister_entities(%struct.isp_device* %0) #0 {
  %2 = alloca %struct.isp_device*, align 8
  store %struct.isp_device* %0, %struct.isp_device** %2, align 8
  %3 = load %struct.isp_device*, %struct.isp_device** %2, align 8
  %4 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %3, i32 0, i32 0
  %5 = call i32 @media_device_unregister(i32* %4)
  %6 = load %struct.isp_device*, %struct.isp_device** %2, align 8
  %7 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %6, i32 0, i32 9
  %8 = call i32 @omap3isp_csi2_unregister_entities(i32* %7)
  %9 = load %struct.isp_device*, %struct.isp_device** %2, align 8
  %10 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %9, i32 0, i32 8
  %11 = call i32 @omap3isp_ccp2_unregister_entities(i32* %10)
  %12 = load %struct.isp_device*, %struct.isp_device** %2, align 8
  %13 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %12, i32 0, i32 7
  %14 = call i32 @omap3isp_ccdc_unregister_entities(i32* %13)
  %15 = load %struct.isp_device*, %struct.isp_device** %2, align 8
  %16 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %15, i32 0, i32 6
  %17 = call i32 @omap3isp_preview_unregister_entities(i32* %16)
  %18 = load %struct.isp_device*, %struct.isp_device** %2, align 8
  %19 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %18, i32 0, i32 5
  %20 = call i32 @omap3isp_resizer_unregister_entities(i32* %19)
  %21 = load %struct.isp_device*, %struct.isp_device** %2, align 8
  %22 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %21, i32 0, i32 4
  %23 = call i32 @omap3isp_stat_unregister_entities(i32* %22)
  %24 = load %struct.isp_device*, %struct.isp_device** %2, align 8
  %25 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %24, i32 0, i32 3
  %26 = call i32 @omap3isp_stat_unregister_entities(i32* %25)
  %27 = load %struct.isp_device*, %struct.isp_device** %2, align 8
  %28 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %27, i32 0, i32 2
  %29 = call i32 @omap3isp_stat_unregister_entities(i32* %28)
  %30 = load %struct.isp_device*, %struct.isp_device** %2, align 8
  %31 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %30, i32 0, i32 1
  %32 = call i32 @v4l2_device_unregister(i32* %31)
  %33 = load %struct.isp_device*, %struct.isp_device** %2, align 8
  %34 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %33, i32 0, i32 0
  %35 = call i32 @media_device_cleanup(i32* %34)
  ret void
}

declare dso_local i32 @media_device_unregister(i32*) #1

declare dso_local i32 @omap3isp_csi2_unregister_entities(i32*) #1

declare dso_local i32 @omap3isp_ccp2_unregister_entities(i32*) #1

declare dso_local i32 @omap3isp_ccdc_unregister_entities(i32*) #1

declare dso_local i32 @omap3isp_preview_unregister_entities(i32*) #1

declare dso_local i32 @omap3isp_resizer_unregister_entities(i32*) #1

declare dso_local i32 @omap3isp_stat_unregister_entities(i32*) #1

declare dso_local i32 @v4l2_device_unregister(i32*) #1

declare dso_local i32 @media_device_cleanup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
