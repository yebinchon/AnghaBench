; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_usb-urb.c_usb_urb_exit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_usb-urb.c_usb_urb_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_data_stream = type { i32, i32** }

@.str = private unnamed_addr constant [21 x i8] c"freeing URB no. %d.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usb_urb_exit(%struct.usb_data_stream* %0) #0 {
  %2 = alloca %struct.usb_data_stream*, align 8
  %3 = alloca i32, align 4
  store %struct.usb_data_stream* %0, %struct.usb_data_stream** %2, align 8
  %4 = load %struct.usb_data_stream*, %struct.usb_data_stream** %2, align 8
  %5 = call i32 @usb_urb_kill(%struct.usb_data_stream* %4)
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %33, %1
  %7 = load i32, i32* %3, align 4
  %8 = load %struct.usb_data_stream*, %struct.usb_data_stream** %2, align 8
  %9 = getelementptr inbounds %struct.usb_data_stream, %struct.usb_data_stream* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp slt i32 %7, %10
  br i1 %11, label %12, label %36

12:                                               ; preds = %6
  %13 = load %struct.usb_data_stream*, %struct.usb_data_stream** %2, align 8
  %14 = getelementptr inbounds %struct.usb_data_stream, %struct.usb_data_stream* %13, i32 0, i32 1
  %15 = load i32**, i32*** %14, align 8
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32*, i32** %15, i64 %17
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %32

21:                                               ; preds = %12
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @deb_mem(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load %struct.usb_data_stream*, %struct.usb_data_stream** %2, align 8
  %25 = getelementptr inbounds %struct.usb_data_stream, %struct.usb_data_stream* %24, i32 0, i32 1
  %26 = load i32**, i32*** %25, align 8
  %27 = load i32, i32* %3, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32*, i32** %26, i64 %28
  %30 = load i32*, i32** %29, align 8
  %31 = call i32 @usb_free_urb(i32* %30)
  br label %32

32:                                               ; preds = %21, %12
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %3, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %3, align 4
  br label %6

36:                                               ; preds = %6
  %37 = load %struct.usb_data_stream*, %struct.usb_data_stream** %2, align 8
  %38 = getelementptr inbounds %struct.usb_data_stream, %struct.usb_data_stream* %37, i32 0, i32 0
  store i32 0, i32* %38, align 8
  %39 = load %struct.usb_data_stream*, %struct.usb_data_stream** %2, align 8
  %40 = call i32 @usb_free_stream_buffers(%struct.usb_data_stream* %39)
  ret i32 0
}

declare dso_local i32 @usb_urb_kill(%struct.usb_data_stream*) #1

declare dso_local i32 @deb_mem(i8*, i32) #1

declare dso_local i32 @usb_free_urb(i32*) #1

declare dso_local i32 @usb_free_stream_buffers(%struct.usb_data_stream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
