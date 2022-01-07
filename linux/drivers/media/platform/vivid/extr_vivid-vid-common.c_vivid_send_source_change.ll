; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vivid/extr_vivid-vid-common.c_vivid_send_source_change.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vivid/extr_vivid-vid-common.c_vivid_send_source_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vivid_dev = type { i32, i32*, i32, i64, i32, i64 }
%struct.v4l2_event = type { i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@V4L2_EVENT_SRC_CH_RESOLUTION = common dso_local global i32 0, align 4
@V4L2_EVENT_SOURCE_CHANGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vivid_send_source_change(%struct.vivid_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.vivid_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.v4l2_event, align 4
  %6 = alloca i32, align 4
  store %struct.vivid_dev* %0, %struct.vivid_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = getelementptr inbounds %struct.v4l2_event, %struct.v4l2_event* %5, i32 0, i32 0
  store i32 0, i32* %7, align 4
  %8 = getelementptr inbounds %struct.v4l2_event, %struct.v4l2_event* %5, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* @V4L2_EVENT_SRC_CH_RESOLUTION, align 4
  store i32 %11, i32* %10, align 4
  %12 = getelementptr inbounds %struct.v4l2_event, %struct.v4l2_event* %5, i32 0, i32 2
  %13 = load i32, i32* @V4L2_EVENT_SOURCE_CHANGE, align 4
  store i32 %13, i32* %12, align 4
  store i32 0, i32* %6, align 4
  br label %14

14:                                               ; preds = %62, %2
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %17 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ult i32 %15, %18
  br i1 %19, label %20, label %65

20:                                               ; preds = %14
  %21 = load i32, i32* %6, align 4
  %22 = getelementptr inbounds %struct.v4l2_event, %struct.v4l2_event* %5, i32 0, i32 0
  store i32 %21, i32* %22, align 4
  %23 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %24 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %61

32:                                               ; preds = %20
  %33 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %34 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %33, i32 0, i32 4
  %35 = call i64 @video_is_registered(i32* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %32
  %38 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %39 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %38, i32 0, i32 5
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %37
  %43 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %44 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %43, i32 0, i32 4
  %45 = call i32 @v4l2_event_queue(i32* %44, %struct.v4l2_event* %5)
  br label %46

46:                                               ; preds = %42, %37, %32
  %47 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %48 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %47, i32 0, i32 2
  %49 = call i64 @video_is_registered(i32* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %60

51:                                               ; preds = %46
  %52 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %53 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %52, i32 0, i32 3
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %51
  %57 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %58 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %57, i32 0, i32 2
  %59 = call i32 @v4l2_event_queue(i32* %58, %struct.v4l2_event* %5)
  br label %60

60:                                               ; preds = %56, %51, %46
  br label %61

61:                                               ; preds = %60, %20
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %6, align 4
  %64 = add i32 %63, 1
  store i32 %64, i32* %6, align 4
  br label %14

65:                                               ; preds = %14
  ret void
}

declare dso_local i64 @video_is_registered(i32*) #1

declare dso_local i32 @v4l2_event_queue(i32*, %struct.v4l2_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
