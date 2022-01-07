; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_scan.c_iwl_mvm_scan_umac_flags.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_scan.c_iwl_mvm_scan_umac_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i64, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.iwl_mvm_scan_params = type { i32, i32, i32, i64, i64, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.ieee80211_vif = type { i64 }

@IWL_UMAC_SCAN_GEN_FLAGS_PASSIVE = common dso_local global i32 0, align 4
@IWL_UMAC_SCAN_GEN_FLAGS_PRE_CONNECT = common dso_local global i32 0, align 4
@IWL_UMAC_SCAN_GEN_FLAGS_FRAGMENTED = common dso_local global i32 0, align 4
@IWL_UMAC_SCAN_GEN_FLAGS_LMAC2_FRAGMENTED = common dso_local global i32 0, align 4
@IWL_UCODE_TLV_CAPA_WFA_TPC_REP_IE_SUPPORT = common dso_local global i32 0, align 4
@IWL_UMAC_SCAN_GEN_FLAGS_RRM_ENABLED = common dso_local global i32 0, align 4
@IWL_UMAC_SCAN_GEN_FLAGS_PASS_ALL = common dso_local global i32 0, align 4
@IWL_UMAC_SCAN_GEN_FLAGS_MATCH = common dso_local global i32 0, align 4
@IWL_UMAC_SCAN_GEN_FLAGS_PERIODIC = common dso_local global i32 0, align 4
@IWL_UMAC_SCAN_GEN_FLAGS_ITER_COMPLETE = common dso_local global i32 0, align 4
@SCHED_SCAN_PASS_ALL_ENABLED = common dso_local global i64 0, align 8
@IWL_MVM_ADWELL_ENABLE = common dso_local global i64 0, align 8
@NL80211_IFTYPE_P2P_DEVICE = common dso_local global i64 0, align 8
@IWL_UMAC_SCAN_GEN_FLAGS_ADAPTIVE_DWELL = common dso_local global i32 0, align 4
@IWL_UMAC_SCAN_GEN_FLAGS_EXTENDED_DWELL = common dso_local global i32 0, align 4
@NL80211_SCAN_FLAG_OCE_PROBE_REQ_HIGH_TX_RATE = common dso_local global i32 0, align 4
@IWL_UMAC_SCAN_GEN_FLAGS_PROB_REQ_HIGH_TX_RATE = common dso_local global i32 0, align 4
@NL80211_SCAN_FLAG_OCE_PROBE_REQ_DEFERRAL_SUPPRESSION = common dso_local global i32 0, align 4
@IWL_UMAC_SCAN_GEN_FLAGS_PROB_REQ_DEFER_SUPP = common dso_local global i32 0, align 4
@NL80211_SCAN_FLAG_FILS_MAX_CHANNEL_TIME = common dso_local global i32 0, align 4
@IWL_UMAC_SCAN_GEN_FLAGS_MAX_CHNL_TIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_mvm*, %struct.iwl_mvm_scan_params*, %struct.ieee80211_vif*)* @iwl_mvm_scan_umac_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_mvm_scan_umac_flags(%struct.iwl_mvm* %0, %struct.iwl_mvm_scan_params* %1, %struct.ieee80211_vif* %2) #0 {
  %4 = alloca %struct.iwl_mvm*, align 8
  %5 = alloca %struct.iwl_mvm_scan_params*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %4, align 8
  store %struct.iwl_mvm_scan_params* %1, %struct.iwl_mvm_scan_params** %5, align 8
  store %struct.ieee80211_vif* %2, %struct.ieee80211_vif** %6, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.iwl_mvm_scan_params*, %struct.iwl_mvm_scan_params** %5, align 8
  %9 = getelementptr inbounds %struct.iwl_mvm_scan_params, %struct.iwl_mvm_scan_params* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = load i32, i32* @IWL_UMAC_SCAN_GEN_FLAGS_PASSIVE, align 4
  store i32 %13, i32* %7, align 4
  br label %14

14:                                               ; preds = %12, %3
  %15 = load %struct.iwl_mvm_scan_params*, %struct.iwl_mvm_scan_params** %5, align 8
  %16 = getelementptr inbounds %struct.iwl_mvm_scan_params, %struct.iwl_mvm_scan_params* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %31

19:                                               ; preds = %14
  %20 = load %struct.iwl_mvm_scan_params*, %struct.iwl_mvm_scan_params** %5, align 8
  %21 = getelementptr inbounds %struct.iwl_mvm_scan_params, %struct.iwl_mvm_scan_params* %20, i32 0, i32 6
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i64 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %19
  %28 = load i32, i32* @IWL_UMAC_SCAN_GEN_FLAGS_PRE_CONNECT, align 4
  %29 = load i32, i32* %7, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %7, align 4
  br label %31

31:                                               ; preds = %27, %19, %14
  %32 = load %struct.iwl_mvm_scan_params*, %struct.iwl_mvm_scan_params** %5, align 8
  %33 = getelementptr inbounds %struct.iwl_mvm_scan_params, %struct.iwl_mvm_scan_params* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = call i64 @iwl_mvm_is_scan_fragmented(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %31
  %38 = load i32, i32* @IWL_UMAC_SCAN_GEN_FLAGS_FRAGMENTED, align 4
  %39 = load i32, i32* %7, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %7, align 4
  br label %41

41:                                               ; preds = %37, %31
  %42 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %43 = call i64 @iwl_mvm_is_cdb_supported(%struct.iwl_mvm* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %55

45:                                               ; preds = %41
  %46 = load %struct.iwl_mvm_scan_params*, %struct.iwl_mvm_scan_params** %5, align 8
  %47 = getelementptr inbounds %struct.iwl_mvm_scan_params, %struct.iwl_mvm_scan_params* %46, i32 0, i32 5
  %48 = load i32, i32* %47, align 8
  %49 = call i64 @iwl_mvm_is_scan_fragmented(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %45
  %52 = load i32, i32* @IWL_UMAC_SCAN_GEN_FLAGS_LMAC2_FRAGMENTED, align 4
  %53 = load i32, i32* %7, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %7, align 4
  br label %55

55:                                               ; preds = %51, %45, %41
  %56 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %57 = call i64 @iwl_mvm_rrm_scan_needed(%struct.iwl_mvm* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %71

59:                                               ; preds = %55
  %60 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %61 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %60, i32 0, i32 2
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i32, i32* @IWL_UCODE_TLV_CAPA_WFA_TPC_REP_IE_SUPPORT, align 4
  %65 = call i64 @fw_has_capa(i32* %63, i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %59
  %68 = load i32, i32* @IWL_UMAC_SCAN_GEN_FLAGS_RRM_ENABLED, align 4
  %69 = load i32, i32* %7, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %7, align 4
  br label %71

71:                                               ; preds = %67, %59, %55
  %72 = load %struct.iwl_mvm_scan_params*, %struct.iwl_mvm_scan_params** %5, align 8
  %73 = getelementptr inbounds %struct.iwl_mvm_scan_params, %struct.iwl_mvm_scan_params* %72, i32 0, i32 4
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %71
  %77 = load i32, i32* @IWL_UMAC_SCAN_GEN_FLAGS_PASS_ALL, align 4
  %78 = load i32, i32* %7, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %7, align 4
  br label %84

80:                                               ; preds = %71
  %81 = load i32, i32* @IWL_UMAC_SCAN_GEN_FLAGS_MATCH, align 4
  %82 = load i32, i32* %7, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %7, align 4
  br label %84

84:                                               ; preds = %80, %76
  %85 = load %struct.iwl_mvm_scan_params*, %struct.iwl_mvm_scan_params** %5, align 8
  %86 = call i64 @iwl_mvm_is_regular_scan(%struct.iwl_mvm_scan_params* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %92, label %88

88:                                               ; preds = %84
  %89 = load i32, i32* @IWL_UMAC_SCAN_GEN_FLAGS_PERIODIC, align 4
  %90 = load i32, i32* %7, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %7, align 4
  br label %92

92:                                               ; preds = %88, %84
  %93 = load %struct.iwl_mvm_scan_params*, %struct.iwl_mvm_scan_params** %5, align 8
  %94 = getelementptr inbounds %struct.iwl_mvm_scan_params, %struct.iwl_mvm_scan_params* %93, i32 0, i32 3
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %92
  %98 = load i32, i32* @IWL_UMAC_SCAN_GEN_FLAGS_ITER_COMPLETE, align 4
  %99 = load i32, i32* %7, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %7, align 4
  br label %101

101:                                              ; preds = %97, %92
  %102 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %103 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @SCHED_SCAN_PASS_ALL_ENABLED, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %111

107:                                              ; preds = %101
  %108 = load i32, i32* @IWL_UMAC_SCAN_GEN_FLAGS_ITER_COMPLETE, align 4
  %109 = load i32, i32* %7, align 4
  %110 = or i32 %109, %108
  store i32 %110, i32* %7, align 4
  br label %111

111:                                              ; preds = %107, %101
  %112 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %113 = call i64 @iwl_mvm_is_adaptive_dwell_supported(%struct.iwl_mvm* %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %128

115:                                              ; preds = %111
  %116 = load i64, i64* @IWL_MVM_ADWELL_ENABLE, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %128

118:                                              ; preds = %115
  %119 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %120 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @NL80211_IFTYPE_P2P_DEVICE, align 8
  %123 = icmp ne i64 %121, %122
  br i1 %123, label %124, label %128

124:                                              ; preds = %118
  %125 = load i32, i32* @IWL_UMAC_SCAN_GEN_FLAGS_ADAPTIVE_DWELL, align 4
  %126 = load i32, i32* %7, align 4
  %127 = or i32 %126, %125
  store i32 %127, i32* %7, align 4
  br label %128

128:                                              ; preds = %124, %118, %115, %111
  %129 = load %struct.iwl_mvm_scan_params*, %struct.iwl_mvm_scan_params** %5, align 8
  %130 = call i64 @iwl_mvm_is_regular_scan(%struct.iwl_mvm_scan_params* %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %156

132:                                              ; preds = %128
  %133 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %134 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @NL80211_IFTYPE_P2P_DEVICE, align 8
  %137 = icmp ne i64 %135, %136
  br i1 %137, label %138, label %156

138:                                              ; preds = %132
  %139 = load %struct.iwl_mvm_scan_params*, %struct.iwl_mvm_scan_params** %5, align 8
  %140 = getelementptr inbounds %struct.iwl_mvm_scan_params, %struct.iwl_mvm_scan_params* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  %142 = call i64 @iwl_mvm_is_scan_fragmented(i32 %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %156, label %144

144:                                              ; preds = %138
  %145 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %146 = call i64 @iwl_mvm_is_adaptive_dwell_supported(%struct.iwl_mvm* %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %156, label %148

148:                                              ; preds = %144
  %149 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %150 = call i64 @iwl_mvm_is_oce_supported(%struct.iwl_mvm* %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %156, label %152

152:                                              ; preds = %148
  %153 = load i32, i32* @IWL_UMAC_SCAN_GEN_FLAGS_EXTENDED_DWELL, align 4
  %154 = load i32, i32* %7, align 4
  %155 = or i32 %154, %153
  store i32 %155, i32* %7, align 4
  br label %156

156:                                              ; preds = %152, %148, %144, %138, %132, %128
  %157 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %158 = call i64 @iwl_mvm_is_oce_supported(%struct.iwl_mvm* %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %202

160:                                              ; preds = %156
  %161 = load %struct.iwl_mvm_scan_params*, %struct.iwl_mvm_scan_params** %5, align 8
  %162 = getelementptr inbounds %struct.iwl_mvm_scan_params, %struct.iwl_mvm_scan_params* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* @NL80211_SCAN_FLAG_OCE_PROBE_REQ_HIGH_TX_RATE, align 4
  %165 = and i32 %163, %164
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %171

167:                                              ; preds = %160
  %168 = load i32, i32* @IWL_UMAC_SCAN_GEN_FLAGS_PROB_REQ_HIGH_TX_RATE, align 4
  %169 = load i32, i32* %7, align 4
  %170 = or i32 %169, %168
  store i32 %170, i32* %7, align 4
  br label %171

171:                                              ; preds = %167, %160
  %172 = load %struct.iwl_mvm_scan_params*, %struct.iwl_mvm_scan_params** %5, align 8
  %173 = getelementptr inbounds %struct.iwl_mvm_scan_params, %struct.iwl_mvm_scan_params* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = load i32, i32* @NL80211_SCAN_FLAG_OCE_PROBE_REQ_DEFERRAL_SUPPRESSION, align 4
  %176 = and i32 %174, %175
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %190

178:                                              ; preds = %171
  %179 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %180 = call i64 @iwl_mvm_is_adaptive_dwell_supported(%struct.iwl_mvm* %179)
  %181 = icmp ne i64 %180, 0
  %182 = xor i1 %181, true
  %183 = zext i1 %182 to i32
  %184 = call i32 @WARN_ON_ONCE(i32 %183)
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %190, label %186

186:                                              ; preds = %178
  %187 = load i32, i32* @IWL_UMAC_SCAN_GEN_FLAGS_PROB_REQ_DEFER_SUPP, align 4
  %188 = load i32, i32* %7, align 4
  %189 = or i32 %188, %187
  store i32 %189, i32* %7, align 4
  br label %190

190:                                              ; preds = %186, %178, %171
  %191 = load %struct.iwl_mvm_scan_params*, %struct.iwl_mvm_scan_params** %5, align 8
  %192 = getelementptr inbounds %struct.iwl_mvm_scan_params, %struct.iwl_mvm_scan_params* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = load i32, i32* @NL80211_SCAN_FLAG_FILS_MAX_CHANNEL_TIME, align 4
  %195 = and i32 %193, %194
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %201

197:                                              ; preds = %190
  %198 = load i32, i32* @IWL_UMAC_SCAN_GEN_FLAGS_MAX_CHNL_TIME, align 4
  %199 = load i32, i32* %7, align 4
  %200 = or i32 %199, %198
  store i32 %200, i32* %7, align 4
  br label %201

201:                                              ; preds = %197, %190
  br label %202

202:                                              ; preds = %201, %156
  %203 = load i32, i32* %7, align 4
  ret i32 %203
}

declare dso_local i64 @iwl_mvm_is_scan_fragmented(i32) #1

declare dso_local i64 @iwl_mvm_is_cdb_supported(%struct.iwl_mvm*) #1

declare dso_local i64 @iwl_mvm_rrm_scan_needed(%struct.iwl_mvm*) #1

declare dso_local i64 @fw_has_capa(i32*, i32) #1

declare dso_local i64 @iwl_mvm_is_regular_scan(%struct.iwl_mvm_scan_params*) #1

declare dso_local i64 @iwl_mvm_is_adaptive_dwell_supported(%struct.iwl_mvm*) #1

declare dso_local i64 @iwl_mvm_is_oce_supported(%struct.iwl_mvm*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
