; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/as102/extr_as102_usb_drv.c_as102_free_usb_stream_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/as102/extr_as102_usb_drv.c_as102_free_usb_stream_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.as102_dev_t = type { i32, i32, %struct.TYPE_2__, i32* }
%struct.TYPE_2__ = type { i32 }

@MAX_STREAM_URB = common dso_local global i32 0, align 4
@AS102_USB_BUF_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.as102_dev_t*)* @as102_free_usb_stream_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @as102_free_usb_stream_buffer(%struct.as102_dev_t* %0) #0 {
  %2 = alloca %struct.as102_dev_t*, align 8
  %3 = alloca i32, align 4
  store %struct.as102_dev_t* %0, %struct.as102_dev_t** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %17, %1
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @MAX_STREAM_URB, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %20

8:                                                ; preds = %4
  %9 = load %struct.as102_dev_t*, %struct.as102_dev_t** %2, align 8
  %10 = getelementptr inbounds %struct.as102_dev_t, %struct.as102_dev_t* %9, i32 0, i32 3
  %11 = load i32*, i32** %10, align 8
  %12 = load i32, i32* %3, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i32, i32* %11, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @usb_free_urb(i32 %15)
  br label %17

17:                                               ; preds = %8
  %18 = load i32, i32* %3, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %3, align 4
  br label %4

20:                                               ; preds = %4
  %21 = load %struct.as102_dev_t*, %struct.as102_dev_t** %2, align 8
  %22 = getelementptr inbounds %struct.as102_dev_t, %struct.as102_dev_t* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @MAX_STREAM_URB, align 4
  %26 = load i32, i32* @AS102_USB_BUF_SIZE, align 4
  %27 = mul nsw i32 %25, %26
  %28 = load %struct.as102_dev_t*, %struct.as102_dev_t** %2, align 8
  %29 = getelementptr inbounds %struct.as102_dev_t, %struct.as102_dev_t* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.as102_dev_t*, %struct.as102_dev_t** %2, align 8
  %32 = getelementptr inbounds %struct.as102_dev_t, %struct.as102_dev_t* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @usb_free_coherent(i32 %24, i32 %27, i32 %30, i32 %33)
  ret void
}

declare dso_local i32 @usb_free_urb(i32) #1

declare dso_local i32 @usb_free_coherent(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
