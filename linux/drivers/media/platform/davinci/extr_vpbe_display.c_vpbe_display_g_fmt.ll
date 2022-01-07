; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpbe_display.c_vpbe_display_g_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpbe_display.c_vpbe_display_g_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_format = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.vpbe_layer = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.vpbe_device* }
%struct.vpbe_device = type { i32 }

@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"VIDIOC_G_FMT, layer id = %d\0A\00", align 1
@V4L2_BUF_TYPE_VIDEO_OUTPUT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"invalid type\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_format*)* @vpbe_display_g_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vpbe_display_g_fmt(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_format*, align 8
  %8 = alloca %struct.vpbe_layer*, align 8
  %9 = alloca %struct.vpbe_device*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %7, align 8
  %10 = load %struct.file*, %struct.file** %5, align 8
  %11 = call %struct.vpbe_layer* @video_drvdata(%struct.file* %10)
  store %struct.vpbe_layer* %11, %struct.vpbe_layer** %8, align 8
  %12 = load %struct.vpbe_layer*, %struct.vpbe_layer** %8, align 8
  %13 = getelementptr inbounds %struct.vpbe_layer, %struct.vpbe_layer* %12, i32 0, i32 2
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.vpbe_device*, %struct.vpbe_device** %15, align 8
  store %struct.vpbe_device* %16, %struct.vpbe_device** %9, align 8
  %17 = load i32, i32* @debug, align 4
  %18 = load %struct.vpbe_device*, %struct.vpbe_device** %9, align 8
  %19 = getelementptr inbounds %struct.vpbe_device, %struct.vpbe_device* %18, i32 0, i32 0
  %20 = load %struct.vpbe_layer*, %struct.vpbe_layer** %8, align 8
  %21 = getelementptr inbounds %struct.vpbe_layer, %struct.vpbe_layer* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @v4l2_dbg(i32 1, i32 %17, i32* %19, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_OUTPUT, align 8
  %25 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %26 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %24, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %3
  %30 = load %struct.vpbe_device*, %struct.vpbe_device** %9, align 8
  %31 = getelementptr inbounds %struct.vpbe_device, %struct.vpbe_device* %30, i32 0, i32 0
  %32 = call i32 @v4l2_err(i32* %31, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %42

35:                                               ; preds = %3
  %36 = load %struct.vpbe_layer*, %struct.vpbe_layer** %8, align 8
  %37 = getelementptr inbounds %struct.vpbe_layer, %struct.vpbe_layer* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %40 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  store i32 %38, i32* %41, align 8
  store i32 0, i32* %4, align 4
  br label %42

42:                                               ; preds = %35, %29
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local %struct.vpbe_layer* @video_drvdata(%struct.file*) #1

declare dso_local i32 @v4l2_dbg(i32, i32, i32*, i8*, i32) #1

declare dso_local i32 @v4l2_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
