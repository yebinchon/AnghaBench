; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c_ath10k_mac_set_txbf_conf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c_ath10k_mac_set_txbf_conf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k_vif = type { i32, %struct.ath10k* }
%struct.ath10k = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@WMI_TXBF_CONF_BEFORE_ASSOC = common dso_local global i64 0, align 8
@IEEE80211_VHT_CAP_SU_BEAMFORMEE_CAPABLE = common dso_local global i32 0, align 4
@IEEE80211_VHT_CAP_MU_BEAMFORMEE_CAPABLE = common dso_local global i32 0, align 4
@WMI_TXBF_STS_CAP_OFFSET = common dso_local global i32 0, align 4
@IEEE80211_VHT_CAP_SU_BEAMFORMER_CAPABLE = common dso_local global i32 0, align 4
@IEEE80211_VHT_CAP_MU_BEAMFORMER_CAPABLE = common dso_local global i32 0, align 4
@WMI_BF_SOUND_DIM_OFFSET = common dso_local global i32 0, align 4
@WMI_VDEV_PARAM_TXBF_SU_TX_BFER = common dso_local global i32 0, align 4
@WMI_VDEV_PARAM_TXBF_MU_TX_BFER = common dso_local global i32 0, align 4
@WMI_VDEV_PARAM_TXBF_SU_TX_BFEE = common dso_local global i32 0, align 4
@WMI_VDEV_PARAM_TXBF_MU_TX_BFEE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k_vif*)* @ath10k_mac_set_txbf_conf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_mac_set_txbf_conf(%struct.ath10k_vif* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath10k_vif*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath10k*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ath10k_vif* %0, %struct.ath10k_vif** %3, align 8
  store i32 0, i32* %4, align 4
  %8 = load %struct.ath10k_vif*, %struct.ath10k_vif** %3, align 8
  %9 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %8, i32 0, i32 1
  %10 = load %struct.ath10k*, %struct.ath10k** %9, align 8
  store %struct.ath10k* %10, %struct.ath10k** %5, align 8
  %11 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %12 = call i64 @ath10k_wmi_get_txbf_conf_scheme(%struct.ath10k* %11)
  %13 = load i64, i64* @WMI_TXBF_CONF_BEFORE_ASSOC, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %115

16:                                               ; preds = %1
  %17 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %18 = call i32 @ath10k_mac_get_vht_cap_bf_sts(%struct.ath10k* %17)
  store i32 %18, i32* %6, align 4
  %19 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %20 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @IEEE80211_VHT_CAP_SU_BEAMFORMEE_CAPABLE, align 4
  %23 = load i32, i32* @IEEE80211_VHT_CAP_MU_BEAMFORMEE_CAPABLE, align 4
  %24 = or i32 %22, %23
  %25 = and i32 %21, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %16
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @WMI_TXBF_STS_CAP_OFFSET, align 4
  %30 = call i32 @SM(i32 %28, i32 %29)
  %31 = load i32, i32* %4, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %4, align 4
  br label %33

33:                                               ; preds = %27, %16
  %34 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %35 = call i32 @ath10k_mac_get_vht_cap_bf_sound_dim(%struct.ath10k* %34)
  store i32 %35, i32* %7, align 4
  %36 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %37 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @IEEE80211_VHT_CAP_SU_BEAMFORMER_CAPABLE, align 4
  %40 = load i32, i32* @IEEE80211_VHT_CAP_MU_BEAMFORMER_CAPABLE, align 4
  %41 = or i32 %39, %40
  %42 = and i32 %38, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %33
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @WMI_BF_SOUND_DIM_OFFSET, align 4
  %47 = call i32 @SM(i32 %45, i32 %46)
  %48 = load i32, i32* %4, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %4, align 4
  br label %50

50:                                               ; preds = %44, %33
  %51 = load i32, i32* %4, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %50
  store i32 0, i32* %2, align 4
  br label %115

54:                                               ; preds = %50
  %55 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %56 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @IEEE80211_VHT_CAP_SU_BEAMFORMER_CAPABLE, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %54
  %62 = load i32, i32* @WMI_VDEV_PARAM_TXBF_SU_TX_BFER, align 4
  %63 = load i32, i32* %4, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %4, align 4
  br label %65

65:                                               ; preds = %61, %54
  %66 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %67 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @IEEE80211_VHT_CAP_MU_BEAMFORMER_CAPABLE, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %65
  %73 = load i32, i32* @WMI_VDEV_PARAM_TXBF_MU_TX_BFER, align 4
  %74 = load i32, i32* @WMI_VDEV_PARAM_TXBF_SU_TX_BFER, align 4
  %75 = or i32 %73, %74
  %76 = load i32, i32* %4, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %4, align 4
  br label %78

78:                                               ; preds = %72, %65
  %79 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %80 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @IEEE80211_VHT_CAP_SU_BEAMFORMEE_CAPABLE, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %78
  %86 = load i32, i32* @WMI_VDEV_PARAM_TXBF_SU_TX_BFEE, align 4
  %87 = load i32, i32* %4, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %4, align 4
  br label %89

89:                                               ; preds = %85, %78
  %90 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %91 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @IEEE80211_VHT_CAP_MU_BEAMFORMEE_CAPABLE, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %89
  %97 = load i32, i32* @WMI_VDEV_PARAM_TXBF_MU_TX_BFEE, align 4
  %98 = load i32, i32* @WMI_VDEV_PARAM_TXBF_SU_TX_BFEE, align 4
  %99 = or i32 %97, %98
  %100 = load i32, i32* %4, align 4
  %101 = or i32 %100, %99
  store i32 %101, i32* %4, align 4
  br label %102

102:                                              ; preds = %96, %89
  %103 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %104 = load %struct.ath10k_vif*, %struct.ath10k_vif** %3, align 8
  %105 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %108 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* %4, align 4
  %114 = call i32 @ath10k_wmi_vdev_set_param(%struct.ath10k* %103, i32 %106, i32 %112, i32 %113)
  store i32 %114, i32* %2, align 4
  br label %115

115:                                              ; preds = %102, %53, %15
  %116 = load i32, i32* %2, align 4
  ret i32 %116
}

declare dso_local i64 @ath10k_wmi_get_txbf_conf_scheme(%struct.ath10k*) #1

declare dso_local i32 @ath10k_mac_get_vht_cap_bf_sts(%struct.ath10k*) #1

declare dso_local i32 @SM(i32, i32) #1

declare dso_local i32 @ath10k_mac_get_vht_cap_bf_sound_dim(%struct.ath10k*) #1

declare dso_local i32 @ath10k_wmi_vdev_set_param(%struct.ath10k*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
