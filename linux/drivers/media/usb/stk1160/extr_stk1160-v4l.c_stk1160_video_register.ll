; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/stk1160/extr_stk1160-v4l.c_stk1160_video_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/stk1160/extr_stk1160-v4l.c_stk1160_video_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32*, i32*, i32* }
%struct.stk1160 = type { i32, i32, %struct.TYPE_5__, i32, i32, i32*, i32, i32 }

@v4l_template = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@V4L2_CAP_VIDEO_CAPTURE = common dso_local global i32 0, align 4
@V4L2_CAP_STREAMING = common dso_local global i32 0, align 4
@V4L2_CAP_READWRITE = common dso_local global i32 0, align 4
@V4L2_STD_NTSC_M = common dso_local global i32 0, align 4
@format = common dso_local global i32* null, align 8
@video = common dso_local global i32 0, align 4
@s_std = common dso_local global i32 0, align 4
@VFL_TYPE_GRABBER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"video_register_device failed (%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"V4L2 device registered as %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stk1160_video_register(%struct.stk1160* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.stk1160*, align 8
  %4 = alloca i32, align 4
  store %struct.stk1160* %0, %struct.stk1160** %3, align 8
  %5 = load %struct.stk1160*, %struct.stk1160** %3, align 8
  %6 = getelementptr inbounds %struct.stk1160, %struct.stk1160* %5, i32 0, i32 2
  %7 = bitcast %struct.TYPE_5__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %7, i8* align 8 bitcast (%struct.TYPE_5__* @v4l_template to i8*), i64 32, i1 false)
  %8 = load %struct.stk1160*, %struct.stk1160** %3, align 8
  %9 = getelementptr inbounds %struct.stk1160, %struct.stk1160* %8, i32 0, i32 7
  %10 = load %struct.stk1160*, %struct.stk1160** %3, align 8
  %11 = getelementptr inbounds %struct.stk1160, %struct.stk1160* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 3
  store i32* %9, i32** %12, align 8
  %13 = load %struct.stk1160*, %struct.stk1160** %3, align 8
  %14 = getelementptr inbounds %struct.stk1160, %struct.stk1160* %13, i32 0, i32 6
  %15 = load %struct.stk1160*, %struct.stk1160** %3, align 8
  %16 = getelementptr inbounds %struct.stk1160, %struct.stk1160* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 2
  store i32* %14, i32** %17, align 8
  %18 = load %struct.stk1160*, %struct.stk1160** %3, align 8
  %19 = getelementptr inbounds %struct.stk1160, %struct.stk1160* %18, i32 0, i32 3
  %20 = load %struct.stk1160*, %struct.stk1160** %3, align 8
  %21 = getelementptr inbounds %struct.stk1160, %struct.stk1160* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 1
  store i32* %19, i32** %22, align 8
  %23 = load i32, i32* @V4L2_CAP_VIDEO_CAPTURE, align 4
  %24 = load i32, i32* @V4L2_CAP_STREAMING, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @V4L2_CAP_READWRITE, align 4
  %27 = or i32 %25, %26
  %28 = load %struct.stk1160*, %struct.stk1160** %3, align 8
  %29 = getelementptr inbounds %struct.stk1160, %struct.stk1160* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  store i32 %27, i32* %30, align 8
  %31 = load i32, i32* @V4L2_STD_NTSC_M, align 4
  %32 = load %struct.stk1160*, %struct.stk1160** %3, align 8
  %33 = getelementptr inbounds %struct.stk1160, %struct.stk1160* %32, i32 0, i32 4
  store i32 %31, i32* %33, align 4
  %34 = load %struct.stk1160*, %struct.stk1160** %3, align 8
  %35 = getelementptr inbounds %struct.stk1160, %struct.stk1160* %34, i32 0, i32 0
  store i32 720, i32* %35, align 8
  %36 = load %struct.stk1160*, %struct.stk1160** %3, align 8
  %37 = getelementptr inbounds %struct.stk1160, %struct.stk1160* %36, i32 0, i32 1
  store i32 480, i32* %37, align 4
  %38 = load i32*, i32** @format, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load %struct.stk1160*, %struct.stk1160** %3, align 8
  %41 = getelementptr inbounds %struct.stk1160, %struct.stk1160* %40, i32 0, i32 5
  store i32* %39, i32** %41, align 8
  %42 = load %struct.stk1160*, %struct.stk1160** %3, align 8
  %43 = call i32 @stk1160_set_std(%struct.stk1160* %42)
  %44 = load %struct.stk1160*, %struct.stk1160** %3, align 8
  %45 = getelementptr inbounds %struct.stk1160, %struct.stk1160* %44, i32 0, i32 3
  %46 = load i32, i32* @video, align 4
  %47 = load i32, i32* @s_std, align 4
  %48 = load %struct.stk1160*, %struct.stk1160** %3, align 8
  %49 = getelementptr inbounds %struct.stk1160, %struct.stk1160* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @v4l2_device_call_all(i32* %45, i32 0, i32 %46, i32 %47, i32 %50)
  %52 = load %struct.stk1160*, %struct.stk1160** %3, align 8
  %53 = getelementptr inbounds %struct.stk1160, %struct.stk1160* %52, i32 0, i32 2
  %54 = load %struct.stk1160*, %struct.stk1160** %3, align 8
  %55 = call i32 @video_set_drvdata(%struct.TYPE_5__* %53, %struct.stk1160* %54)
  %56 = load %struct.stk1160*, %struct.stk1160** %3, align 8
  %57 = getelementptr inbounds %struct.stk1160, %struct.stk1160* %56, i32 0, i32 2
  %58 = load i32, i32* @VFL_TYPE_GRABBER, align 4
  %59 = call i32 @video_register_device(%struct.TYPE_5__* %57, i32 %58, i32 -1)
  store i32 %59, i32* %4, align 4
  %60 = load i32, i32* %4, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %1
  %63 = load i32, i32* %4, align 4
  %64 = call i32 @stk1160_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %63)
  %65 = load i32, i32* %4, align 4
  store i32 %65, i32* %2, align 4
  br label %73

66:                                               ; preds = %1
  %67 = load %struct.stk1160*, %struct.stk1160** %3, align 8
  %68 = getelementptr inbounds %struct.stk1160, %struct.stk1160* %67, i32 0, i32 3
  %69 = load %struct.stk1160*, %struct.stk1160** %3, align 8
  %70 = getelementptr inbounds %struct.stk1160, %struct.stk1160* %69, i32 0, i32 2
  %71 = call i32 @video_device_node_name(%struct.TYPE_5__* %70)
  %72 = call i32 @v4l2_info(i32* %68, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %71)
  store i32 0, i32* %2, align 4
  br label %73

73:                                               ; preds = %66, %62
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @stk1160_set_std(%struct.stk1160*) #2

declare dso_local i32 @v4l2_device_call_all(i32*, i32, i32, i32, i32) #2

declare dso_local i32 @video_set_drvdata(%struct.TYPE_5__*, %struct.stk1160*) #2

declare dso_local i32 @video_register_device(%struct.TYPE_5__*, i32, i32) #2

declare dso_local i32 @stk1160_err(i8*, i32) #2

declare dso_local i32 @v4l2_info(i32*, i8*, i32) #2

declare dso_local i32 @video_device_node_name(%struct.TYPE_5__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
