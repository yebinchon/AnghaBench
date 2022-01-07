; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_video.c_vsp1_video_querycap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_video.c_vsp1_video_querycap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.v4l2_fh* }
%struct.v4l2_fh = type { i32 }
%struct.v4l2_capability = type { i32, i32, i32, i32 }
%struct.vsp1_video = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i8* }

@V4L2_CAP_DEVICE_CAPS = common dso_local global i32 0, align 4
@V4L2_CAP_STREAMING = common dso_local global i32 0, align 4
@V4L2_CAP_VIDEO_CAPTURE_MPLANE = common dso_local global i32 0, align 4
@V4L2_CAP_VIDEO_OUTPUT_MPLANE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"vsp1\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"platform:%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_capability*)* @vsp1_video_querycap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vsp1_video_querycap(%struct.file* %0, i8* %1, %struct.v4l2_capability* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.v4l2_capability*, align 8
  %7 = alloca %struct.v4l2_fh*, align 8
  %8 = alloca %struct.vsp1_video*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.v4l2_capability* %2, %struct.v4l2_capability** %6, align 8
  %9 = load %struct.file*, %struct.file** %4, align 8
  %10 = getelementptr inbounds %struct.file, %struct.file* %9, i32 0, i32 0
  %11 = load %struct.v4l2_fh*, %struct.v4l2_fh** %10, align 8
  store %struct.v4l2_fh* %11, %struct.v4l2_fh** %7, align 8
  %12 = load %struct.v4l2_fh*, %struct.v4l2_fh** %7, align 8
  %13 = getelementptr inbounds %struct.v4l2_fh, %struct.v4l2_fh* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.vsp1_video* @to_vsp1_video(i32 %14)
  store %struct.vsp1_video* %15, %struct.vsp1_video** %8, align 8
  %16 = load i32, i32* @V4L2_CAP_DEVICE_CAPS, align 4
  %17 = load i32, i32* @V4L2_CAP_STREAMING, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @V4L2_CAP_VIDEO_CAPTURE_MPLANE, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @V4L2_CAP_VIDEO_OUTPUT_MPLANE, align 4
  %22 = or i32 %20, %21
  %23 = load %struct.v4l2_capability*, %struct.v4l2_capability** %6, align 8
  %24 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load %struct.v4l2_capability*, %struct.v4l2_capability** %6, align 8
  %26 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @strscpy(i32 %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %29 = load %struct.v4l2_capability*, %struct.v4l2_capability** %6, align 8
  %30 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.vsp1_video*, %struct.vsp1_video** %8, align 8
  %33 = getelementptr inbounds %struct.vsp1_video, %struct.vsp1_video* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 @strscpy(i32 %31, i8* %35, i32 4)
  %37 = load %struct.v4l2_capability*, %struct.v4l2_capability** %6, align 8
  %38 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.vsp1_video*, %struct.vsp1_video** %8, align 8
  %41 = getelementptr inbounds %struct.vsp1_video, %struct.vsp1_video* %40, i32 0, i32 0
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i8* @dev_name(i32 %44)
  %46 = call i32 @snprintf(i32 %39, i32 4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %45)
  ret i32 0
}

declare dso_local %struct.vsp1_video* @to_vsp1_video(i32) #1

declare dso_local i32 @strscpy(i32, i8*, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

declare dso_local i8* @dev_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
