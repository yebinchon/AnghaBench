; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_video.c_vsp1_video_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_video.c_vsp1_video_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.v4l2_fh* }
%struct.v4l2_fh = type { i32 }
%struct.vsp1_video = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.v4l2_fh* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @vsp1_video_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vsp1_video_release(%struct.file* %0) #0 {
  %2 = alloca %struct.file*, align 8
  %3 = alloca %struct.vsp1_video*, align 8
  %4 = alloca %struct.v4l2_fh*, align 8
  store %struct.file* %0, %struct.file** %2, align 8
  %5 = load %struct.file*, %struct.file** %2, align 8
  %6 = call %struct.vsp1_video* @video_drvdata(%struct.file* %5)
  store %struct.vsp1_video* %6, %struct.vsp1_video** %3, align 8
  %7 = load %struct.file*, %struct.file** %2, align 8
  %8 = getelementptr inbounds %struct.file, %struct.file* %7, i32 0, i32 0
  %9 = load %struct.v4l2_fh*, %struct.v4l2_fh** %8, align 8
  store %struct.v4l2_fh* %9, %struct.v4l2_fh** %4, align 8
  %10 = load %struct.vsp1_video*, %struct.vsp1_video** %3, align 8
  %11 = getelementptr inbounds %struct.vsp1_video, %struct.vsp1_video* %10, i32 0, i32 1
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load %struct.vsp1_video*, %struct.vsp1_video** %3, align 8
  %14 = getelementptr inbounds %struct.vsp1_video, %struct.vsp1_video* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.v4l2_fh*, %struct.v4l2_fh** %15, align 8
  %17 = load %struct.v4l2_fh*, %struct.v4l2_fh** %4, align 8
  %18 = icmp eq %struct.v4l2_fh* %16, %17
  br i1 %18, label %19, label %26

19:                                               ; preds = %1
  %20 = load %struct.vsp1_video*, %struct.vsp1_video** %3, align 8
  %21 = getelementptr inbounds %struct.vsp1_video, %struct.vsp1_video* %20, i32 0, i32 2
  %22 = call i32 @vb2_queue_release(%struct.TYPE_2__* %21)
  %23 = load %struct.vsp1_video*, %struct.vsp1_video** %3, align 8
  %24 = getelementptr inbounds %struct.vsp1_video, %struct.vsp1_video* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store %struct.v4l2_fh* null, %struct.v4l2_fh** %25, align 8
  br label %26

26:                                               ; preds = %19, %1
  %27 = load %struct.vsp1_video*, %struct.vsp1_video** %3, align 8
  %28 = getelementptr inbounds %struct.vsp1_video, %struct.vsp1_video* %27, i32 0, i32 1
  %29 = call i32 @mutex_unlock(i32* %28)
  %30 = load %struct.vsp1_video*, %struct.vsp1_video** %3, align 8
  %31 = getelementptr inbounds %struct.vsp1_video, %struct.vsp1_video* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @vsp1_device_put(i32 %32)
  %34 = load %struct.file*, %struct.file** %2, align 8
  %35 = call i32 @v4l2_fh_release(%struct.file* %34)
  %36 = load %struct.file*, %struct.file** %2, align 8
  %37 = getelementptr inbounds %struct.file, %struct.file* %36, i32 0, i32 0
  store %struct.v4l2_fh* null, %struct.v4l2_fh** %37, align 8
  ret i32 0
}

declare dso_local %struct.vsp1_video* @video_drvdata(%struct.file*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @vb2_queue_release(%struct.TYPE_2__*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @vsp1_device_put(i32) #1

declare dso_local i32 @v4l2_fh_release(%struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
