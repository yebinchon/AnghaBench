; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vivid/extr_vivid-vbi-out.c_vidioc_s_fmt_vbi_out.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vivid/extr_vivid-vbi-out.c_vidioc_s_fmt_vbi_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_format = type { i32 }
%struct.vivid_dev = type { i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VBI_OUTPUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vidioc_s_fmt_vbi_out(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_format*, align 8
  %8 = alloca %struct.vivid_dev*, align 8
  %9 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %7, align 8
  %10 = load %struct.file*, %struct.file** %5, align 8
  %11 = call %struct.vivid_dev* @video_drvdata(%struct.file* %10)
  store %struct.vivid_dev* %11, %struct.vivid_dev** %8, align 8
  %12 = load %struct.file*, %struct.file** %5, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %15 = call i32 @vidioc_g_fmt_vbi_out(%struct.file* %12, i8* %13, %struct.v4l2_format* %14)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* %9, align 4
  store i32 %19, i32* %4, align 4
  br label %37

20:                                               ; preds = %3
  %21 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %22 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %21, i32 0, i32 2
  %23 = call i64 @vb2_is_busy(i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load i32, i32* @EBUSY, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %37

28:                                               ; preds = %20
  %29 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %30 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %29, i32 0, i32 0
  store i32 0, i32* %30, align 8
  %31 = load i32, i32* @V4L2_BUF_TYPE_VBI_OUTPUT, align 4
  %32 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %33 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  store i32 %31, i32* %36, align 4
  store i32 0, i32* %4, align 4
  br label %37

37:                                               ; preds = %28, %25, %18
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local %struct.vivid_dev* @video_drvdata(%struct.file*) #1

declare dso_local i32 @vidioc_g_fmt_vbi_out(%struct.file*, i8*, %struct.v4l2_format*) #1

declare dso_local i64 @vb2_is_busy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
