; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_usb_urb.c_usb_free_stream_buffers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_usb_urb.c_usb_free_stream_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_data_stream = type { i32, i32, i32* }

@USB_STATE_URB_BUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_data_stream*)* @usb_free_stream_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usb_free_stream_buffers(%struct.usb_data_stream* %0) #0 {
  %2 = alloca %struct.usb_data_stream*, align 8
  store %struct.usb_data_stream* %0, %struct.usb_data_stream** %2, align 8
  %3 = load %struct.usb_data_stream*, %struct.usb_data_stream** %2, align 8
  %4 = getelementptr inbounds %struct.usb_data_stream, %struct.usb_data_stream* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = load i32, i32* @USB_STATE_URB_BUF, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %31

9:                                                ; preds = %1
  br label %10

10:                                               ; preds = %15, %9
  %11 = load %struct.usb_data_stream*, %struct.usb_data_stream** %2, align 8
  %12 = getelementptr inbounds %struct.usb_data_stream, %struct.usb_data_stream* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %30

15:                                               ; preds = %10
  %16 = load %struct.usb_data_stream*, %struct.usb_data_stream** %2, align 8
  %17 = getelementptr inbounds %struct.usb_data_stream, %struct.usb_data_stream* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = add nsw i32 %18, -1
  store i32 %19, i32* %17, align 4
  %20 = load %struct.usb_data_stream*, %struct.usb_data_stream** %2, align 8
  %21 = getelementptr inbounds %struct.usb_data_stream, %struct.usb_data_stream* %20, i32 0, i32 2
  %22 = load i32*, i32** %21, align 8
  %23 = load %struct.usb_data_stream*, %struct.usb_data_stream** %2, align 8
  %24 = getelementptr inbounds %struct.usb_data_stream, %struct.usb_data_stream* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %22, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @kfree(i32 %28)
  br label %10

30:                                               ; preds = %10
  br label %31

31:                                               ; preds = %30, %1
  %32 = load i32, i32* @USB_STATE_URB_BUF, align 4
  %33 = xor i32 %32, -1
  %34 = load %struct.usb_data_stream*, %struct.usb_data_stream** %2, align 8
  %35 = getelementptr inbounds %struct.usb_data_stream, %struct.usb_data_stream* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = and i32 %36, %33
  store i32 %37, i32* %35, align 8
  ret i32 0
}

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
