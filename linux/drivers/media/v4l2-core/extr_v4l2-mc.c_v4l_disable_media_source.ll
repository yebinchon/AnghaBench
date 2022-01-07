; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-mc.c_v4l_disable_media_source.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-mc.c_v4l_disable_media_source.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.video_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.media_device* }
%struct.media_device = type { i32, i32 (%struct.TYPE_4__*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @v4l_disable_media_source(%struct.video_device* %0) #0 {
  %2 = alloca %struct.video_device*, align 8
  %3 = alloca %struct.media_device*, align 8
  store %struct.video_device* %0, %struct.video_device** %2, align 8
  %4 = load %struct.video_device*, %struct.video_device** %2, align 8
  %5 = getelementptr inbounds %struct.video_device, %struct.video_device* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load %struct.media_device*, %struct.media_device** %7, align 8
  store %struct.media_device* %8, %struct.media_device** %3, align 8
  %9 = load %struct.media_device*, %struct.media_device** %3, align 8
  %10 = icmp ne %struct.media_device* %9, null
  br i1 %10, label %11, label %30

11:                                               ; preds = %1
  %12 = load %struct.media_device*, %struct.media_device** %3, align 8
  %13 = getelementptr inbounds %struct.media_device, %struct.media_device* %12, i32 0, i32 0
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load %struct.media_device*, %struct.media_device** %3, align 8
  %16 = getelementptr inbounds %struct.media_device, %struct.media_device* %15, i32 0, i32 1
  %17 = load i32 (%struct.TYPE_4__*)*, i32 (%struct.TYPE_4__*)** %16, align 8
  %18 = icmp ne i32 (%struct.TYPE_4__*)* %17, null
  br i1 %18, label %19, label %26

19:                                               ; preds = %11
  %20 = load %struct.media_device*, %struct.media_device** %3, align 8
  %21 = getelementptr inbounds %struct.media_device, %struct.media_device* %20, i32 0, i32 1
  %22 = load i32 (%struct.TYPE_4__*)*, i32 (%struct.TYPE_4__*)** %21, align 8
  %23 = load %struct.video_device*, %struct.video_device** %2, align 8
  %24 = getelementptr inbounds %struct.video_device, %struct.video_device* %23, i32 0, i32 0
  %25 = call i32 %22(%struct.TYPE_4__* %24)
  br label %26

26:                                               ; preds = %19, %11
  %27 = load %struct.media_device*, %struct.media_device** %3, align 8
  %28 = getelementptr inbounds %struct.media_device, %struct.media_device* %27, i32 0, i32 0
  %29 = call i32 @mutex_unlock(i32* %28)
  br label %30

30:                                               ; preds = %26, %1
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
