; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/as102/extr_as102_usb_drv.c_as102_urb_stream_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/as102/extr_as102_usb_drv.c_as102_urb_stream_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i32, i32, %struct.as102_dev_t* }
%struct.as102_dev_t = type { i64, i32 }

@AS102_USB_BUF_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @as102_urb_stream_irq(%struct.urb* %0) #0 {
  %2 = alloca %struct.urb*, align 8
  %3 = alloca %struct.as102_dev_t*, align 8
  store %struct.urb* %0, %struct.urb** %2, align 8
  %4 = load %struct.urb*, %struct.urb** %2, align 8
  %5 = getelementptr inbounds %struct.urb, %struct.urb* %4, i32 0, i32 2
  %6 = load %struct.as102_dev_t*, %struct.as102_dev_t** %5, align 8
  store %struct.as102_dev_t* %6, %struct.as102_dev_t** %3, align 8
  %7 = load %struct.urb*, %struct.urb** %2, align 8
  %8 = getelementptr inbounds %struct.urb, %struct.urb* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %21

11:                                               ; preds = %1
  %12 = load %struct.as102_dev_t*, %struct.as102_dev_t** %3, align 8
  %13 = getelementptr inbounds %struct.as102_dev_t, %struct.as102_dev_t* %12, i32 0, i32 1
  %14 = load %struct.urb*, %struct.urb** %2, align 8
  %15 = getelementptr inbounds %struct.urb, %struct.urb* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.urb*, %struct.urb** %2, align 8
  %18 = getelementptr inbounds %struct.urb, %struct.urb* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @dvb_dmx_swfilter(i32* %13, i32 %16, i32 %19)
  br label %33

21:                                               ; preds = %1
  %22 = load %struct.urb*, %struct.urb** %2, align 8
  %23 = getelementptr inbounds %struct.urb, %struct.urb* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %21
  %27 = load %struct.urb*, %struct.urb** %2, align 8
  %28 = getelementptr inbounds %struct.urb, %struct.urb* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @AS102_USB_BUF_SIZE, align 4
  %31 = call i32 @memset(i32 %29, i32 0, i32 %30)
  br label %32

32:                                               ; preds = %26, %21
  br label %33

33:                                               ; preds = %32, %11
  %34 = load %struct.as102_dev_t*, %struct.as102_dev_t** %3, align 8
  %35 = getelementptr inbounds %struct.as102_dev_t, %struct.as102_dev_t* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %33
  %39 = load %struct.as102_dev_t*, %struct.as102_dev_t** %3, align 8
  %40 = load %struct.urb*, %struct.urb** %2, align 8
  %41 = call i32 @as102_submit_urb_stream(%struct.as102_dev_t* %39, %struct.urb* %40)
  br label %42

42:                                               ; preds = %38, %33
  ret void
}

declare dso_local i32 @dvb_dmx_swfilter(i32*, i32, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @as102_submit_urb_stream(%struct.as102_dev_t*, %struct.urb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
