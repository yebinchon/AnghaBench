; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc_enc.c_vidioc_try_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc_enc.c_vidioc_try_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_format = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.v4l2_pix_format_mplane }
%struct.v4l2_pix_format_mplane = type { i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.s5p_mfc_dev = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.s5p_mfc_fmt = type { i32 }

@V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE = common dso_local global i64 0, align 8
@MFC_FMT_ENC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"failed to try output format\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Unsupported format by this MFC version.\0A\00", align 1
@V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE = common dso_local global i64 0, align 8
@MFC_FMT_RAW = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"invalid buf type\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_format*)* @vidioc_try_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_try_fmt(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_format*, align 8
  %8 = alloca %struct.s5p_mfc_dev*, align 8
  %9 = alloca %struct.s5p_mfc_fmt*, align 8
  %10 = alloca %struct.v4l2_pix_format_mplane*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %7, align 8
  %11 = load %struct.file*, %struct.file** %5, align 8
  %12 = call %struct.s5p_mfc_dev* @video_drvdata(%struct.file* %11)
  store %struct.s5p_mfc_dev* %12, %struct.s5p_mfc_dev** %8, align 8
  %13 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %14 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  store %struct.v4l2_pix_format_mplane* %15, %struct.v4l2_pix_format_mplane** %10, align 8
  %16 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %17 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %58

21:                                               ; preds = %3
  %22 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %23 = load i32, i32* @MFC_FMT_ENC, align 4
  %24 = call %struct.s5p_mfc_fmt* @find_format(%struct.v4l2_format* %22, i32 %23)
  store %struct.s5p_mfc_fmt* %24, %struct.s5p_mfc_fmt** %9, align 8
  %25 = load %struct.s5p_mfc_fmt*, %struct.s5p_mfc_fmt** %9, align 8
  %26 = icmp ne %struct.s5p_mfc_fmt* %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %21
  %28 = call i32 @mfc_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %101

31:                                               ; preds = %21
  %32 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %8, align 8
  %33 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %32, i32 0, i32 0
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.s5p_mfc_fmt*, %struct.s5p_mfc_fmt** %9, align 8
  %38 = getelementptr inbounds %struct.s5p_mfc_fmt, %struct.s5p_mfc_fmt* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = and i32 %36, %39
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %31
  %43 = call i32 @mfc_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %4, align 4
  br label %101

46:                                               ; preds = %31
  %47 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %10, align 8
  %48 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %47, i32 0, i32 2
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i64 0
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %10, align 8
  %54 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %53, i32 0, i32 2
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i64 0
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 1
  store i32 %52, i32* %57, align 4
  br label %100

58:                                               ; preds = %3
  %59 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %60 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %95

64:                                               ; preds = %58
  %65 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %66 = load i32, i32* @MFC_FMT_RAW, align 4
  %67 = call %struct.s5p_mfc_fmt* @find_format(%struct.v4l2_format* %65, i32 %66)
  store %struct.s5p_mfc_fmt* %67, %struct.s5p_mfc_fmt** %9, align 8
  %68 = load %struct.s5p_mfc_fmt*, %struct.s5p_mfc_fmt** %9, align 8
  %69 = icmp ne %struct.s5p_mfc_fmt* %68, null
  br i1 %69, label %74, label %70

70:                                               ; preds = %64
  %71 = call i32 @mfc_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %4, align 4
  br label %101

74:                                               ; preds = %64
  %75 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %8, align 8
  %76 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %75, i32 0, i32 0
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.s5p_mfc_fmt*, %struct.s5p_mfc_fmt** %9, align 8
  %81 = getelementptr inbounds %struct.s5p_mfc_fmt, %struct.s5p_mfc_fmt* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = and i32 %79, %82
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %74
  %86 = call i32 @mfc_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %87 = load i32, i32* @EINVAL, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %4, align 4
  br label %101

89:                                               ; preds = %74
  %90 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %10, align 8
  %91 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %90, i32 0, i32 1
  %92 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %10, align 8
  %93 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %92, i32 0, i32 0
  %94 = call i32 @v4l_bound_align_image(i32* %91, i32 8, i32 1920, i32 1, i32* %93, i32 4, i32 1080, i32 1, i32 0)
  br label %99

95:                                               ; preds = %58
  %96 = call i32 @mfc_err(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %97 = load i32, i32* @EINVAL, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %4, align 4
  br label %101

99:                                               ; preds = %89
  br label %100

100:                                              ; preds = %99, %46
  store i32 0, i32* %4, align 4
  br label %101

101:                                              ; preds = %100, %95, %85, %70, %42, %27
  %102 = load i32, i32* %4, align 4
  ret i32 %102
}

declare dso_local %struct.s5p_mfc_dev* @video_drvdata(%struct.file*) #1

declare dso_local %struct.s5p_mfc_fmt* @find_format(%struct.v4l2_format*, i32) #1

declare dso_local i32 @mfc_err(i8*) #1

declare dso_local i32 @v4l_bound_align_image(i32*, i32, i32, i32, i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
