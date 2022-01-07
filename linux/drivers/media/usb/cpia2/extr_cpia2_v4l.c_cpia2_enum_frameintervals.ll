; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/cpia2/extr_cpia2_v4l.c_cpia2_enum_frameintervals.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/cpia2/extr_cpia2_v4l.c_cpia2_enum_frameintervals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i64, i32 }
%struct.file = type { i32 }
%struct.v4l2_frmivalenum = type { i64, i32, i64, i64, i32, i32 }
%struct.camera_data = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i64 }

@framerate_controls = common dso_local global %struct.TYPE_10__* null, align 8
@V4L2_PIX_FMT_MJPEG = common dso_local global i64 0, align 8
@V4L2_PIX_FMT_JPEG = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@DEVICE_STV_672 = common dso_local global i64 0, align 8
@CPIA2_VP_SENSOR_FLAGS_500 = common dso_local global i64 0, align 8
@cpia2_framesizes = common dso_local global %struct.TYPE_10__* null, align 8
@V4L2_FRMIVAL_TYPE_DISCRETE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_frmivalenum*)* @cpia2_enum_frameintervals to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpia2_enum_frameintervals(%struct.file* %0, i8* %1, %struct.v4l2_frmivalenum* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_frmivalenum*, align 8
  %8 = alloca %struct.camera_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_frmivalenum* %2, %struct.v4l2_frmivalenum** %7, align 8
  %11 = load %struct.file*, %struct.file** %5, align 8
  %12 = call %struct.camera_data* @video_drvdata(%struct.file* %11)
  store %struct.camera_data* %12, %struct.camera_data** %8, align 8
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** @framerate_controls, align 8
  %14 = call i32 @ARRAY_SIZE(%struct.TYPE_10__* %13)
  %15 = sub nsw i32 %14, 1
  store i32 %15, i32* %9, align 4
  %16 = load %struct.v4l2_frmivalenum*, %struct.v4l2_frmivalenum** %7, align 8
  %17 = getelementptr inbounds %struct.v4l2_frmivalenum, %struct.v4l2_frmivalenum* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @V4L2_PIX_FMT_MJPEG, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %30

21:                                               ; preds = %3
  %22 = load %struct.v4l2_frmivalenum*, %struct.v4l2_frmivalenum** %7, align 8
  %23 = getelementptr inbounds %struct.v4l2_frmivalenum, %struct.v4l2_frmivalenum* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @V4L2_PIX_FMT_JPEG, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %113

30:                                               ; preds = %21, %3
  %31 = load %struct.camera_data*, %struct.camera_data** %8, align 8
  %32 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @DEVICE_STV_672, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %49

38:                                               ; preds = %30
  %39 = load %struct.camera_data*, %struct.camera_data** %8, align 8
  %40 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @CPIA2_VP_SENSOR_FLAGS_500, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %38
  %47 = load i32, i32* %9, align 4
  %48 = sub nsw i32 %47, 2
  store i32 %48, i32* %9, align 4
  br label %49

49:                                               ; preds = %46, %38, %30
  %50 = load %struct.v4l2_frmivalenum*, %struct.v4l2_frmivalenum** %7, align 8
  %51 = getelementptr inbounds %struct.v4l2_frmivalenum, %struct.v4l2_frmivalenum* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* %9, align 4
  %54 = icmp sgt i32 %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %49
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %4, align 4
  br label %113

58:                                               ; preds = %49
  store i32 0, i32* %10, align 4
  br label %59

59:                                               ; preds = %88, %58
  %60 = load i32, i32* %10, align 4
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** @cpia2_framesizes, align 8
  %62 = call i32 @ARRAY_SIZE(%struct.TYPE_10__* %61)
  %63 = icmp slt i32 %60, %62
  br i1 %63, label %64, label %91

64:                                               ; preds = %59
  %65 = load %struct.v4l2_frmivalenum*, %struct.v4l2_frmivalenum** %7, align 8
  %66 = getelementptr inbounds %struct.v4l2_frmivalenum, %struct.v4l2_frmivalenum* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** @cpia2_framesizes, align 8
  %69 = load i32, i32* %10, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp eq i64 %67, %73
  br i1 %74, label %75, label %87

75:                                               ; preds = %64
  %76 = load %struct.v4l2_frmivalenum*, %struct.v4l2_frmivalenum** %7, align 8
  %77 = getelementptr inbounds %struct.v4l2_frmivalenum, %struct.v4l2_frmivalenum* %76, i32 0, i32 3
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** @cpia2_framesizes, align 8
  %80 = load i32, i32* %10, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = icmp eq i64 %78, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %75
  br label %91

87:                                               ; preds = %75, %64
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %10, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %10, align 4
  br label %59

91:                                               ; preds = %86, %59
  %92 = load i32, i32* %10, align 4
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** @cpia2_framesizes, align 8
  %94 = call i32 @ARRAY_SIZE(%struct.TYPE_10__* %93)
  %95 = icmp eq i32 %92, %94
  br i1 %95, label %96, label %99

96:                                               ; preds = %91
  %97 = load i32, i32* @EINVAL, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %4, align 4
  br label %113

99:                                               ; preds = %91
  %100 = load i32, i32* @V4L2_FRMIVAL_TYPE_DISCRETE, align 4
  %101 = load %struct.v4l2_frmivalenum*, %struct.v4l2_frmivalenum** %7, align 8
  %102 = getelementptr inbounds %struct.v4l2_frmivalenum, %struct.v4l2_frmivalenum* %101, i32 0, i32 5
  store i32 %100, i32* %102, align 4
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** @framerate_controls, align 8
  %104 = load %struct.v4l2_frmivalenum*, %struct.v4l2_frmivalenum** %7, align 8
  %105 = getelementptr inbounds %struct.v4l2_frmivalenum, %struct.v4l2_frmivalenum* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.v4l2_frmivalenum*, %struct.v4l2_frmivalenum** %7, align 8
  %112 = getelementptr inbounds %struct.v4l2_frmivalenum, %struct.v4l2_frmivalenum* %111, i32 0, i32 4
  store i32 %110, i32* %112, align 8
  store i32 0, i32* %4, align 4
  br label %113

113:                                              ; preds = %99, %96, %55, %27
  %114 = load i32, i32* %4, align 4
  ret i32 %114
}

declare dso_local %struct.camera_data* @video_drvdata(%struct.file*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
