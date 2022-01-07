; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c_ath10k_bss_assoc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c_ath10k_bss_assoc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.ath10k* }
%struct.ath10k = type { i32 }
%struct.ieee80211_vif = type { i64 }
%struct.ieee80211_bss_conf = type { i32, i32 }
%struct.ath10k_vif = type { i32, i32, i32, i32 }
%struct.ieee80211_sta_ht_cap = type { i32 }
%struct.ieee80211_sta_vht_cap = type { i32 }
%struct.wmi_peer_assoc_complete_arg = type { i32 }
%struct.ieee80211_sta = type { %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_ht_cap }

@ATH10K_DBG_MAC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"mac vdev %i assoc bssid %pM aid %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"failed to find station entry for bss %pM vdev %i\0A\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"failed to prepare peer assoc for %pM vdev %i: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"failed to run peer assoc for %pM vdev %i: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"failed to setup peer SMPS for vdev %i: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [50 x i8] c"failed to recalc txbf for vdev %i on bss %pM: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [46 x i8] c"mac vdev %d up (associated) bssid %pM aid %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"failed to set vdev %d up: %d\0A\00", align 1
@WMI_PEER_DUMMY_VAR = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [64 x i8] c"failed to poke peer %pM param for ps workaround on vdev %i: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, %struct.ieee80211_vif*, %struct.ieee80211_bss_conf*)* @ath10k_bss_assoc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath10k_bss_assoc(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, %struct.ieee80211_bss_conf* %2) #0 {
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca %struct.ieee80211_vif*, align 8
  %6 = alloca %struct.ieee80211_bss_conf*, align 8
  %7 = alloca %struct.ath10k*, align 8
  %8 = alloca %struct.ath10k_vif*, align 8
  %9 = alloca %struct.ieee80211_sta_ht_cap, align 4
  %10 = alloca %struct.ieee80211_sta_vht_cap, align 4
  %11 = alloca %struct.wmi_peer_assoc_complete_arg, align 4
  %12 = alloca %struct.ieee80211_sta*, align 8
  %13 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %5, align 8
  store %struct.ieee80211_bss_conf* %2, %struct.ieee80211_bss_conf** %6, align 8
  %14 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %15 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %14, i32 0, i32 0
  %16 = load %struct.ath10k*, %struct.ath10k** %15, align 8
  store %struct.ath10k* %16, %struct.ath10k** %7, align 8
  %17 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %18 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to i8*
  %21 = bitcast i8* %20 to %struct.ath10k_vif*
  store %struct.ath10k_vif* %21, %struct.ath10k_vif** %8, align 8
  %22 = load %struct.ath10k*, %struct.ath10k** %7, align 8
  %23 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %22, i32 0, i32 0
  %24 = call i32 @lockdep_assert_held(i32* %23)
  %25 = load %struct.ath10k*, %struct.ath10k** %7, align 8
  %26 = load i32, i32* @ATH10K_DBG_MAC, align 4
  %27 = load %struct.ath10k_vif*, %struct.ath10k_vif** %8, align 8
  %28 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.ath10k_vif*, %struct.ath10k_vif** %8, align 8
  %31 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.ath10k_vif*, %struct.ath10k_vif** %8, align 8
  %34 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @ath10k_dbg(%struct.ath10k* %25, i32 %26, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %32, i32 %35)
  %37 = call i32 (...) @rcu_read_lock()
  %38 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %39 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %6, align 8
  %40 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call %struct.ieee80211_sta* @ieee80211_find_sta(%struct.ieee80211_vif* %38, i32 %41)
  store %struct.ieee80211_sta* %42, %struct.ieee80211_sta** %12, align 8
  %43 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %12, align 8
  %44 = icmp ne %struct.ieee80211_sta* %43, null
  br i1 %44, label %55, label %45

45:                                               ; preds = %3
  %46 = load %struct.ath10k*, %struct.ath10k** %7, align 8
  %47 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %6, align 8
  %48 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.ath10k_vif*, %struct.ath10k_vif** %8, align 8
  %51 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 (%struct.ath10k*, i8*, i32, i32, ...) @ath10k_warn(%struct.ath10k* %46, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %49, i32 %52)
  %54 = call i32 (...) @rcu_read_unlock()
  br label %204

55:                                               ; preds = %3
  %56 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %12, align 8
  %57 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %56, i32 0, i32 1
  %58 = bitcast %struct.ieee80211_sta_ht_cap* %9 to i8*
  %59 = bitcast %struct.ieee80211_sta_ht_cap* %57 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %58, i8* align 4 %59, i64 4, i1 false)
  %60 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %12, align 8
  %61 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %60, i32 0, i32 0
  %62 = bitcast %struct.ieee80211_sta_vht_cap* %10 to i8*
  %63 = bitcast %struct.ieee80211_sta_vht_cap* %61 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %62, i8* align 4 %63, i64 4, i1 false)
  %64 = load %struct.ath10k*, %struct.ath10k** %7, align 8
  %65 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %66 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %12, align 8
  %67 = call i32 @ath10k_peer_assoc_prepare(%struct.ath10k* %64, %struct.ieee80211_vif* %65, %struct.ieee80211_sta* %66, %struct.wmi_peer_assoc_complete_arg* %11)
  store i32 %67, i32* %13, align 4
  %68 = load i32, i32* %13, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %81

70:                                               ; preds = %55
  %71 = load %struct.ath10k*, %struct.ath10k** %7, align 8
  %72 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %6, align 8
  %73 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.ath10k_vif*, %struct.ath10k_vif** %8, align 8
  %76 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %13, align 4
  %79 = call i32 (%struct.ath10k*, i8*, i32, i32, ...) @ath10k_warn(%struct.ath10k* %71, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i32 %74, i32 %77, i32 %78)
  %80 = call i32 (...) @rcu_read_unlock()
  br label %204

81:                                               ; preds = %55
  %82 = call i32 (...) @rcu_read_unlock()
  %83 = load %struct.ath10k*, %struct.ath10k** %7, align 8
  %84 = call i32 @ath10k_wmi_peer_assoc(%struct.ath10k* %83, %struct.wmi_peer_assoc_complete_arg* %11)
  store i32 %84, i32* %13, align 4
  %85 = load i32, i32* %13, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %97

87:                                               ; preds = %81
  %88 = load %struct.ath10k*, %struct.ath10k** %7, align 8
  %89 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %6, align 8
  %90 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.ath10k_vif*, %struct.ath10k_vif** %8, align 8
  %93 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* %13, align 4
  %96 = call i32 (%struct.ath10k*, i8*, i32, i32, ...) @ath10k_warn(%struct.ath10k* %88, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i32 %91, i32 %94, i32 %95)
  br label %204

97:                                               ; preds = %81
  %98 = load %struct.ath10k*, %struct.ath10k** %7, align 8
  %99 = load %struct.ath10k_vif*, %struct.ath10k_vif** %8, align 8
  %100 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %6, align 8
  %101 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @ath10k_setup_peer_smps(%struct.ath10k* %98, %struct.ath10k_vif* %99, i32 %102, %struct.ieee80211_sta_ht_cap* %9)
  store i32 %103, i32* %13, align 4
  %104 = load i32, i32* %13, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %113

106:                                              ; preds = %97
  %107 = load %struct.ath10k*, %struct.ath10k** %7, align 8
  %108 = load %struct.ath10k_vif*, %struct.ath10k_vif** %8, align 8
  %109 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* %13, align 4
  %112 = call i32 (%struct.ath10k*, i8*, i32, i32, ...) @ath10k_warn(%struct.ath10k* %107, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), i32 %110, i32 %111)
  br label %204

113:                                              ; preds = %97
  %114 = load %struct.ath10k*, %struct.ath10k** %7, align 8
  %115 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %116 = getelementptr inbounds %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_vht_cap* %10, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @ath10k_mac_vif_recalc_txbf(%struct.ath10k* %114, %struct.ieee80211_vif* %115, i32 %117)
  store i32 %118, i32* %13, align 4
  %119 = load i32, i32* %13, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %131

121:                                              ; preds = %113
  %122 = load %struct.ath10k*, %struct.ath10k** %7, align 8
  %123 = load %struct.ath10k_vif*, %struct.ath10k_vif** %8, align 8
  %124 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %6, align 8
  %127 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* %13, align 4
  %130 = call i32 (%struct.ath10k*, i8*, i32, i32, ...) @ath10k_warn(%struct.ath10k* %122, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i64 0, i64 0), i32 %125, i32 %128, i32 %129)
  br label %204

131:                                              ; preds = %113
  %132 = load %struct.ath10k*, %struct.ath10k** %7, align 8
  %133 = load i32, i32* @ATH10K_DBG_MAC, align 4
  %134 = load %struct.ath10k_vif*, %struct.ath10k_vif** %8, align 8
  %135 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %6, align 8
  %138 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %6, align 8
  %141 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @ath10k_dbg(%struct.ath10k* %132, i32 %133, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.6, i64 0, i64 0), i32 %136, i32 %139, i32 %142)
  %144 = load %struct.ath10k_vif*, %struct.ath10k_vif** %8, align 8
  %145 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @WARN_ON(i32 %146)
  %148 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %6, align 8
  %149 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.ath10k_vif*, %struct.ath10k_vif** %8, align 8
  %152 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %151, i32 0, i32 3
  store i32 %150, i32* %152, align 4
  %153 = load %struct.ath10k_vif*, %struct.ath10k_vif** %8, align 8
  %154 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %6, align 8
  %157 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @ether_addr_copy(i32 %155, i32 %158)
  %160 = load %struct.ath10k*, %struct.ath10k** %7, align 8
  %161 = load %struct.ath10k_vif*, %struct.ath10k_vif** %8, align 8
  %162 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.ath10k_vif*, %struct.ath10k_vif** %8, align 8
  %165 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %164, i32 0, i32 3
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.ath10k_vif*, %struct.ath10k_vif** %8, align 8
  %168 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @ath10k_wmi_vdev_up(%struct.ath10k* %160, i32 %163, i32 %166, i32 %169)
  store i32 %170, i32* %13, align 4
  %171 = load i32, i32* %13, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %180

173:                                              ; preds = %131
  %174 = load %struct.ath10k*, %struct.ath10k** %7, align 8
  %175 = load %struct.ath10k_vif*, %struct.ath10k_vif** %8, align 8
  %176 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = load i32, i32* %13, align 4
  %179 = call i32 (%struct.ath10k*, i8*, i32, i32, ...) @ath10k_warn(%struct.ath10k* %174, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i32 %177, i32 %178)
  br label %204

180:                                              ; preds = %131
  %181 = load %struct.ath10k_vif*, %struct.ath10k_vif** %8, align 8
  %182 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %181, i32 0, i32 0
  store i32 1, i32* %182, align 4
  %183 = load %struct.ath10k*, %struct.ath10k** %7, align 8
  %184 = load %struct.ath10k_vif*, %struct.ath10k_vif** %8, align 8
  %185 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = load %struct.ath10k_vif*, %struct.ath10k_vif** %8, align 8
  %188 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %187, i32 0, i32 2
  %189 = load i32, i32* %188, align 4
  %190 = load i32, i32* @WMI_PEER_DUMMY_VAR, align 4
  %191 = call i32 @ath10k_wmi_peer_set_param(%struct.ath10k* %183, i32 %186, i32 %189, i32 %190, i32 1)
  store i32 %191, i32* %13, align 4
  %192 = load i32, i32* %13, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %204

194:                                              ; preds = %180
  %195 = load %struct.ath10k*, %struct.ath10k** %7, align 8
  %196 = load %struct.ath10k_vif*, %struct.ath10k_vif** %8, align 8
  %197 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %196, i32 0, i32 2
  %198 = load i32, i32* %197, align 4
  %199 = load %struct.ath10k_vif*, %struct.ath10k_vif** %8, align 8
  %200 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 4
  %202 = load i32, i32* %13, align 4
  %203 = call i32 (%struct.ath10k*, i8*, i32, i32, ...) @ath10k_warn(%struct.ath10k* %195, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.8, i64 0, i64 0), i32 %198, i32 %201, i32 %202)
  br label %204

204:                                              ; preds = %45, %70, %87, %106, %121, %173, %194, %180
  ret void
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.ieee80211_sta* @ieee80211_find_sta(%struct.ieee80211_vif*, i32) #1

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*, i32, i32, ...) #1

declare dso_local i32 @rcu_read_unlock(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ath10k_peer_assoc_prepare(%struct.ath10k*, %struct.ieee80211_vif*, %struct.ieee80211_sta*, %struct.wmi_peer_assoc_complete_arg*) #1

declare dso_local i32 @ath10k_wmi_peer_assoc(%struct.ath10k*, %struct.wmi_peer_assoc_complete_arg*) #1

declare dso_local i32 @ath10k_setup_peer_smps(%struct.ath10k*, %struct.ath10k_vif*, i32, %struct.ieee80211_sta_ht_cap*) #1

declare dso_local i32 @ath10k_mac_vif_recalc_txbf(%struct.ath10k*, %struct.ieee80211_vif*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @ether_addr_copy(i32, i32) #1

declare dso_local i32 @ath10k_wmi_vdev_up(%struct.ath10k*, i32, i32, i32) #1

declare dso_local i32 @ath10k_wmi_peer_set_param(%struct.ath10k*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
