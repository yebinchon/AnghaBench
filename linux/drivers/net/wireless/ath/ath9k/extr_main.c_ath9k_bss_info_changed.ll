; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_main.c_ath9k_bss_info_changed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_main.c_ath9k_bss_info_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.ath_softc* }
%struct.ath_softc = type { i64, i32, %struct.TYPE_2__, %struct.ath_hw* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.ath_hw = type { i32 }
%struct.ieee80211_vif = type { i64, i32, i64 }
%struct.ieee80211_bss_conf = type { i32, i32, i64, i32, i32, i32 }
%struct.ath_common = type { i32, i32 }
%struct.ath_vif = type { i64, i32, i32, i32 }

@BSS_CHANGED_ASSOC = common dso_local global i32 0, align 4
@CONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"BSSID %pM Changed ASSOC %d\0A\00", align 1
@ETH_ALEN = common dso_local global i32 0, align 4
@BSS_CHANGED_IBSS = common dso_local global i32 0, align 4
@BSS_CHANGED_OCB = common dso_local global i32 0, align 4
@BSS_CHANGED_BEACON_ENABLED = common dso_local global i32 0, align 4
@BSS_CHANGED_BEACON_INT = common dso_local global i32 0, align 4
@BSS_CHANGED_BEACON_INFO = common dso_local global i32 0, align 4
@BSS_CHANGED_ERP_SLOT = common dso_local global i32 0, align 4
@NL80211_IFTYPE_AP = common dso_local global i64 0, align 8
@UPDATE = common dso_local global i32 0, align 4
@BSS_CHANGED_P2P_PS = common dso_local global i32 0, align 4
@BSS_CHANGED_TXPOWER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"vif %pM power %d dbm power_type %d\0A\00", align 1
@CHECK_ANI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, %struct.ieee80211_vif*, %struct.ieee80211_bss_conf*, i32)* @ath9k_bss_info_changed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath9k_bss_info_changed(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, %struct.ieee80211_bss_conf* %2, i32 %3) #0 {
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca %struct.ieee80211_bss_conf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ath_softc*, align 8
  %10 = alloca %struct.ath_hw*, align 8
  %11 = alloca %struct.ath_common*, align 8
  %12 = alloca %struct.ath_vif*, align 8
  %13 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %6, align 8
  store %struct.ieee80211_bss_conf* %2, %struct.ieee80211_bss_conf** %7, align 8
  store i32 %3, i32* %8, align 4
  %14 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %15 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %14, i32 0, i32 0
  %16 = load %struct.ath_softc*, %struct.ath_softc** %15, align 8
  store %struct.ath_softc* %16, %struct.ath_softc** %9, align 8
  %17 = load %struct.ath_softc*, %struct.ath_softc** %9, align 8
  %18 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %17, i32 0, i32 3
  %19 = load %struct.ath_hw*, %struct.ath_hw** %18, align 8
  store %struct.ath_hw* %19, %struct.ath_hw** %10, align 8
  %20 = load %struct.ath_hw*, %struct.ath_hw** %10, align 8
  %21 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %20)
  store %struct.ath_common* %21, %struct.ath_common** %11, align 8
  %22 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %23 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to i8*
  %26 = bitcast i8* %25 to %struct.ath_vif*
  store %struct.ath_vif* %26, %struct.ath_vif** %12, align 8
  %27 = load %struct.ath_softc*, %struct.ath_softc** %9, align 8
  %28 = call i32 @ath9k_ps_wakeup(%struct.ath_softc* %27)
  %29 = load %struct.ath_softc*, %struct.ath_softc** %9, align 8
  %30 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %29, i32 0, i32 1
  %31 = call i32 @mutex_lock(i32* %30)
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @BSS_CHANGED_ASSOC, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %69

36:                                               ; preds = %4
  %37 = load %struct.ath_common*, %struct.ath_common** %11, align 8
  %38 = load i32, i32* @CONFIG, align 4
  %39 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %40 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %43 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %42, i32 0, i32 5
  %44 = load i32, i32* %43, align 8
  %45 = call i32 (%struct.ath_common*, i32, i8*, i32, i32, ...) @ath_dbg(%struct.ath_common* %37, i32 %38, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %41, i32 %44)
  %46 = load %struct.ath_vif*, %struct.ath_vif** %12, align 8
  %47 = getelementptr inbounds %struct.ath_vif, %struct.ath_vif* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %50 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @ETH_ALEN, align 4
  %53 = call i32 @memcpy(i32 %48, i32 %51, i32 %52)
  %54 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %55 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.ath_vif*, %struct.ath_vif** %12, align 8
  %58 = getelementptr inbounds %struct.ath_vif, %struct.ath_vif* %57, i32 0, i32 2
  store i32 %56, i32* %58, align 4
  %59 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %60 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %59, i32 0, i32 5
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.ath_vif*, %struct.ath_vif** %12, align 8
  %63 = getelementptr inbounds %struct.ath_vif, %struct.ath_vif* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 8
  %64 = load %struct.ath_softc*, %struct.ath_softc** %9, align 8
  %65 = load %struct.ath_vif*, %struct.ath_vif** %12, align 8
  %66 = getelementptr inbounds %struct.ath_vif, %struct.ath_vif* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = call i32 @ath9k_calculate_summary_state(%struct.ath_softc* %64, i64 %67)
  br label %69

69:                                               ; preds = %36, %4
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* @BSS_CHANGED_IBSS, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %79, label %74

74:                                               ; preds = %69
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* @BSS_CHANGED_OCB, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %97

79:                                               ; preds = %74, %69
  %80 = load %struct.ath_common*, %struct.ath_common** %11, align 8
  %81 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %84 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @ETH_ALEN, align 4
  %87 = call i32 @memcpy(i32 %82, i32 %85, i32 %86)
  %88 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %89 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.ath_common*, %struct.ath_common** %11, align 8
  %92 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 4
  %93 = load %struct.ath_softc*, %struct.ath_softc** %9, align 8
  %94 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %93, i32 0, i32 3
  %95 = load %struct.ath_hw*, %struct.ath_hw** %94, align 8
  %96 = call i32 @ath9k_hw_write_associd(%struct.ath_hw* %95)
  br label %97

97:                                               ; preds = %79, %74
  %98 = load i32, i32* %8, align 4
  %99 = load i32, i32* @BSS_CHANGED_BEACON_ENABLED, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %112, label %102

102:                                              ; preds = %97
  %103 = load i32, i32* %8, align 4
  %104 = load i32, i32* @BSS_CHANGED_BEACON_INT, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %112, label %107

107:                                              ; preds = %102
  %108 = load i32, i32* %8, align 4
  %109 = load i32, i32* @BSS_CHANGED_BEACON_INFO, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %118

112:                                              ; preds = %107, %102, %97
  %113 = load %struct.ath_softc*, %struct.ath_softc** %9, align 8
  %114 = load %struct.ath_vif*, %struct.ath_vif** %12, align 8
  %115 = getelementptr inbounds %struct.ath_vif, %struct.ath_vif* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = call i32 @ath9k_calculate_summary_state(%struct.ath_softc* %113, i64 %116)
  br label %118

118:                                              ; preds = %112, %107
  %119 = load %struct.ath_vif*, %struct.ath_vif** %12, align 8
  %120 = getelementptr inbounds %struct.ath_vif, %struct.ath_vif* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load %struct.ath_softc*, %struct.ath_softc** %9, align 8
  %123 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = icmp eq i64 %121, %124
  br i1 %125, label %126, label %160

126:                                              ; preds = %118
  %127 = load i32, i32* %8, align 4
  %128 = load i32, i32* @BSS_CHANGED_ERP_SLOT, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %160

131:                                              ; preds = %126
  %132 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %133 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %132, i32 0, i32 2
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %131
  store i32 9, i32* %13, align 4
  br label %138

137:                                              ; preds = %131
  store i32 20, i32* %13, align 4
  br label %138

138:                                              ; preds = %137, %136
  %139 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %140 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* @NL80211_IFTYPE_AP, align 8
  %143 = icmp eq i64 %141, %142
  br i1 %143, label %144, label %153

144:                                              ; preds = %138
  %145 = load i32, i32* %13, align 4
  %146 = load %struct.ath_softc*, %struct.ath_softc** %9, align 8
  %147 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %146, i32 0, i32 2
  %148 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %147, i32 0, i32 0
  store i32 %145, i32* %148, align 4
  %149 = load i32, i32* @UPDATE, align 4
  %150 = load %struct.ath_softc*, %struct.ath_softc** %9, align 8
  %151 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %150, i32 0, i32 2
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %151, i32 0, i32 1
  store i32 %149, i32* %152, align 4
  br label %159

153:                                              ; preds = %138
  %154 = load i32, i32* %13, align 4
  %155 = load %struct.ath_hw*, %struct.ath_hw** %10, align 8
  %156 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %155, i32 0, i32 0
  store i32 %154, i32* %156, align 4
  %157 = load %struct.ath_hw*, %struct.ath_hw** %10, align 8
  %158 = call i32 @ath9k_hw_init_global_settings(%struct.ath_hw* %157)
  br label %159

159:                                              ; preds = %153, %144
  br label %160

160:                                              ; preds = %159, %126, %118
  %161 = load i32, i32* %8, align 4
  %162 = load i32, i32* @BSS_CHANGED_P2P_PS, align 4
  %163 = and i32 %161, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %169

165:                                              ; preds = %160
  %166 = load %struct.ath_softc*, %struct.ath_softc** %9, align 8
  %167 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %168 = call i32 @ath9k_p2p_bss_info_changed(%struct.ath_softc* %166, %struct.ieee80211_vif* %167)
  br label %169

169:                                              ; preds = %165, %160
  %170 = load i32, i32* %8, align 4
  %171 = load i32, i32* @BSS_CHANGED_ASSOC, align 4
  %172 = load i32, i32* @BSS_CHANGED_IBSS, align 4
  %173 = or i32 %171, %172
  %174 = load i32, i32* @BSS_CHANGED_BEACON_ENABLED, align 4
  %175 = or i32 %173, %174
  %176 = and i32 %170, %175
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %181

178:                                              ; preds = %169
  %179 = load %struct.ath_softc*, %struct.ath_softc** %9, align 8
  %180 = call i32 @ath_check_ani(%struct.ath_softc* %179)
  br label %181

181:                                              ; preds = %178, %169
  %182 = load i32, i32* %8, align 4
  %183 = load i32, i32* @BSS_CHANGED_TXPOWER, align 4
  %184 = and i32 %182, %183
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %202

186:                                              ; preds = %181
  %187 = load %struct.ath_common*, %struct.ath_common** %11, align 8
  %188 = load i32, i32* @CONFIG, align 4
  %189 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %190 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 8
  %192 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %193 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %196 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = call i32 (%struct.ath_common*, i32, i8*, i32, i32, ...) @ath_dbg(%struct.ath_common* %187, i32 %188, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %191, i32 %194, i32 %197)
  %199 = load %struct.ath_softc*, %struct.ath_softc** %9, align 8
  %200 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %201 = call i32 @ath9k_set_txpower(%struct.ath_softc* %199, %struct.ieee80211_vif* %200)
  br label %202

202:                                              ; preds = %186, %181
  %203 = load %struct.ath_softc*, %struct.ath_softc** %9, align 8
  %204 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %203, i32 0, i32 1
  %205 = call i32 @mutex_unlock(i32* %204)
  %206 = load %struct.ath_softc*, %struct.ath_softc** %9, align 8
  %207 = call i32 @ath9k_ps_restore(%struct.ath_softc* %206)
  ret void
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_ps_wakeup(%struct.ath_softc*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*, i32, i32, ...) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @ath9k_calculate_summary_state(%struct.ath_softc*, i64) #1

declare dso_local i32 @ath9k_hw_write_associd(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_hw_init_global_settings(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_p2p_bss_info_changed(%struct.ath_softc*, %struct.ieee80211_vif*) #1

declare dso_local i32 @ath_check_ani(%struct.ath_softc*) #1

declare dso_local i32 @ath9k_set_txpower(%struct.ath_softc*, %struct.ieee80211_vif*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @ath9k_ps_restore(%struct.ath_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
