; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_tda10048.c_tda10048_get_tps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_tda10048.c_tda10048_get_tps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tda10048_state = type { i32 }
%struct.dtv_frontend_properties = type { i32, i32, i8*, i8*, i32, i32 }

@TDA10048_AUTO = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@TDA10048_OUT_CONF2 = common dso_local global i32 0, align 4
@QPSK = common dso_local global i32 0, align 4
@QAM_16 = common dso_local global i32 0, align 4
@QAM_64 = common dso_local global i32 0, align 4
@HIERARCHY_NONE = common dso_local global i32 0, align 4
@HIERARCHY_1 = common dso_local global i32 0, align 4
@HIERARCHY_2 = common dso_local global i32 0, align 4
@HIERARCHY_4 = common dso_local global i32 0, align 4
@FEC_1_2 = common dso_local global i8* null, align 8
@FEC_2_3 = common dso_local global i8* null, align 8
@FEC_3_4 = common dso_local global i8* null, align 8
@FEC_5_6 = common dso_local global i8* null, align 8
@FEC_7_8 = common dso_local global i8* null, align 8
@TDA10048_OUT_CONF3 = common dso_local global i32 0, align 4
@TDA10048_OUT_CONF1 = common dso_local global i32 0, align 4
@GUARD_INTERVAL_1_32 = common dso_local global i32 0, align 4
@GUARD_INTERVAL_1_16 = common dso_local global i32 0, align 4
@GUARD_INTERVAL_1_8 = common dso_local global i32 0, align 4
@GUARD_INTERVAL_1_4 = common dso_local global i32 0, align 4
@TRANSMISSION_MODE_2K = common dso_local global i32 0, align 4
@TRANSMISSION_MODE_8K = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tda10048_state*, %struct.dtv_frontend_properties*)* @tda10048_get_tps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tda10048_get_tps(%struct.tda10048_state* %0, %struct.dtv_frontend_properties* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tda10048_state*, align 8
  %5 = alloca %struct.dtv_frontend_properties*, align 8
  %6 = alloca i32, align 4
  store %struct.tda10048_state* %0, %struct.tda10048_state** %4, align 8
  store %struct.dtv_frontend_properties* %1, %struct.dtv_frontend_properties** %5, align 8
  %7 = load %struct.tda10048_state*, %struct.tda10048_state** %4, align 8
  %8 = load i32, i32* @TDA10048_AUTO, align 4
  %9 = call i32 @tda10048_readreg(%struct.tda10048_state* %7, i32 %8)
  %10 = and i32 %9, 1
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @EAGAIN, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %138

15:                                               ; preds = %2
  %16 = load %struct.tda10048_state*, %struct.tda10048_state** %4, align 8
  %17 = load i32, i32* @TDA10048_OUT_CONF2, align 4
  %18 = call i32 @tda10048_readreg(%struct.tda10048_state* %16, i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = and i32 %19, 96
  %21 = ashr i32 %20, 5
  switch i32 %21, label %34 [
    i32 0, label %22
    i32 1, label %26
    i32 2, label %30
  ]

22:                                               ; preds = %15
  %23 = load i32, i32* @QPSK, align 4
  %24 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %25 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %24, i32 0, i32 5
  store i32 %23, i32* %25, align 4
  br label %34

26:                                               ; preds = %15
  %27 = load i32, i32* @QAM_16, align 4
  %28 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %29 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %28, i32 0, i32 5
  store i32 %27, i32* %29, align 4
  br label %34

30:                                               ; preds = %15
  %31 = load i32, i32* @QAM_64, align 4
  %32 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %33 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %32, i32 0, i32 5
  store i32 %31, i32* %33, align 4
  br label %34

34:                                               ; preds = %15, %30, %26, %22
  %35 = load i32, i32* %6, align 4
  %36 = and i32 %35, 24
  %37 = ashr i32 %36, 3
  switch i32 %37, label %54 [
    i32 0, label %38
    i32 1, label %42
    i32 2, label %46
    i32 3, label %50
  ]

38:                                               ; preds = %34
  %39 = load i32, i32* @HIERARCHY_NONE, align 4
  %40 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %41 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %40, i32 0, i32 4
  store i32 %39, i32* %41, align 8
  br label %54

42:                                               ; preds = %34
  %43 = load i32, i32* @HIERARCHY_1, align 4
  %44 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %45 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %44, i32 0, i32 4
  store i32 %43, i32* %45, align 8
  br label %54

46:                                               ; preds = %34
  %47 = load i32, i32* @HIERARCHY_2, align 4
  %48 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %49 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %48, i32 0, i32 4
  store i32 %47, i32* %49, align 8
  br label %54

50:                                               ; preds = %34
  %51 = load i32, i32* @HIERARCHY_4, align 4
  %52 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %53 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %52, i32 0, i32 4
  store i32 %51, i32* %53, align 8
  br label %54

54:                                               ; preds = %34, %50, %46, %42, %38
  %55 = load i32, i32* %6, align 4
  %56 = and i32 %55, 7
  switch i32 %56, label %77 [
    i32 0, label %57
    i32 1, label %61
    i32 2, label %65
    i32 3, label %69
    i32 4, label %73
  ]

57:                                               ; preds = %54
  %58 = load i8*, i8** @FEC_1_2, align 8
  %59 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %60 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %59, i32 0, i32 3
  store i8* %58, i8** %60, align 8
  br label %77

61:                                               ; preds = %54
  %62 = load i8*, i8** @FEC_2_3, align 8
  %63 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %64 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %63, i32 0, i32 3
  store i8* %62, i8** %64, align 8
  br label %77

65:                                               ; preds = %54
  %66 = load i8*, i8** @FEC_3_4, align 8
  %67 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %68 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %67, i32 0, i32 3
  store i8* %66, i8** %68, align 8
  br label %77

69:                                               ; preds = %54
  %70 = load i8*, i8** @FEC_5_6, align 8
  %71 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %72 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %71, i32 0, i32 3
  store i8* %70, i8** %72, align 8
  br label %77

73:                                               ; preds = %54
  %74 = load i8*, i8** @FEC_7_8, align 8
  %75 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %76 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %75, i32 0, i32 3
  store i8* %74, i8** %76, align 8
  br label %77

77:                                               ; preds = %54, %73, %69, %65, %61, %57
  %78 = load %struct.tda10048_state*, %struct.tda10048_state** %4, align 8
  %79 = load i32, i32* @TDA10048_OUT_CONF3, align 4
  %80 = call i32 @tda10048_readreg(%struct.tda10048_state* %78, i32 %79)
  store i32 %80, i32* %6, align 4
  %81 = load i32, i32* %6, align 4
  %82 = and i32 %81, 7
  switch i32 %82, label %103 [
    i32 0, label %83
    i32 1, label %87
    i32 2, label %91
    i32 3, label %95
    i32 4, label %99
  ]

83:                                               ; preds = %77
  %84 = load i8*, i8** @FEC_1_2, align 8
  %85 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %86 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %85, i32 0, i32 2
  store i8* %84, i8** %86, align 8
  br label %103

87:                                               ; preds = %77
  %88 = load i8*, i8** @FEC_2_3, align 8
  %89 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %90 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %89, i32 0, i32 2
  store i8* %88, i8** %90, align 8
  br label %103

91:                                               ; preds = %77
  %92 = load i8*, i8** @FEC_3_4, align 8
  %93 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %94 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %93, i32 0, i32 2
  store i8* %92, i8** %94, align 8
  br label %103

95:                                               ; preds = %77
  %96 = load i8*, i8** @FEC_5_6, align 8
  %97 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %98 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %97, i32 0, i32 2
  store i8* %96, i8** %98, align 8
  br label %103

99:                                               ; preds = %77
  %100 = load i8*, i8** @FEC_7_8, align 8
  %101 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %102 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %101, i32 0, i32 2
  store i8* %100, i8** %102, align 8
  br label %103

103:                                              ; preds = %77, %99, %95, %91, %87, %83
  %104 = load %struct.tda10048_state*, %struct.tda10048_state** %4, align 8
  %105 = load i32, i32* @TDA10048_OUT_CONF1, align 4
  %106 = call i32 @tda10048_readreg(%struct.tda10048_state* %104, i32 %105)
  store i32 %106, i32* %6, align 4
  %107 = load i32, i32* %6, align 4
  %108 = and i32 %107, 12
  %109 = ashr i32 %108, 2
  switch i32 %109, label %126 [
    i32 0, label %110
    i32 1, label %114
    i32 2, label %118
    i32 3, label %122
  ]

110:                                              ; preds = %103
  %111 = load i32, i32* @GUARD_INTERVAL_1_32, align 4
  %112 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %113 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %112, i32 0, i32 1
  store i32 %111, i32* %113, align 4
  br label %126

114:                                              ; preds = %103
  %115 = load i32, i32* @GUARD_INTERVAL_1_16, align 4
  %116 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %117 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %116, i32 0, i32 1
  store i32 %115, i32* %117, align 4
  br label %126

118:                                              ; preds = %103
  %119 = load i32, i32* @GUARD_INTERVAL_1_8, align 4
  %120 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %121 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %120, i32 0, i32 1
  store i32 %119, i32* %121, align 4
  br label %126

122:                                              ; preds = %103
  %123 = load i32, i32* @GUARD_INTERVAL_1_4, align 4
  %124 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %125 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %124, i32 0, i32 1
  store i32 %123, i32* %125, align 4
  br label %126

126:                                              ; preds = %103, %122, %118, %114, %110
  %127 = load i32, i32* %6, align 4
  %128 = and i32 %127, 3
  switch i32 %128, label %137 [
    i32 0, label %129
    i32 1, label %133
  ]

129:                                              ; preds = %126
  %130 = load i32, i32* @TRANSMISSION_MODE_2K, align 4
  %131 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %132 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %131, i32 0, i32 0
  store i32 %130, i32* %132, align 8
  br label %137

133:                                              ; preds = %126
  %134 = load i32, i32* @TRANSMISSION_MODE_8K, align 4
  %135 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %136 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %135, i32 0, i32 0
  store i32 %134, i32* %136, align 8
  br label %137

137:                                              ; preds = %126, %133, %129
  store i32 0, i32* %3, align 4
  br label %138

138:                                              ; preds = %137, %12
  %139 = load i32, i32* %3, align 4
  ret i32 %139
}

declare dso_local i32 @tda10048_readreg(%struct.tda10048_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
