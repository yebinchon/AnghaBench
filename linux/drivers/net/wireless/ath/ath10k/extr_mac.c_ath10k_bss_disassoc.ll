; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c_ath10k_bss_disassoc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c_ath10k_bss_disassoc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.ath10k* }
%struct.ath10k = type { i32 }
%struct.ieee80211_vif = type { i64 }
%struct.ath10k_vif = type { i32, i32, i32, i32, i32 }
%struct.ieee80211_sta_vht_cap = type { i32 }

@ATH10K_DBG_MAC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"mac vdev %i disassoc bssid %pM\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"failed to down vdev %i: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"failed to recalc txbf for vdev %i: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, %struct.ieee80211_vif*)* @ath10k_bss_disassoc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath10k_bss_disassoc(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca %struct.ieee80211_vif*, align 8
  %5 = alloca %struct.ath10k*, align 8
  %6 = alloca %struct.ath10k_vif*, align 8
  %7 = alloca %struct.ieee80211_sta_vht_cap, align 4
  %8 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %4, align 8
  %9 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %10 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %9, i32 0, i32 0
  %11 = load %struct.ath10k*, %struct.ath10k** %10, align 8
  store %struct.ath10k* %11, %struct.ath10k** %5, align 8
  %12 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %13 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to i8*
  %16 = bitcast i8* %15 to %struct.ath10k_vif*
  store %struct.ath10k_vif* %16, %struct.ath10k_vif** %6, align 8
  %17 = bitcast %struct.ieee80211_sta_vht_cap* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %17, i8 0, i64 4, i1 false)
  %18 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %19 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %18, i32 0, i32 0
  %20 = call i32 @lockdep_assert_held(i32* %19)
  %21 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %22 = load i32, i32* @ATH10K_DBG_MAC, align 4
  %23 = load %struct.ath10k_vif*, %struct.ath10k_vif** %6, align 8
  %24 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.ath10k_vif*, %struct.ath10k_vif** %6, align 8
  %27 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @ath10k_dbg(%struct.ath10k* %21, i32 %22, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %28)
  %30 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %31 = load %struct.ath10k_vif*, %struct.ath10k_vif** %6, align 8
  %32 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @ath10k_wmi_vdev_down(%struct.ath10k* %30, i32 %33)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %2
  %38 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %39 = load %struct.ath10k_vif*, %struct.ath10k_vif** %6, align 8
  %40 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @ath10k_warn(%struct.ath10k* %38, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %41, i32 %42)
  br label %44

44:                                               ; preds = %37, %2
  %45 = load %struct.ath10k_vif*, %struct.ath10k_vif** %6, align 8
  %46 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %45, i32 0, i32 0
  store i32 -1, i32* %46, align 4
  %47 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %48 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %49 = getelementptr inbounds %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_vht_cap* %7, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @ath10k_mac_vif_recalc_txbf(%struct.ath10k* %47, %struct.ieee80211_vif* %48, i32 %50)
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %8, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %44
  %55 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %56 = load %struct.ath10k_vif*, %struct.ath10k_vif** %6, align 8
  %57 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %8, align 4
  %60 = call i32 @ath10k_warn(%struct.ath10k* %55, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %58, i32 %59)
  br label %67

61:                                               ; preds = %44
  %62 = load %struct.ath10k_vif*, %struct.ath10k_vif** %6, align 8
  %63 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %62, i32 0, i32 1
  store i32 0, i32* %63, align 4
  %64 = load %struct.ath10k_vif*, %struct.ath10k_vif** %6, align 8
  %65 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %64, i32 0, i32 2
  %66 = call i32 @cancel_delayed_work_sync(i32* %65)
  br label %67

67:                                               ; preds = %61, %54
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @lockdep_assert_held(i32*) #2

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*, i32, i32) #2

declare dso_local i32 @ath10k_wmi_vdev_down(%struct.ath10k*, i32) #2

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*, i32, i32) #2

declare dso_local i32 @ath10k_mac_vif_recalc_txbf(%struct.ath10k*, %struct.ieee80211_vif*, i32) #2

declare dso_local i32 @cancel_delayed_work_sync(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
