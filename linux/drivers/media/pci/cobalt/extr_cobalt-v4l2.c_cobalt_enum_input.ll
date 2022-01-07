; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cobalt/extr_cobalt-v4l2.c_cobalt_enum_input.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cobalt/extr_cobalt-v4l2.c_cobalt_enum_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_input = type { i32, i32, i32, i32, i32 }
%struct.cobalt_stream = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"HDMI-%d\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Generator-%d\00", align 1
@V4L2_INPUT_TYPE_CAMERA = common dso_local global i32 0, align 4
@V4L2_IN_CAP_DV_TIMINGS = common dso_local global i32 0, align 4
@video = common dso_local global i32 0, align 4
@g_input_status = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_input*)* @cobalt_enum_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cobalt_enum_input(%struct.file* %0, i8* %1, %struct.v4l2_input* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_input*, align 8
  %8 = alloca %struct.cobalt_stream*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_input* %2, %struct.v4l2_input** %7, align 8
  %9 = load %struct.file*, %struct.file** %5, align 8
  %10 = call %struct.cobalt_stream* @video_drvdata(%struct.file* %9)
  store %struct.cobalt_stream* %10, %struct.cobalt_stream** %8, align 8
  %11 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %12 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp sgt i32 %13, 1
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %60

18:                                               ; preds = %3
  %19 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %20 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %18
  %24 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %25 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.cobalt_stream*, %struct.cobalt_stream** %8, align 8
  %28 = getelementptr inbounds %struct.cobalt_stream, %struct.cobalt_stream* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @snprintf(i32 %26, i32 4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %29)
  br label %39

31:                                               ; preds = %18
  %32 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %33 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.cobalt_stream*, %struct.cobalt_stream** %8, align 8
  %36 = getelementptr inbounds %struct.cobalt_stream, %struct.cobalt_stream* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @snprintf(i32 %34, i32 4, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  br label %39

39:                                               ; preds = %31, %23
  %40 = load i32, i32* @V4L2_INPUT_TYPE_CAMERA, align 4
  %41 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %42 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %41, i32 0, i32 3
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* @V4L2_IN_CAP_DV_TIMINGS, align 4
  %44 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %45 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 4
  %46 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %47 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp eq i32 %48, 1
  br i1 %49, label %50, label %51

50:                                               ; preds = %39
  store i32 0, i32* %4, align 4
  br label %60

51:                                               ; preds = %39
  %52 = load %struct.cobalt_stream*, %struct.cobalt_stream** %8, align 8
  %53 = getelementptr inbounds %struct.cobalt_stream, %struct.cobalt_stream* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @video, align 4
  %56 = load i32, i32* @g_input_status, align 4
  %57 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %58 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %57, i32 0, i32 1
  %59 = call i32 @v4l2_subdev_call(i32 %54, i32 %55, i32 %56, i32* %58)
  store i32 %59, i32* %4, align 4
  br label %60

60:                                               ; preds = %51, %50, %15
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local %struct.cobalt_stream* @video_drvdata(%struct.file*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32) #1

declare dso_local i32 @v4l2_subdev_call(i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
