; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/atmel/extr_atmel-isc-base.c_isc_enum_frameintervals.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/atmel/extr_atmel-isc-base.c_isc_enum_frameintervals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64 }
%struct.file = type { i32 }
%struct.v4l2_frmivalenum = type { i64, i32, i32, i32, i32, i32 }
%struct.isc_device = type { i32, %struct.TYPE_10__, %struct.TYPE_8__*, %struct.TYPE_7__** }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i64 }
%struct.v4l2_subdev_frame_interval_enum = type { i32, i32, i32, i32, i32, i32 }

@V4L2_SUBDEV_FORMAT_ACTIVE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@controller_formats = common dso_local global %struct.TYPE_11__* null, align 8
@pad = common dso_local global i32 0, align 4
@enum_frame_interval = common dso_local global i32 0, align 4
@V4L2_FRMIVAL_TYPE_DISCRETE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_frmivalenum*)* @isc_enum_frameintervals to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isc_enum_frameintervals(%struct.file* %0, i8* %1, %struct.v4l2_frmivalenum* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_frmivalenum*, align 8
  %8 = alloca %struct.isc_device*, align 8
  %9 = alloca %struct.v4l2_subdev_frame_interval_enum, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_frmivalenum* %2, %struct.v4l2_frmivalenum** %7, align 8
  %12 = load %struct.file*, %struct.file** %5, align 8
  %13 = call %struct.isc_device* @video_drvdata(%struct.file* %12)
  store %struct.isc_device* %13, %struct.isc_device** %8, align 8
  %14 = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, %struct.v4l2_subdev_frame_interval_enum* %9, i32 0, i32 0
  store i32 0, i32* %14, align 4
  %15 = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, %struct.v4l2_subdev_frame_interval_enum* %9, i32 0, i32 1
  store i32 0, i32* %15, align 4
  %16 = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, %struct.v4l2_subdev_frame_interval_enum* %9, i32 0, i32 2
  %17 = load i32, i32* @V4L2_SUBDEV_FORMAT_ACTIVE, align 4
  store i32 %17, i32* %16, align 4
  %18 = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, %struct.v4l2_subdev_frame_interval_enum* %9, i32 0, i32 3
  %19 = load %struct.v4l2_frmivalenum*, %struct.v4l2_frmivalenum** %7, align 8
  %20 = getelementptr inbounds %struct.v4l2_frmivalenum, %struct.v4l2_frmivalenum* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %18, align 4
  %22 = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, %struct.v4l2_subdev_frame_interval_enum* %9, i32 0, i32 4
  %23 = load %struct.v4l2_frmivalenum*, %struct.v4l2_frmivalenum** %7, align 8
  %24 = getelementptr inbounds %struct.v4l2_frmivalenum, %struct.v4l2_frmivalenum* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %22, align 4
  %26 = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, %struct.v4l2_subdev_frame_interval_enum* %9, i32 0, i32 5
  %27 = load %struct.v4l2_frmivalenum*, %struct.v4l2_frmivalenum** %7, align 8
  %28 = getelementptr inbounds %struct.v4l2_frmivalenum, %struct.v4l2_frmivalenum* %27, i32 0, i32 5
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %26, align 4
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %32

32:                                               ; preds = %54, %3
  %33 = load i32, i32* %11, align 4
  %34 = load %struct.isc_device*, %struct.isc_device** %8, align 8
  %35 = getelementptr inbounds %struct.isc_device, %struct.isc_device* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp ult i32 %33, %36
  br i1 %37, label %38, label %57

38:                                               ; preds = %32
  %39 = load %struct.isc_device*, %struct.isc_device** %8, align 8
  %40 = getelementptr inbounds %struct.isc_device, %struct.isc_device* %39, i32 0, i32 3
  %41 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %40, align 8
  %42 = load i32, i32* %11, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %41, i64 %43
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.v4l2_frmivalenum*, %struct.v4l2_frmivalenum** %7, align 8
  %49 = getelementptr inbounds %struct.v4l2_frmivalenum, %struct.v4l2_frmivalenum* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp eq i64 %47, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %38
  store i32 0, i32* %10, align 4
  br label %53

53:                                               ; preds = %52, %38
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %11, align 4
  %56 = add i32 %55, 1
  store i32 %56, i32* %11, align 4
  br label %32

57:                                               ; preds = %32
  store i32 0, i32* %11, align 4
  br label %58

58:                                               ; preds = %76, %57
  %59 = load i32, i32* %11, align 4
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** @controller_formats, align 8
  %61 = call i32 @ARRAY_SIZE(%struct.TYPE_11__* %60)
  %62 = icmp ult i32 %59, %61
  br i1 %62, label %63, label %79

63:                                               ; preds = %58
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** @controller_formats, align 8
  %65 = load i32, i32* %11, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.v4l2_frmivalenum*, %struct.v4l2_frmivalenum** %7, align 8
  %71 = getelementptr inbounds %struct.v4l2_frmivalenum, %struct.v4l2_frmivalenum* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp eq i64 %69, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %63
  store i32 0, i32* %10, align 4
  br label %75

75:                                               ; preds = %74, %63
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %11, align 4
  %78 = add i32 %77, 1
  store i32 %78, i32* %11, align 4
  br label %58

79:                                               ; preds = %58
  %80 = load i32, i32* %10, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %79
  %83 = load i32, i32* %10, align 4
  store i32 %83, i32* %4, align 4
  br label %112

84:                                               ; preds = %79
  %85 = load %struct.isc_device*, %struct.isc_device** %8, align 8
  %86 = getelementptr inbounds %struct.isc_device, %struct.isc_device* %85, i32 0, i32 2
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @pad, align 4
  %91 = load i32, i32* @enum_frame_interval, align 4
  %92 = call i32 @v4l2_subdev_call(i32 %89, i32 %90, i32 %91, i32* null, %struct.v4l2_subdev_frame_interval_enum* %9)
  store i32 %92, i32* %10, align 4
  %93 = load i32, i32* %10, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %84
  %96 = load i32, i32* %10, align 4
  store i32 %96, i32* %4, align 4
  br label %112

97:                                               ; preds = %84
  %98 = load %struct.isc_device*, %struct.isc_device** %8, align 8
  %99 = getelementptr inbounds %struct.isc_device, %struct.isc_device* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 0
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, %struct.v4l2_subdev_frame_interval_enum* %9, i32 0, i32 1
  store i32 %103, i32* %104, align 4
  %105 = load i32, i32* @V4L2_FRMIVAL_TYPE_DISCRETE, align 4
  %106 = load %struct.v4l2_frmivalenum*, %struct.v4l2_frmivalenum** %7, align 8
  %107 = getelementptr inbounds %struct.v4l2_frmivalenum, %struct.v4l2_frmivalenum* %106, i32 0, i32 2
  store i32 %105, i32* %107, align 4
  %108 = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, %struct.v4l2_subdev_frame_interval_enum* %9, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.v4l2_frmivalenum*, %struct.v4l2_frmivalenum** %7, align 8
  %111 = getelementptr inbounds %struct.v4l2_frmivalenum, %struct.v4l2_frmivalenum* %110, i32 0, i32 1
  store i32 %109, i32* %111, align 8
  store i32 0, i32* %4, align 4
  br label %112

112:                                              ; preds = %97, %95, %82
  %113 = load i32, i32* %4, align 4
  ret i32 %113
}

declare dso_local %struct.isc_device* @video_drvdata(%struct.file*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_11__*) #1

declare dso_local i32 @v4l2_subdev_call(i32, i32, i32, i32*, %struct.v4l2_subdev_frame_interval_enum*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
