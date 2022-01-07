; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vivid/extr_vivid-vbi-cap.c_vidioc_try_fmt_sliced_vbi_cap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vivid/extr_vivid-vbi-cap.c_vidioc_try_fmt_sliced_vbi_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_format = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.v4l2_sliced_vbi_format }
%struct.v4l2_sliced_vbi_format = type { i32 }
%struct.vivid_dev = type { i32*, i64, i32 }

@V4L2_STD_525_60 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@V4L2_SLICED_CAPTION_525 = common dso_local global i32 0, align 4
@V4L2_SLICED_WSS_625 = common dso_local global i32 0, align 4
@V4L2_SLICED_TELETEXT_B = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vidioc_try_fmt_sliced_vbi_cap(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_format*, align 8
  %8 = alloca %struct.vivid_dev*, align 8
  %9 = alloca %struct.v4l2_sliced_vbi_format*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %7, align 8
  %12 = load %struct.file*, %struct.file** %5, align 8
  %13 = call %struct.vivid_dev* @video_drvdata(%struct.file* %12)
  store %struct.vivid_dev* %13, %struct.vivid_dev** %8, align 8
  %14 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %15 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store %struct.v4l2_sliced_vbi_format* %16, %struct.v4l2_sliced_vbi_format** %9, align 8
  %17 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %18 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %21 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds i32, i32* %19, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @V4L2_STD_525_60, align 4
  %26 = and i32 %24, %25
  store i32 %26, i32* %10, align 4
  %27 = load %struct.v4l2_sliced_vbi_format*, %struct.v4l2_sliced_vbi_format** %9, align 8
  %28 = getelementptr inbounds %struct.v4l2_sliced_vbi_format, %struct.v4l2_sliced_vbi_format* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %11, align 4
  %30 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %31 = call i32 @vivid_is_sdtv_cap(%struct.vivid_dev* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %3
  %34 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %35 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %33, %3
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %57

41:                                               ; preds = %33
  %42 = load i32, i32* %10, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = load i32, i32* @V4L2_SLICED_CAPTION_525, align 4
  br label %50

46:                                               ; preds = %41
  %47 = load i32, i32* @V4L2_SLICED_WSS_625, align 4
  %48 = load i32, i32* @V4L2_SLICED_TELETEXT_B, align 4
  %49 = or i32 %47, %48
  br label %50

50:                                               ; preds = %46, %44
  %51 = phi i32 [ %45, %44 ], [ %49, %46 ]
  %52 = load i32, i32* %11, align 4
  %53 = and i32 %52, %51
  store i32 %53, i32* %11, align 4
  %54 = load %struct.v4l2_sliced_vbi_format*, %struct.v4l2_sliced_vbi_format** %9, align 8
  %55 = load i32, i32* %11, align 4
  %56 = call i32 @vivid_fill_service_lines(%struct.v4l2_sliced_vbi_format* %54, i32 %55)
  store i32 0, i32* %4, align 4
  br label %57

57:                                               ; preds = %50, %38
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local %struct.vivid_dev* @video_drvdata(%struct.file*) #1

declare dso_local i32 @vivid_is_sdtv_cap(%struct.vivid_dev*) #1

declare dso_local i32 @vivid_fill_service_lines(%struct.v4l2_sliced_vbi_format*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
