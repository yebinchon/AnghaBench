; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vivid/extr_vivid-vbi-out.c_vidioc_g_fmt_vbi_out.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vivid/extr_vivid-vbi-out.c_vidioc_g_fmt_vbi_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_format = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.v4l2_vbi_format }
%struct.v4l2_vbi_format = type { i32, i32, i32, i32*, i64*, i32, i64*, i32 }
%struct.vivid_dev = type { i32, i64, i32 }

@V4L2_STD_525_60 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@V4L2_PIX_FMT_GREY = common dso_local global i32 0, align 4
@V4L2_VBI_ITU_525_F1_START = common dso_local global i64 0, align 8
@V4L2_VBI_ITU_625_F1_START = common dso_local global i64 0, align 8
@V4L2_VBI_ITU_525_F2_START = common dso_local global i64 0, align 8
@V4L2_VBI_ITU_625_F2_START = common dso_local global i64 0, align 8
@V4L2_VBI_INTERLACED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vidioc_g_fmt_vbi_out(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_format*, align 8
  %8 = alloca %struct.vivid_dev*, align 8
  %9 = alloca %struct.v4l2_vbi_format*, align 8
  %10 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %7, align 8
  %11 = load %struct.file*, %struct.file** %5, align 8
  %12 = call %struct.vivid_dev* @video_drvdata(%struct.file* %11)
  store %struct.vivid_dev* %12, %struct.vivid_dev** %8, align 8
  %13 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %14 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store %struct.v4l2_vbi_format* %15, %struct.v4l2_vbi_format** %9, align 8
  %16 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %17 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @V4L2_STD_525_60, align 4
  %20 = and i32 %18, %19
  store i32 %20, i32* %10, align 4
  %21 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %22 = call i32 @vivid_is_svid_out(%struct.vivid_dev* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %3
  %25 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %26 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %24, %3
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %101

32:                                               ; preds = %24
  %33 = load %struct.v4l2_vbi_format*, %struct.v4l2_vbi_format** %9, align 8
  %34 = getelementptr inbounds %struct.v4l2_vbi_format, %struct.v4l2_vbi_format* %33, i32 0, i32 0
  store i32 25000000, i32* %34, align 8
  %35 = load %struct.v4l2_vbi_format*, %struct.v4l2_vbi_format** %9, align 8
  %36 = getelementptr inbounds %struct.v4l2_vbi_format, %struct.v4l2_vbi_format* %35, i32 0, i32 1
  store i32 24, i32* %36, align 4
  %37 = load %struct.v4l2_vbi_format*, %struct.v4l2_vbi_format** %9, align 8
  %38 = getelementptr inbounds %struct.v4l2_vbi_format, %struct.v4l2_vbi_format* %37, i32 0, i32 2
  store i32 1440, i32* %38, align 8
  %39 = load i32, i32* @V4L2_PIX_FMT_GREY, align 4
  %40 = load %struct.v4l2_vbi_format*, %struct.v4l2_vbi_format** %9, align 8
  %41 = getelementptr inbounds %struct.v4l2_vbi_format, %struct.v4l2_vbi_format* %40, i32 0, i32 7
  store i32 %39, i32* %41, align 8
  %42 = load i32, i32* %10, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %32
  %45 = load i64, i64* @V4L2_VBI_ITU_525_F1_START, align 8
  %46 = add nsw i64 %45, 9
  br label %50

47:                                               ; preds = %32
  %48 = load i64, i64* @V4L2_VBI_ITU_625_F1_START, align 8
  %49 = add nsw i64 %48, 5
  br label %50

50:                                               ; preds = %47, %44
  %51 = phi i64 [ %46, %44 ], [ %49, %47 ]
  %52 = load %struct.v4l2_vbi_format*, %struct.v4l2_vbi_format** %9, align 8
  %53 = getelementptr inbounds %struct.v4l2_vbi_format, %struct.v4l2_vbi_format* %52, i32 0, i32 6
  %54 = load i64*, i64** %53, align 8
  %55 = getelementptr inbounds i64, i64* %54, i64 0
  store i64 %51, i64* %55, align 8
  %56 = load i32, i32* %10, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %50
  %59 = load i64, i64* @V4L2_VBI_ITU_525_F2_START, align 8
  %60 = add nsw i64 %59, 9
  br label %64

61:                                               ; preds = %50
  %62 = load i64, i64* @V4L2_VBI_ITU_625_F2_START, align 8
  %63 = add nsw i64 %62, 5
  br label %64

64:                                               ; preds = %61, %58
  %65 = phi i64 [ %60, %58 ], [ %63, %61 ]
  %66 = load %struct.v4l2_vbi_format*, %struct.v4l2_vbi_format** %9, align 8
  %67 = getelementptr inbounds %struct.v4l2_vbi_format, %struct.v4l2_vbi_format* %66, i32 0, i32 6
  %68 = load i64*, i64** %67, align 8
  %69 = getelementptr inbounds i64, i64* %68, i64 1
  store i64 %65, i64* %69, align 8
  %70 = load i32, i32* %10, align 4
  %71 = icmp ne i32 %70, 0
  %72 = zext i1 %71 to i64
  %73 = select i1 %71, i32 12, i32 18
  %74 = load %struct.v4l2_vbi_format*, %struct.v4l2_vbi_format** %9, align 8
  %75 = getelementptr inbounds %struct.v4l2_vbi_format, %struct.v4l2_vbi_format* %74, i32 0, i32 3
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 1
  store i32 %73, i32* %77, align 4
  %78 = load %struct.v4l2_vbi_format*, %struct.v4l2_vbi_format** %9, align 8
  %79 = getelementptr inbounds %struct.v4l2_vbi_format, %struct.v4l2_vbi_format* %78, i32 0, i32 3
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 0
  store i32 %73, i32* %81, align 4
  %82 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %83 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %64
  %87 = load i32, i32* @V4L2_VBI_INTERLACED, align 4
  br label %89

88:                                               ; preds = %64
  br label %89

89:                                               ; preds = %88, %86
  %90 = phi i32 [ %87, %86 ], [ 0, %88 ]
  %91 = load %struct.v4l2_vbi_format*, %struct.v4l2_vbi_format** %9, align 8
  %92 = getelementptr inbounds %struct.v4l2_vbi_format, %struct.v4l2_vbi_format* %91, i32 0, i32 5
  store i32 %90, i32* %92, align 8
  %93 = load %struct.v4l2_vbi_format*, %struct.v4l2_vbi_format** %9, align 8
  %94 = getelementptr inbounds %struct.v4l2_vbi_format, %struct.v4l2_vbi_format* %93, i32 0, i32 4
  %95 = load i64*, i64** %94, align 8
  %96 = getelementptr inbounds i64, i64* %95, i64 0
  store i64 0, i64* %96, align 8
  %97 = load %struct.v4l2_vbi_format*, %struct.v4l2_vbi_format** %9, align 8
  %98 = getelementptr inbounds %struct.v4l2_vbi_format, %struct.v4l2_vbi_format* %97, i32 0, i32 4
  %99 = load i64*, i64** %98, align 8
  %100 = getelementptr inbounds i64, i64* %99, i64 1
  store i64 0, i64* %100, align 8
  store i32 0, i32* %4, align 4
  br label %101

101:                                              ; preds = %89, %29
  %102 = load i32, i32* %4, align 4
  ret i32 %102
}

declare dso_local %struct.vivid_dev* @video_drvdata(%struct.file*) #1

declare dso_local i32 @vivid_is_svid_out(%struct.vivid_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
