; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/pwc/extr_pwc-if.c_stop_streaming.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/pwc/extr_pwc-if.c_stop_streaming.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_queue = type { i32 }
%struct.pwc_device = type { i32, %struct.TYPE_3__*, i64 }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@VB2_BUF_STATE_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vb2_queue*)* @stop_streaming to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stop_streaming(%struct.vb2_queue* %0) #0 {
  %2 = alloca %struct.vb2_queue*, align 8
  %3 = alloca %struct.pwc_device*, align 8
  store %struct.vb2_queue* %0, %struct.vb2_queue** %2, align 8
  %4 = load %struct.vb2_queue*, %struct.vb2_queue** %2, align 8
  %5 = call %struct.pwc_device* @vb2_get_drv_priv(%struct.vb2_queue* %4)
  store %struct.pwc_device* %5, %struct.pwc_device** %3, align 8
  %6 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %7 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %6, i32 0, i32 0
  %8 = call i32 @mutex_lock(i32* %7)
  %9 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %10 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %1
  %14 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %15 = call i32 @pwc_set_leds(%struct.pwc_device* %14, i32 0, i32 0)
  %16 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %17 = call i32 @pwc_camera_power(%struct.pwc_device* %16, i32 0)
  %18 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %19 = call i32 @pwc_isoc_cleanup(%struct.pwc_device* %18)
  br label %20

20:                                               ; preds = %13, %1
  %21 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %22 = load i32, i32* @VB2_BUF_STATE_ERROR, align 4
  %23 = call i32 @pwc_cleanup_queued_bufs(%struct.pwc_device* %21, i32 %22)
  %24 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %25 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %24, i32 0, i32 1
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = icmp ne %struct.TYPE_3__* %26, null
  br i1 %27, label %28, label %36

28:                                               ; preds = %20
  %29 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %30 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %29, i32 0, i32 1
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* @VB2_BUF_STATE_ERROR, align 4
  %35 = call i32 @vb2_buffer_done(i32* %33, i32 %34)
  br label %36

36:                                               ; preds = %28, %20
  %37 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %38 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %37, i32 0, i32 0
  %39 = call i32 @mutex_unlock(i32* %38)
  ret void
}

declare dso_local %struct.pwc_device* @vb2_get_drv_priv(%struct.vb2_queue*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @pwc_set_leds(%struct.pwc_device*, i32, i32) #1

declare dso_local i32 @pwc_camera_power(%struct.pwc_device*, i32) #1

declare dso_local i32 @pwc_isoc_cleanup(%struct.pwc_device*) #1

declare dso_local i32 @pwc_cleanup_queued_bufs(%struct.pwc_device*, i32) #1

declare dso_local i32 @vb2_buffer_done(i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
