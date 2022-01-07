; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vimc/extr_vimc-capture.c_vimc_cap_start_streaming.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vimc/extr_vimc-capture.c_vimc_cap_start_streaming.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_queue = type { i32 }
%struct.vimc_cap_device = type { i32, %struct.TYPE_4__, i64, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.media_entity }
%struct.media_entity = type { i32 }

@VB2_BUF_STATE_QUEUED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vb2_queue*, i32)* @vimc_cap_start_streaming to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vimc_cap_start_streaming(%struct.vb2_queue* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vb2_queue*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.vimc_cap_device*, align 8
  %7 = alloca %struct.media_entity*, align 8
  %8 = alloca i32, align 4
  store %struct.vb2_queue* %0, %struct.vb2_queue** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.vb2_queue*, %struct.vb2_queue** %4, align 8
  %10 = call %struct.vimc_cap_device* @vb2_get_drv_priv(%struct.vb2_queue* %9)
  store %struct.vimc_cap_device* %10, %struct.vimc_cap_device** %6, align 8
  %11 = load %struct.vimc_cap_device*, %struct.vimc_cap_device** %6, align 8
  %12 = getelementptr inbounds %struct.vimc_cap_device, %struct.vimc_cap_device* %11, i32 0, i32 3
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  store %struct.media_entity* %13, %struct.media_entity** %7, align 8
  %14 = load %struct.vimc_cap_device*, %struct.vimc_cap_device** %6, align 8
  %15 = getelementptr inbounds %struct.vimc_cap_device, %struct.vimc_cap_device* %14, i32 0, i32 2
  store i64 0, i64* %15, align 8
  %16 = load %struct.media_entity*, %struct.media_entity** %7, align 8
  %17 = load %struct.vimc_cap_device*, %struct.vimc_cap_device** %6, align 8
  %18 = getelementptr inbounds %struct.vimc_cap_device, %struct.vimc_cap_device* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = call i32 @media_pipeline_start(%struct.media_entity* %16, i32* %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %2
  %24 = load %struct.vimc_cap_device*, %struct.vimc_cap_device** %6, align 8
  %25 = load i32, i32* @VB2_BUF_STATE_QUEUED, align 4
  %26 = call i32 @vimc_cap_return_all_buffers(%struct.vimc_cap_device* %24, i32 %25)
  %27 = load i32, i32* %8, align 4
  store i32 %27, i32* %3, align 4
  br label %44

28:                                               ; preds = %2
  %29 = load %struct.vimc_cap_device*, %struct.vimc_cap_device** %6, align 8
  %30 = getelementptr inbounds %struct.vimc_cap_device, %struct.vimc_cap_device* %29, i32 0, i32 1
  %31 = load %struct.vimc_cap_device*, %struct.vimc_cap_device** %6, align 8
  %32 = getelementptr inbounds %struct.vimc_cap_device, %struct.vimc_cap_device* %31, i32 0, i32 0
  %33 = call i32 @vimc_streamer_s_stream(%struct.TYPE_4__* %30, i32* %32, i32 1)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %28
  %37 = load %struct.media_entity*, %struct.media_entity** %7, align 8
  %38 = call i32 @media_pipeline_stop(%struct.media_entity* %37)
  %39 = load %struct.vimc_cap_device*, %struct.vimc_cap_device** %6, align 8
  %40 = load i32, i32* @VB2_BUF_STATE_QUEUED, align 4
  %41 = call i32 @vimc_cap_return_all_buffers(%struct.vimc_cap_device* %39, i32 %40)
  %42 = load i32, i32* %8, align 4
  store i32 %42, i32* %3, align 4
  br label %44

43:                                               ; preds = %28
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %43, %36, %23
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local %struct.vimc_cap_device* @vb2_get_drv_priv(%struct.vb2_queue*) #1

declare dso_local i32 @media_pipeline_start(%struct.media_entity*, i32*) #1

declare dso_local i32 @vimc_cap_return_all_buffers(%struct.vimc_cap_device*, i32) #1

declare dso_local i32 @vimc_streamer_s_stream(%struct.TYPE_4__*, i32*, i32) #1

declare dso_local i32 @media_pipeline_stop(%struct.media_entity*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
