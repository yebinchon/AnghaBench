; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/hdpvr/extr_hdpvr-video.c_hdpvr_stop_streaming.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/hdpvr/extr_hdpvr-video.c_hdpvr_stop_streaming.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdpvr_device = type { i64, i32, i32, i32, i32, i32, i32, i32 }

@STATUS_IDLE = common dso_local global i64 0, align 8
@STATUS_STREAMING = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [110 x i8] c"failed to allocate temporary buffer for emptying the internal device buffer. Next capture start will be slow\0A\00", align 1
@STATUS_SHUTTING_DOWN = common dso_local global i64 0, align 8
@CTRL_STOP_STREAMING_VALUE = common dso_local global i32 0, align 4
@BULK_URB_TIMEOUT = common dso_local global i32 0, align 4
@MSG_BUFFER = common dso_local global i32 0, align 4
@hdpvr_debug = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"%2d: got %d bytes\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"used %d urbs to empty device buffers\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hdpvr_device*)* @hdpvr_stop_streaming to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdpvr_stop_streaming(%struct.hdpvr_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hdpvr_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store %struct.hdpvr_device* %0, %struct.hdpvr_device** %3, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.hdpvr_device*, %struct.hdpvr_device** %3, align 8
  %8 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @STATUS_IDLE, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %107

13:                                               ; preds = %1
  %14 = load %struct.hdpvr_device*, %struct.hdpvr_device** %3, align 8
  %15 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @STATUS_STREAMING, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %13
  %20 = load i32, i32* @EAGAIN, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %107

22:                                               ; preds = %13
  br label %23

23:                                               ; preds = %22
  %24 = load %struct.hdpvr_device*, %struct.hdpvr_device** %3, align 8
  %25 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call i32* @kmalloc(i32 %26, i32 %27)
  store i32* %28, i32** %6, align 8
  %29 = load i32*, i32** %6, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %35, label %31

31:                                               ; preds = %23
  %32 = load %struct.hdpvr_device*, %struct.hdpvr_device** %3, align 8
  %33 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %32, i32 0, i32 1
  %34 = call i32 @v4l2_err(i32* %33, i8* getelementptr inbounds ([110 x i8], [110 x i8]* @.str, i64 0, i64 0))
  br label %35

35:                                               ; preds = %31, %23
  %36 = load i64, i64* @STATUS_SHUTTING_DOWN, align 8
  %37 = load %struct.hdpvr_device*, %struct.hdpvr_device** %3, align 8
  %38 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %37, i32 0, i32 0
  store i64 %36, i64* %38, align 8
  %39 = load %struct.hdpvr_device*, %struct.hdpvr_device** %3, align 8
  %40 = load i32, i32* @CTRL_STOP_STREAMING_VALUE, align 4
  %41 = call i32 @hdpvr_config_call(%struct.hdpvr_device* %39, i32 %40, i32 0)
  %42 = load %struct.hdpvr_device*, %struct.hdpvr_device** %3, align 8
  %43 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %42, i32 0, i32 5
  %44 = call i32 @mutex_unlock(i32* %43)
  %45 = load %struct.hdpvr_device*, %struct.hdpvr_device** %3, align 8
  %46 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %45, i32 0, i32 7
  %47 = call i32 @wake_up_interruptible(i32* %46)
  %48 = call i32 @msleep(i32 50)
  %49 = load %struct.hdpvr_device*, %struct.hdpvr_device** %3, align 8
  %50 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %49, i32 0, i32 6
  %51 = call i32 @flush_work(i32* %50)
  %52 = load %struct.hdpvr_device*, %struct.hdpvr_device** %3, align 8
  %53 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %52, i32 0, i32 5
  %54 = call i32 @mutex_lock(i32* %53)
  %55 = load %struct.hdpvr_device*, %struct.hdpvr_device** %3, align 8
  %56 = call i32 @hdpvr_cancel_queue(%struct.hdpvr_device* %55)
  br label %57

57:                                               ; preds = %85, %35
  %58 = load i32*, i32** %6, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %60, label %83

60:                                               ; preds = %57
  %61 = load i32, i32* %5, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %5, align 4
  %63 = icmp slt i32 %62, 500
  br i1 %63, label %64, label %83

64:                                               ; preds = %60
  %65 = load %struct.hdpvr_device*, %struct.hdpvr_device** %3, align 8
  %66 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.hdpvr_device*, %struct.hdpvr_device** %3, align 8
  %69 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.hdpvr_device*, %struct.hdpvr_device** %3, align 8
  %72 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @usb_rcvbulkpipe(i32 %70, i32 %73)
  %75 = load i32*, i32** %6, align 8
  %76 = load %struct.hdpvr_device*, %struct.hdpvr_device** %3, align 8
  %77 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @BULK_URB_TIMEOUT, align 4
  %80 = call i32 @usb_bulk_msg(i32 %67, i32 %74, i32* %75, i32 %78, i32* %4, i32 %79)
  %81 = icmp ne i32 %80, 0
  %82 = xor i1 %81, true
  br label %83

83:                                               ; preds = %64, %60, %57
  %84 = phi i1 [ false, %60 ], [ false, %57 ], [ %82, %64 ]
  br i1 %84, label %85, label %93

85:                                               ; preds = %83
  %86 = load i32, i32* @MSG_BUFFER, align 4
  %87 = load i32, i32* @hdpvr_debug, align 4
  %88 = load %struct.hdpvr_device*, %struct.hdpvr_device** %3, align 8
  %89 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %88, i32 0, i32 1
  %90 = load i32, i32* %5, align 4
  %91 = load i32, i32* %4, align 4
  %92 = call i32 (i32, i32, i32*, i8*, i32, ...) @v4l2_dbg(i32 %86, i32 %87, i32* %89, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %90, i32 %91)
  br label %57

93:                                               ; preds = %83
  %94 = load i32*, i32** %6, align 8
  %95 = call i32 @kfree(i32* %94)
  %96 = load i32, i32* @MSG_BUFFER, align 4
  %97 = load i32, i32* @hdpvr_debug, align 4
  %98 = load %struct.hdpvr_device*, %struct.hdpvr_device** %3, align 8
  %99 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %98, i32 0, i32 1
  %100 = load i32, i32* %5, align 4
  %101 = sub nsw i32 %100, 1
  %102 = call i32 (i32, i32, i32*, i8*, i32, ...) @v4l2_dbg(i32 %96, i32 %97, i32* %99, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %101)
  %103 = call i32 @msleep(i32 10)
  %104 = load i64, i64* @STATUS_IDLE, align 8
  %105 = load %struct.hdpvr_device*, %struct.hdpvr_device** %3, align 8
  %106 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %105, i32 0, i32 0
  store i64 %104, i64* %106, align 8
  store i32 0, i32* %2, align 4
  br label %107

107:                                              ; preds = %93, %19, %12
  %108 = load i32, i32* %2, align 4
  ret i32 %108
}

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @v4l2_err(i32*, i8*) #1

declare dso_local i32 @hdpvr_config_call(%struct.hdpvr_device*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @flush_work(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @hdpvr_cancel_queue(%struct.hdpvr_device*) #1

declare dso_local i32 @usb_bulk_msg(i32, i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @usb_rcvbulkpipe(i32, i32) #1

declare dso_local i32 @v4l2_dbg(i32, i32, i32*, i8*, i32, ...) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
