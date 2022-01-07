; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/au0828/extr_au0828-video.c_au0828_v4l2_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/au0828/extr_au0828-video.c_au0828_v4l2_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.au0828_dev = type { i64, i32, i64, i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.urb** }
%struct.urb = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"stopping V4L2\0A\00", align 1
@STREAM_ON = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"stopping V4L2 active URBs\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @au0828_v4l2_suspend(%struct.au0828_dev* %0) #0 {
  %2 = alloca %struct.au0828_dev*, align 8
  %3 = alloca %struct.urb*, align 8
  %4 = alloca i32, align 4
  store %struct.au0828_dev* %0, %struct.au0828_dev** %2, align 8
  %5 = call i32 @pr_info(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %6 = load %struct.au0828_dev*, %struct.au0828_dev** %2, align 8
  %7 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @STREAM_ON, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %48

11:                                               ; preds = %1
  %12 = call i32 @pr_info(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %13 = load %struct.au0828_dev*, %struct.au0828_dev** %2, align 8
  %14 = call i32 @au0828_analog_stream_disable(%struct.au0828_dev* %13)
  store i32 0, i32* %4, align 4
  br label %15

15:                                               ; preds = %44, %11
  %16 = load i32, i32* %4, align 4
  %17 = load %struct.au0828_dev*, %struct.au0828_dev** %2, align 8
  %18 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %17, i32 0, i32 5
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %16, %20
  br i1 %21, label %22, label %47

22:                                               ; preds = %15
  %23 = load %struct.au0828_dev*, %struct.au0828_dev** %2, align 8
  %24 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %23, i32 0, i32 5
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load %struct.urb**, %struct.urb*** %25, align 8
  %27 = load i32, i32* %4, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.urb*, %struct.urb** %26, i64 %28
  %30 = load %struct.urb*, %struct.urb** %29, align 8
  store %struct.urb* %30, %struct.urb** %3, align 8
  %31 = load %struct.urb*, %struct.urb** %3, align 8
  %32 = icmp ne %struct.urb* %31, null
  br i1 %32, label %33, label %43

33:                                               ; preds = %22
  %34 = call i32 (...) @irqs_disabled()
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %33
  %37 = load %struct.urb*, %struct.urb** %3, align 8
  %38 = call i32 @usb_kill_urb(%struct.urb* %37)
  br label %42

39:                                               ; preds = %33
  %40 = load %struct.urb*, %struct.urb** %3, align 8
  %41 = call i32 @usb_unlink_urb(%struct.urb* %40)
  br label %42

42:                                               ; preds = %39, %36
  br label %43

43:                                               ; preds = %42, %22
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %4, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %4, align 4
  br label %15

47:                                               ; preds = %15
  br label %48

48:                                               ; preds = %47, %1
  %49 = load %struct.au0828_dev*, %struct.au0828_dev** %2, align 8
  %50 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %49, i32 0, i32 4
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %48
  %54 = load %struct.au0828_dev*, %struct.au0828_dev** %2, align 8
  %55 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %54, i32 0, i32 3
  %56 = call i32 @del_timer_sync(i32* %55)
  br label %57

57:                                               ; preds = %53, %48
  %58 = load %struct.au0828_dev*, %struct.au0828_dev** %2, align 8
  %59 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %57
  %63 = load %struct.au0828_dev*, %struct.au0828_dev** %2, align 8
  %64 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %63, i32 0, i32 1
  %65 = call i32 @del_timer_sync(i32* %64)
  br label %66

66:                                               ; preds = %62, %57
  ret void
}

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @au0828_analog_stream_disable(%struct.au0828_dev*) #1

declare dso_local i32 @irqs_disabled(...) #1

declare dso_local i32 @usb_kill_urb(%struct.urb*) #1

declare dso_local i32 @usb_unlink_urb(%struct.urb*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
