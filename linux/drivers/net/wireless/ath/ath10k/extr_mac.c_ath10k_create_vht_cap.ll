; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c_ath10k_create_vht_cap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c_ath10k_create_vht_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sta_vht_cap = type { i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i8*, i8*, i8*, i8* }
%struct.ath10k = type { i32, i32, i32, %struct.ath10k_hw_params }
%struct.ath10k_hw_params = type { i32, i32 }

@IEEE80211_VHT_CAP_SU_BEAMFORMEE_CAPABLE = common dso_local global i32 0, align 4
@IEEE80211_VHT_CAP_MU_BEAMFORMEE_CAPABLE = common dso_local global i32 0, align 4
@IEEE80211_VHT_CAP_BEAMFORMEE_STS_SHIFT = common dso_local global i32 0, align 4
@IEEE80211_VHT_CAP_BEAMFORMEE_STS_MASK = common dso_local global i32 0, align 4
@IEEE80211_VHT_CAP_SU_BEAMFORMER_CAPABLE = common dso_local global i32 0, align 4
@IEEE80211_VHT_CAP_MU_BEAMFORMER_CAPABLE = common dso_local global i32 0, align 4
@IEEE80211_VHT_CAP_SOUNDING_DIMENSIONS_SHIFT = common dso_local global i32 0, align 4
@IEEE80211_VHT_CAP_SOUNDING_DIMENSIONS_MASK = common dso_local global i32 0, align 4
@IEEE80211_VHT_CAP_SHORT_GI_160 = common dso_local global i32 0, align 4
@IEEE80211_VHT_CAP_SUPP_CHAN_WIDTH_MASK = common dso_local global i32 0, align 4
@IEEE80211_VHT_CAP_SUPP_CHAN_WIDTH_160MHZ = common dso_local global i32 0, align 4
@IEEE80211_VHT_MCS_SUPPORT_0_9 = common dso_local global i32 0, align 4
@IEEE80211_VHT_MCS_NOT_SUPPORTED = common dso_local global i32 0, align 4
@IEEE80211_VHT_CAP_TXSTBC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_sta_vht_cap*, %struct.ath10k*)* @ath10k_create_vht_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath10k_create_vht_cap(%struct.ieee80211_sta_vht_cap* noalias sret %0, %struct.ath10k* %1) #0 {
  %3 = alloca %struct.ath10k*, align 8
  %4 = alloca %struct.ath10k_hw_params*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ath10k* %1, %struct.ath10k** %3, align 8
  %8 = bitcast %struct.ieee80211_sta_vht_cap* %0 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %8, i8 0, i64 48, i1 false)
  %9 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %10 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %9, i32 0, i32 3
  store %struct.ath10k_hw_params* %10, %struct.ath10k_hw_params** %4, align 8
  %11 = getelementptr inbounds %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_vht_cap* %0, i32 0, i32 0
  store i32 1, i32* %11, align 8
  %12 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %13 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = getelementptr inbounds %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_vht_cap* %0, i32 0, i32 1
  store i32 %14, i32* %15, align 4
  %16 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %17 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @IEEE80211_VHT_CAP_SU_BEAMFORMEE_CAPABLE, align 4
  %20 = load i32, i32* @IEEE80211_VHT_CAP_MU_BEAMFORMEE_CAPABLE, align 4
  %21 = or i32 %19, %20
  %22 = and i32 %18, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %37

24:                                               ; preds = %2
  %25 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %26 = call i32 @ath10k_mac_get_vht_cap_bf_sts(%struct.ath10k* %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* @IEEE80211_VHT_CAP_BEAMFORMEE_STS_SHIFT, align 4
  %28 = load i32, i32* %6, align 4
  %29 = shl i32 %28, %27
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* @IEEE80211_VHT_CAP_BEAMFORMEE_STS_MASK, align 4
  %31 = load i32, i32* %6, align 4
  %32 = and i32 %31, %30
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = getelementptr inbounds %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_vht_cap* %0, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = or i32 %35, %33
  store i32 %36, i32* %34, align 4
  br label %37

37:                                               ; preds = %24, %2
  %38 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %39 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @IEEE80211_VHT_CAP_SU_BEAMFORMER_CAPABLE, align 4
  %42 = load i32, i32* @IEEE80211_VHT_CAP_MU_BEAMFORMER_CAPABLE, align 4
  %43 = or i32 %41, %42
  %44 = and i32 %40, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %59

46:                                               ; preds = %37
  %47 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %48 = call i32 @ath10k_mac_get_vht_cap_bf_sound_dim(%struct.ath10k* %47)
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* @IEEE80211_VHT_CAP_SOUNDING_DIMENSIONS_SHIFT, align 4
  %50 = load i32, i32* %6, align 4
  %51 = shl i32 %50, %49
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* @IEEE80211_VHT_CAP_SOUNDING_DIMENSIONS_MASK, align 4
  %53 = load i32, i32* %6, align 4
  %54 = and i32 %53, %52
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* %6, align 4
  %56 = getelementptr inbounds %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_vht_cap* %0, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = or i32 %57, %55
  store i32 %58, i32* %56, align 4
  br label %59

59:                                               ; preds = %46, %37
  %60 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %61 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @IEEE80211_VHT_CAP_SHORT_GI_160, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %78

66:                                               ; preds = %59
  %67 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %68 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @IEEE80211_VHT_CAP_SUPP_CHAN_WIDTH_MASK, align 4
  %71 = and i32 %69, %70
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %66
  %74 = load i32, i32* @IEEE80211_VHT_CAP_SUPP_CHAN_WIDTH_160MHZ, align 4
  %75 = getelementptr inbounds %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_vht_cap* %0, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = or i32 %76, %74
  store i32 %77, i32* %75, align 4
  br label %78

78:                                               ; preds = %73, %66, %59
  store i32 0, i32* %5, align 4
  store i32 0, i32* %7, align 4
  br label %79

79:                                               ; preds = %111, %78
  %80 = load i32, i32* %7, align 4
  %81 = icmp slt i32 %80, 8
  br i1 %81, label %82, label %114

82:                                               ; preds = %79
  %83 = load i32, i32* %7, align 4
  %84 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %85 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = icmp slt i32 %83, %86
  br i1 %87, label %88, label %103

88:                                               ; preds = %82
  %89 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %90 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %7, align 4
  %93 = call i32 @BIT(i32 %92)
  %94 = and i32 %91, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %103

96:                                               ; preds = %88
  %97 = load i32, i32* @IEEE80211_VHT_MCS_SUPPORT_0_9, align 4
  %98 = load i32, i32* %7, align 4
  %99 = mul nsw i32 %98, 2
  %100 = shl i32 %97, %99
  %101 = load i32, i32* %5, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* %5, align 4
  br label %110

103:                                              ; preds = %88, %82
  %104 = load i32, i32* @IEEE80211_VHT_MCS_NOT_SUPPORTED, align 4
  %105 = load i32, i32* %7, align 4
  %106 = mul nsw i32 %105, 2
  %107 = shl i32 %104, %106
  %108 = load i32, i32* %5, align 4
  %109 = or i32 %108, %107
  store i32 %109, i32* %5, align 4
  br label %110

110:                                              ; preds = %103, %96
  br label %111

111:                                              ; preds = %110
  %112 = load i32, i32* %7, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %7, align 4
  br label %79

114:                                              ; preds = %79
  %115 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %116 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = icmp sle i32 %117, 1
  br i1 %118, label %119, label %125

119:                                              ; preds = %114
  %120 = load i32, i32* @IEEE80211_VHT_CAP_TXSTBC, align 4
  %121 = xor i32 %120, -1
  %122 = getelementptr inbounds %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_vht_cap* %0, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = and i32 %123, %121
  store i32 %124, i32* %122, align 4
  br label %125

125:                                              ; preds = %119, %114
  %126 = load i32, i32* %5, align 4
  %127 = call i8* @cpu_to_le16(i32 %126)
  %128 = getelementptr inbounds %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_vht_cap* %0, i32 0, i32 2
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 3
  store i8* %127, i8** %129, align 8
  %130 = load i32, i32* %5, align 4
  %131 = call i8* @cpu_to_le16(i32 %130)
  %132 = getelementptr inbounds %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_vht_cap* %0, i32 0, i32 2
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 2
  store i8* %131, i8** %133, align 8
  %134 = getelementptr inbounds %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_vht_cap* %0, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* @IEEE80211_VHT_CAP_SUPP_CHAN_WIDTH_MASK, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %162

139:                                              ; preds = %125
  %140 = load %struct.ath10k_hw_params*, %struct.ath10k_hw_params** %4, align 8
  %141 = getelementptr inbounds %struct.ath10k_hw_params, %struct.ath10k_hw_params* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %149, label %144

144:                                              ; preds = %139
  %145 = load %struct.ath10k_hw_params*, %struct.ath10k_hw_params** %4, align 8
  %146 = getelementptr inbounds %struct.ath10k_hw_params, %struct.ath10k_hw_params* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %162

149:                                              ; preds = %144, %139
  %150 = load %struct.ath10k_hw_params*, %struct.ath10k_hw_params** %4, align 8
  %151 = getelementptr inbounds %struct.ath10k_hw_params, %struct.ath10k_hw_params* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = call i8* @cpu_to_le16(i32 %152)
  %154 = getelementptr inbounds %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_vht_cap* %0, i32 0, i32 2
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i32 0, i32 1
  store i8* %153, i8** %155, align 8
  %156 = load %struct.ath10k_hw_params*, %struct.ath10k_hw_params** %4, align 8
  %157 = getelementptr inbounds %struct.ath10k_hw_params, %struct.ath10k_hw_params* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = call i8* @cpu_to_le16(i32 %158)
  %160 = getelementptr inbounds %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_vht_cap* %0, i32 0, i32 2
  %161 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %160, i32 0, i32 0
  store i8* %159, i8** %161, align 8
  br label %162

162:                                              ; preds = %149, %144, %125
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @ath10k_mac_get_vht_cap_bf_sts(%struct.ath10k*) #2

declare dso_local i32 @ath10k_mac_get_vht_cap_bf_sound_dim(%struct.ath10k*) #2

declare dso_local i32 @BIT(i32) #2

declare dso_local i8* @cpu_to_le16(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
