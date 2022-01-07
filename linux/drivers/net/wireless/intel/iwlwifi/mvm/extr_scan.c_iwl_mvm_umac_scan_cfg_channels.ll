; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_scan.c_iwl_mvm_umac_scan_cfg_channels.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_scan.c_iwl_mvm_umac_scan_cfg_channels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32 }
%struct.ieee80211_channel = type { i64 }
%struct.iwl_scan_channel_cfg_umac = type { %struct.TYPE_4__, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i64, i32, i64 }
%struct.TYPE_3__ = type { i32, i64, i32 }

@IWL_SCAN_LAST_2_4_CHN = common dso_local global i64 0, align 8
@IWL_SCAN_BAND_2_4 = common dso_local global i32 0, align 4
@IWL_SCAN_BAND_5_2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_mvm*, %struct.ieee80211_channel**, i32, i32, %struct.iwl_scan_channel_cfg_umac*)* @iwl_mvm_umac_scan_cfg_channels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_mvm_umac_scan_cfg_channels(%struct.iwl_mvm* %0, %struct.ieee80211_channel** %1, i32 %2, i32 %3, %struct.iwl_scan_channel_cfg_umac* %4) #0 {
  %6 = alloca %struct.iwl_mvm*, align 8
  %7 = alloca %struct.ieee80211_channel**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.iwl_scan_channel_cfg_umac*, align 8
  %11 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %6, align 8
  store %struct.ieee80211_channel** %1, %struct.ieee80211_channel*** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.iwl_scan_channel_cfg_umac* %4, %struct.iwl_scan_channel_cfg_umac** %10, align 8
  store i32 0, i32* %11, align 4
  br label %12

12:                                               ; preds = %88, %5
  %13 = load i32, i32* %11, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %91

16:                                               ; preds = %12
  %17 = load i32, i32* %9, align 4
  %18 = call i32 @cpu_to_le32(i32 %17)
  %19 = load %struct.iwl_scan_channel_cfg_umac*, %struct.iwl_scan_channel_cfg_umac** %10, align 8
  %20 = load i32, i32* %11, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.iwl_scan_channel_cfg_umac, %struct.iwl_scan_channel_cfg_umac* %19, i64 %21
  %23 = getelementptr inbounds %struct.iwl_scan_channel_cfg_umac, %struct.iwl_scan_channel_cfg_umac* %22, i32 0, i32 2
  store i32 %18, i32* %23, align 8
  %24 = load %struct.ieee80211_channel**, %struct.ieee80211_channel*** %7, align 8
  %25 = load i32, i32* %11, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.ieee80211_channel*, %struct.ieee80211_channel** %24, i64 %26
  %28 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %27, align 8
  %29 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.iwl_scan_channel_cfg_umac*, %struct.iwl_scan_channel_cfg_umac** %10, align 8
  %32 = load i32, i32* %11, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.iwl_scan_channel_cfg_umac, %struct.iwl_scan_channel_cfg_umac* %31, i64 %33
  %35 = getelementptr inbounds %struct.iwl_scan_channel_cfg_umac, %struct.iwl_scan_channel_cfg_umac* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  store i64 %30, i64* %36, align 8
  %37 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %38 = call i64 @iwl_mvm_is_scan_ext_chan_supported(%struct.iwl_mvm* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %74

40:                                               ; preds = %16
  %41 = load %struct.ieee80211_channel**, %struct.ieee80211_channel*** %7, align 8
  %42 = load i32, i32* %11, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.ieee80211_channel*, %struct.ieee80211_channel** %41, i64 %43
  %45 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %44, align 8
  %46 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @IWL_SCAN_LAST_2_4_CHN, align 8
  %49 = icmp sle i64 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %40
  %51 = load i32, i32* @IWL_SCAN_BAND_2_4, align 4
  br label %54

52:                                               ; preds = %40
  %53 = load i32, i32* @IWL_SCAN_BAND_5_2, align 4
  br label %54

54:                                               ; preds = %52, %50
  %55 = phi i32 [ %51, %50 ], [ %53, %52 ]
  %56 = load %struct.iwl_scan_channel_cfg_umac*, %struct.iwl_scan_channel_cfg_umac** %10, align 8
  %57 = load i32, i32* %11, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.iwl_scan_channel_cfg_umac, %struct.iwl_scan_channel_cfg_umac* %56, i64 %58
  %60 = getelementptr inbounds %struct.iwl_scan_channel_cfg_umac, %struct.iwl_scan_channel_cfg_umac* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 2
  store i32 %55, i32* %61, align 8
  %62 = load %struct.iwl_scan_channel_cfg_umac*, %struct.iwl_scan_channel_cfg_umac** %10, align 8
  %63 = load i32, i32* %11, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.iwl_scan_channel_cfg_umac, %struct.iwl_scan_channel_cfg_umac* %62, i64 %64
  %66 = getelementptr inbounds %struct.iwl_scan_channel_cfg_umac, %struct.iwl_scan_channel_cfg_umac* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  store i32 1, i32* %67, align 8
  %68 = load %struct.iwl_scan_channel_cfg_umac*, %struct.iwl_scan_channel_cfg_umac** %10, align 8
  %69 = load i32, i32* %11, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.iwl_scan_channel_cfg_umac, %struct.iwl_scan_channel_cfg_umac* %68, i64 %70
  %72 = getelementptr inbounds %struct.iwl_scan_channel_cfg_umac, %struct.iwl_scan_channel_cfg_umac* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 1
  store i64 0, i64* %73, align 8
  br label %87

74:                                               ; preds = %16
  %75 = load %struct.iwl_scan_channel_cfg_umac*, %struct.iwl_scan_channel_cfg_umac** %10, align 8
  %76 = load i32, i32* %11, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.iwl_scan_channel_cfg_umac, %struct.iwl_scan_channel_cfg_umac* %75, i64 %77
  %79 = getelementptr inbounds %struct.iwl_scan_channel_cfg_umac, %struct.iwl_scan_channel_cfg_umac* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 1
  store i32 1, i32* %80, align 8
  %81 = load %struct.iwl_scan_channel_cfg_umac*, %struct.iwl_scan_channel_cfg_umac** %10, align 8
  %82 = load i32, i32* %11, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.iwl_scan_channel_cfg_umac, %struct.iwl_scan_channel_cfg_umac* %81, i64 %83
  %85 = getelementptr inbounds %struct.iwl_scan_channel_cfg_umac, %struct.iwl_scan_channel_cfg_umac* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 2
  store i64 0, i64* %86, align 8
  br label %87

87:                                               ; preds = %74, %54
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %11, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %11, align 4
  br label %12

91:                                               ; preds = %12
  ret void
}

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i64 @iwl_mvm_is_scan_ext_chan_supported(%struct.iwl_mvm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
