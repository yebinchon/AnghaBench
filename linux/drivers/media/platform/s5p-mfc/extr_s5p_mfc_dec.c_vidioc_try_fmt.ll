; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc_dec.c_vidioc_try_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc_dec.c_vidioc_try_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_format = type { i64 }
%struct.s5p_mfc_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.s5p_mfc_fmt = type { i64, i32 }

@.str = private unnamed_addr constant [12 x i8] c"Type is %d\0A\00", align 1
@V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE = common dso_local global i64 0, align 8
@MFC_FMT_DEC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Unsupported format for source.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@S5P_FIMV_CODEC_NONE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [15 x i8] c"Unknown codec\0A\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"Unsupported format by this MFC version.\0A\00", align 1
@V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE = common dso_local global i64 0, align 8
@MFC_FMT_RAW = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [37 x i8] c"Unsupported format for destination.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_format*)* @vidioc_try_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_try_fmt(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_format*, align 8
  %8 = alloca %struct.s5p_mfc_dev*, align 8
  %9 = alloca %struct.s5p_mfc_fmt*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %7, align 8
  %10 = load %struct.file*, %struct.file** %5, align 8
  %11 = call %struct.s5p_mfc_dev* @video_drvdata(%struct.file* %10)
  store %struct.s5p_mfc_dev* %11, %struct.s5p_mfc_dev** %8, align 8
  %12 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %13 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = call i32 @mfc_debug(i32 2, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %14)
  %16 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %17 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %57

21:                                               ; preds = %3
  %22 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %23 = load i32, i32* @MFC_FMT_DEC, align 4
  %24 = call %struct.s5p_mfc_fmt* @find_format(%struct.v4l2_format* %22, i32 %23)
  store %struct.s5p_mfc_fmt* %24, %struct.s5p_mfc_fmt** %9, align 8
  %25 = load %struct.s5p_mfc_fmt*, %struct.s5p_mfc_fmt** %9, align 8
  %26 = icmp ne %struct.s5p_mfc_fmt* %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %21
  %28 = call i32 @mfc_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %91

31:                                               ; preds = %21
  %32 = load %struct.s5p_mfc_fmt*, %struct.s5p_mfc_fmt** %9, align 8
  %33 = getelementptr inbounds %struct.s5p_mfc_fmt, %struct.s5p_mfc_fmt* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @S5P_FIMV_CODEC_NONE, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %31
  %38 = call i32 @mfc_err(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %91

41:                                               ; preds = %31
  %42 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %8, align 8
  %43 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.s5p_mfc_fmt*, %struct.s5p_mfc_fmt** %9, align 8
  %48 = getelementptr inbounds %struct.s5p_mfc_fmt, %struct.s5p_mfc_fmt* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = and i32 %46, %49
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %41
  %53 = call i32 @mfc_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %4, align 4
  br label %91

56:                                               ; preds = %41
  br label %90

57:                                               ; preds = %3
  %58 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %59 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %89

63:                                               ; preds = %57
  %64 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %65 = load i32, i32* @MFC_FMT_RAW, align 4
  %66 = call %struct.s5p_mfc_fmt* @find_format(%struct.v4l2_format* %64, i32 %65)
  store %struct.s5p_mfc_fmt* %66, %struct.s5p_mfc_fmt** %9, align 8
  %67 = load %struct.s5p_mfc_fmt*, %struct.s5p_mfc_fmt** %9, align 8
  %68 = icmp ne %struct.s5p_mfc_fmt* %67, null
  br i1 %68, label %73, label %69

69:                                               ; preds = %63
  %70 = call i32 @mfc_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  %71 = load i32, i32* @EINVAL, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %4, align 4
  br label %91

73:                                               ; preds = %63
  %74 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %8, align 8
  %75 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %74, i32 0, i32 0
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.s5p_mfc_fmt*, %struct.s5p_mfc_fmt** %9, align 8
  %80 = getelementptr inbounds %struct.s5p_mfc_fmt, %struct.s5p_mfc_fmt* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = and i32 %78, %81
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %73
  %85 = call i32 @mfc_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  %86 = load i32, i32* @EINVAL, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %4, align 4
  br label %91

88:                                               ; preds = %73
  br label %89

89:                                               ; preds = %88, %57
  br label %90

90:                                               ; preds = %89, %56
  store i32 0, i32* %4, align 4
  br label %91

91:                                               ; preds = %90, %84, %69, %52, %37, %27
  %92 = load i32, i32* %4, align 4
  ret i32 %92
}

declare dso_local %struct.s5p_mfc_dev* @video_drvdata(%struct.file*) #1

declare dso_local i32 @mfc_debug(i32, i8*, i64) #1

declare dso_local %struct.s5p_mfc_fmt* @find_format(%struct.v4l2_format*, i32) #1

declare dso_local i32 @mfc_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
