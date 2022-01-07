; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_usb-urb.c_usb_free_stream_buffers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_usb-urb.c_usb_free_stream_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_data_stream = type { i32, i32, i32*, i32*, i32, i32 }

@USB_STATE_URB_BUF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"freeing buffer %d\0A\00", align 1
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
  br i1 %8, label %9, label %50

9:                                                ; preds = %1
  br label %10

10:                                               ; preds = %15, %9
  %11 = load %struct.usb_data_stream*, %struct.usb_data_stream** %2, align 8
  %12 = getelementptr inbounds %struct.usb_data_stream, %struct.usb_data_stream* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %49

15:                                               ; preds = %10
  %16 = load %struct.usb_data_stream*, %struct.usb_data_stream** %2, align 8
  %17 = getelementptr inbounds %struct.usb_data_stream, %struct.usb_data_stream* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = add nsw i32 %18, -1
  store i32 %19, i32* %17, align 4
  %20 = load %struct.usb_data_stream*, %struct.usb_data_stream** %2, align 8
  %21 = getelementptr inbounds %struct.usb_data_stream, %struct.usb_data_stream* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @deb_mem(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load %struct.usb_data_stream*, %struct.usb_data_stream** %2, align 8
  %25 = getelementptr inbounds %struct.usb_data_stream, %struct.usb_data_stream* %24, i32 0, i32 5
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.usb_data_stream*, %struct.usb_data_stream** %2, align 8
  %28 = getelementptr inbounds %struct.usb_data_stream, %struct.usb_data_stream* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.usb_data_stream*, %struct.usb_data_stream** %2, align 8
  %31 = getelementptr inbounds %struct.usb_data_stream, %struct.usb_data_stream* %30, i32 0, i32 3
  %32 = load i32*, i32** %31, align 8
  %33 = load %struct.usb_data_stream*, %struct.usb_data_stream** %2, align 8
  %34 = getelementptr inbounds %struct.usb_data_stream, %struct.usb_data_stream* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %32, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.usb_data_stream*, %struct.usb_data_stream** %2, align 8
  %40 = getelementptr inbounds %struct.usb_data_stream, %struct.usb_data_stream* %39, i32 0, i32 2
  %41 = load i32*, i32** %40, align 8
  %42 = load %struct.usb_data_stream*, %struct.usb_data_stream** %2, align 8
  %43 = getelementptr inbounds %struct.usb_data_stream, %struct.usb_data_stream* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %41, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @usb_free_coherent(i32 %26, i32 %29, i32 %38, i32 %47)
  br label %10

49:                                               ; preds = %10
  br label %50

50:                                               ; preds = %49, %1
  %51 = load i32, i32* @USB_STATE_URB_BUF, align 4
  %52 = xor i32 %51, -1
  %53 = load %struct.usb_data_stream*, %struct.usb_data_stream** %2, align 8
  %54 = getelementptr inbounds %struct.usb_data_stream, %struct.usb_data_stream* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = and i32 %55, %52
  store i32 %56, i32* %54, align 8
  ret i32 0
}

declare dso_local i32 @deb_mem(i8*, i32) #1

declare dso_local i32 @usb_free_coherent(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
