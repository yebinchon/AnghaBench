; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/hackrf/extr_hackrf.c_hackrf_free_stream_bufs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/hackrf/extr_hackrf.c_hackrf_free_stream_bufs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hackrf_dev = type { i32, i32, i32*, i32*, i32, i32, i32 }

@USB_STATE_URB_BUF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"free buf=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hackrf_dev*)* @hackrf_free_stream_bufs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hackrf_free_stream_bufs(%struct.hackrf_dev* %0) #0 {
  %2 = alloca %struct.hackrf_dev*, align 8
  store %struct.hackrf_dev* %0, %struct.hackrf_dev** %2, align 8
  %3 = load %struct.hackrf_dev*, %struct.hackrf_dev** %2, align 8
  %4 = getelementptr inbounds %struct.hackrf_dev, %struct.hackrf_dev* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = load i32, i32* @USB_STATE_URB_BUF, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %53

9:                                                ; preds = %1
  br label %10

10:                                               ; preds = %15, %9
  %11 = load %struct.hackrf_dev*, %struct.hackrf_dev** %2, align 8
  %12 = getelementptr inbounds %struct.hackrf_dev, %struct.hackrf_dev* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %52

15:                                               ; preds = %10
  %16 = load %struct.hackrf_dev*, %struct.hackrf_dev** %2, align 8
  %17 = getelementptr inbounds %struct.hackrf_dev, %struct.hackrf_dev* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = add nsw i32 %18, -1
  store i32 %19, i32* %17, align 4
  %20 = load %struct.hackrf_dev*, %struct.hackrf_dev** %2, align 8
  %21 = getelementptr inbounds %struct.hackrf_dev, %struct.hackrf_dev* %20, i32 0, i32 6
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.hackrf_dev*, %struct.hackrf_dev** %2, align 8
  %24 = getelementptr inbounds %struct.hackrf_dev, %struct.hackrf_dev* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @dev_dbg(i32 %22, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load %struct.hackrf_dev*, %struct.hackrf_dev** %2, align 8
  %28 = getelementptr inbounds %struct.hackrf_dev, %struct.hackrf_dev* %27, i32 0, i32 5
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.hackrf_dev*, %struct.hackrf_dev** %2, align 8
  %31 = getelementptr inbounds %struct.hackrf_dev, %struct.hackrf_dev* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.hackrf_dev*, %struct.hackrf_dev** %2, align 8
  %34 = getelementptr inbounds %struct.hackrf_dev, %struct.hackrf_dev* %33, i32 0, i32 3
  %35 = load i32*, i32** %34, align 8
  %36 = load %struct.hackrf_dev*, %struct.hackrf_dev** %2, align 8
  %37 = getelementptr inbounds %struct.hackrf_dev, %struct.hackrf_dev* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %35, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.hackrf_dev*, %struct.hackrf_dev** %2, align 8
  %43 = getelementptr inbounds %struct.hackrf_dev, %struct.hackrf_dev* %42, i32 0, i32 2
  %44 = load i32*, i32** %43, align 8
  %45 = load %struct.hackrf_dev*, %struct.hackrf_dev** %2, align 8
  %46 = getelementptr inbounds %struct.hackrf_dev, %struct.hackrf_dev* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %44, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @usb_free_coherent(i32 %29, i32 %32, i32 %41, i32 %50)
  br label %10

52:                                               ; preds = %10
  br label %53

53:                                               ; preds = %52, %1
  %54 = load i32, i32* @USB_STATE_URB_BUF, align 4
  %55 = xor i32 %54, -1
  %56 = load %struct.hackrf_dev*, %struct.hackrf_dev** %2, align 8
  %57 = getelementptr inbounds %struct.hackrf_dev, %struct.hackrf_dev* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = and i32 %58, %55
  store i32 %59, i32* %57, align 8
  ret i32 0
}

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @usb_free_coherent(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
