; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/uvc/extr_uvc_video.c___uvc_query_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/uvc/extr_uvc_video.c___uvc_query_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uvc_device = type { i32 }

@USB_TYPE_CLASS = common dso_local global i32 0, align 4
@USB_RECIP_INTERFACE = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@USB_DIR_OUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uvc_device*, i32, i32, i32, i32, i8*, i32, i32)* @__uvc_query_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__uvc_query_ctrl(%struct.uvc_device* %0, i32 %1, i32 %2, i32 %3, i32 %4, i8* %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.uvc_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.uvc_device* %0, %struct.uvc_device** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i8* %5, i8** %14, align 8
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %19 = load i32, i32* @USB_TYPE_CLASS, align 4
  %20 = load i32, i32* @USB_RECIP_INTERFACE, align 4
  %21 = or i32 %19, %20
  store i32 %21, i32* %17, align 4
  %22 = load i32, i32* %10, align 4
  %23 = and i32 %22, 128
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %8
  %26 = load %struct.uvc_device*, %struct.uvc_device** %9, align 8
  %27 = getelementptr inbounds %struct.uvc_device, %struct.uvc_device* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @usb_rcvctrlpipe(i32 %28, i32 0)
  br label %35

30:                                               ; preds = %8
  %31 = load %struct.uvc_device*, %struct.uvc_device** %9, align 8
  %32 = getelementptr inbounds %struct.uvc_device, %struct.uvc_device* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @usb_sndctrlpipe(i32 %33, i32 0)
  br label %35

35:                                               ; preds = %30, %25
  %36 = phi i32 [ %29, %25 ], [ %34, %30 ]
  store i32 %36, i32* %18, align 4
  %37 = load i32, i32* %10, align 4
  %38 = and i32 %37, 128
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = load i32, i32* @USB_DIR_IN, align 4
  br label %44

42:                                               ; preds = %35
  %43 = load i32, i32* @USB_DIR_OUT, align 4
  br label %44

44:                                               ; preds = %42, %40
  %45 = phi i32 [ %41, %40 ], [ %43, %42 ]
  %46 = load i32, i32* %17, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %17, align 4
  %48 = load %struct.uvc_device*, %struct.uvc_device** %9, align 8
  %49 = getelementptr inbounds %struct.uvc_device, %struct.uvc_device* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %18, align 4
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* %17, align 4
  %54 = load i32, i32* %13, align 4
  %55 = shl i32 %54, 8
  %56 = load i32, i32* %11, align 4
  %57 = shl i32 %56, 8
  %58 = load i32, i32* %12, align 4
  %59 = or i32 %57, %58
  %60 = load i8*, i8** %14, align 8
  %61 = load i32, i32* %15, align 4
  %62 = load i32, i32* %16, align 4
  %63 = call i32 @usb_control_msg(i32 %50, i32 %51, i32 %52, i32 %53, i32 %55, i32 %59, i8* %60, i32 %61, i32 %62)
  ret i32 %63
}

declare dso_local i32 @usb_rcvctrlpipe(i32, i32) #1

declare dso_local i32 @usb_sndctrlpipe(i32, i32) #1

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i32, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
