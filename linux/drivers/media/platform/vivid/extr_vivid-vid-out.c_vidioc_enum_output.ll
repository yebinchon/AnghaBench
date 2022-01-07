; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vivid/extr_vivid-vid-out.c_vidioc_enum_output.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vivid/extr_vivid-vid-out.c_vidioc_enum_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_output = type { i64, i32, i32, i32, i32, i32 }
%struct.vivid_dev = type { i64, i32*, i32*, i32 }

@EINVAL = common dso_local global i32 0, align 4
@V4L2_OUTPUT_TYPE_ANALOG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"S-Video %u\00", align 1
@V4L2_STD_ALL = common dso_local global i32 0, align 4
@vivid_audio_outputs = common dso_local global i32 0, align 4
@V4L2_OUT_CAP_STD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"HDMI %u\00", align 1
@V4L2_OUT_CAP_DV_TIMINGS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vidioc_enum_output(%struct.file* %0, i8* %1, %struct.v4l2_output* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_output*, align 8
  %8 = alloca %struct.vivid_dev*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_output* %2, %struct.v4l2_output** %7, align 8
  %9 = load %struct.file*, %struct.file** %5, align 8
  %10 = call %struct.vivid_dev* @video_drvdata(%struct.file* %9)
  store %struct.vivid_dev* %10, %struct.vivid_dev** %8, align 8
  %11 = load %struct.v4l2_output*, %struct.v4l2_output** %7, align 8
  %12 = getelementptr inbounds %struct.v4l2_output, %struct.v4l2_output* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %15 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp uge i64 %13, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %81

21:                                               ; preds = %3
  %22 = load i32, i32* @V4L2_OUTPUT_TYPE_ANALOG, align 4
  %23 = load %struct.v4l2_output*, %struct.v4l2_output** %7, align 8
  %24 = getelementptr inbounds %struct.v4l2_output, %struct.v4l2_output* %23, i32 0, i32 5
  store i32 %22, i32* %24, align 8
  %25 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %26 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = load %struct.v4l2_output*, %struct.v4l2_output** %7, align 8
  %29 = getelementptr inbounds %struct.v4l2_output, %struct.v4l2_output* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds i32, i32* %27, i64 %30
  %32 = load i32, i32* %31, align 4
  switch i32 %32, label %80 [
    i32 128, label %33
    i32 129, label %64
  ]

33:                                               ; preds = %21
  %34 = load %struct.v4l2_output*, %struct.v4l2_output** %7, align 8
  %35 = getelementptr inbounds %struct.v4l2_output, %struct.v4l2_output* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %38 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %37, i32 0, i32 2
  %39 = load i32*, i32** %38, align 8
  %40 = load %struct.v4l2_output*, %struct.v4l2_output** %7, align 8
  %41 = getelementptr inbounds %struct.v4l2_output, %struct.v4l2_output* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds i32, i32* %39, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @snprintf(i32 %36, i32 4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* @V4L2_STD_ALL, align 4
  %47 = load %struct.v4l2_output*, %struct.v4l2_output** %7, align 8
  %48 = getelementptr inbounds %struct.v4l2_output, %struct.v4l2_output* %47, i32 0, i32 4
  store i32 %46, i32* %48, align 4
  %49 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %50 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %33
  %54 = load i32, i32* @vivid_audio_outputs, align 4
  %55 = call i32 @ARRAY_SIZE(i32 %54)
  %56 = shl i32 1, %55
  %57 = sub nsw i32 %56, 1
  %58 = load %struct.v4l2_output*, %struct.v4l2_output** %7, align 8
  %59 = getelementptr inbounds %struct.v4l2_output, %struct.v4l2_output* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 8
  br label %60

60:                                               ; preds = %53, %33
  %61 = load i32, i32* @V4L2_OUT_CAP_STD, align 4
  %62 = load %struct.v4l2_output*, %struct.v4l2_output** %7, align 8
  %63 = getelementptr inbounds %struct.v4l2_output, %struct.v4l2_output* %62, i32 0, i32 2
  store i32 %61, i32* %63, align 4
  br label %80

64:                                               ; preds = %21
  %65 = load %struct.v4l2_output*, %struct.v4l2_output** %7, align 8
  %66 = getelementptr inbounds %struct.v4l2_output, %struct.v4l2_output* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %69 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %68, i32 0, i32 2
  %70 = load i32*, i32** %69, align 8
  %71 = load %struct.v4l2_output*, %struct.v4l2_output** %7, align 8
  %72 = getelementptr inbounds %struct.v4l2_output, %struct.v4l2_output* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = getelementptr inbounds i32, i32* %70, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @snprintf(i32 %67, i32 4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %75)
  %77 = load i32, i32* @V4L2_OUT_CAP_DV_TIMINGS, align 4
  %78 = load %struct.v4l2_output*, %struct.v4l2_output** %7, align 8
  %79 = getelementptr inbounds %struct.v4l2_output, %struct.v4l2_output* %78, i32 0, i32 2
  store i32 %77, i32* %79, align 4
  br label %80

80:                                               ; preds = %21, %64, %60
  store i32 0, i32* %4, align 4
  br label %81

81:                                               ; preds = %80, %18
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local %struct.vivid_dev* @video_drvdata(%struct.file*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
