; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_venc.c_venc_enum_frameintervals.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_venc.c_venc_enum_frameintervals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_frmivalenum = type { i64, i64, %struct.TYPE_8__, i64, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i32, i8* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i8* }
%struct.venus_inst = type { i32 }
%struct.venus_format = type { i32 }

@V4L2_FRMIVAL_TYPE_STEPWISE = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_frmivalenum*)* @venc_enum_frameintervals to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @venc_enum_frameintervals(%struct.file* %0, i8* %1, %struct.v4l2_frmivalenum* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_frmivalenum*, align 8
  %8 = alloca %struct.venus_inst*, align 8
  %9 = alloca %struct.venus_format*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_frmivalenum* %2, %struct.v4l2_frmivalenum** %7, align 8
  %10 = load %struct.file*, %struct.file** %5, align 8
  %11 = call %struct.venus_inst* @to_inst(%struct.file* %10)
  store %struct.venus_inst* %11, %struct.venus_inst** %8, align 8
  %12 = load i32, i32* @V4L2_FRMIVAL_TYPE_STEPWISE, align 4
  %13 = load %struct.v4l2_frmivalenum*, %struct.v4l2_frmivalenum** %7, align 8
  %14 = getelementptr inbounds %struct.v4l2_frmivalenum, %struct.v4l2_frmivalenum* %13, i32 0, i32 5
  store i32 %12, i32* %14, align 4
  %15 = load %struct.venus_inst*, %struct.venus_inst** %8, align 8
  %16 = load %struct.v4l2_frmivalenum*, %struct.v4l2_frmivalenum** %7, align 8
  %17 = getelementptr inbounds %struct.v4l2_frmivalenum, %struct.v4l2_frmivalenum* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE, align 4
  %20 = call %struct.venus_format* @find_format(%struct.venus_inst* %15, i32 %18, i32 %19)
  store %struct.venus_format* %20, %struct.venus_format** %9, align 8
  %21 = load %struct.venus_format*, %struct.venus_format** %9, align 8
  %22 = icmp ne %struct.venus_format* %21, null
  br i1 %22, label %36, label %23

23:                                               ; preds = %3
  %24 = load %struct.venus_inst*, %struct.venus_inst** %8, align 8
  %25 = load %struct.v4l2_frmivalenum*, %struct.v4l2_frmivalenum** %7, align 8
  %26 = getelementptr inbounds %struct.v4l2_frmivalenum, %struct.v4l2_frmivalenum* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE, align 4
  %29 = call %struct.venus_format* @find_format(%struct.venus_inst* %24, i32 %27, i32 %28)
  store %struct.venus_format* %29, %struct.venus_format** %9, align 8
  %30 = load %struct.venus_format*, %struct.venus_format** %9, align 8
  %31 = icmp ne %struct.venus_format* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %23
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %119

35:                                               ; preds = %23
  br label %36

36:                                               ; preds = %35, %3
  %37 = load %struct.v4l2_frmivalenum*, %struct.v4l2_frmivalenum** %7, align 8
  %38 = getelementptr inbounds %struct.v4l2_frmivalenum, %struct.v4l2_frmivalenum* %37, i32 0, i32 3
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %4, align 4
  br label %119

44:                                               ; preds = %36
  %45 = load %struct.v4l2_frmivalenum*, %struct.v4l2_frmivalenum** %7, align 8
  %46 = getelementptr inbounds %struct.v4l2_frmivalenum, %struct.v4l2_frmivalenum* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %44
  %50 = load %struct.v4l2_frmivalenum*, %struct.v4l2_frmivalenum** %7, align 8
  %51 = getelementptr inbounds %struct.v4l2_frmivalenum, %struct.v4l2_frmivalenum* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %49, %44
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %4, align 4
  br label %119

57:                                               ; preds = %49
  %58 = load %struct.v4l2_frmivalenum*, %struct.v4l2_frmivalenum** %7, align 8
  %59 = getelementptr inbounds %struct.v4l2_frmivalenum, %struct.v4l2_frmivalenum* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.venus_inst*, %struct.venus_inst** %8, align 8
  %62 = call i64 @frame_width_max(%struct.venus_inst* %61)
  %63 = icmp sgt i64 %60, %62
  br i1 %63, label %85, label %64

64:                                               ; preds = %57
  %65 = load %struct.v4l2_frmivalenum*, %struct.v4l2_frmivalenum** %7, align 8
  %66 = getelementptr inbounds %struct.v4l2_frmivalenum, %struct.v4l2_frmivalenum* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.venus_inst*, %struct.venus_inst** %8, align 8
  %69 = call i64 @frame_width_min(%struct.venus_inst* %68)
  %70 = icmp slt i64 %67, %69
  br i1 %70, label %85, label %71

71:                                               ; preds = %64
  %72 = load %struct.v4l2_frmivalenum*, %struct.v4l2_frmivalenum** %7, align 8
  %73 = getelementptr inbounds %struct.v4l2_frmivalenum, %struct.v4l2_frmivalenum* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.venus_inst*, %struct.venus_inst** %8, align 8
  %76 = call i64 @frame_height_max(%struct.venus_inst* %75)
  %77 = icmp sgt i64 %74, %76
  br i1 %77, label %85, label %78

78:                                               ; preds = %71
  %79 = load %struct.v4l2_frmivalenum*, %struct.v4l2_frmivalenum** %7, align 8
  %80 = getelementptr inbounds %struct.v4l2_frmivalenum, %struct.v4l2_frmivalenum* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.venus_inst*, %struct.venus_inst** %8, align 8
  %83 = call i64 @frame_height_min(%struct.venus_inst* %82)
  %84 = icmp slt i64 %81, %83
  br i1 %84, label %85, label %88

85:                                               ; preds = %78, %71, %64, %57
  %86 = load i32, i32* @EINVAL, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %4, align 4
  br label %119

88:                                               ; preds = %78
  %89 = load %struct.v4l2_frmivalenum*, %struct.v4l2_frmivalenum** %7, align 8
  %90 = getelementptr inbounds %struct.v4l2_frmivalenum, %struct.v4l2_frmivalenum* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 0
  store i32 1, i32* %92, align 8
  %93 = load %struct.venus_inst*, %struct.venus_inst** %8, align 8
  %94 = call i8* @frate_max(%struct.venus_inst* %93)
  %95 = load %struct.v4l2_frmivalenum*, %struct.v4l2_frmivalenum** %7, align 8
  %96 = getelementptr inbounds %struct.v4l2_frmivalenum, %struct.v4l2_frmivalenum* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 1
  store i8* %94, i8** %98, align 8
  %99 = load %struct.v4l2_frmivalenum*, %struct.v4l2_frmivalenum** %7, align 8
  %100 = getelementptr inbounds %struct.v4l2_frmivalenum, %struct.v4l2_frmivalenum* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  store i32 1, i32* %102, align 8
  %103 = load %struct.venus_inst*, %struct.venus_inst** %8, align 8
  %104 = call i32 @frate_min(%struct.venus_inst* %103)
  %105 = load %struct.v4l2_frmivalenum*, %struct.v4l2_frmivalenum** %7, align 8
  %106 = getelementptr inbounds %struct.v4l2_frmivalenum, %struct.v4l2_frmivalenum* %105, i32 0, i32 2
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 1
  store i32 %104, i32* %108, align 4
  %109 = load %struct.v4l2_frmivalenum*, %struct.v4l2_frmivalenum** %7, align 8
  %110 = getelementptr inbounds %struct.v4l2_frmivalenum, %struct.v4l2_frmivalenum* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 0
  store i32 1, i32* %112, align 8
  %113 = load %struct.venus_inst*, %struct.venus_inst** %8, align 8
  %114 = call i8* @frate_max(%struct.venus_inst* %113)
  %115 = load %struct.v4l2_frmivalenum*, %struct.v4l2_frmivalenum** %7, align 8
  %116 = getelementptr inbounds %struct.v4l2_frmivalenum, %struct.v4l2_frmivalenum* %115, i32 0, i32 2
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 1
  store i8* %114, i8** %118, align 8
  store i32 0, i32* %4, align 4
  br label %119

119:                                              ; preds = %88, %85, %54, %41, %32
  %120 = load i32, i32* %4, align 4
  ret i32 %120
}

declare dso_local %struct.venus_inst* @to_inst(%struct.file*) #1

declare dso_local %struct.venus_format* @find_format(%struct.venus_inst*, i32, i32) #1

declare dso_local i64 @frame_width_max(%struct.venus_inst*) #1

declare dso_local i64 @frame_width_min(%struct.venus_inst*) #1

declare dso_local i64 @frame_height_max(%struct.venus_inst*) #1

declare dso_local i64 @frame_height_min(%struct.venus_inst*) #1

declare dso_local i8* @frate_max(%struct.venus_inst*) #1

declare dso_local i32 @frate_min(%struct.venus_inst*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
