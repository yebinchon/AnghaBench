; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/uvc/extr_uvc_driver.c_uvc_stream_new.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/uvc/extr_uvc_driver.c_uvc_stream_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uvc_streaming = type { i32, i32, i32, %struct.uvc_device*, i32 }
%struct.uvc_device = type { i32 }
%struct.usb_interface = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"uvcvideo\00", align 1
@WQ_UNBOUND = common dso_local global i32 0, align 4
@WQ_HIGHPRI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.uvc_streaming* (%struct.uvc_device*, %struct.usb_interface*)* @uvc_stream_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.uvc_streaming* @uvc_stream_new(%struct.uvc_device* %0, %struct.usb_interface* %1) #0 {
  %3 = alloca %struct.uvc_streaming*, align 8
  %4 = alloca %struct.uvc_device*, align 8
  %5 = alloca %struct.usb_interface*, align 8
  %6 = alloca %struct.uvc_streaming*, align 8
  store %struct.uvc_device* %0, %struct.uvc_device** %4, align 8
  store %struct.usb_interface* %1, %struct.usb_interface** %5, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.uvc_streaming* @kzalloc(i32 32, i32 %7)
  store %struct.uvc_streaming* %8, %struct.uvc_streaming** %6, align 8
  %9 = load %struct.uvc_streaming*, %struct.uvc_streaming** %6, align 8
  %10 = icmp eq %struct.uvc_streaming* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store %struct.uvc_streaming* null, %struct.uvc_streaming** %3, align 8
  br label %46

12:                                               ; preds = %2
  %13 = load %struct.uvc_streaming*, %struct.uvc_streaming** %6, align 8
  %14 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %13, i32 0, i32 4
  %15 = call i32 @mutex_init(i32* %14)
  %16 = load %struct.uvc_device*, %struct.uvc_device** %4, align 8
  %17 = load %struct.uvc_streaming*, %struct.uvc_streaming** %6, align 8
  %18 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %17, i32 0, i32 3
  store %struct.uvc_device* %16, %struct.uvc_device** %18, align 8
  %19 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %20 = call i32 @usb_get_intf(%struct.usb_interface* %19)
  %21 = load %struct.uvc_streaming*, %struct.uvc_streaming** %6, align 8
  %22 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 8
  %23 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %24 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.uvc_streaming*, %struct.uvc_streaming** %6, align 8
  %30 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* @WQ_UNBOUND, align 4
  %32 = load i32, i32* @WQ_HIGHPRI, align 4
  %33 = or i32 %31, %32
  %34 = call i32 @alloc_workqueue(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %33, i32 0)
  %35 = load %struct.uvc_streaming*, %struct.uvc_streaming** %6, align 8
  %36 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load %struct.uvc_streaming*, %struct.uvc_streaming** %6, align 8
  %38 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %12
  %42 = load %struct.uvc_streaming*, %struct.uvc_streaming** %6, align 8
  %43 = call i32 @uvc_stream_delete(%struct.uvc_streaming* %42)
  store %struct.uvc_streaming* null, %struct.uvc_streaming** %3, align 8
  br label %46

44:                                               ; preds = %12
  %45 = load %struct.uvc_streaming*, %struct.uvc_streaming** %6, align 8
  store %struct.uvc_streaming* %45, %struct.uvc_streaming** %3, align 8
  br label %46

46:                                               ; preds = %44, %41, %11
  %47 = load %struct.uvc_streaming*, %struct.uvc_streaming** %3, align 8
  ret %struct.uvc_streaming* %47
}

declare dso_local %struct.uvc_streaming* @kzalloc(i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @usb_get_intf(%struct.usb_interface*) #1

declare dso_local i32 @alloc_workqueue(i8*, i32, i32) #1

declare dso_local i32 @uvc_stream_delete(%struct.uvc_streaming*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
