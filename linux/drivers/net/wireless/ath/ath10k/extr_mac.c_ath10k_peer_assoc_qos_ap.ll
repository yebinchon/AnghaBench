; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c_ath10k_peer_assoc_qos_ap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c_ath10k_peer_assoc_qos_ap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32 }
%struct.ath10k_vif = type { i32 }
%struct.ieee80211_sta = type { i32, i64, i32, i64 }

@ATH10K_DBG_MAC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"mac uapsd_queues 0x%x max_sp %d\0A\00", align 1
@IEEE80211_WMM_IE_STA_QOSINFO_AC_VO = common dso_local global i32 0, align 4
@WMI_AP_PS_UAPSD_AC3_DELIVERY_EN = common dso_local global i32 0, align 4
@WMI_AP_PS_UAPSD_AC3_TRIGGER_EN = common dso_local global i32 0, align 4
@IEEE80211_WMM_IE_STA_QOSINFO_AC_VI = common dso_local global i32 0, align 4
@WMI_AP_PS_UAPSD_AC2_DELIVERY_EN = common dso_local global i32 0, align 4
@WMI_AP_PS_UAPSD_AC2_TRIGGER_EN = common dso_local global i32 0, align 4
@IEEE80211_WMM_IE_STA_QOSINFO_AC_BK = common dso_local global i32 0, align 4
@WMI_AP_PS_UAPSD_AC1_DELIVERY_EN = common dso_local global i32 0, align 4
@WMI_AP_PS_UAPSD_AC1_TRIGGER_EN = common dso_local global i32 0, align 4
@IEEE80211_WMM_IE_STA_QOSINFO_AC_BE = common dso_local global i32 0, align 4
@WMI_AP_PS_UAPSD_AC0_DELIVERY_EN = common dso_local global i32 0, align 4
@WMI_AP_PS_UAPSD_AC0_TRIGGER_EN = common dso_local global i32 0, align 4
@MAX_WMI_AP_PS_PEER_PARAM_MAX_SP = common dso_local global i64 0, align 8
@WMI_AP_PS_PEER_PARAM_UAPSD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"failed to set ap ps peer param uapsd for vdev %i: %d\0A\00", align 1
@WMI_AP_PS_PEER_PARAM_MAX_SP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [55 x i8] c"failed to set ap ps peer param max sp for vdev %i: %d\0A\00", align 1
@WMI_AP_PS_PEER_PARAM_AGEOUT_TIME = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [60 x i8] c"failed to set ap ps peer param ageout time for vdev %i: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k*, %struct.ath10k_vif*, %struct.ieee80211_sta*)* @ath10k_peer_assoc_qos_ap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_peer_assoc_qos_ap(%struct.ath10k* %0, %struct.ath10k_vif* %1, %struct.ieee80211_sta* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath10k*, align 8
  %6 = alloca %struct.ath10k_vif*, align 8
  %7 = alloca %struct.ieee80211_sta*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %5, align 8
  store %struct.ath10k_vif* %1, %struct.ath10k_vif** %6, align 8
  store %struct.ieee80211_sta* %2, %struct.ieee80211_sta** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %11 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %12 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %11, i32 0, i32 0
  %13 = call i32 @lockdep_assert_held(i32* %12)
  %14 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %15 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %14, i32 0, i32 3
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %158

18:                                               ; preds = %3
  %19 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %20 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %158

23:                                               ; preds = %18
  %24 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %25 = load i32, i32* @ATH10K_DBG_MAC, align 4
  %26 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %27 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %30 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @ath10k_dbg(%struct.ath10k* %24, i32 %25, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %28, i64 %31)
  %33 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %34 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @IEEE80211_WMM_IE_STA_QOSINFO_AC_VO, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %23
  %40 = load i32, i32* @WMI_AP_PS_UAPSD_AC3_DELIVERY_EN, align 4
  %41 = load i32, i32* @WMI_AP_PS_UAPSD_AC3_TRIGGER_EN, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* %8, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %8, align 4
  br label %45

45:                                               ; preds = %39, %23
  %46 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %47 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @IEEE80211_WMM_IE_STA_QOSINFO_AC_VI, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %45
  %53 = load i32, i32* @WMI_AP_PS_UAPSD_AC2_DELIVERY_EN, align 4
  %54 = load i32, i32* @WMI_AP_PS_UAPSD_AC2_TRIGGER_EN, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* %8, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %8, align 4
  br label %58

58:                                               ; preds = %52, %45
  %59 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %60 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @IEEE80211_WMM_IE_STA_QOSINFO_AC_BK, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %58
  %66 = load i32, i32* @WMI_AP_PS_UAPSD_AC1_DELIVERY_EN, align 4
  %67 = load i32, i32* @WMI_AP_PS_UAPSD_AC1_TRIGGER_EN, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* %8, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %8, align 4
  br label %71

71:                                               ; preds = %65, %58
  %72 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %73 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @IEEE80211_WMM_IE_STA_QOSINFO_AC_BE, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %71
  %79 = load i32, i32* @WMI_AP_PS_UAPSD_AC0_DELIVERY_EN, align 4
  %80 = load i32, i32* @WMI_AP_PS_UAPSD_AC0_TRIGGER_EN, align 4
  %81 = or i32 %79, %80
  %82 = load i32, i32* %8, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %8, align 4
  br label %84

84:                                               ; preds = %78, %71
  %85 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %86 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @MAX_WMI_AP_PS_PEER_PARAM_MAX_SP, align 8
  %89 = icmp slt i64 %87, %88
  br i1 %89, label %90, label %95

90:                                               ; preds = %84
  %91 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %92 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = trunc i64 %93 to i32
  store i32 %94, i32* %9, align 4
  br label %95

95:                                               ; preds = %90, %84
  %96 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %97 = load %struct.ath10k_vif*, %struct.ath10k_vif** %6, align 8
  %98 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %101 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @WMI_AP_PS_PEER_PARAM_UAPSD, align 4
  %104 = load i32, i32* %8, align 4
  %105 = call i32 @ath10k_wmi_set_ap_ps_param(%struct.ath10k* %96, i32 %99, i32 %102, i32 %103, i32 %104)
  store i32 %105, i32* %10, align 4
  %106 = load i32, i32* %10, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %116

108:                                              ; preds = %95
  %109 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %110 = load %struct.ath10k_vif*, %struct.ath10k_vif** %6, align 8
  %111 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* %10, align 4
  %114 = call i32 @ath10k_warn(%struct.ath10k* %109, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i32 %112, i32 %113)
  %115 = load i32, i32* %10, align 4
  store i32 %115, i32* %4, align 4
  br label %159

116:                                              ; preds = %95
  %117 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %118 = load %struct.ath10k_vif*, %struct.ath10k_vif** %6, align 8
  %119 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %122 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* @WMI_AP_PS_PEER_PARAM_MAX_SP, align 4
  %125 = load i32, i32* %9, align 4
  %126 = call i32 @ath10k_wmi_set_ap_ps_param(%struct.ath10k* %117, i32 %120, i32 %123, i32 %124, i32 %125)
  store i32 %126, i32* %10, align 4
  %127 = load i32, i32* %10, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %137

129:                                              ; preds = %116
  %130 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %131 = load %struct.ath10k_vif*, %struct.ath10k_vif** %6, align 8
  %132 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* %10, align 4
  %135 = call i32 @ath10k_warn(%struct.ath10k* %130, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0), i32 %133, i32 %134)
  %136 = load i32, i32* %10, align 4
  store i32 %136, i32* %4, align 4
  br label %159

137:                                              ; preds = %116
  %138 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %139 = load %struct.ath10k_vif*, %struct.ath10k_vif** %6, align 8
  %140 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %143 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* @WMI_AP_PS_PEER_PARAM_AGEOUT_TIME, align 4
  %146 = call i32 @ath10k_wmi_set_ap_ps_param(%struct.ath10k* %138, i32 %141, i32 %144, i32 %145, i32 10)
  store i32 %146, i32* %10, align 4
  %147 = load i32, i32* %10, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %157

149:                                              ; preds = %137
  %150 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %151 = load %struct.ath10k_vif*, %struct.ath10k_vif** %6, align 8
  %152 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* %10, align 4
  %155 = call i32 @ath10k_warn(%struct.ath10k* %150, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.3, i64 0, i64 0), i32 %153, i32 %154)
  %156 = load i32, i32* %10, align 4
  store i32 %156, i32* %4, align 4
  br label %159

157:                                              ; preds = %137
  br label %158

158:                                              ; preds = %157, %18, %3
  store i32 0, i32* %4, align 4
  br label %159

159:                                              ; preds = %158, %149, %129, %108
  %160 = load i32, i32* %4, align 4
  ret i32 %160
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*, i32, i64) #1

declare dso_local i32 @ath10k_wmi_set_ap_ps_param(%struct.ath10k*, i32, i32, i32, i32) #1

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
