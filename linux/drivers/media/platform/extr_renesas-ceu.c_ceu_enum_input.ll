; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_renesas-ceu.c_ceu_enum_input.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_renesas-ceu.c_ceu_enum_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_input = type { i64, i32, i64, i32 }
%struct.ceu_device = type { i64, %struct.ceu_subdev* }
%struct.ceu_subdev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8* }

@EINVAL = common dso_local global i32 0, align 4
@V4L2_INPUT_TYPE_CAMERA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"Camera%u: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_input*)* @ceu_enum_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ceu_enum_input(%struct.file* %0, i8* %1, %struct.v4l2_input* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_input*, align 8
  %8 = alloca %struct.ceu_device*, align 8
  %9 = alloca %struct.ceu_subdev*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_input* %2, %struct.v4l2_input** %7, align 8
  %10 = load %struct.file*, %struct.file** %5, align 8
  %11 = call %struct.ceu_device* @video_drvdata(%struct.file* %10)
  store %struct.ceu_device* %11, %struct.ceu_device** %8, align 8
  %12 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %13 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.ceu_device*, %struct.ceu_device** %8, align 8
  %16 = getelementptr inbounds %struct.ceu_device, %struct.ceu_device* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp uge i64 %14, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %47

22:                                               ; preds = %3
  %23 = load %struct.ceu_device*, %struct.ceu_device** %8, align 8
  %24 = getelementptr inbounds %struct.ceu_device, %struct.ceu_device* %23, i32 0, i32 1
  %25 = load %struct.ceu_subdev*, %struct.ceu_subdev** %24, align 8
  %26 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %27 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds %struct.ceu_subdev, %struct.ceu_subdev* %25, i64 %28
  store %struct.ceu_subdev* %29, %struct.ceu_subdev** %9, align 8
  %30 = load i32, i32* @V4L2_INPUT_TYPE_CAMERA, align 4
  %31 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %32 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %31, i32 0, i32 3
  store i32 %30, i32* %32, align 8
  %33 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %34 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %33, i32 0, i32 2
  store i64 0, i64* %34, align 8
  %35 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %36 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %39 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.ceu_subdev*, %struct.ceu_subdev** %9, align 8
  %42 = getelementptr inbounds %struct.ceu_subdev, %struct.ceu_subdev* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 @snprintf(i32 %37, i32 4, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i64 %40, i8* %45)
  store i32 0, i32* %4, align 4
  br label %47

47:                                               ; preds = %22, %19
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local %struct.ceu_device* @video_drvdata(%struct.file*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
