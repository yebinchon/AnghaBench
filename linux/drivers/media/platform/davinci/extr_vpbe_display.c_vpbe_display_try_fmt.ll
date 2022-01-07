; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpbe_display.c_vpbe_display_try_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpbe_display.c_vpbe_display_try_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_format = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.v4l2_pix_format }
%struct.v4l2_pix_format = type { i32 }
%struct.vpbe_layer = type { %struct.vpbe_display* }
%struct.vpbe_display = type { %struct.vpbe_device* }
%struct.vpbe_device = type { i32 }

@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"VIDIOC_TRY_FMT\0A\00", align 1
@V4L2_BUF_TYPE_VIDEO_OUTPUT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"invalid type\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_format*)* @vpbe_display_try_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vpbe_display_try_fmt(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_format*, align 8
  %8 = alloca %struct.vpbe_layer*, align 8
  %9 = alloca %struct.vpbe_display*, align 8
  %10 = alloca %struct.vpbe_device*, align 8
  %11 = alloca %struct.v4l2_pix_format*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %7, align 8
  %12 = load %struct.file*, %struct.file** %5, align 8
  %13 = call %struct.vpbe_layer* @video_drvdata(%struct.file* %12)
  store %struct.vpbe_layer* %13, %struct.vpbe_layer** %8, align 8
  %14 = load %struct.vpbe_layer*, %struct.vpbe_layer** %8, align 8
  %15 = getelementptr inbounds %struct.vpbe_layer, %struct.vpbe_layer* %14, i32 0, i32 0
  %16 = load %struct.vpbe_display*, %struct.vpbe_display** %15, align 8
  store %struct.vpbe_display* %16, %struct.vpbe_display** %9, align 8
  %17 = load %struct.vpbe_layer*, %struct.vpbe_layer** %8, align 8
  %18 = getelementptr inbounds %struct.vpbe_layer, %struct.vpbe_layer* %17, i32 0, i32 0
  %19 = load %struct.vpbe_display*, %struct.vpbe_display** %18, align 8
  %20 = getelementptr inbounds %struct.vpbe_display, %struct.vpbe_display* %19, i32 0, i32 0
  %21 = load %struct.vpbe_device*, %struct.vpbe_device** %20, align 8
  store %struct.vpbe_device* %21, %struct.vpbe_device** %10, align 8
  %22 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %23 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store %struct.v4l2_pix_format* %24, %struct.v4l2_pix_format** %11, align 8
  %25 = load i32, i32* @debug, align 4
  %26 = load %struct.vpbe_device*, %struct.vpbe_device** %10, align 8
  %27 = getelementptr inbounds %struct.vpbe_device, %struct.vpbe_device* %26, i32 0, i32 0
  %28 = call i32 @v4l2_dbg(i32 1, i32 %25, i32* %27, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %29 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_OUTPUT, align 8
  %30 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %31 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %29, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %3
  %35 = load %struct.vpbe_device*, %struct.vpbe_device** %10, align 8
  %36 = getelementptr inbounds %struct.vpbe_device, %struct.vpbe_device* %35, i32 0, i32 0
  %37 = call i32 @v4l2_err(i32* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %44

40:                                               ; preds = %3
  %41 = load %struct.vpbe_display*, %struct.vpbe_display** %9, align 8
  %42 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %11, align 8
  %43 = call i32 @vpbe_try_format(%struct.vpbe_display* %41, %struct.v4l2_pix_format* %42, i32 0)
  store i32 %43, i32* %4, align 4
  br label %44

44:                                               ; preds = %40, %34
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local %struct.vpbe_layer* @video_drvdata(%struct.file*) #1

declare dso_local i32 @v4l2_dbg(i32, i32, i32*, i8*) #1

declare dso_local i32 @v4l2_err(i32*, i8*) #1

declare dso_local i32 @vpbe_try_format(%struct.vpbe_display*, %struct.v4l2_pix_format*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
