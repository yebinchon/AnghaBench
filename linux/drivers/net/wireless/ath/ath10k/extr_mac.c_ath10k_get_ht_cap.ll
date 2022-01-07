; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c_ath10k_get_ht_cap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c_ath10k_get_ht_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sta_ht_cap = type { i32, i32, %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i32*, i32 }
%struct.ath10k = type { i32, i32, i32, i32, i32 }

@WMI_HT_CAP_ENABLED = common dso_local global i32 0, align 4
@IEEE80211_HT_MAX_AMPDU_64K = common dso_local global i32 0, align 4
@IEEE80211_HT_MPDU_DENSITY_8 = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_SUP_WIDTH_20_40 = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_DSSSCCK40 = common dso_local global i32 0, align 4
@WLAN_HT_CAP_SM_PS_DISABLED = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_SM_PS_SHIFT = common dso_local global i32 0, align 4
@WMI_HT_CAP_HT20_SGI = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_SGI_20 = common dso_local global i32 0, align 4
@WMI_HT_CAP_HT40_SGI = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_SGI_40 = common dso_local global i32 0, align 4
@WMI_HT_CAP_DYNAMIC_SMPS = common dso_local global i32 0, align 4
@WLAN_HT_CAP_SM_PS_DYNAMIC = common dso_local global i32 0, align 4
@WMI_HT_CAP_TX_STBC = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_TX_STBC = common dso_local global i32 0, align 4
@WMI_HT_CAP_RX_STBC = common dso_local global i32 0, align 4
@WMI_HT_CAP_RX_STBC_MASK_SHIFT = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_RX_STBC_SHIFT = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_RX_STBC = common dso_local global i32 0, align 4
@WMI_HT_CAP_LDPC = common dso_local global i32 0, align 4
@WMI_HT_CAP_RX_LDPC = common dso_local global i32 0, align 4
@WMI_HT_CAP_TX_LDPC = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_LDPC_CODING = common dso_local global i32 0, align 4
@WMI_HT_CAP_L_SIG_TXOP_PROT = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_LSIG_TXOP_PROT = common dso_local global i32 0, align 4
@WMI_VHT_CAP_MAX_MPDU_LEN_MASK = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_MAX_AMSDU = common dso_local global i32 0, align 4
@IEEE80211_HT_MCS_TX_DEFINED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_sta_ht_cap*, %struct.ath10k*)* @ath10k_get_ht_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath10k_get_ht_cap(%struct.ieee80211_sta_ht_cap* noalias sret %0, %struct.ath10k* %1) #0 {
  %3 = alloca %struct.ath10k*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ath10k* %1, %struct.ath10k** %3, align 8
  %7 = bitcast %struct.ieee80211_sta_ht_cap* %0 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %7, i8 0, i64 40, i1 false)
  %8 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %9 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @WMI_HT_CAP_ENABLED, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  br label %200

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %0, i32 0, i32 0
  store i32 1, i32* %16, align 8
  %17 = load i32, i32* @IEEE80211_HT_MAX_AMPDU_64K, align 4
  %18 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %0, i32 0, i32 4
  store i32 %17, i32* %18, align 4
  %19 = load i32, i32* @IEEE80211_HT_MPDU_DENSITY_8, align 4
  %20 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %0, i32 0, i32 3
  store i32 %19, i32* %20, align 8
  %21 = load i32, i32* @IEEE80211_HT_CAP_SUP_WIDTH_20_40, align 4
  %22 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %0, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = or i32 %23, %21
  store i32 %24, i32* %22, align 4
  %25 = load i32, i32* @IEEE80211_HT_CAP_DSSSCCK40, align 4
  %26 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %0, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = or i32 %27, %25
  store i32 %28, i32* %26, align 4
  %29 = load i32, i32* @WLAN_HT_CAP_SM_PS_DISABLED, align 4
  %30 = load i32, i32* @IEEE80211_HT_CAP_SM_PS_SHIFT, align 4
  %31 = shl i32 %29, %30
  %32 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %0, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = or i32 %33, %31
  store i32 %34, i32* %32, align 4
  %35 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %36 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @WMI_HT_CAP_HT20_SGI, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %15
  %42 = load i32, i32* @IEEE80211_HT_CAP_SGI_20, align 4
  %43 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %0, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, %42
  store i32 %45, i32* %43, align 4
  br label %46

46:                                               ; preds = %41, %15
  %47 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %48 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @WMI_HT_CAP_HT40_SGI, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %46
  %54 = load i32, i32* @IEEE80211_HT_CAP_SGI_40, align 4
  %55 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %0, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = or i32 %56, %54
  store i32 %57, i32* %55, align 4
  br label %58

58:                                               ; preds = %53, %46
  %59 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %60 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @WMI_HT_CAP_DYNAMIC_SMPS, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %74

65:                                               ; preds = %58
  %66 = load i32, i32* @WLAN_HT_CAP_SM_PS_DYNAMIC, align 4
  store i32 %66, i32* %5, align 4
  %67 = load i32, i32* @IEEE80211_HT_CAP_SM_PS_SHIFT, align 4
  %68 = load i32, i32* %5, align 4
  %69 = shl i32 %68, %67
  store i32 %69, i32* %5, align 4
  %70 = load i32, i32* %5, align 4
  %71 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %0, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = or i32 %72, %70
  store i32 %73, i32* %71, align 4
  br label %74

74:                                               ; preds = %65, %58
  %75 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %76 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @WMI_HT_CAP_TX_STBC, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %91

81:                                               ; preds = %74
  %82 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %83 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = icmp sgt i32 %84, 1
  br i1 %85, label %86, label %91

86:                                               ; preds = %81
  %87 = load i32, i32* @IEEE80211_HT_CAP_TX_STBC, align 4
  %88 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %0, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = or i32 %89, %87
  store i32 %90, i32* %88, align 4
  br label %91

91:                                               ; preds = %86, %81, %74
  %92 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %93 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @WMI_HT_CAP_RX_STBC, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %118

98:                                               ; preds = %91
  %99 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %100 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  store i32 %101, i32* %6, align 4
  %102 = load i32, i32* @WMI_HT_CAP_RX_STBC, align 4
  %103 = load i32, i32* %6, align 4
  %104 = and i32 %103, %102
  store i32 %104, i32* %6, align 4
  %105 = load i32, i32* @WMI_HT_CAP_RX_STBC_MASK_SHIFT, align 4
  %106 = load i32, i32* %6, align 4
  %107 = ashr i32 %106, %105
  store i32 %107, i32* %6, align 4
  %108 = load i32, i32* @IEEE80211_HT_CAP_RX_STBC_SHIFT, align 4
  %109 = load i32, i32* %6, align 4
  %110 = shl i32 %109, %108
  store i32 %110, i32* %6, align 4
  %111 = load i32, i32* @IEEE80211_HT_CAP_RX_STBC, align 4
  %112 = load i32, i32* %6, align 4
  %113 = and i32 %112, %111
  store i32 %113, i32* %6, align 4
  %114 = load i32, i32* %6, align 4
  %115 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %0, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = or i32 %116, %114
  store i32 %117, i32* %115, align 4
  br label %118

118:                                              ; preds = %98, %91
  %119 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %120 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @WMI_HT_CAP_LDPC, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %139, label %125

125:                                              ; preds = %118
  %126 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %127 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* @WMI_HT_CAP_RX_LDPC, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %144

132:                                              ; preds = %125
  %133 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %134 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* @WMI_HT_CAP_TX_LDPC, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %144

139:                                              ; preds = %132, %118
  %140 = load i32, i32* @IEEE80211_HT_CAP_LDPC_CODING, align 4
  %141 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %0, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = or i32 %142, %140
  store i32 %143, i32* %141, align 4
  br label %144

144:                                              ; preds = %139, %132, %125
  %145 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %146 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* @WMI_HT_CAP_L_SIG_TXOP_PROT, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %156

151:                                              ; preds = %144
  %152 = load i32, i32* @IEEE80211_HT_CAP_LSIG_TXOP_PROT, align 4
  %153 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %0, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = or i32 %154, %152
  store i32 %155, i32* %153, align 4
  br label %156

156:                                              ; preds = %151, %144
  %157 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %158 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* @WMI_VHT_CAP_MAX_MPDU_LEN_MASK, align 4
  %161 = and i32 %159, %160
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %168

163:                                              ; preds = %156
  %164 = load i32, i32* @IEEE80211_HT_CAP_MAX_AMSDU, align 4
  %165 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %0, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = or i32 %166, %164
  store i32 %167, i32* %165, align 4
  br label %168

168:                                              ; preds = %163, %156
  store i32 0, i32* %4, align 4
  br label %169

169:                                              ; preds = %191, %168
  %170 = load i32, i32* %4, align 4
  %171 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %172 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %171, i32 0, i32 3
  %173 = load i32, i32* %172, align 4
  %174 = icmp slt i32 %170, %173
  br i1 %174, label %175, label %194

175:                                              ; preds = %169
  %176 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %177 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %176, i32 0, i32 4
  %178 = load i32, i32* %177, align 4
  %179 = load i32, i32* %4, align 4
  %180 = call i32 @BIT(i32 %179)
  %181 = and i32 %178, %180
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %190

183:                                              ; preds = %175
  %184 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %0, i32 0, i32 2
  %185 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %184, i32 0, i32 0
  %186 = load i32*, i32** %185, align 8
  %187 = load i32, i32* %4, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i32, i32* %186, i64 %188
  store i32 255, i32* %189, align 4
  br label %190

190:                                              ; preds = %183, %175
  br label %191

191:                                              ; preds = %190
  %192 = load i32, i32* %4, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %4, align 4
  br label %169

194:                                              ; preds = %169
  %195 = load i32, i32* @IEEE80211_HT_MCS_TX_DEFINED, align 4
  %196 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %0, i32 0, i32 2
  %197 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 8
  %199 = or i32 %198, %195
  store i32 %199, i32* %197, align 8
  br label %200

200:                                              ; preds = %194, %14
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @BIT(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
