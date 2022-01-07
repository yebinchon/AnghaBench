; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_usb-urb.c_usb_urb_submit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_usb-urb.c_usb_urb_submit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_data_stream = type { i32, i32, i32* }

@.str = private unnamed_addr constant [23 x i8] c"submitting URB no. %d\0A\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"could not submit URB no. %d - get them all back\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usb_urb_submit(%struct.usb_data_stream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_data_stream*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.usb_data_stream* %0, %struct.usb_data_stream** %3, align 8
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %36, %1
  %7 = load i32, i32* %4, align 4
  %8 = load %struct.usb_data_stream*, %struct.usb_data_stream** %3, align 8
  %9 = getelementptr inbounds %struct.usb_data_stream, %struct.usb_data_stream* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp slt i32 %7, %10
  br i1 %11, label %12, label %39

12:                                               ; preds = %6
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @deb_ts(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load %struct.usb_data_stream*, %struct.usb_data_stream** %3, align 8
  %16 = getelementptr inbounds %struct.usb_data_stream, %struct.usb_data_stream* %15, i32 0, i32 2
  %17 = load i32*, i32** %16, align 8
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @GFP_ATOMIC, align 4
  %23 = call i32 @usb_submit_urb(i32 %21, i32 %22)
  store i32 %23, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %12
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @err(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  %28 = load %struct.usb_data_stream*, %struct.usb_data_stream** %3, align 8
  %29 = call i32 @usb_urb_kill(%struct.usb_data_stream* %28)
  %30 = load i32, i32* %5, align 4
  store i32 %30, i32* %2, align 4
  br label %40

31:                                               ; preds = %12
  %32 = load %struct.usb_data_stream*, %struct.usb_data_stream** %3, align 8
  %33 = getelementptr inbounds %struct.usb_data_stream, %struct.usb_data_stream* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %33, align 4
  br label %36

36:                                               ; preds = %31
  %37 = load i32, i32* %4, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %4, align 4
  br label %6

39:                                               ; preds = %6
  store i32 0, i32* %2, align 4
  br label %40

40:                                               ; preds = %39, %25
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i32 @deb_ts(i8*, i32) #1

declare dso_local i32 @usb_submit_urb(i32, i32) #1

declare dso_local i32 @err(i8*, i32) #1

declare dso_local i32 @usb_urb_kill(%struct.usb_data_stream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
