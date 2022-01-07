; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s3c-camif/extr_camif-capture.c_s3c_camif_vidioc_enum_input.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s3c-camif/extr_camif-capture.c_s3c_camif_vidioc_enum_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_input = type { i32, i32, i64 }
%struct.camif_vp = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.v4l2_subdev* }
%struct.v4l2_subdev = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@V4L2_INPUT_TYPE_CAMERA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_input*)* @s3c_camif_vidioc_enum_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3c_camif_vidioc_enum_input(%struct.file* %0, i8* %1, %struct.v4l2_input* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_input*, align 8
  %8 = alloca %struct.camif_vp*, align 8
  %9 = alloca %struct.v4l2_subdev*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_input* %2, %struct.v4l2_input** %7, align 8
  %10 = load %struct.file*, %struct.file** %5, align 8
  %11 = call %struct.camif_vp* @video_drvdata(%struct.file* %10)
  store %struct.camif_vp* %11, %struct.camif_vp** %8, align 8
  %12 = load %struct.camif_vp*, %struct.camif_vp** %8, align 8
  %13 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %16, align 8
  store %struct.v4l2_subdev* %17, %struct.v4l2_subdev** %9, align 8
  %18 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %19 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %3
  %23 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %9, align 8
  %24 = icmp eq %struct.v4l2_subdev* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %22, %3
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %39

28:                                               ; preds = %22
  %29 = load i32, i32* @V4L2_INPUT_TYPE_CAMERA, align 4
  %30 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %31 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %33 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %9, align 8
  %36 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @strscpy(i32 %34, i32 %37, i32 4)
  store i32 0, i32* %4, align 4
  br label %39

39:                                               ; preds = %28, %25
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

declare dso_local %struct.camif_vp* @video_drvdata(%struct.file*) #1

declare dso_local i32 @strscpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
