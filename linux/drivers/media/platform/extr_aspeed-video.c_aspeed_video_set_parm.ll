; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_aspeed-video.c_aspeed_video_set_parm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_aspeed-video.c_aspeed_video_set_parm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_streamparm = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.aspeed_video = type { i32 }

@V4L2_CAP_TIMEPERFRAME = common dso_local global i32 0, align 4
@MAX_FRAME_RATE = common dso_local global i32 0, align 4
@VE_CTRL = common dso_local global i32 0, align 4
@VE_CTRL_FRC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_streamparm*)* @aspeed_video_set_parm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aspeed_video_set_parm(%struct.file* %0, i8* %1, %struct.v4l2_streamparm* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.v4l2_streamparm*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.aspeed_video*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.v4l2_streamparm* %2, %struct.v4l2_streamparm** %6, align 8
  store i32 0, i32* %7, align 4
  %9 = load %struct.file*, %struct.file** %4, align 8
  %10 = call %struct.aspeed_video* @video_drvdata(%struct.file* %9)
  store %struct.aspeed_video* %10, %struct.aspeed_video** %8, align 8
  %11 = load i32, i32* @V4L2_CAP_TIMEPERFRAME, align 4
  %12 = load %struct.v4l2_streamparm*, %struct.v4l2_streamparm** %6, align 8
  %13 = getelementptr inbounds %struct.v4l2_streamparm, %struct.v4l2_streamparm* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 2
  store i32 %11, i32* %15, align 4
  %16 = load %struct.v4l2_streamparm*, %struct.v4l2_streamparm** %6, align 8
  %17 = getelementptr inbounds %struct.v4l2_streamparm, %struct.v4l2_streamparm* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  store i32 3, i32* %19, align 4
  %20 = load %struct.v4l2_streamparm*, %struct.v4l2_streamparm** %6, align 8
  %21 = getelementptr inbounds %struct.v4l2_streamparm, %struct.v4l2_streamparm* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %41

27:                                               ; preds = %3
  %28 = load %struct.v4l2_streamparm*, %struct.v4l2_streamparm** %6, align 8
  %29 = getelementptr inbounds %struct.v4l2_streamparm, %struct.v4l2_streamparm* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.v4l2_streamparm*, %struct.v4l2_streamparm** %6, align 8
  %35 = getelementptr inbounds %struct.v4l2_streamparm, %struct.v4l2_streamparm* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = udiv i32 %33, %39
  store i32 %40, i32* %7, align 4
  br label %41

41:                                               ; preds = %27, %3
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %41
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @MAX_FRAME_RATE, align 4
  %47 = icmp ugt i32 %45, %46
  br i1 %47, label %48, label %60

48:                                               ; preds = %44, %41
  store i32 0, i32* %7, align 4
  %49 = load i32, i32* @MAX_FRAME_RATE, align 4
  %50 = load %struct.v4l2_streamparm*, %struct.v4l2_streamparm** %6, align 8
  %51 = getelementptr inbounds %struct.v4l2_streamparm, %struct.v4l2_streamparm* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  store i32 %49, i32* %54, align 4
  %55 = load %struct.v4l2_streamparm*, %struct.v4l2_streamparm** %6, align 8
  %56 = getelementptr inbounds %struct.v4l2_streamparm, %struct.v4l2_streamparm* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  store i32 1, i32* %59, align 4
  br label %60

60:                                               ; preds = %48, %44
  %61 = load %struct.aspeed_video*, %struct.aspeed_video** %8, align 8
  %62 = getelementptr inbounds %struct.aspeed_video, %struct.aspeed_video* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %7, align 4
  %65 = icmp ne i32 %63, %64
  br i1 %65, label %66, label %77

66:                                               ; preds = %60
  %67 = load i32, i32* %7, align 4
  %68 = load %struct.aspeed_video*, %struct.aspeed_video** %8, align 8
  %69 = getelementptr inbounds %struct.aspeed_video, %struct.aspeed_video* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 4
  %70 = load %struct.aspeed_video*, %struct.aspeed_video** %8, align 8
  %71 = load i32, i32* @VE_CTRL, align 4
  %72 = load i32, i32* @VE_CTRL_FRC, align 4
  %73 = load i32, i32* @VE_CTRL_FRC, align 4
  %74 = load i32, i32* %7, align 4
  %75 = call i32 @FIELD_PREP(i32 %73, i32 %74)
  %76 = call i32 @aspeed_video_update(%struct.aspeed_video* %70, i32 %71, i32 %72, i32 %75)
  br label %77

77:                                               ; preds = %66, %60
  ret i32 0
}

declare dso_local %struct.aspeed_video* @video_drvdata(%struct.file*) #1

declare dso_local i32 @aspeed_video_update(%struct.aspeed_video*, i32, i32, i32) #1

declare dso_local i32 @FIELD_PREP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
