; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_saa717x.c_saa717x_s_tuner.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_saa717x.c_saa717x_s_tuner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_tuner = type { i32 }
%struct.saa717x_state = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"MONO\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"STEREO\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"LANG1\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"LANG2/SAP\00", align 1
@__const.saa717x_s_tuner.mes = private unnamed_addr constant [4 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0)], align 16
@TUNER_AUDIO_STEREO = common dso_local global i32 0, align 4
@TUNER_AUDIO_MONO = common dso_local global i32 0, align 4
@TUNER_AUDIO_LANG2 = common dso_local global i32 0, align 4
@TUNER_AUDIO_LANG1 = common dso_local global i32 0, align 4
@debug = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"change audio mode to %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_tuner*)* @saa717x_s_tuner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @saa717x_s_tuner(%struct.v4l2_subdev* %0, %struct.v4l2_tuner* %1) #0 {
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca %struct.v4l2_tuner*, align 8
  %5 = alloca %struct.saa717x_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [4 x i8*], align 16
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  store %struct.v4l2_tuner* %1, %struct.v4l2_tuner** %4, align 8
  %8 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %9 = call %struct.saa717x_state* @to_state(%struct.v4l2_subdev* %8)
  store %struct.saa717x_state* %9, %struct.saa717x_state** %5, align 8
  %10 = bitcast [4 x i8*]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %10, i8* align 16 bitcast ([4 x i8*]* @__const.saa717x_s_tuner.mes to i8*), i64 32, i1 false)
  %11 = load i32, i32* @TUNER_AUDIO_STEREO, align 4
  store i32 %11, i32* %6, align 4
  %12 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %4, align 8
  %13 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %23 [
    i32 129, label %15
    i32 128, label %17
    i32 130, label %19
    i32 131, label %21
  ]

15:                                               ; preds = %2
  %16 = load i32, i32* @TUNER_AUDIO_MONO, align 4
  store i32 %16, i32* %6, align 4
  br label %23

17:                                               ; preds = %2
  %18 = load i32, i32* @TUNER_AUDIO_STEREO, align 4
  store i32 %18, i32* %6, align 4
  br label %23

19:                                               ; preds = %2
  %20 = load i32, i32* @TUNER_AUDIO_LANG2, align 4
  store i32 %20, i32* %6, align 4
  br label %23

21:                                               ; preds = %2
  %22 = load i32, i32* @TUNER_AUDIO_LANG1, align 4
  store i32 %22, i32* %6, align 4
  br label %23

23:                                               ; preds = %2, %21, %19, %17, %15
  %24 = load i32, i32* @debug, align 4
  %25 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [4 x i8*], [4 x i8*]* %7, i64 0, i64 %27
  %29 = load i8*, i8** %28, align 8
  %30 = call i32 @v4l2_dbg(i32 1, i32 %24, %struct.v4l2_subdev* %25, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i8* %29)
  %31 = load i32, i32* %6, align 4
  %32 = load %struct.saa717x_state*, %struct.saa717x_state** %5, align 8
  %33 = getelementptr inbounds %struct.saa717x_state, %struct.saa717x_state* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  %34 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %35 = load %struct.saa717x_state*, %struct.saa717x_state** %5, align 8
  %36 = getelementptr inbounds %struct.saa717x_state, %struct.saa717x_state* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @set_audio_mode(%struct.v4l2_subdev* %34, i32 %37)
  ret i32 0
}

declare dso_local %struct.saa717x_state* @to_state(%struct.v4l2_subdev*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @v4l2_dbg(i32, i32, %struct.v4l2_subdev*, i8*, i8*) #1

declare dso_local i32 @set_audio_mode(%struct.v4l2_subdev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
