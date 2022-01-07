; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_video.c_vsp1_video_streamon.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_video.c_vsp1_video_streamon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i64 }
%struct.v4l2_fh = type { i32 }
%struct.vsp1_video = type { %struct.TYPE_5__, %struct.TYPE_6__, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_4__ = type { %struct.media_device }
%struct.media_device = type { i32 }
%struct.vsp1_pipeline = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, i32)* @vsp1_video_streamon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vsp1_video_streamon(%struct.file* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.v4l2_fh*, align 8
  %9 = alloca %struct.vsp1_video*, align 8
  %10 = alloca %struct.media_device*, align 8
  %11 = alloca %struct.vsp1_pipeline*, align 8
  %12 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.file*, %struct.file** %5, align 8
  %14 = getelementptr inbounds %struct.file, %struct.file* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.v4l2_fh*
  store %struct.v4l2_fh* %16, %struct.v4l2_fh** %8, align 8
  %17 = load %struct.v4l2_fh*, %struct.v4l2_fh** %8, align 8
  %18 = getelementptr inbounds %struct.v4l2_fh, %struct.v4l2_fh* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.vsp1_video* @to_vsp1_video(i32 %19)
  store %struct.vsp1_video* %20, %struct.vsp1_video** %9, align 8
  %21 = load %struct.vsp1_video*, %struct.vsp1_video** %9, align 8
  %22 = getelementptr inbounds %struct.vsp1_video, %struct.vsp1_video* %21, i32 0, i32 2
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  store %struct.media_device* %24, %struct.media_device** %10, align 8
  %25 = load %struct.vsp1_video*, %struct.vsp1_video** %9, align 8
  %26 = getelementptr inbounds %struct.vsp1_video, %struct.vsp1_video* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %42

30:                                               ; preds = %3
  %31 = load %struct.vsp1_video*, %struct.vsp1_video** %9, align 8
  %32 = getelementptr inbounds %struct.vsp1_video, %struct.vsp1_video* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.file*, %struct.file** %5, align 8
  %36 = getelementptr inbounds %struct.file, %struct.file* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %34, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %30
  %40 = load i32, i32* @EBUSY, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  br label %97

42:                                               ; preds = %30, %3
  %43 = load %struct.media_device*, %struct.media_device** %10, align 8
  %44 = getelementptr inbounds %struct.media_device, %struct.media_device* %43, i32 0, i32 0
  %45 = call i32 @mutex_lock(i32* %44)
  %46 = load %struct.vsp1_video*, %struct.vsp1_video** %9, align 8
  %47 = call %struct.vsp1_pipeline* @vsp1_video_pipeline_get(%struct.vsp1_video* %46)
  store %struct.vsp1_pipeline* %47, %struct.vsp1_pipeline** %11, align 8
  %48 = load %struct.vsp1_pipeline*, %struct.vsp1_pipeline** %11, align 8
  %49 = call i64 @IS_ERR(%struct.vsp1_pipeline* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %42
  %52 = load %struct.media_device*, %struct.media_device** %10, align 8
  %53 = getelementptr inbounds %struct.media_device, %struct.media_device* %52, i32 0, i32 0
  %54 = call i32 @mutex_unlock(i32* %53)
  %55 = load %struct.vsp1_pipeline*, %struct.vsp1_pipeline** %11, align 8
  %56 = call i32 @PTR_ERR(%struct.vsp1_pipeline* %55)
  store i32 %56, i32* %4, align 4
  br label %97

57:                                               ; preds = %42
  %58 = load %struct.vsp1_video*, %struct.vsp1_video** %9, align 8
  %59 = getelementptr inbounds %struct.vsp1_video, %struct.vsp1_video* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load %struct.vsp1_pipeline*, %struct.vsp1_pipeline** %11, align 8
  %62 = getelementptr inbounds %struct.vsp1_pipeline, %struct.vsp1_pipeline* %61, i32 0, i32 0
  %63 = call i32 @__media_pipeline_start(i32* %60, i32* %62)
  store i32 %63, i32* %12, align 4
  %64 = load i32, i32* %12, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %57
  %67 = load %struct.media_device*, %struct.media_device** %10, align 8
  %68 = getelementptr inbounds %struct.media_device, %struct.media_device* %67, i32 0, i32 0
  %69 = call i32 @mutex_unlock(i32* %68)
  br label %93

70:                                               ; preds = %57
  %71 = load %struct.media_device*, %struct.media_device** %10, align 8
  %72 = getelementptr inbounds %struct.media_device, %struct.media_device* %71, i32 0, i32 0
  %73 = call i32 @mutex_unlock(i32* %72)
  %74 = load %struct.vsp1_video*, %struct.vsp1_video** %9, align 8
  %75 = call i32 @vsp1_video_verify_format(%struct.vsp1_video* %74)
  store i32 %75, i32* %12, align 4
  %76 = load i32, i32* %12, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %70
  br label %88

79:                                               ; preds = %70
  %80 = load %struct.vsp1_video*, %struct.vsp1_video** %9, align 8
  %81 = getelementptr inbounds %struct.vsp1_video, %struct.vsp1_video* %80, i32 0, i32 1
  %82 = load i32, i32* %7, align 4
  %83 = call i32 @vb2_streamon(%struct.TYPE_6__* %81, i32 %82)
  store i32 %83, i32* %12, align 4
  %84 = load i32, i32* %12, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %79
  br label %88

87:                                               ; preds = %79
  store i32 0, i32* %4, align 4
  br label %97

88:                                               ; preds = %86, %78
  %89 = load %struct.vsp1_video*, %struct.vsp1_video** %9, align 8
  %90 = getelementptr inbounds %struct.vsp1_video, %struct.vsp1_video* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  %92 = call i32 @media_pipeline_stop(i32* %91)
  br label %93

93:                                               ; preds = %88, %66
  %94 = load %struct.vsp1_pipeline*, %struct.vsp1_pipeline** %11, align 8
  %95 = call i32 @vsp1_video_pipeline_put(%struct.vsp1_pipeline* %94)
  %96 = load i32, i32* %12, align 4
  store i32 %96, i32* %4, align 4
  br label %97

97:                                               ; preds = %93, %87, %51, %39
  %98 = load i32, i32* %4, align 4
  ret i32 %98
}

declare dso_local %struct.vsp1_video* @to_vsp1_video(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.vsp1_pipeline* @vsp1_video_pipeline_get(%struct.vsp1_video*) #1

declare dso_local i64 @IS_ERR(%struct.vsp1_pipeline*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @PTR_ERR(%struct.vsp1_pipeline*) #1

declare dso_local i32 @__media_pipeline_start(i32*, i32*) #1

declare dso_local i32 @vsp1_video_verify_format(%struct.vsp1_video*) #1

declare dso_local i32 @vb2_streamon(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @media_pipeline_stop(i32*) #1

declare dso_local i32 @vsp1_video_pipeline_put(%struct.vsp1_pipeline*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
