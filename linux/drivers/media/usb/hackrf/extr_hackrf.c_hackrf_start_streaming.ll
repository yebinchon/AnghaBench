; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/hackrf/extr_hackrf.c_hackrf_start_streaming.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/hackrf/extr_hackrf.c_hackrf_start_streaming.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_queue = type { i64 }
%struct.hackrf_dev = type { i32, i32, i64, %struct.usb_interface* }
%struct.usb_interface = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"count=%i\0A\00", align 1
@V4L2_BUF_TYPE_SDR_CAPTURE = common dso_local global i64 0, align 8
@TX_ON = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@RX_ON = common dso_local global i32 0, align 4
@CMD_SET_TRANSCEIVER_MODE = common dso_local global i32 0, align 4
@VB2_BUF_STATE_QUEUED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"failed=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vb2_queue*, i32)* @hackrf_start_streaming to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hackrf_start_streaming(%struct.vb2_queue* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vb2_queue*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hackrf_dev*, align 8
  %7 = alloca %struct.usb_interface*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.vb2_queue* %0, %struct.vb2_queue** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.vb2_queue*, %struct.vb2_queue** %4, align 8
  %11 = call %struct.hackrf_dev* @vb2_get_drv_priv(%struct.vb2_queue* %10)
  store %struct.hackrf_dev* %11, %struct.hackrf_dev** %6, align 8
  %12 = load %struct.hackrf_dev*, %struct.hackrf_dev** %6, align 8
  %13 = getelementptr inbounds %struct.hackrf_dev, %struct.hackrf_dev* %12, i32 0, i32 3
  %14 = load %struct.usb_interface*, %struct.usb_interface** %13, align 8
  store %struct.usb_interface* %14, %struct.usb_interface** %7, align 8
  %15 = load %struct.usb_interface*, %struct.usb_interface** %7, align 8
  %16 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %15, i32 0, i32 0
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @dev_dbg(i32* %16, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load %struct.hackrf_dev*, %struct.hackrf_dev** %6, align 8
  %20 = getelementptr inbounds %struct.hackrf_dev, %struct.hackrf_dev* %19, i32 0, i32 0
  %21 = call i32 @mutex_lock(i32* %20)
  %22 = load %struct.vb2_queue*, %struct.vb2_queue** %4, align 8
  %23 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @V4L2_BUF_TYPE_SDR_CAPTURE, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %41

27:                                               ; preds = %2
  %28 = load i32, i32* @TX_ON, align 4
  %29 = load %struct.hackrf_dev*, %struct.hackrf_dev** %6, align 8
  %30 = getelementptr inbounds %struct.hackrf_dev, %struct.hackrf_dev* %29, i32 0, i32 1
  %31 = call i64 @test_bit(i32 %28, i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = load i32, i32* @EBUSY, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %8, align 4
  br label %111

36:                                               ; preds = %27
  store i32 1, i32* %9, align 4
  %37 = load i32, i32* @RX_ON, align 4
  %38 = load %struct.hackrf_dev*, %struct.hackrf_dev** %6, align 8
  %39 = getelementptr inbounds %struct.hackrf_dev, %struct.hackrf_dev* %38, i32 0, i32 1
  %40 = call i32 @set_bit(i32 %37, i32* %39)
  br label %55

41:                                               ; preds = %2
  %42 = load i32, i32* @RX_ON, align 4
  %43 = load %struct.hackrf_dev*, %struct.hackrf_dev** %6, align 8
  %44 = getelementptr inbounds %struct.hackrf_dev, %struct.hackrf_dev* %43, i32 0, i32 1
  %45 = call i64 @test_bit(i32 %42, i32* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %41
  %48 = load i32, i32* @EBUSY, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %8, align 4
  br label %111

50:                                               ; preds = %41
  store i32 2, i32* %9, align 4
  %51 = load i32, i32* @TX_ON, align 4
  %52 = load %struct.hackrf_dev*, %struct.hackrf_dev** %6, align 8
  %53 = getelementptr inbounds %struct.hackrf_dev, %struct.hackrf_dev* %52, i32 0, i32 1
  %54 = call i32 @set_bit(i32 %51, i32* %53)
  br label %55

55:                                               ; preds = %50, %36
  %56 = load %struct.hackrf_dev*, %struct.hackrf_dev** %6, align 8
  %57 = getelementptr inbounds %struct.hackrf_dev, %struct.hackrf_dev* %56, i32 0, i32 2
  store i64 0, i64* %57, align 8
  %58 = load %struct.hackrf_dev*, %struct.hackrf_dev** %6, align 8
  %59 = call i32 @hackrf_alloc_stream_bufs(%struct.hackrf_dev* %58)
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %8, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %55
  br label %96

63:                                               ; preds = %55
  %64 = load %struct.hackrf_dev*, %struct.hackrf_dev** %6, align 8
  %65 = load i32, i32* %9, align 4
  %66 = icmp eq i32 %65, 1
  %67 = zext i1 %66 to i32
  %68 = call i32 @hackrf_alloc_urbs(%struct.hackrf_dev* %64, i32 %67)
  store i32 %68, i32* %8, align 4
  %69 = load i32, i32* %8, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %63
  br label %96

72:                                               ; preds = %63
  %73 = load %struct.hackrf_dev*, %struct.hackrf_dev** %6, align 8
  %74 = call i32 @hackrf_submit_urbs(%struct.hackrf_dev* %73)
  store i32 %74, i32* %8, align 4
  %75 = load i32, i32* %8, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %72
  br label %96

78:                                               ; preds = %72
  %79 = load %struct.hackrf_dev*, %struct.hackrf_dev** %6, align 8
  %80 = call i32 @hackrf_set_params(%struct.hackrf_dev* %79)
  store i32 %80, i32* %8, align 4
  %81 = load i32, i32* %8, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %78
  br label %96

84:                                               ; preds = %78
  %85 = load %struct.hackrf_dev*, %struct.hackrf_dev** %6, align 8
  %86 = load i32, i32* @CMD_SET_TRANSCEIVER_MODE, align 4
  %87 = load i32, i32* %9, align 4
  %88 = call i32 @hackrf_ctrl_msg(%struct.hackrf_dev* %85, i32 %86, i32 %87, i32 0, i32* null, i32 0)
  store i32 %88, i32* %8, align 4
  %89 = load i32, i32* %8, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %84
  br label %96

92:                                               ; preds = %84
  %93 = load %struct.hackrf_dev*, %struct.hackrf_dev** %6, align 8
  %94 = getelementptr inbounds %struct.hackrf_dev, %struct.hackrf_dev* %93, i32 0, i32 0
  %95 = call i32 @mutex_unlock(i32* %94)
  store i32 0, i32* %3, align 4
  br label %123

96:                                               ; preds = %91, %83, %77, %71, %62
  %97 = load %struct.hackrf_dev*, %struct.hackrf_dev** %6, align 8
  %98 = call i32 @hackrf_kill_urbs(%struct.hackrf_dev* %97)
  %99 = load %struct.hackrf_dev*, %struct.hackrf_dev** %6, align 8
  %100 = call i32 @hackrf_free_urbs(%struct.hackrf_dev* %99)
  %101 = load %struct.hackrf_dev*, %struct.hackrf_dev** %6, align 8
  %102 = call i32 @hackrf_free_stream_bufs(%struct.hackrf_dev* %101)
  %103 = load i32, i32* @RX_ON, align 4
  %104 = load %struct.hackrf_dev*, %struct.hackrf_dev** %6, align 8
  %105 = getelementptr inbounds %struct.hackrf_dev, %struct.hackrf_dev* %104, i32 0, i32 1
  %106 = call i32 @clear_bit(i32 %103, i32* %105)
  %107 = load i32, i32* @TX_ON, align 4
  %108 = load %struct.hackrf_dev*, %struct.hackrf_dev** %6, align 8
  %109 = getelementptr inbounds %struct.hackrf_dev, %struct.hackrf_dev* %108, i32 0, i32 1
  %110 = call i32 @clear_bit(i32 %107, i32* %109)
  br label %111

111:                                              ; preds = %96, %47, %33
  %112 = load %struct.vb2_queue*, %struct.vb2_queue** %4, align 8
  %113 = load i32, i32* @VB2_BUF_STATE_QUEUED, align 4
  %114 = call i32 @hackrf_return_all_buffers(%struct.vb2_queue* %112, i32 %113)
  %115 = load %struct.hackrf_dev*, %struct.hackrf_dev** %6, align 8
  %116 = getelementptr inbounds %struct.hackrf_dev, %struct.hackrf_dev* %115, i32 0, i32 0
  %117 = call i32 @mutex_unlock(i32* %116)
  %118 = load %struct.usb_interface*, %struct.usb_interface** %7, align 8
  %119 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %118, i32 0, i32 0
  %120 = load i32, i32* %8, align 4
  %121 = call i32 @dev_dbg(i32* %119, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %120)
  %122 = load i32, i32* %8, align 4
  store i32 %122, i32* %3, align 4
  br label %123

123:                                              ; preds = %111, %92
  %124 = load i32, i32* %3, align 4
  ret i32 %124
}

declare dso_local %struct.hackrf_dev* @vb2_get_drv_priv(%struct.vb2_queue*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @hackrf_alloc_stream_bufs(%struct.hackrf_dev*) #1

declare dso_local i32 @hackrf_alloc_urbs(%struct.hackrf_dev*, i32) #1

declare dso_local i32 @hackrf_submit_urbs(%struct.hackrf_dev*) #1

declare dso_local i32 @hackrf_set_params(%struct.hackrf_dev*) #1

declare dso_local i32 @hackrf_ctrl_msg(%struct.hackrf_dev*, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @hackrf_kill_urbs(%struct.hackrf_dev*) #1

declare dso_local i32 @hackrf_free_urbs(%struct.hackrf_dev*) #1

declare dso_local i32 @hackrf_free_stream_bufs(%struct.hackrf_dev*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @hackrf_return_all_buffers(%struct.vb2_queue*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
