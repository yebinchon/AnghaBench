; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/tuners/extr_tda18271-maps.c_tda18271_lookup_rf_band.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/tuners/extr_tda18271-maps.c_tda18271_lookup_rf_band.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.tda18271_priv* }
%struct.tda18271_priv = type { %struct.tda18271_rf_tracking_filter_cal* }
%struct.tda18271_rf_tracking_filter_cal = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@tda18271_debug = common dso_local global i32 0, align 4
@DBG_ADV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [149 x i8] c"(%d) rfmax = %d < freq = %d, rf1_def = %d, rf2_def = %d, rf3_def = %d, rf1 = %d, rf2 = %d, rf3 = %d, rf_a1 = %d, rf_a2 = %d, rf_b1 = %d, rf_b2 = %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"(%d) rf_band = %02x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tda18271_lookup_rf_band(%struct.dvb_frontend* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dvb_frontend*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.tda18271_priv*, align 8
  %9 = alloca %struct.tda18271_rf_tracking_filter_cal*, align 8
  %10 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %12 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %11, i32 0, i32 0
  %13 = load %struct.tda18271_priv*, %struct.tda18271_priv** %12, align 8
  store %struct.tda18271_priv* %13, %struct.tda18271_priv** %8, align 8
  %14 = load %struct.tda18271_priv*, %struct.tda18271_priv** %8, align 8
  %15 = getelementptr inbounds %struct.tda18271_priv, %struct.tda18271_priv* %14, i32 0, i32 0
  %16 = load %struct.tda18271_rf_tracking_filter_cal*, %struct.tda18271_rf_tracking_filter_cal** %15, align 8
  store %struct.tda18271_rf_tracking_filter_cal* %16, %struct.tda18271_rf_tracking_filter_cal** %9, align 8
  store i32 0, i32* %10, align 4
  br label %17

17:                                               ; preds = %116, %3
  %18 = load %struct.tda18271_rf_tracking_filter_cal*, %struct.tda18271_rf_tracking_filter_cal** %9, align 8
  %19 = load i32, i32* %10, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.tda18271_rf_tracking_filter_cal, %struct.tda18271_rf_tracking_filter_cal* %18, i64 %20
  %22 = getelementptr inbounds %struct.tda18271_rf_tracking_filter_cal, %struct.tda18271_rf_tracking_filter_cal* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = mul nsw i32 %23, 1000
  %25 = load i32*, i32** %6, align 8
  %26 = load i32, i32* %25, align 4
  %27 = icmp slt i32 %24, %26
  br i1 %27, label %28, label %119

28:                                               ; preds = %17
  %29 = load i32, i32* @tda18271_debug, align 4
  %30 = load i32, i32* @DBG_ADV, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %105

33:                                               ; preds = %28
  %34 = load i32, i32* %10, align 4
  %35 = load %struct.tda18271_rf_tracking_filter_cal*, %struct.tda18271_rf_tracking_filter_cal** %9, align 8
  %36 = load i32, i32* %10, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.tda18271_rf_tracking_filter_cal, %struct.tda18271_rf_tracking_filter_cal* %35, i64 %37
  %39 = getelementptr inbounds %struct.tda18271_rf_tracking_filter_cal, %struct.tda18271_rf_tracking_filter_cal* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = mul nsw i32 %40, 1000
  %42 = load i32*, i32** %6, align 8
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.tda18271_rf_tracking_filter_cal*, %struct.tda18271_rf_tracking_filter_cal** %9, align 8
  %45 = load i32, i32* %10, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.tda18271_rf_tracking_filter_cal, %struct.tda18271_rf_tracking_filter_cal* %44, i64 %46
  %48 = getelementptr inbounds %struct.tda18271_rf_tracking_filter_cal, %struct.tda18271_rf_tracking_filter_cal* %47, i32 0, i32 11
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.tda18271_rf_tracking_filter_cal*, %struct.tda18271_rf_tracking_filter_cal** %9, align 8
  %51 = load i32, i32* %10, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.tda18271_rf_tracking_filter_cal, %struct.tda18271_rf_tracking_filter_cal* %50, i64 %52
  %54 = getelementptr inbounds %struct.tda18271_rf_tracking_filter_cal, %struct.tda18271_rf_tracking_filter_cal* %53, i32 0, i32 10
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.tda18271_rf_tracking_filter_cal*, %struct.tda18271_rf_tracking_filter_cal** %9, align 8
  %57 = load i32, i32* %10, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.tda18271_rf_tracking_filter_cal, %struct.tda18271_rf_tracking_filter_cal* %56, i64 %58
  %60 = getelementptr inbounds %struct.tda18271_rf_tracking_filter_cal, %struct.tda18271_rf_tracking_filter_cal* %59, i32 0, i32 9
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.tda18271_rf_tracking_filter_cal*, %struct.tda18271_rf_tracking_filter_cal** %9, align 8
  %63 = load i32, i32* %10, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.tda18271_rf_tracking_filter_cal, %struct.tda18271_rf_tracking_filter_cal* %62, i64 %64
  %66 = getelementptr inbounds %struct.tda18271_rf_tracking_filter_cal, %struct.tda18271_rf_tracking_filter_cal* %65, i32 0, i32 8
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.tda18271_rf_tracking_filter_cal*, %struct.tda18271_rf_tracking_filter_cal** %9, align 8
  %69 = load i32, i32* %10, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.tda18271_rf_tracking_filter_cal, %struct.tda18271_rf_tracking_filter_cal* %68, i64 %70
  %72 = getelementptr inbounds %struct.tda18271_rf_tracking_filter_cal, %struct.tda18271_rf_tracking_filter_cal* %71, i32 0, i32 7
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.tda18271_rf_tracking_filter_cal*, %struct.tda18271_rf_tracking_filter_cal** %9, align 8
  %75 = load i32, i32* %10, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.tda18271_rf_tracking_filter_cal, %struct.tda18271_rf_tracking_filter_cal* %74, i64 %76
  %78 = getelementptr inbounds %struct.tda18271_rf_tracking_filter_cal, %struct.tda18271_rf_tracking_filter_cal* %77, i32 0, i32 6
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.tda18271_rf_tracking_filter_cal*, %struct.tda18271_rf_tracking_filter_cal** %9, align 8
  %81 = load i32, i32* %10, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.tda18271_rf_tracking_filter_cal, %struct.tda18271_rf_tracking_filter_cal* %80, i64 %82
  %84 = getelementptr inbounds %struct.tda18271_rf_tracking_filter_cal, %struct.tda18271_rf_tracking_filter_cal* %83, i32 0, i32 5
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.tda18271_rf_tracking_filter_cal*, %struct.tda18271_rf_tracking_filter_cal** %9, align 8
  %87 = load i32, i32* %10, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.tda18271_rf_tracking_filter_cal, %struct.tda18271_rf_tracking_filter_cal* %86, i64 %88
  %90 = getelementptr inbounds %struct.tda18271_rf_tracking_filter_cal, %struct.tda18271_rf_tracking_filter_cal* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.tda18271_rf_tracking_filter_cal*, %struct.tda18271_rf_tracking_filter_cal** %9, align 8
  %93 = load i32, i32* %10, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.tda18271_rf_tracking_filter_cal, %struct.tda18271_rf_tracking_filter_cal* %92, i64 %94
  %96 = getelementptr inbounds %struct.tda18271_rf_tracking_filter_cal, %struct.tda18271_rf_tracking_filter_cal* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.tda18271_rf_tracking_filter_cal*, %struct.tda18271_rf_tracking_filter_cal** %9, align 8
  %99 = load i32, i32* %10, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.tda18271_rf_tracking_filter_cal, %struct.tda18271_rf_tracking_filter_cal* %98, i64 %100
  %102 = getelementptr inbounds %struct.tda18271_rf_tracking_filter_cal, %struct.tda18271_rf_tracking_filter_cal* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = call i32 (i8*, i32, i32, ...) @tda_map(i8* getelementptr inbounds ([149 x i8], [149 x i8]* @.str, i64 0, i64 0), i32 %34, i32 %41, i32 %43, i32 %49, i32 %55, i32 %61, i32 %67, i32 %73, i32 %79, i32 %85, i32 %91, i32 %97, i32 %103)
  br label %105

105:                                              ; preds = %33, %28
  %106 = load %struct.tda18271_rf_tracking_filter_cal*, %struct.tda18271_rf_tracking_filter_cal** %9, align 8
  %107 = load i32, i32* %10, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.tda18271_rf_tracking_filter_cal, %struct.tda18271_rf_tracking_filter_cal* %106, i64 %108
  %110 = getelementptr inbounds %struct.tda18271_rf_tracking_filter_cal, %struct.tda18271_rf_tracking_filter_cal* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %105
  %114 = load i32, i32* @EINVAL, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %4, align 4
  br label %140

116:                                              ; preds = %105
  %117 = load i32, i32* %10, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %10, align 4
  br label %17

119:                                              ; preds = %17
  %120 = load i32*, i32** %7, align 8
  %121 = icmp ne i32* %120, null
  br i1 %121, label %122, label %130

122:                                              ; preds = %119
  %123 = load %struct.tda18271_rf_tracking_filter_cal*, %struct.tda18271_rf_tracking_filter_cal** %9, align 8
  %124 = load i32, i32* %10, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.tda18271_rf_tracking_filter_cal, %struct.tda18271_rf_tracking_filter_cal* %123, i64 %125
  %127 = getelementptr inbounds %struct.tda18271_rf_tracking_filter_cal, %struct.tda18271_rf_tracking_filter_cal* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = load i32*, i32** %7, align 8
  store i32 %128, i32* %129, align 4
  br label %130

130:                                              ; preds = %122, %119
  %131 = load i32, i32* %10, align 4
  %132 = load %struct.tda18271_rf_tracking_filter_cal*, %struct.tda18271_rf_tracking_filter_cal** %9, align 8
  %133 = load i32, i32* %10, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.tda18271_rf_tracking_filter_cal, %struct.tda18271_rf_tracking_filter_cal* %132, i64 %134
  %136 = getelementptr inbounds %struct.tda18271_rf_tracking_filter_cal, %struct.tda18271_rf_tracking_filter_cal* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = call i32 (i8*, i32, i32, ...) @tda_map(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %131, i32 %137)
  %139 = load i32, i32* %10, align 4
  store i32 %139, i32* %4, align 4
  br label %140

140:                                              ; preds = %130, %113
  %141 = load i32, i32* %4, align 4
  ret i32 %141
}

declare dso_local i32 @tda_map(i8*, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
