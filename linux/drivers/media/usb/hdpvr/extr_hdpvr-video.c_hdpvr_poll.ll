; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/hdpvr/extr_hdpvr-video.c_hdpvr_poll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/hdpvr/extr_hdpvr-video.c_hdpvr_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.hdpvr_buffer = type { i64 }
%struct.hdpvr_device = type { i64, i32, i32, i32, i32 }

@EPOLLIN = common dso_local global i32 0, align 4
@EPOLLRDNORM = common dso_local global i32 0, align 4
@STATUS_IDLE = common dso_local global i64 0, align 8
@MSG_BUFFER = common dso_local global i32 0, align 4
@hdpvr_debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"start_streaming failed\0A\00", align 1
@BUFSTAT_READY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32*)* @hdpvr_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdpvr_poll(%struct.file* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.hdpvr_buffer*, align 8
  %8 = alloca %struct.hdpvr_device*, align 8
  %9 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = call i32 @poll_requested_events(i32* %10)
  store i32 %11, i32* %6, align 4
  store %struct.hdpvr_buffer* null, %struct.hdpvr_buffer** %7, align 8
  %12 = load %struct.file*, %struct.file** %4, align 8
  %13 = call %struct.hdpvr_device* @video_drvdata(%struct.file* %12)
  store %struct.hdpvr_device* %13, %struct.hdpvr_device** %8, align 8
  %14 = load %struct.file*, %struct.file** %4, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = call i32 @v4l2_ctrl_poll(%struct.file* %14, i32* %15)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @EPOLLIN, align 4
  %19 = load i32, i32* @EPOLLRDNORM, align 4
  %20 = or i32 %18, %19
  %21 = and i32 %17, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %2
  %24 = load i32, i32* %9, align 4
  store i32 %24, i32* %3, align 4
  br label %94

25:                                               ; preds = %2
  %26 = load %struct.hdpvr_device*, %struct.hdpvr_device** %8, align 8
  %27 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %26, i32 0, i32 2
  %28 = call i32 @mutex_lock(i32* %27)
  %29 = load %struct.hdpvr_device*, %struct.hdpvr_device** %8, align 8
  %30 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @STATUS_IDLE, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %55

34:                                               ; preds = %25
  %35 = load %struct.hdpvr_device*, %struct.hdpvr_device** %8, align 8
  %36 = call i64 @hdpvr_start_streaming(%struct.hdpvr_device* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %34
  %39 = load i32, i32* @MSG_BUFFER, align 4
  %40 = load i32, i32* @hdpvr_debug, align 4
  %41 = load %struct.hdpvr_device*, %struct.hdpvr_device** %8, align 8
  %42 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %41, i32 0, i32 4
  %43 = call i32 @v4l2_dbg(i32 %39, i32 %40, i32* %42, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %44 = load i64, i64* @STATUS_IDLE, align 8
  %45 = load %struct.hdpvr_device*, %struct.hdpvr_device** %8, align 8
  %46 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %45, i32 0, i32 0
  store i64 %44, i64* %46, align 8
  br label %53

47:                                               ; preds = %34
  %48 = load %struct.file*, %struct.file** %4, align 8
  %49 = getelementptr inbounds %struct.file, %struct.file* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.hdpvr_device*, %struct.hdpvr_device** %8, align 8
  %52 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %51, i32 0, i32 3
  store i32 %50, i32* %52, align 8
  br label %53

53:                                               ; preds = %47, %38
  %54 = call i32 (...) @print_buffer_status()
  br label %55

55:                                               ; preds = %53, %25
  %56 = load %struct.hdpvr_device*, %struct.hdpvr_device** %8, align 8
  %57 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %56, i32 0, i32 2
  %58 = call i32 @mutex_unlock(i32* %57)
  %59 = load %struct.hdpvr_device*, %struct.hdpvr_device** %8, align 8
  %60 = call %struct.hdpvr_buffer* @hdpvr_get_next_buffer(%struct.hdpvr_device* %59)
  store %struct.hdpvr_buffer* %60, %struct.hdpvr_buffer** %7, align 8
  %61 = load %struct.hdpvr_buffer*, %struct.hdpvr_buffer** %7, align 8
  %62 = icmp ne %struct.hdpvr_buffer* %61, null
  br i1 %62, label %63, label %69

63:                                               ; preds = %55
  %64 = load %struct.hdpvr_buffer*, %struct.hdpvr_buffer** %7, align 8
  %65 = getelementptr inbounds %struct.hdpvr_buffer, %struct.hdpvr_buffer* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @BUFSTAT_READY, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %77

69:                                               ; preds = %63, %55
  %70 = load %struct.file*, %struct.file** %4, align 8
  %71 = load %struct.hdpvr_device*, %struct.hdpvr_device** %8, align 8
  %72 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %71, i32 0, i32 1
  %73 = load i32*, i32** %5, align 8
  %74 = call i32 @poll_wait(%struct.file* %70, i32* %72, i32* %73)
  %75 = load %struct.hdpvr_device*, %struct.hdpvr_device** %8, align 8
  %76 = call %struct.hdpvr_buffer* @hdpvr_get_next_buffer(%struct.hdpvr_device* %75)
  store %struct.hdpvr_buffer* %76, %struct.hdpvr_buffer** %7, align 8
  br label %77

77:                                               ; preds = %69, %63
  %78 = load %struct.hdpvr_buffer*, %struct.hdpvr_buffer** %7, align 8
  %79 = icmp ne %struct.hdpvr_buffer* %78, null
  br i1 %79, label %80, label %92

80:                                               ; preds = %77
  %81 = load %struct.hdpvr_buffer*, %struct.hdpvr_buffer** %7, align 8
  %82 = getelementptr inbounds %struct.hdpvr_buffer, %struct.hdpvr_buffer* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @BUFSTAT_READY, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %92

86:                                               ; preds = %80
  %87 = load i32, i32* @EPOLLIN, align 4
  %88 = load i32, i32* @EPOLLRDNORM, align 4
  %89 = or i32 %87, %88
  %90 = load i32, i32* %9, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %9, align 4
  br label %92

92:                                               ; preds = %86, %80, %77
  %93 = load i32, i32* %9, align 4
  store i32 %93, i32* %3, align 4
  br label %94

94:                                               ; preds = %92, %23
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local i32 @poll_requested_events(i32*) #1

declare dso_local %struct.hdpvr_device* @video_drvdata(%struct.file*) #1

declare dso_local i32 @v4l2_ctrl_poll(%struct.file*, i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @hdpvr_start_streaming(%struct.hdpvr_device*) #1

declare dso_local i32 @v4l2_dbg(i32, i32, i32*, i8*) #1

declare dso_local i32 @print_buffer_status(...) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local %struct.hdpvr_buffer* @hdpvr_get_next_buffer(%struct.hdpvr_device*) #1

declare dso_local i32 @poll_wait(%struct.file*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
