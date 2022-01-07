; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/cpia2/extr_cpia2_usb.c_cpia2_usb_disconnect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/cpia2/extr_cpia2_usb.c_cpia2_usb_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.camera_data = type { i32, i32, %struct.TYPE_2__*, i64, i32 }
%struct.TYPE_2__ = type { i64, i32 }

@.str = private unnamed_addr constant [17 x i8] c"Stopping stream\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"Unregistering camera\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Wakeup waiting processes\0A\00", align 1
@FRAME_READY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"CPiA2 camera disconnected.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_interface*)* @cpia2_usb_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cpia2_usb_disconnect(%struct.usb_interface* %0) #0 {
  %2 = alloca %struct.usb_interface*, align 8
  %3 = alloca %struct.camera_data*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %2, align 8
  %4 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %5 = call %struct.camera_data* @usb_get_intfdata(%struct.usb_interface* %4)
  store %struct.camera_data* %5, %struct.camera_data** %3, align 8
  %6 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %7 = call i32 @usb_set_intfdata(%struct.usb_interface* %6, i32* null)
  %8 = call i32 @DBG(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.camera_data*, %struct.camera_data** %3, align 8
  %10 = call i32 @cpia2_usb_stream_stop(%struct.camera_data* %9)
  %11 = load %struct.camera_data*, %struct.camera_data** %3, align 8
  %12 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %11, i32 0, i32 4
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = call i32 @DBG(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %15 = load %struct.camera_data*, %struct.camera_data** %3, align 8
  %16 = call i32 @cpia2_unregister_camera(%struct.camera_data* %15)
  %17 = load %struct.camera_data*, %struct.camera_data** %3, align 8
  %18 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %17, i32 0, i32 0
  %19 = call i32 @v4l2_device_disconnect(i32* %18)
  %20 = load %struct.camera_data*, %struct.camera_data** %3, align 8
  %21 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %20, i32 0, i32 4
  %22 = call i32 @mutex_unlock(i32* %21)
  %23 = load %struct.camera_data*, %struct.camera_data** %3, align 8
  %24 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %23, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %41

27:                                               ; preds = %1
  %28 = call i32 @DBG(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %29 = load i32, i32* @FRAME_READY, align 4
  %30 = load %struct.camera_data*, %struct.camera_data** %3, align 8
  %31 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %30, i32 0, i32 2
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  store i32 %29, i32* %33, align 8
  %34 = load %struct.camera_data*, %struct.camera_data** %3, align 8
  %35 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %34, i32 0, i32 2
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  store i64 0, i64* %37, align 8
  %38 = load %struct.camera_data*, %struct.camera_data** %3, align 8
  %39 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %38, i32 0, i32 1
  %40 = call i32 @wake_up_interruptible(i32* %39)
  br label %41

41:                                               ; preds = %27, %1
  %42 = load %struct.camera_data*, %struct.camera_data** %3, align 8
  %43 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %42, i32 0, i32 0
  %44 = call i32 @v4l2_device_put(i32* %43)
  %45 = call i32 @LOG(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  ret void
}

declare dso_local %struct.camera_data* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, i32*) #1

declare dso_local i32 @DBG(i8*) #1

declare dso_local i32 @cpia2_usb_stream_stop(%struct.camera_data*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @cpia2_unregister_camera(%struct.camera_data*) #1

declare dso_local i32 @v4l2_device_disconnect(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @v4l2_device_put(i32*) #1

declare dso_local i32 @LOG(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
