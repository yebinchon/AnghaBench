; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/tuners/extr_tda8290.c_set_audio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/tuners/extr_tda8290.c_set_audio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.tda8290_priv* }
%struct.tda8290_priv = type { i32, i32 }
%struct.analog_parameters = type { i32, i64 }

@V4L2_STD_MN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"MN\00", align 1
@V4L2_STD_B = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@V4L2_STD_GH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"GH\00", align 1
@V4L2_STD_PAL_I = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@V4L2_STD_DK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [3 x i8] c"DK\00", align 1
@V4L2_STD_SECAM_L = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@V4L2_STD_SECAM_LC = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [3 x i8] c"LC\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"xx\00", align 1
@V4L2_TUNER_RADIO = common dso_local global i64 0, align 8
@TDA8295 = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [21 x i8] c"setting to radio FM\0A\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"setting tda829x to system %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dvb_frontend*, %struct.analog_parameters*)* @set_audio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_audio(%struct.dvb_frontend* %0, %struct.analog_parameters* %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.analog_parameters*, align 8
  %5 = alloca %struct.tda8290_priv*, align 8
  %6 = alloca i8*, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  store %struct.analog_parameters* %1, %struct.analog_parameters** %4, align 8
  %7 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %8 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %7, i32 0, i32 0
  %9 = load %struct.tda8290_priv*, %struct.tda8290_priv** %8, align 8
  store %struct.tda8290_priv* %9, %struct.tda8290_priv** %5, align 8
  %10 = load %struct.analog_parameters*, %struct.analog_parameters** %4, align 8
  %11 = getelementptr inbounds %struct.analog_parameters, %struct.analog_parameters* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @V4L2_STD_MN, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load %struct.tda8290_priv*, %struct.tda8290_priv** %5, align 8
  %18 = getelementptr inbounds %struct.tda8290_priv, %struct.tda8290_priv* %17, i32 0, i32 0
  store i32 1, i32* %18, align 4
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  br label %88

19:                                               ; preds = %2
  %20 = load %struct.analog_parameters*, %struct.analog_parameters** %4, align 8
  %21 = getelementptr inbounds %struct.analog_parameters, %struct.analog_parameters* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @V4L2_STD_B, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %19
  %27 = load %struct.tda8290_priv*, %struct.tda8290_priv** %5, align 8
  %28 = getelementptr inbounds %struct.tda8290_priv, %struct.tda8290_priv* %27, i32 0, i32 0
  store i32 2, i32* %28, align 4
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8** %6, align 8
  br label %87

29:                                               ; preds = %19
  %30 = load %struct.analog_parameters*, %struct.analog_parameters** %4, align 8
  %31 = getelementptr inbounds %struct.analog_parameters, %struct.analog_parameters* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @V4L2_STD_GH, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %29
  %37 = load %struct.tda8290_priv*, %struct.tda8290_priv** %5, align 8
  %38 = getelementptr inbounds %struct.tda8290_priv, %struct.tda8290_priv* %37, i32 0, i32 0
  store i32 4, i32* %38, align 4
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8** %6, align 8
  br label %86

39:                                               ; preds = %29
  %40 = load %struct.analog_parameters*, %struct.analog_parameters** %4, align 8
  %41 = getelementptr inbounds %struct.analog_parameters, %struct.analog_parameters* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @V4L2_STD_PAL_I, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %39
  %47 = load %struct.tda8290_priv*, %struct.tda8290_priv** %5, align 8
  %48 = getelementptr inbounds %struct.tda8290_priv, %struct.tda8290_priv* %47, i32 0, i32 0
  store i32 8, i32* %48, align 4
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8** %6, align 8
  br label %85

49:                                               ; preds = %39
  %50 = load %struct.analog_parameters*, %struct.analog_parameters** %4, align 8
  %51 = getelementptr inbounds %struct.analog_parameters, %struct.analog_parameters* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @V4L2_STD_DK, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %49
  %57 = load %struct.tda8290_priv*, %struct.tda8290_priv** %5, align 8
  %58 = getelementptr inbounds %struct.tda8290_priv, %struct.tda8290_priv* %57, i32 0, i32 0
  store i32 16, i32* %58, align 4
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8** %6, align 8
  br label %84

59:                                               ; preds = %49
  %60 = load %struct.analog_parameters*, %struct.analog_parameters** %4, align 8
  %61 = getelementptr inbounds %struct.analog_parameters, %struct.analog_parameters* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @V4L2_STD_SECAM_L, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %59
  %67 = load %struct.tda8290_priv*, %struct.tda8290_priv** %5, align 8
  %68 = getelementptr inbounds %struct.tda8290_priv, %struct.tda8290_priv* %67, i32 0, i32 0
  store i32 32, i32* %68, align 4
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i8** %6, align 8
  br label %83

69:                                               ; preds = %59
  %70 = load %struct.analog_parameters*, %struct.analog_parameters** %4, align 8
  %71 = getelementptr inbounds %struct.analog_parameters, %struct.analog_parameters* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @V4L2_STD_SECAM_LC, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %69
  %77 = load %struct.tda8290_priv*, %struct.tda8290_priv** %5, align 8
  %78 = getelementptr inbounds %struct.tda8290_priv, %struct.tda8290_priv* %77, i32 0, i32 0
  store i32 64, i32* %78, align 4
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8** %6, align 8
  br label %82

79:                                               ; preds = %69
  %80 = load %struct.tda8290_priv*, %struct.tda8290_priv** %5, align 8
  %81 = getelementptr inbounds %struct.tda8290_priv, %struct.tda8290_priv* %80, i32 0, i32 0
  store i32 16, i32* %81, align 4
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8** %6, align 8
  br label %82

82:                                               ; preds = %79, %76
  br label %83

83:                                               ; preds = %82, %66
  br label %84

84:                                               ; preds = %83, %56
  br label %85

85:                                               ; preds = %84, %46
  br label %86

86:                                               ; preds = %85, %36
  br label %87

87:                                               ; preds = %86, %26
  br label %88

88:                                               ; preds = %87, %16
  %89 = load %struct.analog_parameters*, %struct.analog_parameters** %4, align 8
  %90 = getelementptr inbounds %struct.analog_parameters, %struct.analog_parameters* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @V4L2_TUNER_RADIO, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %106

94:                                               ; preds = %88
  %95 = load %struct.tda8290_priv*, %struct.tda8290_priv** %5, align 8
  %96 = getelementptr inbounds %struct.tda8290_priv, %struct.tda8290_priv* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @TDA8295, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  %101 = zext i1 %100 to i64
  %102 = select i1 %100, i32 128, i32 1
  %103 = load %struct.tda8290_priv*, %struct.tda8290_priv** %5, align 8
  %104 = getelementptr inbounds %struct.tda8290_priv, %struct.tda8290_priv* %103, i32 0, i32 0
  store i32 %102, i32* %104, align 4
  %105 = call i32 (i8*, ...) @tuner_dbg(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0))
  br label %109

106:                                              ; preds = %88
  %107 = load i8*, i8** %6, align 8
  %108 = call i32 (i8*, ...) @tuner_dbg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0), i8* %107)
  br label %109

109:                                              ; preds = %106, %94
  ret void
}

declare dso_local i32 @tuner_dbg(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
