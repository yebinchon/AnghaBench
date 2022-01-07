; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/hackrf/extr_hackrf.c_hackrf_kill_urbs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/hackrf/extr_hackrf.c_hackrf_kill_urbs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hackrf_dev = type { i32, i32*, i32 }

@.str = private unnamed_addr constant [13 x i8] c"kill urb=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hackrf_dev*)* @hackrf_kill_urbs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hackrf_kill_urbs(%struct.hackrf_dev* %0) #0 {
  %2 = alloca %struct.hackrf_dev*, align 8
  %3 = alloca i32, align 4
  store %struct.hackrf_dev* %0, %struct.hackrf_dev** %2, align 8
  %4 = load %struct.hackrf_dev*, %struct.hackrf_dev** %2, align 8
  %5 = getelementptr inbounds %struct.hackrf_dev, %struct.hackrf_dev* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = sub nsw i32 %6, 1
  store i32 %7, i32* %3, align 4
  br label %8

8:                                                ; preds = %25, %1
  %9 = load i32, i32* %3, align 4
  %10 = icmp sge i32 %9, 0
  br i1 %10, label %11, label %28

11:                                               ; preds = %8
  %12 = load %struct.hackrf_dev*, %struct.hackrf_dev** %2, align 8
  %13 = getelementptr inbounds %struct.hackrf_dev, %struct.hackrf_dev* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @dev_dbg(i32 %14, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load %struct.hackrf_dev*, %struct.hackrf_dev** %2, align 8
  %18 = getelementptr inbounds %struct.hackrf_dev, %struct.hackrf_dev* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %3, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @usb_kill_urb(i32 %23)
  br label %25

25:                                               ; preds = %11
  %26 = load i32, i32* %3, align 4
  %27 = add nsw i32 %26, -1
  store i32 %27, i32* %3, align 4
  br label %8

28:                                               ; preds = %8
  %29 = load %struct.hackrf_dev*, %struct.hackrf_dev** %2, align 8
  %30 = getelementptr inbounds %struct.hackrf_dev, %struct.hackrf_dev* %29, i32 0, i32 0
  store i32 0, i32* %30, align 8
  ret i32 0
}

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @usb_kill_urb(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
