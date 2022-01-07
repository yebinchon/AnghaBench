; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/hackrf/extr_hackrf.c_hackrf_stop_streaming.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/hackrf/extr_hackrf.c_hackrf_stop_streaming.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_queue = type { i64 }
%struct.hackrf_dev = type { i32, i32, %struct.usb_interface* }
%struct.usb_interface = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@CMD_SET_TRANSCEIVER_MODE = common dso_local global i32 0, align 4
@VB2_BUF_STATE_ERROR = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_SDR_CAPTURE = common dso_local global i64 0, align 8
@RX_ON = common dso_local global i32 0, align 4
@TX_ON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vb2_queue*)* @hackrf_stop_streaming to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hackrf_stop_streaming(%struct.vb2_queue* %0) #0 {
  %2 = alloca %struct.vb2_queue*, align 8
  %3 = alloca %struct.hackrf_dev*, align 8
  %4 = alloca %struct.usb_interface*, align 8
  store %struct.vb2_queue* %0, %struct.vb2_queue** %2, align 8
  %5 = load %struct.vb2_queue*, %struct.vb2_queue** %2, align 8
  %6 = call %struct.hackrf_dev* @vb2_get_drv_priv(%struct.vb2_queue* %5)
  store %struct.hackrf_dev* %6, %struct.hackrf_dev** %3, align 8
  %7 = load %struct.hackrf_dev*, %struct.hackrf_dev** %3, align 8
  %8 = getelementptr inbounds %struct.hackrf_dev, %struct.hackrf_dev* %7, i32 0, i32 2
  %9 = load %struct.usb_interface*, %struct.usb_interface** %8, align 8
  store %struct.usb_interface* %9, %struct.usb_interface** %4, align 8
  %10 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %11 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %10, i32 0, i32 0
  %12 = call i32 @dev_dbg(i32* %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.hackrf_dev*, %struct.hackrf_dev** %3, align 8
  %14 = getelementptr inbounds %struct.hackrf_dev, %struct.hackrf_dev* %13, i32 0, i32 0
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load %struct.hackrf_dev*, %struct.hackrf_dev** %3, align 8
  %17 = load i32, i32* @CMD_SET_TRANSCEIVER_MODE, align 4
  %18 = call i32 @hackrf_ctrl_msg(%struct.hackrf_dev* %16, i32 %17, i32 0, i32 0, i32* null, i32 0)
  %19 = load %struct.hackrf_dev*, %struct.hackrf_dev** %3, align 8
  %20 = call i32 @hackrf_kill_urbs(%struct.hackrf_dev* %19)
  %21 = load %struct.hackrf_dev*, %struct.hackrf_dev** %3, align 8
  %22 = call i32 @hackrf_free_urbs(%struct.hackrf_dev* %21)
  %23 = load %struct.hackrf_dev*, %struct.hackrf_dev** %3, align 8
  %24 = call i32 @hackrf_free_stream_bufs(%struct.hackrf_dev* %23)
  %25 = load %struct.vb2_queue*, %struct.vb2_queue** %2, align 8
  %26 = load i32, i32* @VB2_BUF_STATE_ERROR, align 4
  %27 = call i32 @hackrf_return_all_buffers(%struct.vb2_queue* %25, i32 %26)
  %28 = load %struct.vb2_queue*, %struct.vb2_queue** %2, align 8
  %29 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @V4L2_BUF_TYPE_SDR_CAPTURE, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %1
  %34 = load i32, i32* @RX_ON, align 4
  %35 = load %struct.hackrf_dev*, %struct.hackrf_dev** %3, align 8
  %36 = getelementptr inbounds %struct.hackrf_dev, %struct.hackrf_dev* %35, i32 0, i32 1
  %37 = call i32 @clear_bit(i32 %34, i32* %36)
  br label %43

38:                                               ; preds = %1
  %39 = load i32, i32* @TX_ON, align 4
  %40 = load %struct.hackrf_dev*, %struct.hackrf_dev** %3, align 8
  %41 = getelementptr inbounds %struct.hackrf_dev, %struct.hackrf_dev* %40, i32 0, i32 1
  %42 = call i32 @clear_bit(i32 %39, i32* %41)
  br label %43

43:                                               ; preds = %38, %33
  %44 = load %struct.hackrf_dev*, %struct.hackrf_dev** %3, align 8
  %45 = getelementptr inbounds %struct.hackrf_dev, %struct.hackrf_dev* %44, i32 0, i32 0
  %46 = call i32 @mutex_unlock(i32* %45)
  ret void
}

declare dso_local %struct.hackrf_dev* @vb2_get_drv_priv(%struct.vb2_queue*) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @hackrf_ctrl_msg(%struct.hackrf_dev*, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @hackrf_kill_urbs(%struct.hackrf_dev*) #1

declare dso_local i32 @hackrf_free_urbs(%struct.hackrf_dev*) #1

declare dso_local i32 @hackrf_free_stream_bufs(%struct.hackrf_dev*) #1

declare dso_local i32 @hackrf_return_all_buffers(%struct.vb2_queue*, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
