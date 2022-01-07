; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/as102/extr_as102_usb_drv.c_as102_usb_start_stream.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/as102/extr_as102_usb_drv.c_as102_usb_start_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.as102_dev_t = type { i32* }

@MAX_STREAM_URB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.as102_dev_t*)* @as102_usb_start_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @as102_usb_start_stream(%struct.as102_dev_t* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.as102_dev_t*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.as102_dev_t* %0, %struct.as102_dev_t** %3, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %27, %1
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @MAX_STREAM_URB, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %30

10:                                               ; preds = %6
  %11 = load %struct.as102_dev_t*, %struct.as102_dev_t** %3, align 8
  %12 = load %struct.as102_dev_t*, %struct.as102_dev_t** %3, align 8
  %13 = getelementptr inbounds %struct.as102_dev_t, %struct.as102_dev_t* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @as102_submit_urb_stream(%struct.as102_dev_t* %11, i32 %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %10
  %23 = load %struct.as102_dev_t*, %struct.as102_dev_t** %3, align 8
  %24 = call i32 @as102_usb_stop_stream(%struct.as102_dev_t* %23)
  %25 = load i32, i32* %5, align 4
  store i32 %25, i32* %2, align 4
  br label %31

26:                                               ; preds = %10
  br label %27

27:                                               ; preds = %26
  %28 = load i32, i32* %4, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %4, align 4
  br label %6

30:                                               ; preds = %6
  store i32 0, i32* %2, align 4
  br label %31

31:                                               ; preds = %30, %22
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i32 @as102_submit_urb_stream(%struct.as102_dev_t*, i32) #1

declare dso_local i32 @as102_usb_stop_stream(%struct.as102_dev_t*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
