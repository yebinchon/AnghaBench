; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/atmel/extr_atmel-isi.c_atmel_isi_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/atmel/extr_atmel-isi.c_atmel_isi_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.atmel_isi = type { i32, i32, i32, i32 }

@VIDEO_MAX_FRAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @atmel_isi_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_isi_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.atmel_isi*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %4 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %5 = call %struct.atmel_isi* @platform_get_drvdata(%struct.platform_device* %4)
  store %struct.atmel_isi* %5, %struct.atmel_isi** %3, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 0
  %8 = load i32, i32* @VIDEO_MAX_FRAME, align 4
  %9 = sext i32 %8 to i64
  %10 = mul i64 4, %9
  %11 = trunc i64 %10 to i32
  %12 = load %struct.atmel_isi*, %struct.atmel_isi** %3, align 8
  %13 = getelementptr inbounds %struct.atmel_isi, %struct.atmel_isi* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.atmel_isi*, %struct.atmel_isi** %3, align 8
  %16 = getelementptr inbounds %struct.atmel_isi, %struct.atmel_isi* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @dma_free_coherent(i32* %7, i32 %11, i32 %14, i32 %17)
  %19 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %20 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %19, i32 0, i32 0
  %21 = call i32 @pm_runtime_disable(i32* %20)
  %22 = load %struct.atmel_isi*, %struct.atmel_isi** %3, align 8
  %23 = getelementptr inbounds %struct.atmel_isi, %struct.atmel_isi* %22, i32 0, i32 1
  %24 = call i32 @v4l2_async_notifier_unregister(i32* %23)
  %25 = load %struct.atmel_isi*, %struct.atmel_isi** %3, align 8
  %26 = getelementptr inbounds %struct.atmel_isi, %struct.atmel_isi* %25, i32 0, i32 1
  %27 = call i32 @v4l2_async_notifier_cleanup(i32* %26)
  %28 = load %struct.atmel_isi*, %struct.atmel_isi** %3, align 8
  %29 = getelementptr inbounds %struct.atmel_isi, %struct.atmel_isi* %28, i32 0, i32 0
  %30 = call i32 @v4l2_device_unregister(i32* %29)
  ret i32 0
}

declare dso_local %struct.atmel_isi* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i32, i32) #1

declare dso_local i32 @pm_runtime_disable(i32*) #1

declare dso_local i32 @v4l2_async_notifier_unregister(i32*) #1

declare dso_local i32 @v4l2_async_notifier_cleanup(i32*) #1

declare dso_local i32 @v4l2_device_unregister(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
