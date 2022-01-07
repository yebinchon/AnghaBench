; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_tuner-core.c_tuner_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_tuner-core.c_tuner_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.TYPE_2__, %struct.tuner* }
%struct.TYPE_2__ = type { %struct.analog_demod_ops, %struct.dvb_tuner_ops }
%struct.analog_demod_ops = type { i32 (%struct.dvb_frontend.0*, i64*)* }
%struct.dvb_frontend.0 = type opaque
%struct.dvb_tuner_ops = type { i32 (i32*, i32*)* }
%struct.tuner = type { i32, i32, i32, i32, i64, i64 }

@.str = private unnamed_addr constant [6 x i8] c"radio\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"digital TV\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"analog TV\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"Tuner mode:      %s%s\0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c" on standby mode\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"Frequency:       %lu.%02lu MHz\0A\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"Standard:        0x%08lx\0A\00", align 1
@TUNER_STATUS_LOCKED = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [18 x i8] c"Tuner is locked.\0A\00", align 1
@TUNER_STATUS_STEREO = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [22 x i8] c"Stereo:          yes\0A\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"Signal strength: %hu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dvb_frontend*)* @tuner_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tuner_status(%struct.dvb_frontend* %0) #0 {
  %2 = alloca %struct.dvb_frontend*, align 8
  %3 = alloca %struct.tuner*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.dvb_tuner_ops*, align 8
  %7 = alloca %struct.analog_demod_ops*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %2, align 8
  %11 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %12 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %11, i32 0, i32 1
  %13 = load %struct.tuner*, %struct.tuner** %12, align 8
  store %struct.tuner* %13, %struct.tuner** %3, align 8
  %14 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %15 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  store %struct.dvb_tuner_ops* %16, %struct.dvb_tuner_ops** %6, align 8
  %17 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %18 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store %struct.analog_demod_ops* %19, %struct.analog_demod_ops** %7, align 8
  %20 = load %struct.tuner*, %struct.tuner** %3, align 8
  %21 = getelementptr inbounds %struct.tuner, %struct.tuner* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  switch i32 %22, label %26 [
    i32 128, label %23
    i32 129, label %24
    i32 130, label %25
  ]

23:                                               ; preds = %1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  br label %27

24:                                               ; preds = %1
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8** %8, align 8
  br label %27

25:                                               ; preds = %1
  br label %26

26:                                               ; preds = %1, %25
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8** %8, align 8
  br label %27

27:                                               ; preds = %26, %24, %23
  %28 = load %struct.tuner*, %struct.tuner** %3, align 8
  %29 = getelementptr inbounds %struct.tuner, %struct.tuner* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp eq i32 %30, 128
  br i1 %31, label %32, label %45

32:                                               ; preds = %27
  %33 = load %struct.tuner*, %struct.tuner** %3, align 8
  %34 = getelementptr inbounds %struct.tuner, %struct.tuner* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = sdiv i32 %35, 16000
  %37 = sext i32 %36 to i64
  store i64 %37, i64* %4, align 8
  %38 = load %struct.tuner*, %struct.tuner** %3, align 8
  %39 = getelementptr inbounds %struct.tuner, %struct.tuner* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = srem i32 %40, 16000
  %42 = mul nsw i32 %41, 100
  %43 = sdiv i32 %42, 16000
  %44 = sext i32 %43 to i64
  store i64 %44, i64* %5, align 8
  br label %58

45:                                               ; preds = %27
  %46 = load %struct.tuner*, %struct.tuner** %3, align 8
  %47 = getelementptr inbounds %struct.tuner, %struct.tuner* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = sdiv i32 %48, 16
  %50 = sext i32 %49 to i64
  store i64 %50, i64* %4, align 8
  %51 = load %struct.tuner*, %struct.tuner** %3, align 8
  %52 = getelementptr inbounds %struct.tuner, %struct.tuner* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = srem i32 %53, 16
  %55 = mul nsw i32 %54, 100
  %56 = sdiv i32 %55, 16
  %57 = sext i32 %56 to i64
  store i64 %57, i64* %5, align 8
  br label %58

58:                                               ; preds = %45, %32
  %59 = load i8*, i8** %8, align 8
  %60 = load %struct.tuner*, %struct.tuner** %3, align 8
  %61 = getelementptr inbounds %struct.tuner, %struct.tuner* %60, i32 0, i32 5
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  %64 = zext i1 %63 to i64
  %65 = select i1 %63, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %66 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i8* %59, i8* %65)
  %67 = load i64, i64* %4, align 8
  %68 = load i64, i64* %5, align 8
  %69 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i64 %67, i64 %68)
  %70 = load %struct.tuner*, %struct.tuner** %3, align 8
  %71 = getelementptr inbounds %struct.tuner, %struct.tuner* %70, i32 0, i32 4
  %72 = load i64, i64* %71, align 8
  %73 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i64 %72)
  %74 = load %struct.tuner*, %struct.tuner** %3, align 8
  %75 = getelementptr inbounds %struct.tuner, %struct.tuner* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = icmp ne i32 %76, 128
  br i1 %77, label %78, label %79

78:                                               ; preds = %58
  br label %122

79:                                               ; preds = %58
  %80 = load %struct.dvb_tuner_ops*, %struct.dvb_tuner_ops** %6, align 8
  %81 = getelementptr inbounds %struct.dvb_tuner_ops, %struct.dvb_tuner_ops* %80, i32 0, i32 0
  %82 = load i32 (i32*, i32*)*, i32 (i32*, i32*)** %81, align 8
  %83 = icmp ne i32 (i32*, i32*)* %82, null
  br i1 %83, label %84, label %105

84:                                               ; preds = %79
  %85 = load %struct.dvb_tuner_ops*, %struct.dvb_tuner_ops** %6, align 8
  %86 = getelementptr inbounds %struct.dvb_tuner_ops, %struct.dvb_tuner_ops* %85, i32 0, i32 0
  %87 = load i32 (i32*, i32*)*, i32 (i32*, i32*)** %86, align 8
  %88 = load %struct.tuner*, %struct.tuner** %3, align 8
  %89 = getelementptr inbounds %struct.tuner, %struct.tuner* %88, i32 0, i32 3
  %90 = call i32 %87(i32* %89, i32* %9)
  %91 = load i32, i32* %9, align 4
  %92 = load i32, i32* @TUNER_STATUS_LOCKED, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %84
  %96 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0))
  br label %97

97:                                               ; preds = %95, %84
  %98 = load i32, i32* %9, align 4
  %99 = load i32, i32* @TUNER_STATUS_STEREO, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %97
  %103 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0))
  br label %104

104:                                              ; preds = %102, %97
  br label %105

105:                                              ; preds = %104, %79
  %106 = load %struct.analog_demod_ops*, %struct.analog_demod_ops** %7, align 8
  %107 = getelementptr inbounds %struct.analog_demod_ops, %struct.analog_demod_ops* %106, i32 0, i32 0
  %108 = load i32 (%struct.dvb_frontend.0*, i64*)*, i32 (%struct.dvb_frontend.0*, i64*)** %107, align 8
  %109 = icmp ne i32 (%struct.dvb_frontend.0*, i64*)* %108, null
  br i1 %109, label %110, label %122

110:                                              ; preds = %105
  %111 = load %struct.analog_demod_ops*, %struct.analog_demod_ops** %7, align 8
  %112 = getelementptr inbounds %struct.analog_demod_ops, %struct.analog_demod_ops* %111, i32 0, i32 0
  %113 = load i32 (%struct.dvb_frontend.0*, i64*)*, i32 (%struct.dvb_frontend.0*, i64*)** %112, align 8
  %114 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %115 = bitcast %struct.dvb_frontend* %114 to %struct.dvb_frontend.0*
  %116 = call i32 %113(%struct.dvb_frontend.0* %115, i64* %10)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %121, label %118

118:                                              ; preds = %110
  %119 = load i64, i64* %10, align 8
  %120 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0), i64 %119)
  br label %121

121:                                              ; preds = %118, %110
  br label %122

122:                                              ; preds = %78, %121, %105
  ret void
}

declare dso_local i32 @pr_info(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
