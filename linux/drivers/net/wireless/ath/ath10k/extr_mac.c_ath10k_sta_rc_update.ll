; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c_ath10k_sta_rc_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c_ath10k_sta_rc_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.ath10k* }
%struct.ath10k = type { i32 }
%struct.ieee80211_vif = type { i64 }
%struct.ieee80211_sta = type { i32, i32, i32, i32, i64 }
%struct.ath10k_sta = type { i32, i32, i32, i32, i32 }
%struct.ath10k_vif = type { i32 }
%struct.ath10k_peer = type { i32 }

@.str = private unnamed_addr constant [54 x i8] c"mac sta rc update failed to find peer %pM on vdev %i\0A\00", align 1
@ATH10K_DBG_MAC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [61 x i8] c"mac sta rc update for %pM changed %08x bw %d nss %d smps %d\0A\00", align 1
@IEEE80211_RC_BW_CHANGED = common dso_local global i32 0, align 4
@WMI_PEER_CHWIDTH_20MHZ = common dso_local global i32 0, align 4
@WMI_PEER_CHWIDTH_40MHZ = common dso_local global i32 0, align 4
@WMI_PEER_CHWIDTH_80MHZ = common dso_local global i32 0, align 4
@WMI_PEER_CHWIDTH_160MHZ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"Invalid bandwidth %d in rc update for %pM\0A\00", align 1
@IEEE80211_RC_NSS_CHANGED = common dso_local global i32 0, align 4
@IEEE80211_RC_SMPS_CHANGED = common dso_local global i32 0, align 4
@WMI_PEER_SMPS_PS_NONE = common dso_local global i32 0, align 4
@WMI_PEER_SMPS_STATIC = common dso_local global i32 0, align 4
@WMI_PEER_SMPS_DYNAMIC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [42 x i8] c"Invalid smps %d in sta rc update for %pM\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, %struct.ieee80211_vif*, %struct.ieee80211_sta*, i32)* @ath10k_sta_rc_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath10k_sta_rc_update(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, %struct.ieee80211_sta* %2, i32 %3) #0 {
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca %struct.ieee80211_sta*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ath10k*, align 8
  %10 = alloca %struct.ath10k_sta*, align 8
  %11 = alloca %struct.ath10k_vif*, align 8
  %12 = alloca %struct.ath10k_peer*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %6, align 8
  store %struct.ieee80211_sta* %2, %struct.ieee80211_sta** %7, align 8
  store i32 %3, i32* %8, align 4
  %15 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %16 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %15, i32 0, i32 0
  %17 = load %struct.ath10k*, %struct.ath10k** %16, align 8
  store %struct.ath10k* %17, %struct.ath10k** %9, align 8
  %18 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %19 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %18, i32 0, i32 4
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.ath10k_sta*
  store %struct.ath10k_sta* %21, %struct.ath10k_sta** %10, align 8
  %22 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %23 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to i8*
  %26 = bitcast i8* %25 to %struct.ath10k_vif*
  store %struct.ath10k_vif* %26, %struct.ath10k_vif** %11, align 8
  %27 = load %struct.ath10k*, %struct.ath10k** %9, align 8
  %28 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %27, i32 0, i32 0
  %29 = call i32 @spin_lock_bh(i32* %28)
  %30 = load %struct.ath10k*, %struct.ath10k** %9, align 8
  %31 = load %struct.ath10k_vif*, %struct.ath10k_vif** %11, align 8
  %32 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %35 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call %struct.ath10k_peer* @ath10k_peer_find(%struct.ath10k* %30, i32 %33, i32 %36)
  store %struct.ath10k_peer* %37, %struct.ath10k_peer** %12, align 8
  %38 = load %struct.ath10k_peer*, %struct.ath10k_peer** %12, align 8
  %39 = icmp ne %struct.ath10k_peer* %38, null
  br i1 %39, label %52, label %40

40:                                               ; preds = %4
  %41 = load %struct.ath10k*, %struct.ath10k** %9, align 8
  %42 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %41, i32 0, i32 0
  %43 = call i32 @spin_unlock_bh(i32* %42)
  %44 = load %struct.ath10k*, %struct.ath10k** %9, align 8
  %45 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %46 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.ath10k_vif*, %struct.ath10k_vif** %11, align 8
  %49 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @ath10k_warn(%struct.ath10k* %44, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %47, i32 %50)
  br label %154

52:                                               ; preds = %4
  %53 = load %struct.ath10k*, %struct.ath10k** %9, align 8
  %54 = load i32, i32* @ATH10K_DBG_MAC, align 4
  %55 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %56 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* %8, align 4
  %59 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %60 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %63 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %66 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @ath10k_dbg(%struct.ath10k* %53, i32 %54, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i32 %57, i32 %58, i32 %61, i32 %64, i32 %67)
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* @IEEE80211_RC_BW_CHANGED, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %100

73:                                               ; preds = %52
  %74 = load i32, i32* @WMI_PEER_CHWIDTH_20MHZ, align 4
  store i32 %74, i32* %13, align 4
  %75 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %76 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  switch i32 %77, label %86 [
    i32 130, label %78
    i32 129, label %80
    i32 128, label %82
    i32 131, label %84
  ]

78:                                               ; preds = %73
  %79 = load i32, i32* @WMI_PEER_CHWIDTH_20MHZ, align 4
  store i32 %79, i32* %13, align 4
  br label %96

80:                                               ; preds = %73
  %81 = load i32, i32* @WMI_PEER_CHWIDTH_40MHZ, align 4
  store i32 %81, i32* %13, align 4
  br label %96

82:                                               ; preds = %73
  %83 = load i32, i32* @WMI_PEER_CHWIDTH_80MHZ, align 4
  store i32 %83, i32* %13, align 4
  br label %96

84:                                               ; preds = %73
  %85 = load i32, i32* @WMI_PEER_CHWIDTH_160MHZ, align 4
  store i32 %85, i32* %13, align 4
  br label %96

86:                                               ; preds = %73
  %87 = load %struct.ath10k*, %struct.ath10k** %9, align 8
  %88 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %89 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %92 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @ath10k_warn(%struct.ath10k* %87, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %90, i32 %93)
  %95 = load i32, i32* @WMI_PEER_CHWIDTH_20MHZ, align 4
  store i32 %95, i32* %13, align 4
  br label %96

96:                                               ; preds = %86, %84, %82, %80, %78
  %97 = load i32, i32* %13, align 4
  %98 = load %struct.ath10k_sta*, %struct.ath10k_sta** %10, align 8
  %99 = getelementptr inbounds %struct.ath10k_sta, %struct.ath10k_sta* %98, i32 0, i32 0
  store i32 %97, i32* %99, align 4
  br label %100

100:                                              ; preds = %96, %52
  %101 = load i32, i32* %8, align 4
  %102 = load i32, i32* @IEEE80211_RC_NSS_CHANGED, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %111

105:                                              ; preds = %100
  %106 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %107 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.ath10k_sta*, %struct.ath10k_sta** %10, align 8
  %110 = getelementptr inbounds %struct.ath10k_sta, %struct.ath10k_sta* %109, i32 0, i32 4
  store i32 %108, i32* %110, align 4
  br label %111

111:                                              ; preds = %105, %100
  %112 = load i32, i32* %8, align 4
  %113 = load i32, i32* @IEEE80211_RC_SMPS_CHANGED, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %141

116:                                              ; preds = %111
  %117 = load i32, i32* @WMI_PEER_SMPS_PS_NONE, align 4
  store i32 %117, i32* %14, align 4
  %118 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %119 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  switch i32 %120, label %137 [
    i32 136, label %121
    i32 133, label %121
    i32 132, label %123
    i32 135, label %125
    i32 134, label %127
  ]

121:                                              ; preds = %116, %116
  %122 = load i32, i32* @WMI_PEER_SMPS_PS_NONE, align 4
  store i32 %122, i32* %14, align 4
  br label %137

123:                                              ; preds = %116
  %124 = load i32, i32* @WMI_PEER_SMPS_STATIC, align 4
  store i32 %124, i32* %14, align 4
  br label %137

125:                                              ; preds = %116
  %126 = load i32, i32* @WMI_PEER_SMPS_DYNAMIC, align 4
  store i32 %126, i32* %14, align 4
  br label %137

127:                                              ; preds = %116
  %128 = load %struct.ath10k*, %struct.ath10k** %9, align 8
  %129 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %130 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %133 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = call i32 @ath10k_warn(%struct.ath10k* %128, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %131, i32 %134)
  %136 = load i32, i32* @WMI_PEER_SMPS_PS_NONE, align 4
  store i32 %136, i32* %14, align 4
  br label %137

137:                                              ; preds = %116, %127, %125, %123, %121
  %138 = load i32, i32* %14, align 4
  %139 = load %struct.ath10k_sta*, %struct.ath10k_sta** %10, align 8
  %140 = getelementptr inbounds %struct.ath10k_sta, %struct.ath10k_sta* %139, i32 0, i32 1
  store i32 %138, i32* %140, align 4
  br label %141

141:                                              ; preds = %137, %111
  %142 = load i32, i32* %8, align 4
  %143 = load %struct.ath10k_sta*, %struct.ath10k_sta** %10, align 8
  %144 = getelementptr inbounds %struct.ath10k_sta, %struct.ath10k_sta* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 4
  %146 = or i32 %145, %142
  store i32 %146, i32* %144, align 4
  %147 = load %struct.ath10k*, %struct.ath10k** %9, align 8
  %148 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %147, i32 0, i32 0
  %149 = call i32 @spin_unlock_bh(i32* %148)
  %150 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %151 = load %struct.ath10k_sta*, %struct.ath10k_sta** %10, align 8
  %152 = getelementptr inbounds %struct.ath10k_sta, %struct.ath10k_sta* %151, i32 0, i32 3
  %153 = call i32 @ieee80211_queue_work(%struct.ieee80211_hw* %150, i32* %152)
  br label %154

154:                                              ; preds = %141, %40
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.ath10k_peer* @ath10k_peer_find(%struct.ath10k*, i32, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*, i32, i32) #1

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ieee80211_queue_work(%struct.ieee80211_hw*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
