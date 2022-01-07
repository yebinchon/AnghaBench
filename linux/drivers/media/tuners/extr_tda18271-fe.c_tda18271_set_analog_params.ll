; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/tuners/extr_tda18271-fe.c_tda18271_set_analog_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/tuners/extr_tda18271-fe.c_tda18271_set_analog_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.tda18271_priv* }
%struct.tda18271_priv = type { i32, i64, i32, i32, %struct.tda18271_std_map }
%struct.tda18271_std_map = type { %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item }
%struct.tda18271_std_map_item = type { i32 }
%struct.analog_parameters = type { i32, i32, i32 }

@V4L2_TUNER_RADIO = common dso_local global i32 0, align 4
@TDA18271_ANALOG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"fm\00", align 1
@V4L2_STD_MN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"MN\00", align 1
@V4L2_STD_B = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@V4L2_STD_GH = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"GH\00", align 1
@V4L2_STD_PAL_I = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@V4L2_STD_DK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [3 x i8] c"DK\00", align 1
@V4L2_STD_SECAM_L = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@V4L2_STD_SECAM_LC = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [3 x i8] c"L'\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"xx\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"setting tda18271 to system %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, %struct.analog_parameters*)* @tda18271_set_analog_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tda18271_set_analog_params(%struct.dvb_frontend* %0, %struct.analog_parameters* %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.analog_parameters*, align 8
  %5 = alloca %struct.tda18271_priv*, align 8
  %6 = alloca %struct.tda18271_std_map*, align 8
  %7 = alloca %struct.tda18271_std_map_item*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  store %struct.analog_parameters* %1, %struct.analog_parameters** %4, align 8
  %11 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %12 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %11, i32 0, i32 0
  %13 = load %struct.tda18271_priv*, %struct.tda18271_priv** %12, align 8
  store %struct.tda18271_priv* %13, %struct.tda18271_priv** %5, align 8
  %14 = load %struct.tda18271_priv*, %struct.tda18271_priv** %5, align 8
  %15 = getelementptr inbounds %struct.tda18271_priv, %struct.tda18271_priv* %14, i32 0, i32 4
  store %struct.tda18271_std_map* %15, %struct.tda18271_std_map** %6, align 8
  %16 = load %struct.analog_parameters*, %struct.analog_parameters** %4, align 8
  %17 = getelementptr inbounds %struct.analog_parameters, %struct.analog_parameters* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = mul nsw i32 %18, 125
  %20 = load %struct.analog_parameters*, %struct.analog_parameters** %4, align 8
  %21 = getelementptr inbounds %struct.analog_parameters, %struct.analog_parameters* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @V4L2_TUNER_RADIO, align 4
  %24 = icmp eq i32 %22, %23
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i32 1, i32 1000
  %27 = mul nsw i32 %19, %26
  %28 = sdiv i32 %27, 2
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* @TDA18271_ANALOG, align 4
  %30 = load %struct.tda18271_priv*, %struct.tda18271_priv** %5, align 8
  %31 = getelementptr inbounds %struct.tda18271_priv, %struct.tda18271_priv* %30, i32 0, i32 3
  store i32 %29, i32* %31, align 4
  %32 = load %struct.analog_parameters*, %struct.analog_parameters** %4, align 8
  %33 = getelementptr inbounds %struct.analog_parameters, %struct.analog_parameters* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @V4L2_TUNER_RADIO, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %2
  %38 = load %struct.tda18271_std_map*, %struct.tda18271_std_map** %6, align 8
  %39 = getelementptr inbounds %struct.tda18271_std_map, %struct.tda18271_std_map* %38, i32 0, i32 7
  store %struct.tda18271_std_map_item* %39, %struct.tda18271_std_map_item** %7, align 8
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  br label %120

40:                                               ; preds = %2
  %41 = load %struct.analog_parameters*, %struct.analog_parameters** %4, align 8
  %42 = getelementptr inbounds %struct.analog_parameters, %struct.analog_parameters* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @V4L2_STD_MN, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %40
  %48 = load %struct.tda18271_std_map*, %struct.tda18271_std_map** %6, align 8
  %49 = getelementptr inbounds %struct.tda18271_std_map, %struct.tda18271_std_map* %48, i32 0, i32 6
  store %struct.tda18271_std_map_item* %49, %struct.tda18271_std_map_item** %7, align 8
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8** %8, align 8
  br label %119

50:                                               ; preds = %40
  %51 = load %struct.analog_parameters*, %struct.analog_parameters** %4, align 8
  %52 = getelementptr inbounds %struct.analog_parameters, %struct.analog_parameters* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @V4L2_STD_B, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %50
  %58 = load %struct.tda18271_std_map*, %struct.tda18271_std_map** %6, align 8
  %59 = getelementptr inbounds %struct.tda18271_std_map, %struct.tda18271_std_map* %58, i32 0, i32 5
  store %struct.tda18271_std_map_item* %59, %struct.tda18271_std_map_item** %7, align 8
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8** %8, align 8
  br label %118

60:                                               ; preds = %50
  %61 = load %struct.analog_parameters*, %struct.analog_parameters** %4, align 8
  %62 = getelementptr inbounds %struct.analog_parameters, %struct.analog_parameters* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @V4L2_STD_GH, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %60
  %68 = load %struct.tda18271_std_map*, %struct.tda18271_std_map** %6, align 8
  %69 = getelementptr inbounds %struct.tda18271_std_map, %struct.tda18271_std_map* %68, i32 0, i32 4
  store %struct.tda18271_std_map_item* %69, %struct.tda18271_std_map_item** %7, align 8
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8** %8, align 8
  br label %117

70:                                               ; preds = %60
  %71 = load %struct.analog_parameters*, %struct.analog_parameters** %4, align 8
  %72 = getelementptr inbounds %struct.analog_parameters, %struct.analog_parameters* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @V4L2_STD_PAL_I, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %70
  %78 = load %struct.tda18271_std_map*, %struct.tda18271_std_map** %6, align 8
  %79 = getelementptr inbounds %struct.tda18271_std_map, %struct.tda18271_std_map* %78, i32 0, i32 0
  store %struct.tda18271_std_map_item* %79, %struct.tda18271_std_map_item** %7, align 8
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8** %8, align 8
  br label %116

80:                                               ; preds = %70
  %81 = load %struct.analog_parameters*, %struct.analog_parameters** %4, align 8
  %82 = getelementptr inbounds %struct.analog_parameters, %struct.analog_parameters* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @V4L2_STD_DK, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %80
  %88 = load %struct.tda18271_std_map*, %struct.tda18271_std_map** %6, align 8
  %89 = getelementptr inbounds %struct.tda18271_std_map, %struct.tda18271_std_map* %88, i32 0, i32 3
  store %struct.tda18271_std_map_item* %89, %struct.tda18271_std_map_item** %7, align 8
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8** %8, align 8
  br label %115

90:                                               ; preds = %80
  %91 = load %struct.analog_parameters*, %struct.analog_parameters** %4, align 8
  %92 = getelementptr inbounds %struct.analog_parameters, %struct.analog_parameters* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @V4L2_STD_SECAM_L, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %90
  %98 = load %struct.tda18271_std_map*, %struct.tda18271_std_map** %6, align 8
  %99 = getelementptr inbounds %struct.tda18271_std_map, %struct.tda18271_std_map* %98, i32 0, i32 2
  store %struct.tda18271_std_map_item* %99, %struct.tda18271_std_map_item** %7, align 8
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i8** %8, align 8
  br label %114

100:                                              ; preds = %90
  %101 = load %struct.analog_parameters*, %struct.analog_parameters** %4, align 8
  %102 = getelementptr inbounds %struct.analog_parameters, %struct.analog_parameters* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @V4L2_STD_SECAM_LC, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %100
  %108 = load %struct.tda18271_std_map*, %struct.tda18271_std_map** %6, align 8
  %109 = getelementptr inbounds %struct.tda18271_std_map, %struct.tda18271_std_map* %108, i32 0, i32 1
  store %struct.tda18271_std_map_item* %109, %struct.tda18271_std_map_item** %7, align 8
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8** %8, align 8
  br label %113

110:                                              ; preds = %100
  %111 = load %struct.tda18271_std_map*, %struct.tda18271_std_map** %6, align 8
  %112 = getelementptr inbounds %struct.tda18271_std_map, %struct.tda18271_std_map* %111, i32 0, i32 0
  store %struct.tda18271_std_map_item* %112, %struct.tda18271_std_map_item** %7, align 8
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i8** %8, align 8
  br label %113

113:                                              ; preds = %110, %107
  br label %114

114:                                              ; preds = %113, %97
  br label %115

115:                                              ; preds = %114, %87
  br label %116

116:                                              ; preds = %115, %77
  br label %117

117:                                              ; preds = %116, %67
  br label %118

118:                                              ; preds = %117, %57
  br label %119

119:                                              ; preds = %118, %47
  br label %120

120:                                              ; preds = %119, %37
  %121 = load i8*, i8** %8, align 8
  %122 = call i32 @tda_dbg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0), i8* %121)
  %123 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %124 = load %struct.tda18271_std_map_item*, %struct.tda18271_std_map_item** %7, align 8
  %125 = load i32, i32* %10, align 4
  %126 = call i32 @tda18271_tune(%struct.dvb_frontend* %123, %struct.tda18271_std_map_item* %124, i32 %125, i32 0)
  store i32 %126, i32* %9, align 4
  %127 = load i32, i32* %9, align 4
  %128 = call i64 @tda_fail(i32 %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %120
  br label %142

131:                                              ; preds = %120
  %132 = load %struct.tda18271_std_map_item*, %struct.tda18271_std_map_item** %7, align 8
  %133 = getelementptr inbounds %struct.tda18271_std_map_item, %struct.tda18271_std_map_item* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.tda18271_priv*, %struct.tda18271_priv** %5, align 8
  %136 = getelementptr inbounds %struct.tda18271_priv, %struct.tda18271_priv* %135, i32 0, i32 2
  store i32 %134, i32* %136, align 8
  %137 = load i32, i32* %10, align 4
  %138 = load %struct.tda18271_priv*, %struct.tda18271_priv** %5, align 8
  %139 = getelementptr inbounds %struct.tda18271_priv, %struct.tda18271_priv* %138, i32 0, i32 0
  store i32 %137, i32* %139, align 8
  %140 = load %struct.tda18271_priv*, %struct.tda18271_priv** %5, align 8
  %141 = getelementptr inbounds %struct.tda18271_priv, %struct.tda18271_priv* %140, i32 0, i32 1
  store i64 0, i64* %141, align 8
  br label %142

142:                                              ; preds = %131, %130
  %143 = load i32, i32* %9, align 4
  ret i32 %143
}

declare dso_local i32 @tda_dbg(i8*, i8*) #1

declare dso_local i32 @tda18271_tune(%struct.dvb_frontend*, %struct.tda18271_std_map_item*, i32, i32) #1

declare dso_local i64 @tda_fail(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
