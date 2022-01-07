; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/saa7134/extr_saa7134-video.c_saa7134_g_tuner.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/saa7134/extr_saa7134-video.c_saa7134_g_tuner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_tuner = type { i64, i32, i32, i32, i32, i32, i32 }
%struct.saa7134_dev = type { i32 }
%struct.TYPE_2__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@SAA7134_INPUT_MAX = common dso_local global i32 0, align 4
@SAA7134_INPUT_TV = common dso_local global i64 0, align 8
@SAA7134_INPUT_TV_MONO = common dso_local global i64 0, align 8
@SAA7134_NO_INPUT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"Television\00", align 1
@V4L2_TUNER_ANALOG_TV = common dso_local global i32 0, align 4
@tuner = common dso_local global i32 0, align 4
@g_tuner = common dso_local global i32 0, align 4
@V4L2_TUNER_CAP_NORM = common dso_local global i32 0, align 4
@V4L2_TUNER_CAP_STEREO = common dso_local global i32 0, align 4
@V4L2_TUNER_CAP_LANG1 = common dso_local global i32 0, align 4
@V4L2_TUNER_CAP_LANG2 = common dso_local global i32 0, align 4
@SAA7134_STATUS_VIDEO1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @saa7134_g_tuner(%struct.file* %0, i8* %1, %struct.v4l2_tuner* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_tuner*, align 8
  %8 = alloca %struct.saa7134_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_2__, align 8
  %11 = alloca %struct.TYPE_2__, align 8
  %12 = alloca %struct.TYPE_2__, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_tuner* %2, %struct.v4l2_tuner** %7, align 8
  %13 = load %struct.file*, %struct.file** %5, align 8
  %14 = call %struct.saa7134_dev* @video_drvdata(%struct.file* %13)
  store %struct.saa7134_dev* %14, %struct.saa7134_dev** %8, align 8
  %15 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %16 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 0, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %109

22:                                               ; preds = %3
  %23 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %24 = call i32 @memset(%struct.v4l2_tuner* %23, i32 0, i32 32)
  store i32 0, i32* %9, align 4
  br label %25

25:                                               ; preds = %49, %22
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* @SAA7134_INPUT_MAX, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %52

29:                                               ; preds = %25
  %30 = load %struct.saa7134_dev*, %struct.saa7134_dev** %8, align 8
  %31 = load i32, i32* %9, align 4
  %32 = call i64 @card_in(%struct.saa7134_dev* %30, i32 %31)
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store i64 %32, i64* %33, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @SAA7134_INPUT_TV, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %47, label %38

38:                                               ; preds = %29
  %39 = load %struct.saa7134_dev*, %struct.saa7134_dev** %8, align 8
  %40 = load i32, i32* %9, align 4
  %41 = call i64 @card_in(%struct.saa7134_dev* %39, i32 %40)
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store i64 %41, i64* %42, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @SAA7134_INPUT_TV_MONO, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %38, %29
  br label %52

48:                                               ; preds = %38
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %9, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %9, align 4
  br label %25

52:                                               ; preds = %47, %25
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* @SAA7134_INPUT_MAX, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %52
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %4, align 4
  br label %109

59:                                               ; preds = %52
  %60 = load %struct.saa7134_dev*, %struct.saa7134_dev** %8, align 8
  %61 = load i32, i32* %9, align 4
  %62 = call i64 @card_in(%struct.saa7134_dev* %60, i32 %61)
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store i64 %62, i64* %63, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @SAA7134_NO_INPUT, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %100

68:                                               ; preds = %59
  %69 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %70 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %69, i32 0, i32 6
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @strscpy(i32 %71, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 4)
  %73 = load i32, i32* @V4L2_TUNER_ANALOG_TV, align 4
  %74 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %75 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %74, i32 0, i32 5
  store i32 %73, i32* %75, align 8
  %76 = load %struct.saa7134_dev*, %struct.saa7134_dev** %8, align 8
  %77 = load i32, i32* @tuner, align 4
  %78 = load i32, i32* @g_tuner, align 4
  %79 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %80 = call i32 @saa_call_all(%struct.saa7134_dev* %76, i32 %77, i32 %78, %struct.v4l2_tuner* %79)
  %81 = load i32, i32* @V4L2_TUNER_CAP_NORM, align 4
  %82 = load i32, i32* @V4L2_TUNER_CAP_STEREO, align 4
  %83 = or i32 %81, %82
  %84 = load i32, i32* @V4L2_TUNER_CAP_LANG1, align 4
  %85 = or i32 %83, %84
  %86 = load i32, i32* @V4L2_TUNER_CAP_LANG2, align 4
  %87 = or i32 %85, %86
  %88 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %89 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %88, i32 0, i32 1
  store i32 %87, i32* %89, align 8
  %90 = load %struct.saa7134_dev*, %struct.saa7134_dev** %8, align 8
  %91 = call i32 @saa7134_tvaudio_getstereo(%struct.saa7134_dev* %90)
  %92 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %93 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %92, i32 0, i32 3
  store i32 %91, i32* %93, align 8
  %94 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %95 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @saa7134_tvaudio_rx2mode(i32 %96)
  %98 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %99 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %98, i32 0, i32 4
  store i32 %97, i32* %99, align 4
  br label %100

100:                                              ; preds = %68, %59
  %101 = load i32, i32* @SAA7134_STATUS_VIDEO1, align 4
  %102 = call i32 @saa_readb(i32 %101)
  %103 = and i32 %102, 3
  %104 = icmp ne i32 0, %103
  br i1 %104, label %105, label %108

105:                                              ; preds = %100
  %106 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %107 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %106, i32 0, i32 2
  store i32 65535, i32* %107, align 4
  br label %108

108:                                              ; preds = %105, %100
  store i32 0, i32* %4, align 4
  br label %109

109:                                              ; preds = %108, %56, %19
  %110 = load i32, i32* %4, align 4
  ret i32 %110
}

declare dso_local %struct.saa7134_dev* @video_drvdata(%struct.file*) #1

declare dso_local i32 @memset(%struct.v4l2_tuner*, i32, i32) #1

declare dso_local i64 @card_in(%struct.saa7134_dev*, i32) #1

declare dso_local i32 @strscpy(i32, i8*, i32) #1

declare dso_local i32 @saa_call_all(%struct.saa7134_dev*, i32, i32, %struct.v4l2_tuner*) #1

declare dso_local i32 @saa7134_tvaudio_getstereo(%struct.saa7134_dev*) #1

declare dso_local i32 @saa7134_tvaudio_rx2mode(i32) #1

declare dso_local i32 @saa_readb(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
