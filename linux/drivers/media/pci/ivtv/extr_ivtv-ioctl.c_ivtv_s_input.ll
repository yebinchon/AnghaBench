; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ivtv/extr_ivtv-ioctl.c_ivtv_s_input.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ivtv/extr_ivtv-ioctl.c_ivtv_s_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.ivtv = type { i32, i32, %struct.TYPE_9__*, i32, %struct.TYPE_7__*, i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, i32 }
%struct.TYPE_10__ = type { %struct.ivtv* }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Input unchanged\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Changing input from %d to %d\0A\00", align 1
@IVTV_CARD_INPUT_VID_TUNER = common dso_local global i64 0, align 8
@V4L2_STD_ALL = common dso_local global i32 0, align 4
@IVTV_ENC_STREAM_TYPE_VBI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ivtv_s_input(%struct.file* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ivtv*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i8*, i8** %6, align 8
  %12 = call %struct.TYPE_10__* @fh2id(i8* %11)
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %14 = load %struct.ivtv*, %struct.ivtv** %13, align 8
  store %struct.ivtv* %14, %struct.ivtv** %8, align 8
  %15 = load i32, i32* %7, align 4
  %16 = load %struct.ivtv*, %struct.ivtv** %8, align 8
  %17 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp uge i32 %15, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %105

23:                                               ; preds = %3
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.ivtv*, %struct.ivtv** %8, align 8
  %26 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp eq i32 %24, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = call i32 (i8*, ...) @IVTV_DEBUG_INFO(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %105

31:                                               ; preds = %23
  %32 = load %struct.ivtv*, %struct.ivtv** %8, align 8
  %33 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %32, i32 0, i32 6
  %34 = call i64 @atomic_read(i32* %33)
  %35 = icmp sgt i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load i32, i32* @EBUSY, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %105

39:                                               ; preds = %31
  %40 = load %struct.ivtv*, %struct.ivtv** %8, align 8
  %41 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %7, align 4
  %44 = call i32 (i8*, ...) @IVTV_DEBUG_INFO(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %42, i32 %43)
  %45 = load i32, i32* %7, align 4
  %46 = load %struct.ivtv*, %struct.ivtv** %8, align 8
  %47 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  %48 = load %struct.ivtv*, %struct.ivtv** %8, align 8
  %49 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %48, i32 0, i32 4
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = load i32, i32* %7, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.ivtv*, %struct.ivtv** %8, align 8
  %59 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %58, i32 0, i32 5
  store i32 %57, i32* %59, align 8
  %60 = load %struct.ivtv*, %struct.ivtv** %8, align 8
  %61 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %60, i32 0, i32 4
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %63, align 8
  %65 = load i32, i32* %7, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @IVTV_CARD_INPUT_VID_TUNER, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %76

72:                                               ; preds = %39
  %73 = load %struct.ivtv*, %struct.ivtv** %8, align 8
  %74 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 8
  store i32 %75, i32* %9, align 4
  br label %78

76:                                               ; preds = %39
  %77 = load i32, i32* @V4L2_STD_ALL, align 4
  store i32 %77, i32* %9, align 4
  br label %78

78:                                               ; preds = %76, %72
  store i32 0, i32* %10, align 4
  br label %79

79:                                               ; preds = %93, %78
  %80 = load i32, i32* %10, align 4
  %81 = load i32, i32* @IVTV_ENC_STREAM_TYPE_VBI, align 4
  %82 = icmp sle i32 %80, %81
  br i1 %82, label %83, label %96

83:                                               ; preds = %79
  %84 = load i32, i32* %9, align 4
  %85 = load %struct.ivtv*, %struct.ivtv** %8, align 8
  %86 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %85, i32 0, i32 2
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %86, align 8
  %88 = load i32, i32* %10, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 0
  store i32 %84, i32* %92, align 4
  br label %93

93:                                               ; preds = %83
  %94 = load i32, i32* %10, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %10, align 4
  br label %79

96:                                               ; preds = %79
  %97 = load %struct.ivtv*, %struct.ivtv** %8, align 8
  %98 = call i32 @ivtv_mute(%struct.ivtv* %97)
  %99 = load %struct.ivtv*, %struct.ivtv** %8, align 8
  %100 = call i32 @ivtv_video_set_io(%struct.ivtv* %99)
  %101 = load %struct.ivtv*, %struct.ivtv** %8, align 8
  %102 = call i32 @ivtv_audio_set_io(%struct.ivtv* %101)
  %103 = load %struct.ivtv*, %struct.ivtv** %8, align 8
  %104 = call i32 @ivtv_unmute(%struct.ivtv* %103)
  store i32 0, i32* %4, align 4
  br label %105

105:                                              ; preds = %96, %36, %29, %20
  %106 = load i32, i32* %4, align 4
  ret i32 %106
}

declare dso_local %struct.TYPE_10__* @fh2id(i8*) #1

declare dso_local i32 @IVTV_DEBUG_INFO(i8*, ...) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @ivtv_mute(%struct.ivtv*) #1

declare dso_local i32 @ivtv_video_set_io(%struct.ivtv*) #1

declare dso_local i32 @ivtv_audio_set_io(%struct.ivtv*) #1

declare dso_local i32 @ivtv_unmute(%struct.ivtv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
