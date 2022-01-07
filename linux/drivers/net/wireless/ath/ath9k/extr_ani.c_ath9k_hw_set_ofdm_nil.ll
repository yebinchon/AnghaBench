; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ani.c_ath9k_hw_set_ofdm_nil.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ani.c_ath9k_hw_set_ofdm_nil.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ani_ofdm_level_entry = type { i64, i64, i32 }
%struct.ani_cck_level_entry = type { i64 }
%struct.ath_hw = type { i64, %struct.TYPE_2__, %struct.ar5416AniState }
%struct.TYPE_2__ = type { i32, i32 }
%struct.ar5416AniState = type { i64, i64, i64, i64, i32 }
%struct.ath_common = type { i32 }

@ANI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"**** ofdmlevel %d=>%d, rssi=%d[lo=%d hi=%d]\0A\00", align 1
@ATH9K_ANI_RSSI_THR_LOW = common dso_local global i32 0, align 4
@ATH9K_ANI_RSSI_THR_HIGH = common dso_local global i64 0, align 8
@ATH9K_ANI_OFDM_DEF_LEVEL = common dso_local global i64 0, align 8
@ofdm_level_table = common dso_local global %struct.ani_ofdm_level_entry* null, align 8
@cck_level_table = common dso_local global %struct.ani_cck_level_entry* null, align 8
@ATH9K_ANI_SPUR_IMMUNITY_LEVEL = common dso_local global i32 0, align 4
@ATH9K_ANI_FIRSTEP_LEVEL = common dso_local global i32 0, align 4
@NL80211_IFTYPE_STATION = common dso_local global i64 0, align 8
@ATH9K_ANI_OFDM_WEAK_SIGNAL_DETECTION = common dso_local global i32 0, align 4
@ATH9K_ANI_OFDM_TRIG_HIGH = common dso_local global i32 0, align 4
@ATH9K_ANI_OFDM_TRIG_LOW_ABOVE_INI = common dso_local global i32 0, align 4
@ATH9K_ANI_OFDM_TRIG_HIGH_BELOW_INI = common dso_local global i32 0, align 4
@ATH9K_ANI_OFDM_TRIG_LOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hw*, i64, i32)* @ath9k_hw_set_ofdm_nil to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath9k_hw_set_ofdm_nil(%struct.ath_hw* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.ath_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ar5416AniState*, align 8
  %8 = alloca %struct.ath_common*, align 8
  %9 = alloca %struct.ani_ofdm_level_entry*, align 8
  %10 = alloca %struct.ani_cck_level_entry*, align 8
  %11 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %13 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %12, i32 0, i32 2
  store %struct.ar5416AniState* %13, %struct.ar5416AniState** %7, align 8
  %14 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %15 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %14)
  store %struct.ath_common* %15, %struct.ath_common** %8, align 8
  %16 = load %struct.ath_common*, %struct.ath_common** %8, align 8
  %17 = load i32, i32* @ANI, align 4
  %18 = load %struct.ar5416AniState*, %struct.ar5416AniState** %7, align 8
  %19 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* %5, align 8
  %22 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %23 = call i64 @BEACON_RSSI(%struct.ath_hw* %22)
  %24 = load i32, i32* @ATH9K_ANI_RSSI_THR_LOW, align 4
  %25 = load i64, i64* @ATH9K_ANI_RSSI_THR_HIGH, align 8
  %26 = call i32 @ath_dbg(%struct.ath_common* %16, i32 %17, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i64 %20, i64 %21, i64 %23, i32 %24, i64 %25)
  %27 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %28 = call i64 @AR_SREV_9100(%struct.ath_hw* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %3
  %31 = load i64, i64* %5, align 8
  %32 = load i64, i64* @ATH9K_ANI_OFDM_DEF_LEVEL, align 8
  %33 = icmp ult i64 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = load i64, i64* @ATH9K_ANI_OFDM_DEF_LEVEL, align 8
  store i64 %35, i64* %5, align 8
  br label %36

36:                                               ; preds = %34, %30, %3
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %36
  %40 = load i64, i64* %5, align 8
  %41 = load %struct.ar5416AniState*, %struct.ar5416AniState** %7, align 8
  %42 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %41, i32 0, i32 0
  store i64 %40, i64* %42, align 8
  br label %43

43:                                               ; preds = %39, %36
  %44 = load %struct.ani_ofdm_level_entry*, %struct.ani_ofdm_level_entry** @ofdm_level_table, align 8
  %45 = load %struct.ar5416AniState*, %struct.ar5416AniState** %7, align 8
  %46 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = getelementptr inbounds %struct.ani_ofdm_level_entry, %struct.ani_ofdm_level_entry* %44, i64 %47
  store %struct.ani_ofdm_level_entry* %48, %struct.ani_ofdm_level_entry** %9, align 8
  %49 = load %struct.ani_cck_level_entry*, %struct.ani_cck_level_entry** @cck_level_table, align 8
  %50 = load %struct.ar5416AniState*, %struct.ar5416AniState** %7, align 8
  %51 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds %struct.ani_cck_level_entry, %struct.ani_cck_level_entry* %49, i64 %52
  store %struct.ani_cck_level_entry* %53, %struct.ani_cck_level_entry** %10, align 8
  %54 = load %struct.ar5416AniState*, %struct.ar5416AniState** %7, align 8
  %55 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.ani_ofdm_level_entry*, %struct.ani_ofdm_level_entry** %9, align 8
  %58 = getelementptr inbounds %struct.ani_ofdm_level_entry, %struct.ani_ofdm_level_entry* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %56, %59
  br i1 %60, label %61, label %69

61:                                               ; preds = %43
  %62 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %63 = load i32, i32* @ATH9K_ANI_SPUR_IMMUNITY_LEVEL, align 4
  %64 = load %struct.ani_ofdm_level_entry*, %struct.ani_ofdm_level_entry** %9, align 8
  %65 = getelementptr inbounds %struct.ani_ofdm_level_entry, %struct.ani_ofdm_level_entry* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = trunc i64 %66 to i32
  %68 = call i32 @ath9k_hw_ani_control(%struct.ath_hw* %62, i32 %63, i32 %67)
  br label %69

69:                                               ; preds = %61, %43
  %70 = load %struct.ar5416AniState*, %struct.ar5416AniState** %7, align 8
  %71 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %70, i32 0, i32 3
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.ani_ofdm_level_entry*, %struct.ani_ofdm_level_entry** %9, align 8
  %74 = getelementptr inbounds %struct.ani_ofdm_level_entry, %struct.ani_ofdm_level_entry* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %72, %75
  br i1 %76, label %77, label %93

77:                                               ; preds = %69
  %78 = load %struct.ani_ofdm_level_entry*, %struct.ani_ofdm_level_entry** %9, align 8
  %79 = getelementptr inbounds %struct.ani_ofdm_level_entry, %struct.ani_ofdm_level_entry* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.ani_cck_level_entry*, %struct.ani_cck_level_entry** %10, align 8
  %82 = getelementptr inbounds %struct.ani_cck_level_entry, %struct.ani_cck_level_entry* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp sge i64 %80, %83
  br i1 %84, label %85, label %93

85:                                               ; preds = %77
  %86 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %87 = load i32, i32* @ATH9K_ANI_FIRSTEP_LEVEL, align 4
  %88 = load %struct.ani_ofdm_level_entry*, %struct.ani_ofdm_level_entry** %9, align 8
  %89 = getelementptr inbounds %struct.ani_ofdm_level_entry, %struct.ani_ofdm_level_entry* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = trunc i64 %90 to i32
  %92 = call i32 @ath9k_hw_ani_control(%struct.ath_hw* %86, i32 %87, i32 %91)
  br label %93

93:                                               ; preds = %85, %77, %69
  %94 = load %struct.ani_ofdm_level_entry*, %struct.ani_ofdm_level_entry** %9, align 8
  %95 = getelementptr inbounds %struct.ani_ofdm_level_entry, %struct.ani_ofdm_level_entry* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  store i32 %96, i32* %11, align 4
  %97 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %98 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %108

102:                                              ; preds = %93
  %103 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %104 = call i64 @BEACON_RSSI(%struct.ath_hw* %103)
  %105 = load i64, i64* @ATH9K_ANI_RSSI_THR_HIGH, align 8
  %106 = icmp sle i64 %104, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %102
  store i32 1, i32* %11, align 4
  br label %131

108:                                              ; preds = %102, %93
  %109 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %110 = call i64 @AR_SREV_9300_20_OR_LATER(%struct.ath_hw* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %119

112:                                              ; preds = %108
  %113 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %114 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %117 = icmp ne i64 %115, %116
  br i1 %117, label %118, label %119

118:                                              ; preds = %112
  store i32 1, i32* %11, align 4
  br label %130

119:                                              ; preds = %112, %108
  %120 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %121 = call i64 @AR_SREV_9300_20_OR_LATER(%struct.ath_hw* %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %129, label %123

123:                                              ; preds = %119
  %124 = load %struct.ar5416AniState*, %struct.ar5416AniState** %7, align 8
  %125 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = icmp uge i64 %126, 8
  br i1 %127, label %128, label %129

128:                                              ; preds = %123
  store i32 0, i32* %11, align 4
  br label %129

129:                                              ; preds = %128, %123, %119
  br label %130

130:                                              ; preds = %129, %118
  br label %131

131:                                              ; preds = %130, %107
  %132 = load %struct.ar5416AniState*, %struct.ar5416AniState** %7, align 8
  %133 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %132, i32 0, i32 4
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* %11, align 4
  %136 = icmp ne i32 %134, %135
  br i1 %136, label %137, label %142

137:                                              ; preds = %131
  %138 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %139 = load i32, i32* @ATH9K_ANI_OFDM_WEAK_SIGNAL_DETECTION, align 4
  %140 = load i32, i32* %11, align 4
  %141 = call i32 @ath9k_hw_ani_control(%struct.ath_hw* %138, i32 %139, i32 %140)
  br label %142

142:                                              ; preds = %137, %131
  %143 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %144 = call i64 @AR_SREV_9300_20_OR_LATER(%struct.ath_hw* %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %147, label %146

146:                                              ; preds = %142
  br label %171

147:                                              ; preds = %142
  %148 = load %struct.ar5416AniState*, %struct.ar5416AniState** %7, align 8
  %149 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* @ATH9K_ANI_OFDM_DEF_LEVEL, align 8
  %152 = icmp uge i64 %150, %151
  br i1 %152, label %153, label %162

153:                                              ; preds = %147
  %154 = load i32, i32* @ATH9K_ANI_OFDM_TRIG_HIGH, align 4
  %155 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %156 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %156, i32 0, i32 1
  store i32 %154, i32* %157, align 4
  %158 = load i32, i32* @ATH9K_ANI_OFDM_TRIG_LOW_ABOVE_INI, align 4
  %159 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %160 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %160, i32 0, i32 0
  store i32 %158, i32* %161, align 8
  br label %171

162:                                              ; preds = %147
  %163 = load i32, i32* @ATH9K_ANI_OFDM_TRIG_HIGH_BELOW_INI, align 4
  %164 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %165 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %165, i32 0, i32 1
  store i32 %163, i32* %166, align 4
  %167 = load i32, i32* @ATH9K_ANI_OFDM_TRIG_LOW, align 4
  %168 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %169 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %168, i32 0, i32 1
  %170 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %169, i32 0, i32 0
  store i32 %167, i32* %170, align 8
  br label %171

171:                                              ; preds = %146, %162, %153
  ret void
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*, i64, i64, i64, i32, i64) #1

declare dso_local i64 @BEACON_RSSI(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9100(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_hw_ani_control(%struct.ath_hw*, i32, i32) #1

declare dso_local i64 @AR_SREV_9300_20_OR_LATER(%struct.ath_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
