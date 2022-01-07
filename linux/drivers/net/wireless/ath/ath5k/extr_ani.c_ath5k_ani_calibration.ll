; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_ani.c_ath5k_ani_calibration.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_ani.c_ath5k_ani_calibration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath5k_hw = type { %struct.ath5k_ani_state }
%struct.ath5k_ani_state = type { i32, i64, i32, i32 }

@ATH5K_ANI_MODE_AUTO = common dso_local global i64 0, align 8
@ATH5K_ANI_OFDM_TRIG_HIGH = common dso_local global i32 0, align 4
@ATH5K_ANI_CCK_TRIG_HIGH = common dso_local global i32 0, align 4
@ATH5K_ANI_OFDM_TRIG_LOW = common dso_local global i32 0, align 4
@ATH5K_ANI_CCK_TRIG_LOW = common dso_local global i32 0, align 4
@ATH5K_DEBUG_ANI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"listen %d (now %d)\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"check high ofdm %d/%d cck %d/%d\00", align 1
@ATH5K_ANI_LISTEN_PERIOD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"check low ofdm %d/%d cck %d/%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath5k_ani_calibration(%struct.ath5k_hw* %0) #0 {
  %2 = alloca %struct.ath5k_hw*, align 8
  %3 = alloca %struct.ath5k_ani_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ath5k_hw* %0, %struct.ath5k_hw** %2, align 8
  %10 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %11 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %10, i32 0, i32 0
  store %struct.ath5k_ani_state* %11, %struct.ath5k_ani_state** %3, align 8
  %12 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %13 = load %struct.ath5k_ani_state*, %struct.ath5k_ani_state** %3, align 8
  %14 = call i32 @ath5k_hw_ani_get_listen_time(%struct.ath5k_hw* %12, %struct.ath5k_ani_state* %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.ath5k_ani_state*, %struct.ath5k_ani_state** %3, align 8
  %17 = getelementptr inbounds %struct.ath5k_ani_state, %struct.ath5k_ani_state* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = add nsw i32 %18, %15
  store i32 %19, i32* %17, align 8
  %20 = load %struct.ath5k_ani_state*, %struct.ath5k_ani_state** %3, align 8
  %21 = getelementptr inbounds %struct.ath5k_ani_state, %struct.ath5k_ani_state* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @ATH5K_ANI_MODE_AUTO, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %1
  br label %135

26:                                               ; preds = %1
  %27 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %28 = load %struct.ath5k_ani_state*, %struct.ath5k_ani_state** %3, align 8
  %29 = call i32 @ath5k_ani_save_and_clear_phy_errors(%struct.ath5k_hw* %27, %struct.ath5k_ani_state* %28)
  %30 = load %struct.ath5k_ani_state*, %struct.ath5k_ani_state** %3, align 8
  %31 = getelementptr inbounds %struct.ath5k_ani_state, %struct.ath5k_ani_state* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @ATH5K_ANI_OFDM_TRIG_HIGH, align 4
  %34 = mul nsw i32 %32, %33
  %35 = sdiv i32 %34, 1000
  store i32 %35, i32* %5, align 4
  %36 = load %struct.ath5k_ani_state*, %struct.ath5k_ani_state** %3, align 8
  %37 = getelementptr inbounds %struct.ath5k_ani_state, %struct.ath5k_ani_state* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @ATH5K_ANI_CCK_TRIG_HIGH, align 4
  %40 = mul nsw i32 %38, %39
  %41 = sdiv i32 %40, 1000
  store i32 %41, i32* %7, align 4
  %42 = load %struct.ath5k_ani_state*, %struct.ath5k_ani_state** %3, align 8
  %43 = getelementptr inbounds %struct.ath5k_ani_state, %struct.ath5k_ani_state* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @ATH5K_ANI_OFDM_TRIG_LOW, align 4
  %46 = mul nsw i32 %44, %45
  %47 = sdiv i32 %46, 1000
  store i32 %47, i32* %6, align 4
  %48 = load %struct.ath5k_ani_state*, %struct.ath5k_ani_state** %3, align 8
  %49 = getelementptr inbounds %struct.ath5k_ani_state, %struct.ath5k_ani_state* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @ATH5K_ANI_CCK_TRIG_LOW, align 4
  %52 = mul nsw i32 %50, %51
  %53 = sdiv i32 %52, 1000
  store i32 %53, i32* %8, align 4
  %54 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %55 = load i32, i32* @ATH5K_DEBUG_ANI, align 4
  %56 = load %struct.ath5k_ani_state*, %struct.ath5k_ani_state** %3, align 8
  %57 = getelementptr inbounds %struct.ath5k_ani_state, %struct.ath5k_ani_state* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* %4, align 4
  %60 = call i32 (%struct.ath5k_hw*, i32, i8*, i32, i32, ...) @ATH5K_DBG_UNLIMIT(%struct.ath5k_hw* %54, i32 %55, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %58, i32 %59)
  %61 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %62 = load i32, i32* @ATH5K_DEBUG_ANI, align 4
  %63 = load %struct.ath5k_ani_state*, %struct.ath5k_ani_state** %3, align 8
  %64 = getelementptr inbounds %struct.ath5k_ani_state, %struct.ath5k_ani_state* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* %5, align 4
  %67 = load %struct.ath5k_ani_state*, %struct.ath5k_ani_state** %3, align 8
  %68 = getelementptr inbounds %struct.ath5k_ani_state, %struct.ath5k_ani_state* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %7, align 4
  %71 = call i32 (%struct.ath5k_hw*, i32, i8*, i32, i32, ...) @ATH5K_DBG_UNLIMIT(%struct.ath5k_hw* %61, i32 %62, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %65, i32 %66, i32 %69, i32 %70)
  %72 = load %struct.ath5k_ani_state*, %struct.ath5k_ani_state** %3, align 8
  %73 = getelementptr inbounds %struct.ath5k_ani_state, %struct.ath5k_ani_state* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* %5, align 4
  %76 = icmp sgt i32 %74, %75
  br i1 %76, label %83, label %77

77:                                               ; preds = %26
  %78 = load %struct.ath5k_ani_state*, %struct.ath5k_ani_state** %3, align 8
  %79 = getelementptr inbounds %struct.ath5k_ani_state, %struct.ath5k_ani_state* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %7, align 4
  %82 = icmp sgt i32 %80, %81
  br i1 %82, label %83, label %97

83:                                               ; preds = %77, %26
  %84 = load %struct.ath5k_ani_state*, %struct.ath5k_ani_state** %3, align 8
  %85 = getelementptr inbounds %struct.ath5k_ani_state, %struct.ath5k_ani_state* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* %5, align 4
  %88 = icmp sgt i32 %86, %87
  %89 = zext i1 %88 to i64
  %90 = select i1 %88, i32 1, i32 0
  store i32 %90, i32* %9, align 4
  %91 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %92 = load %struct.ath5k_ani_state*, %struct.ath5k_ani_state** %3, align 8
  %93 = load i32, i32* %9, align 4
  %94 = call i32 @ath5k_ani_raise_immunity(%struct.ath5k_hw* %91, %struct.ath5k_ani_state* %92, i32 %93)
  %95 = load %struct.ath5k_ani_state*, %struct.ath5k_ani_state** %3, align 8
  %96 = call i32 @ath5k_ani_period_restart(%struct.ath5k_ani_state* %95)
  br label %135

97:                                               ; preds = %77
  %98 = load %struct.ath5k_ani_state*, %struct.ath5k_ani_state** %3, align 8
  %99 = getelementptr inbounds %struct.ath5k_ani_state, %struct.ath5k_ani_state* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @ATH5K_ANI_LISTEN_PERIOD, align 4
  %102 = mul nsw i32 5, %101
  %103 = icmp sgt i32 %100, %102
  br i1 %103, label %104, label %134

104:                                              ; preds = %97
  %105 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %106 = load i32, i32* @ATH5K_DEBUG_ANI, align 4
  %107 = load %struct.ath5k_ani_state*, %struct.ath5k_ani_state** %3, align 8
  %108 = getelementptr inbounds %struct.ath5k_ani_state, %struct.ath5k_ani_state* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* %6, align 4
  %111 = load %struct.ath5k_ani_state*, %struct.ath5k_ani_state** %3, align 8
  %112 = getelementptr inbounds %struct.ath5k_ani_state, %struct.ath5k_ani_state* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* %8, align 4
  %115 = call i32 (%struct.ath5k_hw*, i32, i8*, i32, i32, ...) @ATH5K_DBG_UNLIMIT(%struct.ath5k_hw* %105, i32 %106, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %109, i32 %110, i32 %113, i32 %114)
  %116 = load %struct.ath5k_ani_state*, %struct.ath5k_ani_state** %3, align 8
  %117 = getelementptr inbounds %struct.ath5k_ani_state, %struct.ath5k_ani_state* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* %6, align 4
  %120 = icmp sle i32 %118, %119
  br i1 %120, label %121, label %131

121:                                              ; preds = %104
  %122 = load %struct.ath5k_ani_state*, %struct.ath5k_ani_state** %3, align 8
  %123 = getelementptr inbounds %struct.ath5k_ani_state, %struct.ath5k_ani_state* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* %8, align 4
  %126 = icmp sle i32 %124, %125
  br i1 %126, label %127, label %131

127:                                              ; preds = %121
  %128 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %129 = load %struct.ath5k_ani_state*, %struct.ath5k_ani_state** %3, align 8
  %130 = call i32 @ath5k_ani_lower_immunity(%struct.ath5k_hw* %128, %struct.ath5k_ani_state* %129)
  br label %131

131:                                              ; preds = %127, %121, %104
  %132 = load %struct.ath5k_ani_state*, %struct.ath5k_ani_state** %3, align 8
  %133 = call i32 @ath5k_ani_period_restart(%struct.ath5k_ani_state* %132)
  br label %134

134:                                              ; preds = %131, %97
  br label %135

135:                                              ; preds = %25, %134, %83
  ret void
}

declare dso_local i32 @ath5k_hw_ani_get_listen_time(%struct.ath5k_hw*, %struct.ath5k_ani_state*) #1

declare dso_local i32 @ath5k_ani_save_and_clear_phy_errors(%struct.ath5k_hw*, %struct.ath5k_ani_state*) #1

declare dso_local i32 @ATH5K_DBG_UNLIMIT(%struct.ath5k_hw*, i32, i8*, i32, i32, ...) #1

declare dso_local i32 @ath5k_ani_raise_immunity(%struct.ath5k_hw*, %struct.ath5k_ani_state*, i32) #1

declare dso_local i32 @ath5k_ani_period_restart(%struct.ath5k_ani_state*) #1

declare dso_local i32 @ath5k_ani_lower_immunity(%struct.ath5k_hw*, %struct.ath5k_ani_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
