; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/radio/extr_radio-isa.c_radio_isa_g_tuner.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/radio/extr_radio-isa.c_radio_isa_g_tuner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_tuner = type { i64, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.radio_isa_card = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, %struct.radio_isa_ops* }
%struct.radio_isa_ops = type { i32 (%struct.radio_isa_card.0*)*, i32 (%struct.radio_isa_card.1*)* }
%struct.radio_isa_card.0 = type opaque
%struct.radio_isa_card.1 = type opaque

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"FM\00", align 1
@V4L2_TUNER_RADIO = common dso_local global i32 0, align 4
@FREQ_LOW = common dso_local global i32 0, align 4
@FREQ_HIGH = common dso_local global i32 0, align 4
@V4L2_TUNER_CAP_LOW = common dso_local global i32 0, align 4
@V4L2_TUNER_CAP_STEREO = common dso_local global i32 0, align 4
@V4L2_TUNER_SUB_MONO = common dso_local global i32 0, align 4
@V4L2_TUNER_SUB_STEREO = common dso_local global i32 0, align 4
@V4L2_TUNER_MODE_STEREO = common dso_local global i32 0, align 4
@V4L2_TUNER_MODE_MONO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_tuner*)* @radio_isa_g_tuner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @radio_isa_g_tuner(%struct.file* %0, i8* %1, %struct.v4l2_tuner* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_tuner*, align 8
  %8 = alloca %struct.radio_isa_card*, align 8
  %9 = alloca %struct.radio_isa_ops*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_tuner* %2, %struct.v4l2_tuner** %7, align 8
  %10 = load %struct.file*, %struct.file** %5, align 8
  %11 = call %struct.radio_isa_card* @video_drvdata(%struct.file* %10)
  store %struct.radio_isa_card* %11, %struct.radio_isa_card** %8, align 8
  %12 = load %struct.radio_isa_card*, %struct.radio_isa_card** %8, align 8
  %13 = getelementptr inbounds %struct.radio_isa_card, %struct.radio_isa_card* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load %struct.radio_isa_ops*, %struct.radio_isa_ops** %15, align 8
  store %struct.radio_isa_ops* %16, %struct.radio_isa_ops** %9, align 8
  %17 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %18 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp sgt i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %111

24:                                               ; preds = %3
  %25 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %26 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %25, i32 0, i32 8
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @strscpy(i32 %27, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 4)
  %29 = load i32, i32* @V4L2_TUNER_RADIO, align 4
  %30 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %31 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %30, i32 0, i32 7
  store i32 %29, i32* %31, align 8
  %32 = load i32, i32* @FREQ_LOW, align 4
  %33 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %34 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %33, i32 0, i32 6
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* @FREQ_HIGH, align 4
  %36 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %37 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %36, i32 0, i32 5
  store i32 %35, i32* %37, align 8
  %38 = load i32, i32* @V4L2_TUNER_CAP_LOW, align 4
  %39 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %40 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %39, i32 0, i32 4
  store i32 %38, i32* %40, align 4
  %41 = load %struct.radio_isa_card*, %struct.radio_isa_card** %8, align 8
  %42 = getelementptr inbounds %struct.radio_isa_card, %struct.radio_isa_card* %41, i32 0, i32 1
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %24
  %48 = load i32, i32* @V4L2_TUNER_CAP_STEREO, align 4
  %49 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %50 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 4
  %52 = or i32 %51, %48
  store i32 %52, i32* %50, align 4
  br label %53

53:                                               ; preds = %47, %24
  %54 = load %struct.radio_isa_ops*, %struct.radio_isa_ops** %9, align 8
  %55 = getelementptr inbounds %struct.radio_isa_ops, %struct.radio_isa_ops* %54, i32 0, i32 0
  %56 = load i32 (%struct.radio_isa_card.0*)*, i32 (%struct.radio_isa_card.0*)** %55, align 8
  %57 = icmp ne i32 (%struct.radio_isa_card.0*)* %56, null
  br i1 %57, label %58, label %67

58:                                               ; preds = %53
  %59 = load %struct.radio_isa_ops*, %struct.radio_isa_ops** %9, align 8
  %60 = getelementptr inbounds %struct.radio_isa_ops, %struct.radio_isa_ops* %59, i32 0, i32 0
  %61 = load i32 (%struct.radio_isa_card.0*)*, i32 (%struct.radio_isa_card.0*)** %60, align 8
  %62 = load %struct.radio_isa_card*, %struct.radio_isa_card** %8, align 8
  %63 = bitcast %struct.radio_isa_card* %62 to %struct.radio_isa_card.0*
  %64 = call i32 %61(%struct.radio_isa_card.0* %63)
  %65 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %66 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 8
  br label %73

67:                                               ; preds = %53
  %68 = load i32, i32* @V4L2_TUNER_SUB_MONO, align 4
  %69 = load i32, i32* @V4L2_TUNER_SUB_STEREO, align 4
  %70 = or i32 %68, %69
  %71 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %72 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 8
  br label %73

73:                                               ; preds = %67, %58
  %74 = load %struct.radio_isa_card*, %struct.radio_isa_card** %8, align 8
  %75 = getelementptr inbounds %struct.radio_isa_card, %struct.radio_isa_card* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %73
  %79 = load i32, i32* @V4L2_TUNER_MODE_STEREO, align 4
  br label %82

80:                                               ; preds = %73
  %81 = load i32, i32* @V4L2_TUNER_MODE_MONO, align 4
  br label %82

82:                                               ; preds = %80, %78
  %83 = phi i32 [ %79, %78 ], [ %81, %80 ]
  %84 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %85 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %84, i32 0, i32 3
  store i32 %83, i32* %85, align 8
  %86 = load %struct.radio_isa_ops*, %struct.radio_isa_ops** %9, align 8
  %87 = getelementptr inbounds %struct.radio_isa_ops, %struct.radio_isa_ops* %86, i32 0, i32 1
  %88 = load i32 (%struct.radio_isa_card.1*)*, i32 (%struct.radio_isa_card.1*)** %87, align 8
  %89 = icmp ne i32 (%struct.radio_isa_card.1*)* %88, null
  br i1 %89, label %90, label %99

90:                                               ; preds = %82
  %91 = load %struct.radio_isa_ops*, %struct.radio_isa_ops** %9, align 8
  %92 = getelementptr inbounds %struct.radio_isa_ops, %struct.radio_isa_ops* %91, i32 0, i32 1
  %93 = load i32 (%struct.radio_isa_card.1*)*, i32 (%struct.radio_isa_card.1*)** %92, align 8
  %94 = load %struct.radio_isa_card*, %struct.radio_isa_card** %8, align 8
  %95 = bitcast %struct.radio_isa_card* %94 to %struct.radio_isa_card.1*
  %96 = call i32 %93(%struct.radio_isa_card.1* %95)
  %97 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %98 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %97, i32 0, i32 2
  store i32 %96, i32* %98, align 4
  br label %110

99:                                               ; preds = %82
  %100 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %101 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @V4L2_TUNER_SUB_STEREO, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  %106 = zext i1 %105 to i64
  %107 = select i1 %105, i32 65535, i32 0
  %108 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %109 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %108, i32 0, i32 2
  store i32 %107, i32* %109, align 4
  br label %110

110:                                              ; preds = %99, %90
  store i32 0, i32* %4, align 4
  br label %111

111:                                              ; preds = %110, %21
  %112 = load i32, i32* %4, align 4
  ret i32 %112
}

declare dso_local %struct.radio_isa_card* @video_drvdata(%struct.file*) #1

declare dso_local i32 @strscpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
