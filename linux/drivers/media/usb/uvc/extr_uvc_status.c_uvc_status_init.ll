; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/uvc/extr_uvc_status.c_uvc_status_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/uvc/extr_uvc_status.c_uvc_status_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uvc_device = type { i32, i32*, %struct.TYPE_5__*, i32*, %struct.usb_host_endpoint* }
%struct.TYPE_5__ = type { i64 }
%struct.usb_host_endpoint = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@UVC_MAX_STATUS_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@USB_SPEED_HIGH = common dso_local global i64 0, align 8
@UVC_QUIRK_STATUS_INTERVAL = common dso_local global i32 0, align 4
@uvc_status_complete = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uvc_status_init(%struct.uvc_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uvc_device*, align 8
  %4 = alloca %struct.usb_host_endpoint*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.uvc_device* %0, %struct.uvc_device** %3, align 8
  %7 = load %struct.uvc_device*, %struct.uvc_device** %3, align 8
  %8 = getelementptr inbounds %struct.uvc_device, %struct.uvc_device* %7, i32 0, i32 4
  %9 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %8, align 8
  store %struct.usb_host_endpoint* %9, %struct.usb_host_endpoint** %4, align 8
  %10 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %4, align 8
  %11 = icmp eq %struct.usb_host_endpoint* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %94

13:                                               ; preds = %1
  %14 = load %struct.uvc_device*, %struct.uvc_device** %3, align 8
  %15 = call i32 @uvc_input_init(%struct.uvc_device* %14)
  %16 = load i32, i32* @UVC_MAX_STATUS_SIZE, align 4
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call i32* @kzalloc(i32 %16, i32 %17)
  %19 = load %struct.uvc_device*, %struct.uvc_device** %3, align 8
  %20 = getelementptr inbounds %struct.uvc_device, %struct.uvc_device* %19, i32 0, i32 1
  store i32* %18, i32** %20, align 8
  %21 = load %struct.uvc_device*, %struct.uvc_device** %3, align 8
  %22 = getelementptr inbounds %struct.uvc_device, %struct.uvc_device* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %13
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %94

28:                                               ; preds = %13
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call i32* @usb_alloc_urb(i32 0, i32 %29)
  %31 = load %struct.uvc_device*, %struct.uvc_device** %3, align 8
  %32 = getelementptr inbounds %struct.uvc_device, %struct.uvc_device* %31, i32 0, i32 3
  store i32* %30, i32** %32, align 8
  %33 = load %struct.uvc_device*, %struct.uvc_device** %3, align 8
  %34 = getelementptr inbounds %struct.uvc_device, %struct.uvc_device* %33, i32 0, i32 3
  %35 = load i32*, i32** %34, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %37, label %44

37:                                               ; preds = %28
  %38 = load %struct.uvc_device*, %struct.uvc_device** %3, align 8
  %39 = getelementptr inbounds %struct.uvc_device, %struct.uvc_device* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = call i32 @kfree(i32* %40)
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %2, align 4
  br label %94

44:                                               ; preds = %28
  %45 = load %struct.uvc_device*, %struct.uvc_device** %3, align 8
  %46 = getelementptr inbounds %struct.uvc_device, %struct.uvc_device* %45, i32 0, i32 2
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %46, align 8
  %48 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %4, align 8
  %49 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @usb_rcvintpipe(%struct.TYPE_5__* %47, i32 %51)
  store i32 %52, i32* %5, align 4
  %53 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %4, align 8
  %54 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* %6, align 4
  %58 = icmp sgt i32 %57, 16
  br i1 %58, label %59, label %78

59:                                               ; preds = %44
  %60 = load %struct.uvc_device*, %struct.uvc_device** %3, align 8
  %61 = getelementptr inbounds %struct.uvc_device, %struct.uvc_device* %60, i32 0, i32 2
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @USB_SPEED_HIGH, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %78

67:                                               ; preds = %59
  %68 = load %struct.uvc_device*, %struct.uvc_device** %3, align 8
  %69 = getelementptr inbounds %struct.uvc_device, %struct.uvc_device* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @UVC_QUIRK_STATUS_INTERVAL, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %67
  %75 = load i32, i32* %6, align 4
  %76 = call i32 @fls(i32 %75)
  %77 = sub nsw i32 %76, 1
  store i32 %77, i32* %6, align 4
  br label %78

78:                                               ; preds = %74, %67, %59, %44
  %79 = load %struct.uvc_device*, %struct.uvc_device** %3, align 8
  %80 = getelementptr inbounds %struct.uvc_device, %struct.uvc_device* %79, i32 0, i32 3
  %81 = load i32*, i32** %80, align 8
  %82 = load %struct.uvc_device*, %struct.uvc_device** %3, align 8
  %83 = getelementptr inbounds %struct.uvc_device, %struct.uvc_device* %82, i32 0, i32 2
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %83, align 8
  %85 = load i32, i32* %5, align 4
  %86 = load %struct.uvc_device*, %struct.uvc_device** %3, align 8
  %87 = getelementptr inbounds %struct.uvc_device, %struct.uvc_device* %86, i32 0, i32 1
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* @UVC_MAX_STATUS_SIZE, align 4
  %90 = load i32, i32* @uvc_status_complete, align 4
  %91 = load %struct.uvc_device*, %struct.uvc_device** %3, align 8
  %92 = load i32, i32* %6, align 4
  %93 = call i32 @usb_fill_int_urb(i32* %81, %struct.TYPE_5__* %84, i32 %85, i32* %88, i32 %89, i32 %90, %struct.uvc_device* %91, i32 %92)
  store i32 0, i32* %2, align 4
  br label %94

94:                                               ; preds = %78, %37, %25, %12
  %95 = load i32, i32* %2, align 4
  ret i32 %95
}

declare dso_local i32 @uvc_input_init(%struct.uvc_device*) #1

declare dso_local i32* @kzalloc(i32, i32) #1

declare dso_local i32* @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @usb_rcvintpipe(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @fls(i32) #1

declare dso_local i32 @usb_fill_int_urb(i32*, %struct.TYPE_5__*, i32, i32*, i32, i32, %struct.uvc_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
