; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_rs.c_rs_sgi_allow.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_rs.c_rs_sgi_allow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32 }
%struct.ieee80211_sta = type { %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_ht_cap }
%struct.ieee80211_sta_vht_cap = type { i32 }
%struct.ieee80211_sta_ht_cap = type { i32 }
%struct.rs_rate = type { i32 }
%struct.rs_tx_column = type { i32 }

@IEEE80211_HT_CAP_SGI_20 = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_SGI_40 = common dso_local global i32 0, align 4
@IEEE80211_VHT_CAP_SHORT_GI_80 = common dso_local global i32 0, align 4
@IEEE80211_VHT_CAP_SHORT_GI_160 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_mvm*, %struct.ieee80211_sta*, %struct.rs_rate*, %struct.rs_tx_column*)* @rs_sgi_allow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rs_sgi_allow(%struct.iwl_mvm* %0, %struct.ieee80211_sta* %1, %struct.rs_rate* %2, %struct.rs_tx_column* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.iwl_mvm*, align 8
  %7 = alloca %struct.ieee80211_sta*, align 8
  %8 = alloca %struct.rs_rate*, align 8
  %9 = alloca %struct.rs_tx_column*, align 8
  %10 = alloca %struct.ieee80211_sta_ht_cap*, align 8
  %11 = alloca %struct.ieee80211_sta_vht_cap*, align 8
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %6, align 8
  store %struct.ieee80211_sta* %1, %struct.ieee80211_sta** %7, align 8
  store %struct.rs_rate* %2, %struct.rs_rate** %8, align 8
  store %struct.rs_tx_column* %3, %struct.rs_tx_column** %9, align 8
  %12 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %13 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %12, i32 0, i32 1
  store %struct.ieee80211_sta_ht_cap* %13, %struct.ieee80211_sta_ht_cap** %10, align 8
  %14 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %15 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %14, i32 0, i32 0
  store %struct.ieee80211_sta_vht_cap* %15, %struct.ieee80211_sta_vht_cap** %11, align 8
  %16 = load %struct.rs_rate*, %struct.rs_rate** %8, align 8
  %17 = call i64 @is_ht20(%struct.rs_rate* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %4
  %20 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %10, align 8
  %21 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @IEEE80211_HT_CAP_SGI_20, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  store i32 1, i32* %5, align 4
  br label %64

27:                                               ; preds = %19, %4
  %28 = load %struct.rs_rate*, %struct.rs_rate** %8, align 8
  %29 = call i64 @is_ht40(%struct.rs_rate* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %27
  %32 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %10, align 8
  %33 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @IEEE80211_HT_CAP_SGI_40, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %31
  store i32 1, i32* %5, align 4
  br label %64

39:                                               ; preds = %31, %27
  %40 = load %struct.rs_rate*, %struct.rs_rate** %8, align 8
  %41 = call i64 @is_ht80(%struct.rs_rate* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %39
  %44 = load %struct.ieee80211_sta_vht_cap*, %struct.ieee80211_sta_vht_cap** %11, align 8
  %45 = getelementptr inbounds %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_vht_cap* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @IEEE80211_VHT_CAP_SHORT_GI_80, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %43
  store i32 1, i32* %5, align 4
  br label %64

51:                                               ; preds = %43, %39
  %52 = load %struct.rs_rate*, %struct.rs_rate** %8, align 8
  %53 = call i64 @is_ht160(%struct.rs_rate* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %63

55:                                               ; preds = %51
  %56 = load %struct.ieee80211_sta_vht_cap*, %struct.ieee80211_sta_vht_cap** %11, align 8
  %57 = getelementptr inbounds %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_vht_cap* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @IEEE80211_VHT_CAP_SHORT_GI_160, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %55
  store i32 1, i32* %5, align 4
  br label %64

63:                                               ; preds = %55, %51
  store i32 0, i32* %5, align 4
  br label %64

64:                                               ; preds = %63, %62, %50, %38, %26
  %65 = load i32, i32* %5, align 4
  ret i32 %65
}

declare dso_local i64 @is_ht20(%struct.rs_rate*) #1

declare dso_local i64 @is_ht40(%struct.rs_rate*) #1

declare dso_local i64 @is_ht80(%struct.rs_rate*) #1

declare dso_local i64 @is_ht160(%struct.rs_rate*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
