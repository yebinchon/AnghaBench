; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/airspy/extr_airspy.c_airspy_stop_streaming.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/airspy/extr_airspy.c_airspy_stop_streaming.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_queue = type { i32 }
%struct.airspy = type { i32, i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@CMD_RECEIVER_MODE = common dso_local global i32 0, align 4
@POWER_ON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vb2_queue*)* @airspy_stop_streaming to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @airspy_stop_streaming(%struct.vb2_queue* %0) #0 {
  %2 = alloca %struct.vb2_queue*, align 8
  %3 = alloca %struct.airspy*, align 8
  store %struct.vb2_queue* %0, %struct.vb2_queue** %2, align 8
  %4 = load %struct.vb2_queue*, %struct.vb2_queue** %2, align 8
  %5 = call %struct.airspy* @vb2_get_drv_priv(%struct.vb2_queue* %4)
  store %struct.airspy* %5, %struct.airspy** %3, align 8
  %6 = load %struct.airspy*, %struct.airspy** %3, align 8
  %7 = getelementptr inbounds %struct.airspy, %struct.airspy* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @dev_dbg(i32 %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.airspy*, %struct.airspy** %3, align 8
  %11 = getelementptr inbounds %struct.airspy, %struct.airspy* %10, i32 0, i32 0
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load %struct.airspy*, %struct.airspy** %3, align 8
  %14 = load i32, i32* @CMD_RECEIVER_MODE, align 4
  %15 = call i32 @airspy_ctrl_msg(%struct.airspy* %13, i32 %14, i32 0, i32 0, i32* null, i32 0)
  %16 = load %struct.airspy*, %struct.airspy** %3, align 8
  %17 = call i32 @airspy_kill_urbs(%struct.airspy* %16)
  %18 = load %struct.airspy*, %struct.airspy** %3, align 8
  %19 = call i32 @airspy_free_urbs(%struct.airspy* %18)
  %20 = load %struct.airspy*, %struct.airspy** %3, align 8
  %21 = call i32 @airspy_free_stream_bufs(%struct.airspy* %20)
  %22 = load %struct.airspy*, %struct.airspy** %3, align 8
  %23 = call i32 @airspy_cleanup_queued_bufs(%struct.airspy* %22)
  %24 = load i32, i32* @POWER_ON, align 4
  %25 = load %struct.airspy*, %struct.airspy** %3, align 8
  %26 = getelementptr inbounds %struct.airspy, %struct.airspy* %25, i32 0, i32 1
  %27 = call i32 @clear_bit(i32 %24, i32* %26)
  %28 = load %struct.airspy*, %struct.airspy** %3, align 8
  %29 = getelementptr inbounds %struct.airspy, %struct.airspy* %28, i32 0, i32 0
  %30 = call i32 @mutex_unlock(i32* %29)
  ret void
}

declare dso_local %struct.airspy* @vb2_get_drv_priv(%struct.vb2_queue*) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @airspy_ctrl_msg(%struct.airspy*, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @airspy_kill_urbs(%struct.airspy*) #1

declare dso_local i32 @airspy_free_urbs(%struct.airspy*) #1

declare dso_local i32 @airspy_free_stream_bufs(%struct.airspy*) #1

declare dso_local i32 @airspy_cleanup_queued_bufs(%struct.airspy*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
