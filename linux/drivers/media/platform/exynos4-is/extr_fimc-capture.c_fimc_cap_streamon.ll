; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-capture.c_fimc_cap_streamon.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-capture.c_fimc_cap_streamon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.fimc_dev = type { %struct.fimc_vid_cap }
%struct.fimc_vid_cap = type { i64, i32, i64, %struct.fimc_source_info, %struct.TYPE_5__ }
%struct.fimc_source_info = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_6__*, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { %struct.media_entity }
%struct.media_entity = type { i32 }
%struct.v4l2_subdev = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@IDX_SENSOR = common dso_local global i32 0, align 4
@EPIPE = common dso_local global i32 0, align 4
@GRP_ID_FIMC_IS = common dso_local global i64 0, align 8
@FIMC_BUS_TYPE_ISP_WRITEBACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, i32)* @fimc_cap_streamon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fimc_cap_streamon(%struct.file* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.fimc_dev*, align 8
  %9 = alloca %struct.fimc_vid_cap*, align 8
  %10 = alloca %struct.media_entity*, align 8
  %11 = alloca %struct.fimc_source_info*, align 8
  %12 = alloca %struct.v4l2_subdev*, align 8
  %13 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.file*, %struct.file** %5, align 8
  %15 = call %struct.fimc_dev* @video_drvdata(%struct.file* %14)
  store %struct.fimc_dev* %15, %struct.fimc_dev** %8, align 8
  %16 = load %struct.fimc_dev*, %struct.fimc_dev** %8, align 8
  %17 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %16, i32 0, i32 0
  store %struct.fimc_vid_cap* %17, %struct.fimc_vid_cap** %9, align 8
  %18 = load %struct.fimc_vid_cap*, %struct.fimc_vid_cap** %9, align 8
  %19 = getelementptr inbounds %struct.fimc_vid_cap, %struct.fimc_vid_cap* %18, i32 0, i32 4
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  store %struct.media_entity* %21, %struct.media_entity** %10, align 8
  store %struct.fimc_source_info* null, %struct.fimc_source_info** %11, align 8
  %22 = load %struct.fimc_dev*, %struct.fimc_dev** %8, align 8
  %23 = call i64 @fimc_capture_active(%struct.fimc_dev* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %3
  %26 = load i32, i32* @EBUSY, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %102

28:                                               ; preds = %3
  %29 = load %struct.media_entity*, %struct.media_entity** %10, align 8
  %30 = load %struct.fimc_vid_cap*, %struct.fimc_vid_cap** %9, align 8
  %31 = getelementptr inbounds %struct.fimc_vid_cap, %struct.fimc_vid_cap* %30, i32 0, i32 4
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = call i32 @media_pipeline_start(%struct.media_entity* %29, i32* %34)
  store i32 %35, i32* %13, align 4
  %36 = load i32, i32* %13, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %28
  %39 = load i32, i32* %13, align 4
  store i32 %39, i32* %4, align 4
  br label %102

40:                                               ; preds = %28
  %41 = load %struct.fimc_vid_cap*, %struct.fimc_vid_cap** %9, align 8
  %42 = getelementptr inbounds %struct.fimc_vid_cap, %struct.fimc_vid_cap* %41, i32 0, i32 4
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = load i32, i32* @IDX_SENSOR, align 4
  %46 = call %struct.v4l2_subdev* @__fimc_md_get_subdev(%struct.TYPE_6__* %44, i32 %45)
  store %struct.v4l2_subdev* %46, %struct.v4l2_subdev** %12, align 8
  %47 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %12, align 8
  %48 = icmp ne %struct.v4l2_subdev* %47, null
  br i1 %48, label %49, label %52

49:                                               ; preds = %40
  %50 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %12, align 8
  %51 = call %struct.fimc_source_info* @v4l2_get_subdev_hostdata(%struct.v4l2_subdev* %50)
  store %struct.fimc_source_info* %51, %struct.fimc_source_info** %11, align 8
  br label %52

52:                                               ; preds = %49, %40
  %53 = load %struct.fimc_source_info*, %struct.fimc_source_info** %11, align 8
  %54 = icmp eq %struct.fimc_source_info* %53, null
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = load i32, i32* @EPIPE, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %13, align 4
  br label %98

58:                                               ; preds = %52
  %59 = load %struct.fimc_vid_cap*, %struct.fimc_vid_cap** %9, align 8
  %60 = getelementptr inbounds %struct.fimc_vid_cap, %struct.fimc_vid_cap* %59, i32 0, i32 3
  %61 = load %struct.fimc_source_info*, %struct.fimc_source_info** %11, align 8
  %62 = bitcast %struct.fimc_source_info* %60 to i8*
  %63 = bitcast %struct.fimc_source_info* %61 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %62, i8* align 4 %63, i64 4, i1 false)
  %64 = load %struct.fimc_vid_cap*, %struct.fimc_vid_cap** %9, align 8
  %65 = getelementptr inbounds %struct.fimc_vid_cap, %struct.fimc_vid_cap* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @GRP_ID_FIMC_IS, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %74

69:                                               ; preds = %58
  %70 = load i32, i32* @FIMC_BUS_TYPE_ISP_WRITEBACK, align 4
  %71 = load %struct.fimc_vid_cap*, %struct.fimc_vid_cap** %9, align 8
  %72 = getelementptr inbounds %struct.fimc_vid_cap, %struct.fimc_vid_cap* %71, i32 0, i32 3
  %73 = getelementptr inbounds %struct.fimc_source_info, %struct.fimc_source_info* %72, i32 0, i32 0
  store i32 %70, i32* %73, align 8
  br label %74

74:                                               ; preds = %69, %58
  %75 = load %struct.fimc_vid_cap*, %struct.fimc_vid_cap** %9, align 8
  %76 = getelementptr inbounds %struct.fimc_vid_cap, %struct.fimc_vid_cap* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %86

79:                                               ; preds = %74
  %80 = load %struct.fimc_dev*, %struct.fimc_dev** %8, align 8
  %81 = call i32 @fimc_pipeline_validate(%struct.fimc_dev* %80)
  store i32 %81, i32* %13, align 4
  %82 = load i32, i32* %13, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %79
  br label %98

85:                                               ; preds = %79
  br label %86

86:                                               ; preds = %85, %74
  %87 = load %struct.file*, %struct.file** %5, align 8
  %88 = load i8*, i8** %6, align 8
  %89 = load i32, i32* %7, align 4
  %90 = call i32 @vb2_ioctl_streamon(%struct.file* %87, i8* %88, i32 %89)
  store i32 %90, i32* %13, align 4
  %91 = load i32, i32* %13, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %97, label %93

93:                                               ; preds = %86
  %94 = load %struct.fimc_vid_cap*, %struct.fimc_vid_cap** %9, align 8
  %95 = getelementptr inbounds %struct.fimc_vid_cap, %struct.fimc_vid_cap* %94, i32 0, i32 1
  store i32 1, i32* %95, align 8
  %96 = load i32, i32* %13, align 4
  store i32 %96, i32* %4, align 4
  br label %102

97:                                               ; preds = %86
  br label %98

98:                                               ; preds = %97, %84, %55
  %99 = load %struct.media_entity*, %struct.media_entity** %10, align 8
  %100 = call i32 @media_pipeline_stop(%struct.media_entity* %99)
  %101 = load i32, i32* %13, align 4
  store i32 %101, i32* %4, align 4
  br label %102

102:                                              ; preds = %98, %93, %38, %25
  %103 = load i32, i32* %4, align 4
  ret i32 %103
}

declare dso_local %struct.fimc_dev* @video_drvdata(%struct.file*) #1

declare dso_local i64 @fimc_capture_active(%struct.fimc_dev*) #1

declare dso_local i32 @media_pipeline_start(%struct.media_entity*, i32*) #1

declare dso_local %struct.v4l2_subdev* @__fimc_md_get_subdev(%struct.TYPE_6__*, i32) #1

declare dso_local %struct.fimc_source_info* @v4l2_get_subdev_hostdata(%struct.v4l2_subdev*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @fimc_pipeline_validate(%struct.fimc_dev*) #1

declare dso_local i32 @vb2_ioctl_streamon(%struct.file*, i8*, i32) #1

declare dso_local i32 @media_pipeline_stop(%struct.media_entity*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
