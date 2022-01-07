; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_rs-fw.c_rs_fw_sgi_cw_support.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_rs-fw.c_rs_fw_sgi_cw_support.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sta = type { %struct.ieee80211_sta_he_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_ht_cap }
%struct.ieee80211_sta_he_cap = type { i64 }
%struct.ieee80211_sta_vht_cap = type { i32 }
%struct.ieee80211_sta_ht_cap = type { i32 }

@IEEE80211_HT_CAP_SGI_20 = common dso_local global i32 0, align 4
@IWL_TLC_MNG_CH_WIDTH_20MHZ = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_SGI_40 = common dso_local global i32 0, align 4
@IWL_TLC_MNG_CH_WIDTH_40MHZ = common dso_local global i32 0, align 4
@IEEE80211_VHT_CAP_SHORT_GI_80 = common dso_local global i32 0, align 4
@IWL_TLC_MNG_CH_WIDTH_80MHZ = common dso_local global i32 0, align 4
@IEEE80211_VHT_CAP_SHORT_GI_160 = common dso_local global i32 0, align 4
@IWL_TLC_MNG_CH_WIDTH_160MHZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_sta*)* @rs_fw_sgi_cw_support to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rs_fw_sgi_cw_support(%struct.ieee80211_sta* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ieee80211_sta*, align 8
  %4 = alloca %struct.ieee80211_sta_ht_cap*, align 8
  %5 = alloca %struct.ieee80211_sta_vht_cap*, align 8
  %6 = alloca %struct.ieee80211_sta_he_cap*, align 8
  %7 = alloca i32, align 4
  store %struct.ieee80211_sta* %0, %struct.ieee80211_sta** %3, align 8
  %8 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %3, align 8
  %9 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %8, i32 0, i32 2
  store %struct.ieee80211_sta_ht_cap* %9, %struct.ieee80211_sta_ht_cap** %4, align 8
  %10 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %3, align 8
  %11 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %10, i32 0, i32 1
  store %struct.ieee80211_sta_vht_cap* %11, %struct.ieee80211_sta_vht_cap** %5, align 8
  %12 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %3, align 8
  %13 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %12, i32 0, i32 0
  store %struct.ieee80211_sta_he_cap* %13, %struct.ieee80211_sta_he_cap** %6, align 8
  store i32 0, i32* %7, align 4
  %14 = load %struct.ieee80211_sta_he_cap*, %struct.ieee80211_sta_he_cap** %6, align 8
  %15 = getelementptr inbounds %struct.ieee80211_sta_he_cap, %struct.ieee80211_sta_he_cap* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %69

19:                                               ; preds = %1
  %20 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %4, align 8
  %21 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @IEEE80211_HT_CAP_SGI_20, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %19
  %27 = load i32, i32* @IWL_TLC_MNG_CH_WIDTH_20MHZ, align 4
  %28 = call i32 @BIT(i32 %27)
  %29 = load i32, i32* %7, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %7, align 4
  br label %31

31:                                               ; preds = %26, %19
  %32 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %4, align 8
  %33 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @IEEE80211_HT_CAP_SGI_40, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %31
  %39 = load i32, i32* @IWL_TLC_MNG_CH_WIDTH_40MHZ, align 4
  %40 = call i32 @BIT(i32 %39)
  %41 = load i32, i32* %7, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %7, align 4
  br label %43

43:                                               ; preds = %38, %31
  %44 = load %struct.ieee80211_sta_vht_cap*, %struct.ieee80211_sta_vht_cap** %5, align 8
  %45 = getelementptr inbounds %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_vht_cap* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @IEEE80211_VHT_CAP_SHORT_GI_80, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %43
  %51 = load i32, i32* @IWL_TLC_MNG_CH_WIDTH_80MHZ, align 4
  %52 = call i32 @BIT(i32 %51)
  %53 = load i32, i32* %7, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %7, align 4
  br label %55

55:                                               ; preds = %50, %43
  %56 = load %struct.ieee80211_sta_vht_cap*, %struct.ieee80211_sta_vht_cap** %5, align 8
  %57 = getelementptr inbounds %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_vht_cap* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @IEEE80211_VHT_CAP_SHORT_GI_160, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %55
  %63 = load i32, i32* @IWL_TLC_MNG_CH_WIDTH_160MHZ, align 4
  %64 = call i32 @BIT(i32 %63)
  %65 = load i32, i32* %7, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %7, align 4
  br label %67

67:                                               ; preds = %62, %55
  %68 = load i32, i32* %7, align 4
  store i32 %68, i32* %2, align 4
  br label %69

69:                                               ; preds = %67, %18
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
