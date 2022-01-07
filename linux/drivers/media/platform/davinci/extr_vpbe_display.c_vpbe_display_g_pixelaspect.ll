; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpbe_display.c_vpbe_display_g_pixelaspect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpbe_display.c_vpbe_display_g_pixelaspect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_fract = type { i32 }
%struct.vpbe_layer = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.vpbe_device* }
%struct.vpbe_device = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.v4l2_fract }

@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"VIDIOC_CROPCAP ioctl\0A\00", align 1
@V4L2_BUF_TYPE_VIDEO_OUTPUT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, i32, %struct.v4l2_fract*)* @vpbe_display_g_pixelaspect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vpbe_display_g_pixelaspect(%struct.file* %0, i8* %1, i32 %2, %struct.v4l2_fract* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.file*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.v4l2_fract*, align 8
  %10 = alloca %struct.vpbe_layer*, align 8
  %11 = alloca %struct.vpbe_device*, align 8
  store %struct.file* %0, %struct.file** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.v4l2_fract* %3, %struct.v4l2_fract** %9, align 8
  %12 = load %struct.file*, %struct.file** %6, align 8
  %13 = call %struct.vpbe_layer* @video_drvdata(%struct.file* %12)
  store %struct.vpbe_layer* %13, %struct.vpbe_layer** %10, align 8
  %14 = load %struct.vpbe_layer*, %struct.vpbe_layer** %10, align 8
  %15 = getelementptr inbounds %struct.vpbe_layer, %struct.vpbe_layer* %14, i32 0, i32 0
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load %struct.vpbe_device*, %struct.vpbe_device** %17, align 8
  store %struct.vpbe_device* %18, %struct.vpbe_device** %11, align 8
  %19 = load i32, i32* @debug, align 4
  %20 = load %struct.vpbe_device*, %struct.vpbe_device** %11, align 8
  %21 = getelementptr inbounds %struct.vpbe_device, %struct.vpbe_device* %20, i32 0, i32 1
  %22 = call i32 @v4l2_dbg(i32 1, i32 %19, i32* %21, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_OUTPUT, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %4
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %36

29:                                               ; preds = %4
  %30 = load %struct.v4l2_fract*, %struct.v4l2_fract** %9, align 8
  %31 = load %struct.vpbe_device*, %struct.vpbe_device** %11, align 8
  %32 = getelementptr inbounds %struct.vpbe_device, %struct.vpbe_device* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = bitcast %struct.v4l2_fract* %30 to i8*
  %35 = bitcast %struct.v4l2_fract* %33 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %34, i8* align 4 %35, i64 4, i1 false)
  store i32 0, i32* %5, align 4
  br label %36

36:                                               ; preds = %29, %26
  %37 = load i32, i32* %5, align 4
  ret i32 %37
}

declare dso_local %struct.vpbe_layer* @video_drvdata(%struct.file*) #1

declare dso_local i32 @v4l2_dbg(i32, i32, i32*, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
