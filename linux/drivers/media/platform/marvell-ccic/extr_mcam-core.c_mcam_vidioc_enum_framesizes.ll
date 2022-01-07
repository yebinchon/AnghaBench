; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/marvell-ccic/extr_mcam-core.c_mcam_vidioc_enum_framesizes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/marvell-ccic/extr_mcam-core.c_mcam_vidioc_enum_framesizes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_frmsizeenum = type { i64, %struct.TYPE_4__, i32, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i64, i64, i64, i64, i32, i32 }
%struct.TYPE_3__ = type { i64, i64 }
%struct.mcam_camera = type { i32 }
%struct.mcam_format_struct = type { i64, i32 }
%struct.v4l2_subdev_frame_size_enum = type { i64, i64, i64, i64, i32, i32, i32 }

@V4L2_SUBDEV_FORMAT_ACTIVE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@pad = common dso_local global i32 0, align 4
@enum_frame_size = common dso_local global i32 0, align 4
@V4L2_FRMSIZE_TYPE_DISCRETE = common dso_local global i32 0, align 4
@V4L2_FRMSIZE_TYPE_CONTINUOUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_frmsizeenum*)* @mcam_vidioc_enum_framesizes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mcam_vidioc_enum_framesizes(%struct.file* %0, i8* %1, %struct.v4l2_frmsizeenum* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_frmsizeenum*, align 8
  %8 = alloca %struct.mcam_camera*, align 8
  %9 = alloca %struct.mcam_format_struct*, align 8
  %10 = alloca %struct.v4l2_subdev_frame_size_enum, align 8
  %11 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_frmsizeenum* %2, %struct.v4l2_frmsizeenum** %7, align 8
  %12 = load %struct.file*, %struct.file** %5, align 8
  %13 = call %struct.mcam_camera* @video_drvdata(%struct.file* %12)
  store %struct.mcam_camera* %13, %struct.mcam_camera** %8, align 8
  %14 = bitcast %struct.v4l2_subdev_frame_size_enum* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %14, i8 0, i64 48, i1 false)
  %15 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, %struct.v4l2_subdev_frame_size_enum* %10, i32 0, i32 5
  %16 = load i32, i32* @V4L2_SUBDEV_FORMAT_ACTIVE, align 4
  store i32 %16, i32* %15, align 4
  %17 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, %struct.v4l2_subdev_frame_size_enum* %10, i32 0, i32 6
  %18 = load %struct.v4l2_frmsizeenum*, %struct.v4l2_frmsizeenum** %7, align 8
  %19 = getelementptr inbounds %struct.v4l2_frmsizeenum, %struct.v4l2_frmsizeenum* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %17, align 8
  %21 = load %struct.v4l2_frmsizeenum*, %struct.v4l2_frmsizeenum** %7, align 8
  %22 = getelementptr inbounds %struct.v4l2_frmsizeenum, %struct.v4l2_frmsizeenum* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = call %struct.mcam_format_struct* @mcam_find_format(i64 %23)
  store %struct.mcam_format_struct* %24, %struct.mcam_format_struct** %9, align 8
  %25 = load %struct.mcam_format_struct*, %struct.mcam_format_struct** %9, align 8
  %26 = getelementptr inbounds %struct.mcam_format_struct, %struct.mcam_format_struct* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.v4l2_frmsizeenum*, %struct.v4l2_frmsizeenum** %7, align 8
  %29 = getelementptr inbounds %struct.v4l2_frmsizeenum, %struct.v4l2_frmsizeenum* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %27, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %3
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %104

35:                                               ; preds = %3
  %36 = load %struct.mcam_format_struct*, %struct.mcam_format_struct** %9, align 8
  %37 = getelementptr inbounds %struct.mcam_format_struct, %struct.mcam_format_struct* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, %struct.v4l2_subdev_frame_size_enum* %10, i32 0, i32 4
  store i32 %38, i32* %39, align 8
  %40 = load %struct.mcam_camera*, %struct.mcam_camera** %8, align 8
  %41 = load i32, i32* @pad, align 4
  %42 = load i32, i32* @enum_frame_size, align 4
  %43 = call i32 @sensor_call(%struct.mcam_camera* %40, i32 %41, i32 %42, i32* null, %struct.v4l2_subdev_frame_size_enum* %10)
  store i32 %43, i32* %11, align 4
  %44 = load i32, i32* %11, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %35
  %47 = load i32, i32* %11, align 4
  store i32 %47, i32* %4, align 4
  br label %104

48:                                               ; preds = %35
  %49 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, %struct.v4l2_subdev_frame_size_enum* %10, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, %struct.v4l2_subdev_frame_size_enum* %10, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp eq i64 %50, %52
  br i1 %53, label %54, label %74

54:                                               ; preds = %48
  %55 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, %struct.v4l2_subdev_frame_size_enum* %10, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, %struct.v4l2_subdev_frame_size_enum* %10, i32 0, i32 3
  %58 = load i64, i64* %57, align 8
  %59 = icmp eq i64 %56, %58
  br i1 %59, label %60, label %74

60:                                               ; preds = %54
  %61 = load i32, i32* @V4L2_FRMSIZE_TYPE_DISCRETE, align 4
  %62 = load %struct.v4l2_frmsizeenum*, %struct.v4l2_frmsizeenum** %7, align 8
  %63 = getelementptr inbounds %struct.v4l2_frmsizeenum, %struct.v4l2_frmsizeenum* %62, i32 0, i32 2
  store i32 %61, i32* %63, align 8
  %64 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, %struct.v4l2_subdev_frame_size_enum* %10, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.v4l2_frmsizeenum*, %struct.v4l2_frmsizeenum** %7, align 8
  %67 = getelementptr inbounds %struct.v4l2_frmsizeenum, %struct.v4l2_frmsizeenum* %66, i32 0, i32 3
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  store i64 %65, i64* %68, align 8
  %69 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, %struct.v4l2_subdev_frame_size_enum* %10, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.v4l2_frmsizeenum*, %struct.v4l2_frmsizeenum** %7, align 8
  %72 = getelementptr inbounds %struct.v4l2_frmsizeenum, %struct.v4l2_frmsizeenum* %71, i32 0, i32 3
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 1
  store i64 %70, i64* %73, align 8
  store i32 0, i32* %4, align 4
  br label %104

74:                                               ; preds = %54, %48
  %75 = load i32, i32* @V4L2_FRMSIZE_TYPE_CONTINUOUS, align 4
  %76 = load %struct.v4l2_frmsizeenum*, %struct.v4l2_frmsizeenum** %7, align 8
  %77 = getelementptr inbounds %struct.v4l2_frmsizeenum, %struct.v4l2_frmsizeenum* %76, i32 0, i32 2
  store i32 %75, i32* %77, align 8
  %78 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, %struct.v4l2_subdev_frame_size_enum* %10, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.v4l2_frmsizeenum*, %struct.v4l2_frmsizeenum** %7, align 8
  %81 = getelementptr inbounds %struct.v4l2_frmsizeenum, %struct.v4l2_frmsizeenum* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  store i64 %79, i64* %82, align 8
  %83 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, %struct.v4l2_subdev_frame_size_enum* %10, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.v4l2_frmsizeenum*, %struct.v4l2_frmsizeenum** %7, align 8
  %86 = getelementptr inbounds %struct.v4l2_frmsizeenum, %struct.v4l2_frmsizeenum* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 1
  store i64 %84, i64* %87, align 8
  %88 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, %struct.v4l2_subdev_frame_size_enum* %10, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.v4l2_frmsizeenum*, %struct.v4l2_frmsizeenum** %7, align 8
  %91 = getelementptr inbounds %struct.v4l2_frmsizeenum, %struct.v4l2_frmsizeenum* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 2
  store i64 %89, i64* %92, align 8
  %93 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, %struct.v4l2_subdev_frame_size_enum* %10, i32 0, i32 3
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.v4l2_frmsizeenum*, %struct.v4l2_frmsizeenum** %7, align 8
  %96 = getelementptr inbounds %struct.v4l2_frmsizeenum, %struct.v4l2_frmsizeenum* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 3
  store i64 %94, i64* %97, align 8
  %98 = load %struct.v4l2_frmsizeenum*, %struct.v4l2_frmsizeenum** %7, align 8
  %99 = getelementptr inbounds %struct.v4l2_frmsizeenum, %struct.v4l2_frmsizeenum* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 4
  store i32 1, i32* %100, align 8
  %101 = load %struct.v4l2_frmsizeenum*, %struct.v4l2_frmsizeenum** %7, align 8
  %102 = getelementptr inbounds %struct.v4l2_frmsizeenum, %struct.v4l2_frmsizeenum* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 5
  store i32 1, i32* %103, align 4
  store i32 0, i32* %4, align 4
  br label %104

104:                                              ; preds = %74, %60, %46, %32
  %105 = load i32, i32* %4, align 4
  ret i32 %105
}

declare dso_local %struct.mcam_camera* @video_drvdata(%struct.file*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local %struct.mcam_format_struct* @mcam_find_format(i64) #1

declare dso_local i32 @sensor_call(%struct.mcam_camera*, i32, i32, i32*, %struct.v4l2_subdev_frame_size_enum*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
