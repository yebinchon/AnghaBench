; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/hdpvr/extr_hdpvr-core.c_hdpvr_device_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/hdpvr/extr_hdpvr-core.c_hdpvr_device_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdpvr_device = type { i32*, i32, i32, i32, i32 }

@EACCES = common dso_local global i32 0, align 4
@CTRL_LOW_PASS_FILTER_VALUE = common dso_local global i32 0, align 4
@CTRL_DEFAULT_INDEX = common dso_local global i32 0, align 4
@MSG_INFO = common dso_local global i32 0, align 4
@hdpvr_debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"control request returned %d\0A\00", align 1
@boost_audio = common dso_local global i32 0, align 4
@STATUS_IDLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hdpvr_device*)* @hdpvr_device_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdpvr_device_init(%struct.hdpvr_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hdpvr_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store %struct.hdpvr_device* %0, %struct.hdpvr_device** %3, align 8
  %6 = load %struct.hdpvr_device*, %struct.hdpvr_device** %3, align 8
  %7 = call i64 @device_authorization(%struct.hdpvr_device* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load i32, i32* @EACCES, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %93

12:                                               ; preds = %1
  %13 = load %struct.hdpvr_device*, %struct.hdpvr_device** %3, align 8
  %14 = call i32 @hdpvr_set_options(%struct.hdpvr_device* %13)
  %15 = load %struct.hdpvr_device*, %struct.hdpvr_device** %3, align 8
  %16 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %15, i32 0, i32 2
  %17 = call i32 @mutex_lock(i32* %16)
  %18 = load %struct.hdpvr_device*, %struct.hdpvr_device** %3, align 8
  %19 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %5, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  store i32 3, i32* %22, align 4
  %23 = load i32*, i32** %5, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 1
  store i32 3, i32* %24, align 4
  %25 = load i32*, i32** %5, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 2
  store i32 0, i32* %26, align 4
  %27 = load i32*, i32** %5, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 3
  store i32 0, i32* %28, align 4
  %29 = load %struct.hdpvr_device*, %struct.hdpvr_device** %3, align 8
  %30 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.hdpvr_device*, %struct.hdpvr_device** %3, align 8
  %33 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @usb_sndctrlpipe(i32 %34, i32 0)
  %36 = load i32, i32* @CTRL_LOW_PASS_FILTER_VALUE, align 4
  %37 = load i32, i32* @CTRL_DEFAULT_INDEX, align 4
  %38 = load i32*, i32** %5, align 8
  %39 = call i32 @usb_control_msg(i32 %31, i32 %35, i32 1, i32 56, i32 %36, i32 %37, i32* %38, i32 4, i32 1000)
  store i32 %39, i32* %4, align 4
  %40 = load i32, i32* @MSG_INFO, align 4
  %41 = load i32, i32* @hdpvr_debug, align 4
  %42 = load %struct.hdpvr_device*, %struct.hdpvr_device** %3, align 8
  %43 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %42, i32 0, i32 3
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @v4l2_dbg(i32 %40, i32 %41, i32* %43, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %44)
  %46 = load %struct.hdpvr_device*, %struct.hdpvr_device** %3, align 8
  %47 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %46, i32 0, i32 2
  %48 = call i32 @mutex_unlock(i32* %47)
  %49 = load %struct.hdpvr_device*, %struct.hdpvr_device** %3, align 8
  %50 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %49, i32 0, i32 2
  %51 = call i32 @mutex_lock(i32* %50)
  %52 = load i32*, i32** %5, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  store i32 1, i32* %53, align 4
  %54 = load %struct.hdpvr_device*, %struct.hdpvr_device** %3, align 8
  %55 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.hdpvr_device*, %struct.hdpvr_device** %3, align 8
  %58 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @usb_sndctrlpipe(i32 %59, i32 0)
  %61 = load i32*, i32** %5, align 8
  %62 = call i32 @usb_control_msg(i32 %56, i32 %60, i32 212, i32 56, i32 0, i32 0, i32* %61, i32 1, i32 1000)
  store i32 %62, i32* %4, align 4
  %63 = load i32, i32* @MSG_INFO, align 4
  %64 = load i32, i32* @hdpvr_debug, align 4
  %65 = load %struct.hdpvr_device*, %struct.hdpvr_device** %3, align 8
  %66 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %65, i32 0, i32 3
  %67 = load i32, i32* %4, align 4
  %68 = call i32 @v4l2_dbg(i32 %63, i32 %64, i32* %66, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %67)
  %69 = load i32, i32* @boost_audio, align 4
  %70 = load i32*, i32** %5, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 0
  store i32 %69, i32* %71, align 4
  %72 = load %struct.hdpvr_device*, %struct.hdpvr_device** %3, align 8
  %73 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.hdpvr_device*, %struct.hdpvr_device** %3, align 8
  %76 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @usb_sndctrlpipe(i32 %77, i32 0)
  %79 = load i32*, i32** %5, align 8
  %80 = call i32 @usb_control_msg(i32 %74, i32 %78, i32 213, i32 56, i32 0, i32 0, i32* %79, i32 1, i32 1000)
  store i32 %80, i32* %4, align 4
  %81 = load i32, i32* @MSG_INFO, align 4
  %82 = load i32, i32* @hdpvr_debug, align 4
  %83 = load %struct.hdpvr_device*, %struct.hdpvr_device** %3, align 8
  %84 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %83, i32 0, i32 3
  %85 = load i32, i32* %4, align 4
  %86 = call i32 @v4l2_dbg(i32 %81, i32 %82, i32* %84, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %85)
  %87 = load %struct.hdpvr_device*, %struct.hdpvr_device** %3, align 8
  %88 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %87, i32 0, i32 2
  %89 = call i32 @mutex_unlock(i32* %88)
  %90 = load i32, i32* @STATUS_IDLE, align 4
  %91 = load %struct.hdpvr_device*, %struct.hdpvr_device** %3, align 8
  %92 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %91, i32 0, i32 1
  store i32 %90, i32* %92, align 8
  store i32 0, i32* %2, align 4
  br label %93

93:                                               ; preds = %12, %9
  %94 = load i32, i32* %2, align 4
  ret i32 %94
}

declare dso_local i64 @device_authorization(%struct.hdpvr_device*) #1

declare dso_local i32 @hdpvr_set_options(%struct.hdpvr_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @usb_sndctrlpipe(i32, i32) #1

declare dso_local i32 @v4l2_dbg(i32, i32, i32*, i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
