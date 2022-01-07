; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c_ath10k_mac_vif_recalc_txbf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c_ath10k_mac_vif_recalc_txbf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.ieee80211_vif = type { i64 }
%struct.ieee80211_sta_vht_cap = type { i32 }
%struct.ath10k_vif = type { i32 }

@WMI_TXBF_CONF_AFTER_ASSOC = common dso_local global i64 0, align 8
@IEEE80211_VHT_CAP_SU_BEAMFORMEE_CAPABLE = common dso_local global i32 0, align 4
@IEEE80211_VHT_CAP_MU_BEAMFORMEE_CAPABLE = common dso_local global i32 0, align 4
@IEEE80211_VHT_CAP_SU_BEAMFORMER_CAPABLE = common dso_local global i32 0, align 4
@IEEE80211_VHT_CAP_MU_BEAMFORMER_CAPABLE = common dso_local global i32 0, align 4
@WMI_VDEV_PARAM_UNSUPPORTED = common dso_local global i64 0, align 8
@WMI_VDEV_PARAM_TXBF_SU_TX_BFEE = common dso_local global i64 0, align 8
@WMI_VDEV_PARAM_TXBF_MU_TX_BFEE = common dso_local global i64 0, align 8
@WMI_VDEV_PARAM_TXBF_SU_TX_BFER = common dso_local global i64 0, align 8
@WMI_VDEV_PARAM_TXBF_MU_TX_BFER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [43 x i8] c"failed to submit vdev param txbf 0x%x: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k*, %struct.ieee80211_vif*, i32)* @ath10k_mac_vif_recalc_txbf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_mac_vif_recalc_txbf(%struct.ath10k* %0, %struct.ieee80211_vif* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211_sta_vht_cap, align 4
  %6 = alloca %struct.ath10k*, align 8
  %7 = alloca %struct.ieee80211_vif*, align 8
  %8 = alloca %struct.ath10k_vif*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = getelementptr inbounds %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_vht_cap* %5, i32 0, i32 0
  store i32 %2, i32* %12, align 4
  store %struct.ath10k* %0, %struct.ath10k** %6, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %7, align 8
  %13 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %7, align 8
  %14 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to i8*
  %17 = bitcast i8* %16 to %struct.ath10k_vif*
  store %struct.ath10k_vif* %17, %struct.ath10k_vif** %8, align 8
  %18 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %19 = call i64 @ath10k_wmi_get_txbf_conf_scheme(%struct.ath10k* %18)
  %20 = load i64, i64* @WMI_TXBF_CONF_AFTER_ASSOC, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %146

23:                                               ; preds = %3
  %24 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %25 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @IEEE80211_VHT_CAP_SU_BEAMFORMEE_CAPABLE, align 4
  %28 = load i32, i32* @IEEE80211_VHT_CAP_MU_BEAMFORMEE_CAPABLE, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @IEEE80211_VHT_CAP_SU_BEAMFORMER_CAPABLE, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @IEEE80211_VHT_CAP_MU_BEAMFORMER_CAPABLE, align 4
  %33 = or i32 %31, %32
  %34 = and i32 %26, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %23
  store i32 0, i32* %4, align 4
  br label %146

37:                                               ; preds = %23
  %38 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %39 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %10, align 8
  store i64 0, i64* %11, align 8
  %44 = load i64, i64* %10, align 8
  %45 = load i64, i64* @WMI_VDEV_PARAM_UNSUPPORTED, align 8
  %46 = icmp eq i64 %44, %45
  %47 = zext i1 %46 to i32
  %48 = call i64 @WARN_ON(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %37
  store i32 0, i32* %4, align 4
  br label %146

51:                                               ; preds = %37
  %52 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %53 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @IEEE80211_VHT_CAP_SU_BEAMFORMEE_CAPABLE, align 4
  %56 = load i32, i32* @IEEE80211_VHT_CAP_MU_BEAMFORMEE_CAPABLE, align 4
  %57 = or i32 %55, %56
  %58 = and i32 %54, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %81

60:                                               ; preds = %51
  %61 = getelementptr inbounds %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_vht_cap* %5, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @IEEE80211_VHT_CAP_SU_BEAMFORMER_CAPABLE, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %60
  %67 = load i64, i64* @WMI_VDEV_PARAM_TXBF_SU_TX_BFEE, align 8
  %68 = load i64, i64* %11, align 8
  %69 = or i64 %68, %67
  store i64 %69, i64* %11, align 8
  br label %70

70:                                               ; preds = %66, %60
  %71 = getelementptr inbounds %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_vht_cap* %5, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @IEEE80211_VHT_CAP_MU_BEAMFORMER_CAPABLE, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %70
  %77 = load i64, i64* @WMI_VDEV_PARAM_TXBF_MU_TX_BFEE, align 8
  %78 = load i64, i64* %11, align 8
  %79 = or i64 %78, %77
  store i64 %79, i64* %11, align 8
  br label %80

80:                                               ; preds = %76, %70
  br label %81

81:                                               ; preds = %80, %51
  %82 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %83 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @IEEE80211_VHT_CAP_SU_BEAMFORMER_CAPABLE, align 4
  %86 = load i32, i32* @IEEE80211_VHT_CAP_MU_BEAMFORMER_CAPABLE, align 4
  %87 = or i32 %85, %86
  %88 = and i32 %84, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %111

90:                                               ; preds = %81
  %91 = getelementptr inbounds %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_vht_cap* %5, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @IEEE80211_VHT_CAP_SU_BEAMFORMEE_CAPABLE, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %90
  %97 = load i64, i64* @WMI_VDEV_PARAM_TXBF_SU_TX_BFER, align 8
  %98 = load i64, i64* %11, align 8
  %99 = or i64 %98, %97
  store i64 %99, i64* %11, align 8
  br label %100

100:                                              ; preds = %96, %90
  %101 = getelementptr inbounds %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_vht_cap* %5, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @IEEE80211_VHT_CAP_MU_BEAMFORMEE_CAPABLE, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %100
  %107 = load i64, i64* @WMI_VDEV_PARAM_TXBF_MU_TX_BFER, align 8
  %108 = load i64, i64* %11, align 8
  %109 = or i64 %108, %107
  store i64 %109, i64* %11, align 8
  br label %110

110:                                              ; preds = %106, %100
  br label %111

111:                                              ; preds = %110, %81
  %112 = load i64, i64* %11, align 8
  %113 = load i64, i64* @WMI_VDEV_PARAM_TXBF_MU_TX_BFEE, align 8
  %114 = and i64 %112, %113
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %111
  %117 = load i64, i64* @WMI_VDEV_PARAM_TXBF_SU_TX_BFEE, align 8
  %118 = load i64, i64* %11, align 8
  %119 = or i64 %118, %117
  store i64 %119, i64* %11, align 8
  br label %120

120:                                              ; preds = %116, %111
  %121 = load i64, i64* %11, align 8
  %122 = load i64, i64* @WMI_VDEV_PARAM_TXBF_MU_TX_BFER, align 8
  %123 = and i64 %121, %122
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %129

125:                                              ; preds = %120
  %126 = load i64, i64* @WMI_VDEV_PARAM_TXBF_SU_TX_BFER, align 8
  %127 = load i64, i64* %11, align 8
  %128 = or i64 %127, %126
  store i64 %128, i64* %11, align 8
  br label %129

129:                                              ; preds = %125, %120
  %130 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %131 = load %struct.ath10k_vif*, %struct.ath10k_vif** %8, align 8
  %132 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load i64, i64* %10, align 8
  %135 = load i64, i64* %11, align 8
  %136 = call i32 @ath10k_wmi_vdev_set_param(%struct.ath10k* %130, i32 %133, i64 %134, i64 %135)
  store i32 %136, i32* %9, align 4
  %137 = load i32, i32* %9, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %145

139:                                              ; preds = %129
  %140 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %141 = load i64, i64* %11, align 8
  %142 = load i32, i32* %9, align 4
  %143 = call i32 @ath10k_warn(%struct.ath10k* %140, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i64 %141, i32 %142)
  %144 = load i32, i32* %9, align 4
  store i32 %144, i32* %4, align 4
  br label %146

145:                                              ; preds = %129
  store i32 0, i32* %4, align 4
  br label %146

146:                                              ; preds = %145, %139, %50, %36, %22
  %147 = load i32, i32* %4, align 4
  ret i32 %147
}

declare dso_local i64 @ath10k_wmi_get_txbf_conf_scheme(%struct.ath10k*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @ath10k_wmi_vdev_set_param(%struct.ath10k*, i32, i64, i64) #1

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
