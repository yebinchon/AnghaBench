; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_mac80211-ops.c_ath5k_bss_info_changed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_mac80211-ops.c_ath5k_bss_info_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.ath5k_hw* }
%struct.ath5k_hw = type { i32, i64, i32, i32, i32, i64, i32, i32 }
%struct.ieee80211_vif = type { i64 }
%struct.ieee80211_bss_conf = type { i32, i64, i64, i32, i32, i32 }
%struct.ath5k_vif = type { i64 }
%struct.ath_common = type { i64, i32 }

@BSS_CHANGED_BSSID = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@BSS_CHANGED_BEACON_INT = common dso_local global i32 0, align 4
@BSS_CHANGED_ERP_SLOT = common dso_local global i32 0, align 4
@BSS_CHANGED_ASSOC = common dso_local global i32 0, align 4
@NL80211_IFTYPE_STATION = common dso_local global i64 0, align 8
@AR5K_LED_ASSOC = common dso_local global i32 0, align 4
@AR5K_LED_INIT = common dso_local global i32 0, align 4
@ATH5K_DEBUG_ANY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Bss Info ASSOC %d, bssid: %pM\0A\00", align 1
@BSS_CHANGED_BEACON = common dso_local global i32 0, align 4
@BSS_CHANGED_BEACON_ENABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, %struct.ieee80211_vif*, %struct.ieee80211_bss_conf*, i32)* @ath5k_bss_info_changed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath5k_bss_info_changed(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, %struct.ieee80211_bss_conf* %2, i32 %3) #0 {
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca %struct.ieee80211_bss_conf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ath5k_vif*, align 8
  %10 = alloca %struct.ath5k_hw*, align 8
  %11 = alloca %struct.ath_common*, align 8
  %12 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %6, align 8
  store %struct.ieee80211_bss_conf* %2, %struct.ieee80211_bss_conf** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %14 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to i8*
  %17 = bitcast i8* %16 to %struct.ath5k_vif*
  store %struct.ath5k_vif* %17, %struct.ath5k_vif** %9, align 8
  %18 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %19 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %18, i32 0, i32 0
  %20 = load %struct.ath5k_hw*, %struct.ath5k_hw** %19, align 8
  store %struct.ath5k_hw* %20, %struct.ath5k_hw** %10, align 8
  %21 = load %struct.ath5k_hw*, %struct.ath5k_hw** %10, align 8
  %22 = call %struct.ath_common* @ath5k_hw_common(%struct.ath5k_hw* %21)
  store %struct.ath_common* %22, %struct.ath_common** %11, align 8
  %23 = load %struct.ath5k_hw*, %struct.ath5k_hw** %10, align 8
  %24 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %23, i32 0, i32 2
  %25 = call i32 @mutex_lock(i32* %24)
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @BSS_CHANGED_BSSID, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %43

30:                                               ; preds = %4
  %31 = load %struct.ath_common*, %struct.ath_common** %11, align 8
  %32 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %35 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %34, i32 0, i32 5
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @ETH_ALEN, align 4
  %38 = call i32 @memcpy(i32 %33, i32 %36, i32 %37)
  %39 = load %struct.ath_common*, %struct.ath_common** %11, align 8
  %40 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %39, i32 0, i32 0
  store i64 0, i64* %40, align 8
  %41 = load %struct.ath5k_hw*, %struct.ath5k_hw** %10, align 8
  %42 = call i32 @ath5k_hw_set_bssid(%struct.ath5k_hw* %41)
  br label %43

43:                                               ; preds = %30, %4
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* @BSS_CHANGED_BEACON_INT, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %43
  %49 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %50 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.ath5k_hw*, %struct.ath5k_hw** %10, align 8
  %53 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %52, i32 0, i32 7
  store i32 %51, i32* %53, align 4
  br label %54

54:                                               ; preds = %48, %43
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* @BSS_CHANGED_ERP_SLOT, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %75

59:                                               ; preds = %54
  %60 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %61 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.ath5k_hw*, %struct.ath5k_hw** %10, align 8
  %64 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %63, i32 0, i32 6
  store i32 %62, i32* %64, align 8
  %65 = load %struct.ath5k_hw*, %struct.ath5k_hw** %10, align 8
  %66 = call i32 @ath5k_hw_get_default_slottime(%struct.ath5k_hw* %65)
  %67 = load %struct.ath5k_hw*, %struct.ath5k_hw** %10, align 8
  %68 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = mul nsw i32 3, %69
  %71 = add nsw i32 %66, %70
  store i32 %71, i32* %12, align 4
  %72 = load %struct.ath5k_hw*, %struct.ath5k_hw** %10, align 8
  %73 = load i32, i32* %12, align 4
  %74 = call i32 @ath5k_hw_set_ifs_intervals(%struct.ath5k_hw* %72, i32 %73)
  br label %75

75:                                               ; preds = %59, %54
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* @BSS_CHANGED_ASSOC, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %148

80:                                               ; preds = %75
  %81 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %82 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.ath5k_vif*, %struct.ath5k_vif** %9, align 8
  %85 = getelementptr inbounds %struct.ath5k_vif, %struct.ath5k_vif* %84, i32 0, i32 0
  store i64 %83, i64* %85, align 8
  %86 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %87 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %80
  %91 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %92 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.ath5k_hw*, %struct.ath5k_hw** %10, align 8
  %95 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %94, i32 0, i32 5
  store i64 %93, i64* %95, align 8
  br label %101

96:                                               ; preds = %80
  %97 = load %struct.ath5k_hw*, %struct.ath5k_hw** %10, align 8
  %98 = call i64 @ath5k_any_vif_assoc(%struct.ath5k_hw* %97)
  %99 = load %struct.ath5k_hw*, %struct.ath5k_hw** %10, align 8
  %100 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %99, i32 0, i32 5
  store i64 %98, i64* %100, align 8
  br label %101

101:                                              ; preds = %96, %90
  %102 = load %struct.ath5k_hw*, %struct.ath5k_hw** %10, align 8
  %103 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %113

107:                                              ; preds = %101
  %108 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %109 = load %struct.ath5k_hw*, %struct.ath5k_hw** %10, align 8
  %110 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %109, i32 0, i32 5
  %111 = load i64, i64* %110, align 8
  %112 = call i32 @ath5k_set_beacon_filter(%struct.ieee80211_hw* %108, i64 %111)
  br label %113

113:                                              ; preds = %107, %101
  %114 = load %struct.ath5k_hw*, %struct.ath5k_hw** %10, align 8
  %115 = load %struct.ath5k_hw*, %struct.ath5k_hw** %10, align 8
  %116 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %115, i32 0, i32 5
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %113
  %120 = load i32, i32* @AR5K_LED_ASSOC, align 4
  br label %123

121:                                              ; preds = %113
  %122 = load i32, i32* @AR5K_LED_INIT, align 4
  br label %123

123:                                              ; preds = %121, %119
  %124 = phi i32 [ %120, %119 ], [ %122, %121 ]
  %125 = call i32 @ath5k_hw_set_ledstate(%struct.ath5k_hw* %114, i32 %124)
  %126 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %127 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %126, i32 0, i32 2
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %147

130:                                              ; preds = %123
  %131 = load %struct.ath5k_hw*, %struct.ath5k_hw** %10, align 8
  %132 = load i32, i32* @ATH5K_DEBUG_ANY, align 4
  %133 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %134 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = load %struct.ath_common*, %struct.ath_common** %11, align 8
  %137 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @ATH5K_DBG(%struct.ath5k_hw* %131, i32 %132, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %135, i32 %138)
  %140 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %141 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %140, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = load %struct.ath_common*, %struct.ath_common** %11, align 8
  %144 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %143, i32 0, i32 0
  store i64 %142, i64* %144, align 8
  %145 = load %struct.ath5k_hw*, %struct.ath5k_hw** %10, align 8
  %146 = call i32 @ath5k_hw_set_bssid(%struct.ath5k_hw* %145)
  br label %147

147:                                              ; preds = %130, %123
  br label %148

148:                                              ; preds = %147, %75
  %149 = load i32, i32* %8, align 4
  %150 = load i32, i32* @BSS_CHANGED_BEACON, align 4
  %151 = and i32 %149, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %163

153:                                              ; preds = %148
  %154 = load %struct.ath5k_hw*, %struct.ath5k_hw** %10, align 8
  %155 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %154, i32 0, i32 4
  %156 = call i32 @spin_lock_bh(i32* %155)
  %157 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %158 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %159 = call i32 @ath5k_beacon_update(%struct.ieee80211_hw* %157, %struct.ieee80211_vif* %158)
  %160 = load %struct.ath5k_hw*, %struct.ath5k_hw** %10, align 8
  %161 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %160, i32 0, i32 4
  %162 = call i32 @spin_unlock_bh(i32* %161)
  br label %163

163:                                              ; preds = %153, %148
  %164 = load i32, i32* %8, align 4
  %165 = load i32, i32* @BSS_CHANGED_BEACON_ENABLED, align 4
  %166 = and i32 %164, %165
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %174

168:                                              ; preds = %163
  %169 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %170 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = load %struct.ath5k_hw*, %struct.ath5k_hw** %10, align 8
  %173 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %172, i32 0, i32 3
  store i32 %171, i32* %173, align 4
  br label %174

174:                                              ; preds = %168, %163
  %175 = load i32, i32* %8, align 4
  %176 = load i32, i32* @BSS_CHANGED_BEACON, align 4
  %177 = load i32, i32* @BSS_CHANGED_BEACON_ENABLED, align 4
  %178 = or i32 %176, %177
  %179 = load i32, i32* @BSS_CHANGED_BEACON_INT, align 4
  %180 = or i32 %178, %179
  %181 = and i32 %175, %180
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %186

183:                                              ; preds = %174
  %184 = load %struct.ath5k_hw*, %struct.ath5k_hw** %10, align 8
  %185 = call i32 @ath5k_beacon_config(%struct.ath5k_hw* %184)
  br label %186

186:                                              ; preds = %183, %174
  %187 = load %struct.ath5k_hw*, %struct.ath5k_hw** %10, align 8
  %188 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %187, i32 0, i32 2
  %189 = call i32 @mutex_unlock(i32* %188)
  ret void
}

declare dso_local %struct.ath_common* @ath5k_hw_common(%struct.ath5k_hw*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @ath5k_hw_set_bssid(%struct.ath5k_hw*) #1

declare dso_local i32 @ath5k_hw_get_default_slottime(%struct.ath5k_hw*) #1

declare dso_local i32 @ath5k_hw_set_ifs_intervals(%struct.ath5k_hw*, i32) #1

declare dso_local i64 @ath5k_any_vif_assoc(%struct.ath5k_hw*) #1

declare dso_local i32 @ath5k_set_beacon_filter(%struct.ieee80211_hw*, i64) #1

declare dso_local i32 @ath5k_hw_set_ledstate(%struct.ath5k_hw*, i32) #1

declare dso_local i32 @ATH5K_DBG(%struct.ath5k_hw*, i32, i8*, i64, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @ath5k_beacon_update(%struct.ieee80211_hw*, %struct.ieee80211_vif*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @ath5k_beacon_config(%struct.ath5k_hw*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
