; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/airspy/extr_airspy.c_airspy_free_stream_bufs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/airspy/extr_airspy.c_airspy_free_stream_bufs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.airspy = type { i32, i32, i32*, i32*, i32, i32, i32 }

@USB_STATE_URB_BUF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"free buf=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.airspy*)* @airspy_free_stream_bufs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @airspy_free_stream_bufs(%struct.airspy* %0) #0 {
  %2 = alloca %struct.airspy*, align 8
  store %struct.airspy* %0, %struct.airspy** %2, align 8
  %3 = load i32, i32* @USB_STATE_URB_BUF, align 4
  %4 = load %struct.airspy*, %struct.airspy** %2, align 8
  %5 = getelementptr inbounds %struct.airspy, %struct.airspy* %4, i32 0, i32 1
  %6 = call i64 @test_bit(i32 %3, i32* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %52

8:                                                ; preds = %1
  br label %9

9:                                                ; preds = %14, %8
  %10 = load %struct.airspy*, %struct.airspy** %2, align 8
  %11 = getelementptr inbounds %struct.airspy, %struct.airspy* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %51

14:                                               ; preds = %9
  %15 = load %struct.airspy*, %struct.airspy** %2, align 8
  %16 = getelementptr inbounds %struct.airspy, %struct.airspy* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = add nsw i32 %17, -1
  store i32 %18, i32* %16, align 8
  %19 = load %struct.airspy*, %struct.airspy** %2, align 8
  %20 = getelementptr inbounds %struct.airspy, %struct.airspy* %19, i32 0, i32 6
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.airspy*, %struct.airspy** %2, align 8
  %23 = getelementptr inbounds %struct.airspy, %struct.airspy* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @dev_dbg(i32 %21, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load %struct.airspy*, %struct.airspy** %2, align 8
  %27 = getelementptr inbounds %struct.airspy, %struct.airspy* %26, i32 0, i32 5
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.airspy*, %struct.airspy** %2, align 8
  %30 = getelementptr inbounds %struct.airspy, %struct.airspy* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.airspy*, %struct.airspy** %2, align 8
  %33 = getelementptr inbounds %struct.airspy, %struct.airspy* %32, i32 0, i32 3
  %34 = load i32*, i32** %33, align 8
  %35 = load %struct.airspy*, %struct.airspy** %2, align 8
  %36 = getelementptr inbounds %struct.airspy, %struct.airspy* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %34, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.airspy*, %struct.airspy** %2, align 8
  %42 = getelementptr inbounds %struct.airspy, %struct.airspy* %41, i32 0, i32 2
  %43 = load i32*, i32** %42, align 8
  %44 = load %struct.airspy*, %struct.airspy** %2, align 8
  %45 = getelementptr inbounds %struct.airspy, %struct.airspy* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %43, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @usb_free_coherent(i32 %28, i32 %31, i32 %40, i32 %49)
  br label %9

51:                                               ; preds = %9
  br label %52

52:                                               ; preds = %51, %1
  %53 = load i32, i32* @USB_STATE_URB_BUF, align 4
  %54 = load %struct.airspy*, %struct.airspy** %2, align 8
  %55 = getelementptr inbounds %struct.airspy, %struct.airspy* %54, i32 0, i32 1
  %56 = call i32 @clear_bit(i32 %53, i32* %55)
  ret i32 0
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @usb_free_coherent(i32, i32, i32, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
