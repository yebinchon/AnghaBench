; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/tuners/extr_tda827x.c_tda827x_set_std.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/tuners/extr_tda827x.c_tda827x_set_std.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.tda827x_priv* }
%struct.tda827x_priv = type { i32, i32 }
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
@.str.8 = private unnamed_addr constant [29 x i8] c"setting tda827x to radio FM\0A\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"setting tda827x to system %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dvb_frontend*, %struct.analog_parameters*)* @tda827x_set_std to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tda827x_set_std(%struct.dvb_frontend* %0, %struct.analog_parameters* %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.analog_parameters*, align 8
  %5 = alloca %struct.tda827x_priv*, align 8
  %6 = alloca i8*, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  store %struct.analog_parameters* %1, %struct.analog_parameters** %4, align 8
  %7 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %8 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %7, i32 0, i32 0
  %9 = load %struct.tda827x_priv*, %struct.tda827x_priv** %8, align 8
  store %struct.tda827x_priv* %9, %struct.tda827x_priv** %5, align 8
  %10 = load %struct.tda827x_priv*, %struct.tda827x_priv** %5, align 8
  %11 = getelementptr inbounds %struct.tda827x_priv, %struct.tda827x_priv* %10, i32 0, i32 0
  store i32 0, i32* %11, align 4
  %12 = load %struct.analog_parameters*, %struct.analog_parameters** %4, align 8
  %13 = getelementptr inbounds %struct.analog_parameters, %struct.analog_parameters* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @V4L2_STD_MN, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %2
  %19 = load %struct.tda827x_priv*, %struct.tda827x_priv** %5, align 8
  %20 = getelementptr inbounds %struct.tda827x_priv, %struct.tda827x_priv* %19, i32 0, i32 1
  store i32 92, i32* %20, align 4
  %21 = load %struct.tda827x_priv*, %struct.tda827x_priv** %5, align 8
  %22 = getelementptr inbounds %struct.tda827x_priv, %struct.tda827x_priv* %21, i32 0, i32 0
  store i32 1, i32* %22, align 4
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  br label %92

23:                                               ; preds = %2
  %24 = load %struct.analog_parameters*, %struct.analog_parameters** %4, align 8
  %25 = getelementptr inbounds %struct.analog_parameters, %struct.analog_parameters* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @V4L2_STD_B, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %23
  %31 = load %struct.tda827x_priv*, %struct.tda827x_priv** %5, align 8
  %32 = getelementptr inbounds %struct.tda827x_priv, %struct.tda827x_priv* %31, i32 0, i32 1
  store i32 108, i32* %32, align 4
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8** %6, align 8
  br label %91

33:                                               ; preds = %23
  %34 = load %struct.analog_parameters*, %struct.analog_parameters** %4, align 8
  %35 = getelementptr inbounds %struct.analog_parameters, %struct.analog_parameters* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @V4L2_STD_GH, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %33
  %41 = load %struct.tda827x_priv*, %struct.tda827x_priv** %5, align 8
  %42 = getelementptr inbounds %struct.tda827x_priv, %struct.tda827x_priv* %41, i32 0, i32 1
  store i32 124, i32* %42, align 4
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8** %6, align 8
  br label %90

43:                                               ; preds = %33
  %44 = load %struct.analog_parameters*, %struct.analog_parameters** %4, align 8
  %45 = getelementptr inbounds %struct.analog_parameters, %struct.analog_parameters* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @V4L2_STD_PAL_I, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %43
  %51 = load %struct.tda827x_priv*, %struct.tda827x_priv** %5, align 8
  %52 = getelementptr inbounds %struct.tda827x_priv, %struct.tda827x_priv* %51, i32 0, i32 1
  store i32 124, i32* %52, align 4
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8** %6, align 8
  br label %89

53:                                               ; preds = %43
  %54 = load %struct.analog_parameters*, %struct.analog_parameters** %4, align 8
  %55 = getelementptr inbounds %struct.analog_parameters, %struct.analog_parameters* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @V4L2_STD_DK, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %53
  %61 = load %struct.tda827x_priv*, %struct.tda827x_priv** %5, align 8
  %62 = getelementptr inbounds %struct.tda827x_priv, %struct.tda827x_priv* %61, i32 0, i32 1
  store i32 124, i32* %62, align 4
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8** %6, align 8
  br label %88

63:                                               ; preds = %53
  %64 = load %struct.analog_parameters*, %struct.analog_parameters** %4, align 8
  %65 = getelementptr inbounds %struct.analog_parameters, %struct.analog_parameters* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @V4L2_STD_SECAM_L, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %63
  %71 = load %struct.tda827x_priv*, %struct.tda827x_priv** %5, align 8
  %72 = getelementptr inbounds %struct.tda827x_priv, %struct.tda827x_priv* %71, i32 0, i32 1
  store i32 124, i32* %72, align 4
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i8** %6, align 8
  br label %87

73:                                               ; preds = %63
  %74 = load %struct.analog_parameters*, %struct.analog_parameters** %4, align 8
  %75 = getelementptr inbounds %struct.analog_parameters, %struct.analog_parameters* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @V4L2_STD_SECAM_LC, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %73
  %81 = load %struct.tda827x_priv*, %struct.tda827x_priv** %5, align 8
  %82 = getelementptr inbounds %struct.tda827x_priv, %struct.tda827x_priv* %81, i32 0, i32 1
  store i32 20, i32* %82, align 4
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8** %6, align 8
  br label %86

83:                                               ; preds = %73
  %84 = load %struct.tda827x_priv*, %struct.tda827x_priv** %5, align 8
  %85 = getelementptr inbounds %struct.tda827x_priv, %struct.tda827x_priv* %84, i32 0, i32 1
  store i32 124, i32* %85, align 4
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8** %6, align 8
  br label %86

86:                                               ; preds = %83, %80
  br label %87

87:                                               ; preds = %86, %70
  br label %88

88:                                               ; preds = %87, %60
  br label %89

89:                                               ; preds = %88, %50
  br label %90

90:                                               ; preds = %89, %40
  br label %91

91:                                               ; preds = %90, %30
  br label %92

92:                                               ; preds = %91, %18
  %93 = load %struct.analog_parameters*, %struct.analog_parameters** %4, align 8
  %94 = getelementptr inbounds %struct.analog_parameters, %struct.analog_parameters* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @V4L2_TUNER_RADIO, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %102

98:                                               ; preds = %92
  %99 = load %struct.tda827x_priv*, %struct.tda827x_priv** %5, align 8
  %100 = getelementptr inbounds %struct.tda827x_priv, %struct.tda827x_priv* %99, i32 0, i32 1
  store i32 88, i32* %100, align 4
  %101 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0))
  br label %105

102:                                              ; preds = %92
  %103 = load i8*, i8** %6, align 8
  %104 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0), i8* %103)
  br label %105

105:                                              ; preds = %102, %98
  ret void
}

declare dso_local i32 @dprintk(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
