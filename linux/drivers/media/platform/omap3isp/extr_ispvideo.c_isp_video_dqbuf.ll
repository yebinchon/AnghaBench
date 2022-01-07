; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispvideo.c_isp_video_dqbuf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispvideo.c_isp_video_dqbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_buffer = type { i32 }
%struct.isp_video_fh = type { i32 }
%struct.isp_video = type { i32 }

@O_NONBLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_buffer*)* @isp_video_dqbuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isp_video_dqbuf(%struct.file* %0, i8* %1, %struct.v4l2_buffer* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.v4l2_buffer*, align 8
  %7 = alloca %struct.isp_video_fh*, align 8
  %8 = alloca %struct.isp_video*, align 8
  %9 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.v4l2_buffer* %2, %struct.v4l2_buffer** %6, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = call %struct.isp_video_fh* @to_isp_video_fh(i8* %10)
  store %struct.isp_video_fh* %11, %struct.isp_video_fh** %7, align 8
  %12 = load %struct.file*, %struct.file** %4, align 8
  %13 = call %struct.isp_video* @video_drvdata(%struct.file* %12)
  store %struct.isp_video* %13, %struct.isp_video** %8, align 8
  %14 = load %struct.isp_video*, %struct.isp_video** %8, align 8
  %15 = getelementptr inbounds %struct.isp_video, %struct.isp_video* %14, i32 0, i32 0
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load %struct.isp_video_fh*, %struct.isp_video_fh** %7, align 8
  %18 = getelementptr inbounds %struct.isp_video_fh, %struct.isp_video_fh* %17, i32 0, i32 0
  %19 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %6, align 8
  %20 = load %struct.file*, %struct.file** %4, align 8
  %21 = getelementptr inbounds %struct.file, %struct.file* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @O_NONBLOCK, align 4
  %24 = and i32 %22, %23
  %25 = call i32 @vb2_dqbuf(i32* %18, %struct.v4l2_buffer* %19, i32 %24)
  store i32 %25, i32* %9, align 4
  %26 = load %struct.isp_video*, %struct.isp_video** %8, align 8
  %27 = getelementptr inbounds %struct.isp_video, %struct.isp_video* %26, i32 0, i32 0
  %28 = call i32 @mutex_unlock(i32* %27)
  %29 = load i32, i32* %9, align 4
  ret i32 %29
}

declare dso_local %struct.isp_video_fh* @to_isp_video_fh(i8*) #1

declare dso_local %struct.isp_video* @video_drvdata(%struct.file*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @vb2_dqbuf(i32*, %struct.v4l2_buffer*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
