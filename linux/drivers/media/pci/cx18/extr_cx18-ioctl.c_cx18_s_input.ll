; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx18/extr_cx18-ioctl.c_cx18_s_input.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx18/extr_cx18-ioctl.c_cx18_s_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.cx18_open_id = type { %struct.cx18* }
%struct.cx18 = type { i32, i32, %struct.TYPE_6__*, i8*, %struct.TYPE_4__*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i8* }
%struct.TYPE_4__ = type { %struct.cx18_card_video_input* }
%struct.cx18_card_video_input = type { i64, i32 }

@V4L2_STD_ALL = common dso_local global i8* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Input unchanged\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Changing input from %d to %d\0A\00", align 1
@V4L2_INPUT_TYPE_TUNER = common dso_local global i64 0, align 8
@CX18_ENC_STREAM_TYPE_MPG = common dso_local global i64 0, align 8
@CX18_ENC_STREAM_TYPE_YUV = common dso_local global i64 0, align 8
@CX18_ENC_STREAM_TYPE_VBI = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cx18_s_input(%struct.file* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.cx18_open_id*, align 8
  %9 = alloca %struct.cx18*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.cx18_card_video_input*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i8*, i8** %6, align 8
  %13 = call %struct.cx18_open_id* @fh2id(i8* %12)
  store %struct.cx18_open_id* %13, %struct.cx18_open_id** %8, align 8
  %14 = load %struct.cx18_open_id*, %struct.cx18_open_id** %8, align 8
  %15 = getelementptr inbounds %struct.cx18_open_id, %struct.cx18_open_id* %14, i32 0, i32 0
  %16 = load %struct.cx18*, %struct.cx18** %15, align 8
  store %struct.cx18* %16, %struct.cx18** %9, align 8
  %17 = load i8*, i8** @V4L2_STD_ALL, align 8
  store i8* %17, i8** %10, align 8
  %18 = load %struct.cx18*, %struct.cx18** %9, align 8
  %19 = getelementptr inbounds %struct.cx18, %struct.cx18* %18, i32 0, i32 4
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load %struct.cx18_card_video_input*, %struct.cx18_card_video_input** %21, align 8
  %23 = load i32, i32* %7, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.cx18_card_video_input, %struct.cx18_card_video_input* %22, i64 %24
  store %struct.cx18_card_video_input* %25, %struct.cx18_card_video_input** %11, align 8
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.cx18*, %struct.cx18** %9, align 8
  %28 = getelementptr inbounds %struct.cx18, %struct.cx18* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp uge i32 %26, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %3
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %105

34:                                               ; preds = %3
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.cx18*, %struct.cx18** %9, align 8
  %37 = getelementptr inbounds %struct.cx18, %struct.cx18* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = icmp eq i32 %35, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = call i32 (i8*, ...) @CX18_DEBUG_INFO(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %105

42:                                               ; preds = %34
  %43 = load %struct.cx18*, %struct.cx18** %9, align 8
  %44 = getelementptr inbounds %struct.cx18, %struct.cx18* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %7, align 4
  %47 = call i32 (i8*, ...) @CX18_DEBUG_INFO(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %45, i32 %46)
  %48 = load i32, i32* %7, align 4
  %49 = load %struct.cx18*, %struct.cx18** %9, align 8
  %50 = getelementptr inbounds %struct.cx18, %struct.cx18* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  %51 = load %struct.cx18*, %struct.cx18** %9, align 8
  %52 = getelementptr inbounds %struct.cx18, %struct.cx18* %51, i32 0, i32 4
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load %struct.cx18_card_video_input*, %struct.cx18_card_video_input** %54, align 8
  %56 = load i32, i32* %7, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds %struct.cx18_card_video_input, %struct.cx18_card_video_input* %55, i64 %57
  %59 = getelementptr inbounds %struct.cx18_card_video_input, %struct.cx18_card_video_input* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.cx18*, %struct.cx18** %9, align 8
  %62 = getelementptr inbounds %struct.cx18, %struct.cx18* %61, i32 0, i32 5
  store i32 %60, i32* %62, align 8
  %63 = load %struct.cx18_card_video_input*, %struct.cx18_card_video_input** %11, align 8
  %64 = getelementptr inbounds %struct.cx18_card_video_input, %struct.cx18_card_video_input* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @V4L2_INPUT_TYPE_TUNER, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %72

68:                                               ; preds = %42
  %69 = load %struct.cx18*, %struct.cx18** %9, align 8
  %70 = getelementptr inbounds %struct.cx18, %struct.cx18* %69, i32 0, i32 3
  %71 = load i8*, i8** %70, align 8
  store i8* %71, i8** %10, align 8
  br label %72

72:                                               ; preds = %68, %42
  %73 = load i8*, i8** %10, align 8
  %74 = load %struct.cx18*, %struct.cx18** %9, align 8
  %75 = getelementptr inbounds %struct.cx18, %struct.cx18* %74, i32 0, i32 2
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %75, align 8
  %77 = load i64, i64* @CX18_ENC_STREAM_TYPE_MPG, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  store i8* %73, i8** %80, align 8
  %81 = load i8*, i8** %10, align 8
  %82 = load %struct.cx18*, %struct.cx18** %9, align 8
  %83 = getelementptr inbounds %struct.cx18, %struct.cx18* %82, i32 0, i32 2
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %83, align 8
  %85 = load i64, i64* @CX18_ENC_STREAM_TYPE_YUV, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 0
  store i8* %81, i8** %88, align 8
  %89 = load i8*, i8** %10, align 8
  %90 = load %struct.cx18*, %struct.cx18** %9, align 8
  %91 = getelementptr inbounds %struct.cx18, %struct.cx18* %90, i32 0, i32 2
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %91, align 8
  %93 = load i64, i64* @CX18_ENC_STREAM_TYPE_VBI, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 0
  store i8* %89, i8** %96, align 8
  %97 = load %struct.cx18*, %struct.cx18** %9, align 8
  %98 = call i32 @cx18_mute(%struct.cx18* %97)
  %99 = load %struct.cx18*, %struct.cx18** %9, align 8
  %100 = call i32 @cx18_video_set_io(%struct.cx18* %99)
  %101 = load %struct.cx18*, %struct.cx18** %9, align 8
  %102 = call i32 @cx18_audio_set_io(%struct.cx18* %101)
  %103 = load %struct.cx18*, %struct.cx18** %9, align 8
  %104 = call i32 @cx18_unmute(%struct.cx18* %103)
  store i32 0, i32* %4, align 4
  br label %105

105:                                              ; preds = %72, %40, %31
  %106 = load i32, i32* %4, align 4
  ret i32 %106
}

declare dso_local %struct.cx18_open_id* @fh2id(i8*) #1

declare dso_local i32 @CX18_DEBUG_INFO(i8*, ...) #1

declare dso_local i32 @cx18_mute(%struct.cx18*) #1

declare dso_local i32 @cx18_video_set_io(%struct.cx18*) #1

declare dso_local i32 @cx18_audio_set_io(%struct.cx18*) #1

declare dso_local i32 @cx18_unmute(%struct.cx18*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
