; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_scan.c_iwl_mvm_lmac_scan_cfg_channels.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_scan.c_iwl_mvm_lmac_scan_cfg_channels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32 }
%struct.ieee80211_channel = type { i32 }
%struct.iwl_scan_req_lmac = type { i32 }
%struct.iwl_scan_channel_cfg_lmac = type { i32, i64, i8*, i8* }

@IWL_UNIFIED_SCAN_CHANNEL_PARTIAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_mvm*, %struct.ieee80211_channel**, i32, i32, %struct.iwl_scan_req_lmac*)* @iwl_mvm_lmac_scan_cfg_channels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_mvm_lmac_scan_cfg_channels(%struct.iwl_mvm* %0, %struct.ieee80211_channel** %1, i32 %2, i32 %3, %struct.iwl_scan_req_lmac* %4) #0 {
  %6 = alloca %struct.iwl_mvm*, align 8
  %7 = alloca %struct.ieee80211_channel**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.iwl_scan_req_lmac*, align 8
  %11 = alloca %struct.iwl_scan_channel_cfg_lmac*, align 8
  %12 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %6, align 8
  store %struct.ieee80211_channel** %1, %struct.ieee80211_channel*** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.iwl_scan_req_lmac* %4, %struct.iwl_scan_req_lmac** %10, align 8
  %13 = load %struct.iwl_scan_req_lmac*, %struct.iwl_scan_req_lmac** %10, align 8
  %14 = getelementptr inbounds %struct.iwl_scan_req_lmac, %struct.iwl_scan_req_lmac* %13, i32 0, i32 0
  %15 = bitcast i32* %14 to i8*
  %16 = bitcast i8* %15 to %struct.iwl_scan_channel_cfg_lmac*
  store %struct.iwl_scan_channel_cfg_lmac* %16, %struct.iwl_scan_channel_cfg_lmac** %11, align 8
  store i32 0, i32* %12, align 4
  br label %17

17:                                               ; preds = %55, %5
  %18 = load i32, i32* %12, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %58

21:                                               ; preds = %17
  %22 = load %struct.ieee80211_channel**, %struct.ieee80211_channel*** %7, align 8
  %23 = load i32, i32* %12, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.ieee80211_channel*, %struct.ieee80211_channel** %22, i64 %24
  %26 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %25, align 8
  %27 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i8* @cpu_to_le16(i32 %28)
  %30 = load %struct.iwl_scan_channel_cfg_lmac*, %struct.iwl_scan_channel_cfg_lmac** %11, align 8
  %31 = load i32, i32* %12, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.iwl_scan_channel_cfg_lmac, %struct.iwl_scan_channel_cfg_lmac* %30, i64 %32
  %34 = getelementptr inbounds %struct.iwl_scan_channel_cfg_lmac, %struct.iwl_scan_channel_cfg_lmac* %33, i32 0, i32 3
  store i8* %29, i8** %34, align 8
  %35 = call i8* @cpu_to_le16(i32 1)
  %36 = load %struct.iwl_scan_channel_cfg_lmac*, %struct.iwl_scan_channel_cfg_lmac** %11, align 8
  %37 = load i32, i32* %12, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.iwl_scan_channel_cfg_lmac, %struct.iwl_scan_channel_cfg_lmac* %36, i64 %38
  %40 = getelementptr inbounds %struct.iwl_scan_channel_cfg_lmac, %struct.iwl_scan_channel_cfg_lmac* %39, i32 0, i32 2
  store i8* %35, i8** %40, align 8
  %41 = load %struct.iwl_scan_channel_cfg_lmac*, %struct.iwl_scan_channel_cfg_lmac** %11, align 8
  %42 = load i32, i32* %12, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.iwl_scan_channel_cfg_lmac, %struct.iwl_scan_channel_cfg_lmac* %41, i64 %43
  %45 = getelementptr inbounds %struct.iwl_scan_channel_cfg_lmac, %struct.iwl_scan_channel_cfg_lmac* %44, i32 0, i32 1
  store i64 0, i64* %45, align 8
  %46 = load i32, i32* @IWL_UNIFIED_SCAN_CHANNEL_PARTIAL, align 4
  %47 = load i32, i32* %9, align 4
  %48 = or i32 %46, %47
  %49 = call i32 @cpu_to_le32(i32 %48)
  %50 = load %struct.iwl_scan_channel_cfg_lmac*, %struct.iwl_scan_channel_cfg_lmac** %11, align 8
  %51 = load i32, i32* %12, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.iwl_scan_channel_cfg_lmac, %struct.iwl_scan_channel_cfg_lmac* %50, i64 %52
  %54 = getelementptr inbounds %struct.iwl_scan_channel_cfg_lmac, %struct.iwl_scan_channel_cfg_lmac* %53, i32 0, i32 0
  store i32 %49, i32* %54, align 8
  br label %55

55:                                               ; preds = %21
  %56 = load i32, i32* %12, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %12, align 4
  br label %17

58:                                               ; preds = %17
  ret void
}

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
