; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_via-camera.c_viacam_enum_frameintervals.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_via-camera.c_viacam_enum_frameintervals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.file = type { i32 }
%struct.v4l2_frmivalenum = type { i64, i64, i64, i32, i32, i32 }
%struct.via_camera = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.v4l2_subdev_frame_interval_enum = type { i32, i32, i32, i32, i32, i32 }

@V4L2_SUBDEV_FORMAT_ACTIVE = common dso_local global i32 0, align 4
@N_VIA_FMTS = common dso_local global i32 0, align 4
@via_formats = common dso_local global %struct.TYPE_4__* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@QCIF_WIDTH = common dso_local global i64 0, align 8
@VGA_WIDTH = common dso_local global i64 0, align 8
@QCIF_HEIGHT = common dso_local global i64 0, align 8
@VGA_HEIGHT = common dso_local global i64 0, align 8
@pad = common dso_local global i32 0, align 4
@enum_frame_interval = common dso_local global i32 0, align 4
@V4L2_FRMIVAL_TYPE_DISCRETE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_frmivalenum*)* @viacam_enum_frameintervals to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @viacam_enum_frameintervals(%struct.file* %0, i8* %1, %struct.v4l2_frmivalenum* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_frmivalenum*, align 8
  %8 = alloca %struct.via_camera*, align 8
  %9 = alloca %struct.v4l2_subdev_frame_interval_enum, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_frmivalenum* %2, %struct.v4l2_frmivalenum** %7, align 8
  %12 = load %struct.file*, %struct.file** %5, align 8
  %13 = call %struct.via_camera* @video_drvdata(%struct.file* %12)
  store %struct.via_camera* %13, %struct.via_camera** %8, align 8
  %14 = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, %struct.v4l2_subdev_frame_interval_enum* %9, i32 0, i32 0
  store i32 0, i32* %14, align 4
  %15 = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, %struct.v4l2_subdev_frame_interval_enum* %9, i32 0, i32 1
  %16 = load i32, i32* @V4L2_SUBDEV_FORMAT_ACTIVE, align 4
  store i32 %16, i32* %15, align 4
  %17 = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, %struct.v4l2_subdev_frame_interval_enum* %9, i32 0, i32 2
  %18 = load %struct.via_camera*, %struct.via_camera** %8, align 8
  %19 = getelementptr inbounds %struct.via_camera, %struct.via_camera* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %17, align 4
  %22 = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, %struct.v4l2_subdev_frame_interval_enum* %9, i32 0, i32 3
  %23 = load %struct.via_camera*, %struct.via_camera** %8, align 8
  %24 = getelementptr inbounds %struct.via_camera, %struct.via_camera* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %22, align 4
  %27 = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, %struct.v4l2_subdev_frame_interval_enum* %9, i32 0, i32 4
  %28 = load %struct.via_camera*, %struct.via_camera** %8, align 8
  %29 = getelementptr inbounds %struct.via_camera, %struct.via_camera* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %27, align 4
  %31 = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, %struct.v4l2_subdev_frame_interval_enum* %9, i32 0, i32 5
  %32 = load %struct.v4l2_frmivalenum*, %struct.v4l2_frmivalenum** %7, align 8
  %33 = getelementptr inbounds %struct.v4l2_frmivalenum, %struct.v4l2_frmivalenum* %32, i32 0, i32 5
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %31, align 4
  store i32 0, i32* %10, align 4
  br label %35

35:                                               ; preds = %52, %3
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* @N_VIA_FMTS, align 4
  %38 = icmp ult i32 %36, %37
  br i1 %38, label %39, label %55

39:                                               ; preds = %35
  %40 = load %struct.v4l2_frmivalenum*, %struct.v4l2_frmivalenum** %7, align 8
  %41 = getelementptr inbounds %struct.v4l2_frmivalenum, %struct.v4l2_frmivalenum* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** @via_formats, align 8
  %44 = load i32, i32* %10, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp eq i64 %42, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %39
  br label %55

51:                                               ; preds = %39
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %10, align 4
  %54 = add i32 %53, 1
  store i32 %54, i32* %10, align 4
  br label %35

55:                                               ; preds = %50, %35
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* @N_VIA_FMTS, align 4
  %58 = icmp uge i32 %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %55
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %4, align 4
  br label %106

62:                                               ; preds = %55
  %63 = load %struct.v4l2_frmivalenum*, %struct.v4l2_frmivalenum** %7, align 8
  %64 = getelementptr inbounds %struct.v4l2_frmivalenum, %struct.v4l2_frmivalenum* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @QCIF_WIDTH, align 8
  %67 = icmp slt i64 %65, %66
  br i1 %67, label %86, label %68

68:                                               ; preds = %62
  %69 = load %struct.v4l2_frmivalenum*, %struct.v4l2_frmivalenum** %7, align 8
  %70 = getelementptr inbounds %struct.v4l2_frmivalenum, %struct.v4l2_frmivalenum* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @VGA_WIDTH, align 8
  %73 = icmp sgt i64 %71, %72
  br i1 %73, label %86, label %74

74:                                               ; preds = %68
  %75 = load %struct.v4l2_frmivalenum*, %struct.v4l2_frmivalenum** %7, align 8
  %76 = getelementptr inbounds %struct.v4l2_frmivalenum, %struct.v4l2_frmivalenum* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @QCIF_HEIGHT, align 8
  %79 = icmp slt i64 %77, %78
  br i1 %79, label %86, label %80

80:                                               ; preds = %74
  %81 = load %struct.v4l2_frmivalenum*, %struct.v4l2_frmivalenum** %7, align 8
  %82 = getelementptr inbounds %struct.v4l2_frmivalenum, %struct.v4l2_frmivalenum* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @VGA_HEIGHT, align 8
  %85 = icmp sgt i64 %83, %84
  br i1 %85, label %86, label %89

86:                                               ; preds = %80, %74, %68, %62
  %87 = load i32, i32* @EINVAL, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %4, align 4
  br label %106

89:                                               ; preds = %80
  %90 = load %struct.via_camera*, %struct.via_camera** %8, align 8
  %91 = load i32, i32* @pad, align 4
  %92 = load i32, i32* @enum_frame_interval, align 4
  %93 = call i32 @sensor_call(%struct.via_camera* %90, i32 %91, i32 %92, i32* null, %struct.v4l2_subdev_frame_interval_enum* %9)
  store i32 %93, i32* %11, align 4
  %94 = load i32, i32* %11, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %89
  %97 = load i32, i32* %11, align 4
  store i32 %97, i32* %4, align 4
  br label %106

98:                                               ; preds = %89
  %99 = load i32, i32* @V4L2_FRMIVAL_TYPE_DISCRETE, align 4
  %100 = load %struct.v4l2_frmivalenum*, %struct.v4l2_frmivalenum** %7, align 8
  %101 = getelementptr inbounds %struct.v4l2_frmivalenum, %struct.v4l2_frmivalenum* %100, i32 0, i32 4
  store i32 %99, i32* %101, align 4
  %102 = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, %struct.v4l2_subdev_frame_interval_enum* %9, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.v4l2_frmivalenum*, %struct.v4l2_frmivalenum** %7, align 8
  %105 = getelementptr inbounds %struct.v4l2_frmivalenum, %struct.v4l2_frmivalenum* %104, i32 0, i32 3
  store i32 %103, i32* %105, align 8
  store i32 0, i32* %4, align 4
  br label %106

106:                                              ; preds = %98, %96, %86, %59
  %107 = load i32, i32* %4, align 4
  ret i32 %107
}

declare dso_local %struct.via_camera* @video_drvdata(%struct.file*) #1

declare dso_local i32 @sensor_call(%struct.via_camera*, i32, i32, i32*, %struct.v4l2_subdev_frame_interval_enum*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
