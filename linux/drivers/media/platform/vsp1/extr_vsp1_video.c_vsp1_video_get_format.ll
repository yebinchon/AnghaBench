; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_video.c_vsp1_video_get_format.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_video.c_vsp1_video_get_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.v4l2_fh* }
%struct.v4l2_fh = type { i32 }
%struct.v4l2_format = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.vsp1_video = type { i32, %struct.TYPE_4__*, %struct.TYPE_5__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_format*)* @vsp1_video_get_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vsp1_video_get_format(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_format*, align 8
  %8 = alloca %struct.v4l2_fh*, align 8
  %9 = alloca %struct.vsp1_video*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %7, align 8
  %10 = load %struct.file*, %struct.file** %5, align 8
  %11 = getelementptr inbounds %struct.file, %struct.file* %10, i32 0, i32 0
  %12 = load %struct.v4l2_fh*, %struct.v4l2_fh** %11, align 8
  store %struct.v4l2_fh* %12, %struct.v4l2_fh** %8, align 8
  %13 = load %struct.v4l2_fh*, %struct.v4l2_fh** %8, align 8
  %14 = getelementptr inbounds %struct.v4l2_fh, %struct.v4l2_fh* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.vsp1_video* @to_vsp1_video(i32 %15)
  store %struct.vsp1_video* %16, %struct.vsp1_video** %9, align 8
  %17 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %18 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.vsp1_video*, %struct.vsp1_video** %9, align 8
  %21 = getelementptr inbounds %struct.vsp1_video, %struct.vsp1_video* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %19, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %3
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %43

28:                                               ; preds = %3
  %29 = load %struct.vsp1_video*, %struct.vsp1_video** %9, align 8
  %30 = getelementptr inbounds %struct.vsp1_video, %struct.vsp1_video* %29, i32 0, i32 0
  %31 = call i32 @mutex_lock(i32* %30)
  %32 = load %struct.vsp1_video*, %struct.vsp1_video** %9, align 8
  %33 = getelementptr inbounds %struct.vsp1_video, %struct.vsp1_video* %32, i32 0, i32 1
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %38 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  store i32 %36, i32* %39, align 8
  %40 = load %struct.vsp1_video*, %struct.vsp1_video** %9, align 8
  %41 = getelementptr inbounds %struct.vsp1_video, %struct.vsp1_video* %40, i32 0, i32 0
  %42 = call i32 @mutex_unlock(i32* %41)
  store i32 0, i32* %4, align 4
  br label %43

43:                                               ; preds = %28, %25
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local %struct.vsp1_video* @to_vsp1_video(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
