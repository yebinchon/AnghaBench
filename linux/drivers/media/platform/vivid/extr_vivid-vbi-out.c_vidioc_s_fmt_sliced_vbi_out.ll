; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vivid/extr_vivid-vbi-out.c_vidioc_s_fmt_sliced_vbi_out.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vivid/extr_vivid-vbi-out.c_vidioc_s_fmt_sliced_vbi_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_format = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.v4l2_sliced_vbi_format }
%struct.v4l2_sliced_vbi_format = type { i32 }
%struct.vivid_dev = type { i32, %struct.TYPE_5__, i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_SLICED_VBI_OUTPUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vidioc_s_fmt_sliced_vbi_out(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_format*, align 8
  %8 = alloca %struct.vivid_dev*, align 8
  %9 = alloca %struct.v4l2_sliced_vbi_format*, align 8
  %10 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %7, align 8
  %11 = load %struct.file*, %struct.file** %5, align 8
  %12 = call %struct.vivid_dev* @video_drvdata(%struct.file* %11)
  store %struct.vivid_dev* %12, %struct.vivid_dev** %8, align 8
  %13 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %14 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  store %struct.v4l2_sliced_vbi_format* %15, %struct.v4l2_sliced_vbi_format** %9, align 8
  %16 = load %struct.file*, %struct.file** %5, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %19 = call i32 @vidioc_try_fmt_sliced_vbi_out(%struct.file* %16, i8* %17, %struct.v4l2_format* %18)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load i32, i32* %10, align 4
  store i32 %23, i32* %4, align 4
  br label %46

24:                                               ; preds = %3
  %25 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %26 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %25, i32 0, i32 3
  %27 = call i64 @vb2_is_busy(i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load i32, i32* @EBUSY, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %46

32:                                               ; preds = %24
  %33 = load %struct.v4l2_sliced_vbi_format*, %struct.v4l2_sliced_vbi_format** %9, align 8
  %34 = getelementptr inbounds %struct.v4l2_sliced_vbi_format, %struct.v4l2_sliced_vbi_format* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %37 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 8
  %38 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %39 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %38, i32 0, i32 0
  store i32 1, i32* %39, align 8
  %40 = load i32, i32* @V4L2_BUF_TYPE_SLICED_VBI_OUTPUT, align 4
  %41 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %42 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  store i32 %40, i32* %45, align 4
  store i32 0, i32* %4, align 4
  br label %46

46:                                               ; preds = %32, %29, %22
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local %struct.vivid_dev* @video_drvdata(%struct.file*) #1

declare dso_local i32 @vidioc_try_fmt_sliced_vbi_out(%struct.file*, i8*, %struct.v4l2_format*) #1

declare dso_local i64 @vb2_is_busy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
