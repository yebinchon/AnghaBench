; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispccdc.c_omap3isp_ccdc_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispccdc.c_omap3isp_ccdc_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isp_device = type { i32, %struct.isp_ccdc_device }
%struct.isp_ccdc_device = type { i32, %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__, i32 }
%struct.TYPE_6__ = type { i32, i32, i32* }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @omap3isp_ccdc_cleanup(%struct.isp_device* %0) #0 {
  %2 = alloca %struct.isp_device*, align 8
  %3 = alloca %struct.isp_ccdc_device*, align 8
  store %struct.isp_device* %0, %struct.isp_device** %2, align 8
  %4 = load %struct.isp_device*, %struct.isp_device** %2, align 8
  %5 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %4, i32 0, i32 1
  store %struct.isp_ccdc_device* %5, %struct.isp_ccdc_device** %3, align 8
  %6 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %3, align 8
  %7 = getelementptr inbounds %struct.isp_ccdc_device, %struct.isp_ccdc_device* %6, i32 0, i32 4
  %8 = call i32 @omap3isp_video_cleanup(i32* %7)
  %9 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %3, align 8
  %10 = getelementptr inbounds %struct.isp_ccdc_device, %struct.isp_ccdc_device* %9, i32 0, i32 3
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = call i32 @media_entity_cleanup(i32* %11)
  %13 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %3, align 8
  %14 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %3, align 8
  %15 = getelementptr inbounds %struct.isp_ccdc_device, %struct.isp_ccdc_device* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @ccdc_lsc_free_request(%struct.isp_ccdc_device* %13, i32 %17)
  %19 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %3, align 8
  %20 = getelementptr inbounds %struct.isp_ccdc_device, %struct.isp_ccdc_device* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 1
  %22 = call i32 @cancel_work_sync(i32* %21)
  %23 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %3, align 8
  %24 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %3, align 8
  %25 = getelementptr inbounds %struct.isp_ccdc_device, %struct.isp_ccdc_device* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = call i32 @ccdc_lsc_free_queue(%struct.isp_ccdc_device* %23, i32* %26)
  %28 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %3, align 8
  %29 = getelementptr inbounds %struct.isp_ccdc_device, %struct.isp_ccdc_device* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 2
  %31 = load i32*, i32** %30, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %51

33:                                               ; preds = %1
  %34 = load %struct.isp_device*, %struct.isp_device** %2, align 8
  %35 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %3, align 8
  %38 = getelementptr inbounds %struct.isp_ccdc_device, %struct.isp_ccdc_device* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = mul nsw i32 %40, 4
  %42 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %3, align 8
  %43 = getelementptr inbounds %struct.isp_ccdc_device, %struct.isp_ccdc_device* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 2
  %45 = load i32*, i32** %44, align 8
  %46 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %3, align 8
  %47 = getelementptr inbounds %struct.isp_ccdc_device, %struct.isp_ccdc_device* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @dma_free_coherent(i32 %36, i32 %41, i32* %45, i32 %49)
  br label %51

51:                                               ; preds = %33, %1
  %52 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %3, align 8
  %53 = getelementptr inbounds %struct.isp_ccdc_device, %struct.isp_ccdc_device* %52, i32 0, i32 0
  %54 = call i32 @mutex_destroy(i32* %53)
  ret void
}

declare dso_local i32 @omap3isp_video_cleanup(i32*) #1

declare dso_local i32 @media_entity_cleanup(i32*) #1

declare dso_local i32 @ccdc_lsc_free_request(%struct.isp_ccdc_device*, i32) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @ccdc_lsc_free_queue(%struct.isp_ccdc_device*, i32*) #1

declare dso_local i32 @dma_free_coherent(i32, i32, i32*, i32) #1

declare dso_local i32 @mutex_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
