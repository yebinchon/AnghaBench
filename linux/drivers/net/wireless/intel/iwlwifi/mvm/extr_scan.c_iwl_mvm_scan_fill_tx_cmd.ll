; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_scan.c_iwl_mvm_scan_fill_tx_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_scan.c_iwl_mvm_scan_fill_tx_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.iwl_scan_req_tx_cmd = type { i32, i8*, i8* }

@TX_CMD_FLG_SEQ_CTL = common dso_local global i32 0, align 4
@TX_CMD_FLG_BT_DIS = common dso_local global i32 0, align 4
@NL80211_BAND_2GHZ = common dso_local global i32 0, align 4
@NL80211_BAND_5GHZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_mvm*, %struct.iwl_scan_req_tx_cmd*, i32)* @iwl_mvm_scan_fill_tx_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_mvm_scan_fill_tx_cmd(%struct.iwl_mvm* %0, %struct.iwl_scan_req_tx_cmd* %1, i32 %2) #0 {
  %4 = alloca %struct.iwl_mvm*, align 8
  %5 = alloca %struct.iwl_scan_req_tx_cmd*, align 8
  %6 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %4, align 8
  store %struct.iwl_scan_req_tx_cmd* %1, %struct.iwl_scan_req_tx_cmd** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* @TX_CMD_FLG_SEQ_CTL, align 4
  %8 = load i32, i32* @TX_CMD_FLG_BT_DIS, align 4
  %9 = or i32 %7, %8
  %10 = call i8* @cpu_to_le32(i32 %9)
  %11 = load %struct.iwl_scan_req_tx_cmd*, %struct.iwl_scan_req_tx_cmd** %5, align 8
  %12 = getelementptr inbounds %struct.iwl_scan_req_tx_cmd, %struct.iwl_scan_req_tx_cmd* %11, i64 0
  %13 = getelementptr inbounds %struct.iwl_scan_req_tx_cmd, %struct.iwl_scan_req_tx_cmd* %12, i32 0, i32 2
  store i8* %10, i8** %13, align 8
  %14 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %15 = load i32, i32* @NL80211_BAND_2GHZ, align 4
  %16 = load i32, i32* %6, align 4
  %17 = call i8* @iwl_mvm_scan_rate_n_flags(%struct.iwl_mvm* %14, i32 %15, i32 %16)
  %18 = load %struct.iwl_scan_req_tx_cmd*, %struct.iwl_scan_req_tx_cmd** %5, align 8
  %19 = getelementptr inbounds %struct.iwl_scan_req_tx_cmd, %struct.iwl_scan_req_tx_cmd* %18, i64 0
  %20 = getelementptr inbounds %struct.iwl_scan_req_tx_cmd, %struct.iwl_scan_req_tx_cmd* %19, i32 0, i32 1
  store i8* %17, i8** %20, align 8
  %21 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %22 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.iwl_scan_req_tx_cmd*, %struct.iwl_scan_req_tx_cmd** %5, align 8
  %26 = getelementptr inbounds %struct.iwl_scan_req_tx_cmd, %struct.iwl_scan_req_tx_cmd* %25, i64 0
  %27 = getelementptr inbounds %struct.iwl_scan_req_tx_cmd, %struct.iwl_scan_req_tx_cmd* %26, i32 0, i32 0
  store i32 %24, i32* %27, align 8
  %28 = load i32, i32* @TX_CMD_FLG_SEQ_CTL, align 4
  %29 = load i32, i32* @TX_CMD_FLG_BT_DIS, align 4
  %30 = or i32 %28, %29
  %31 = call i8* @cpu_to_le32(i32 %30)
  %32 = load %struct.iwl_scan_req_tx_cmd*, %struct.iwl_scan_req_tx_cmd** %5, align 8
  %33 = getelementptr inbounds %struct.iwl_scan_req_tx_cmd, %struct.iwl_scan_req_tx_cmd* %32, i64 1
  %34 = getelementptr inbounds %struct.iwl_scan_req_tx_cmd, %struct.iwl_scan_req_tx_cmd* %33, i32 0, i32 2
  store i8* %31, i8** %34, align 8
  %35 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %36 = load i32, i32* @NL80211_BAND_5GHZ, align 4
  %37 = load i32, i32* %6, align 4
  %38 = call i8* @iwl_mvm_scan_rate_n_flags(%struct.iwl_mvm* %35, i32 %36, i32 %37)
  %39 = load %struct.iwl_scan_req_tx_cmd*, %struct.iwl_scan_req_tx_cmd** %5, align 8
  %40 = getelementptr inbounds %struct.iwl_scan_req_tx_cmd, %struct.iwl_scan_req_tx_cmd* %39, i64 1
  %41 = getelementptr inbounds %struct.iwl_scan_req_tx_cmd, %struct.iwl_scan_req_tx_cmd* %40, i32 0, i32 1
  store i8* %38, i8** %41, align 8
  %42 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %43 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.iwl_scan_req_tx_cmd*, %struct.iwl_scan_req_tx_cmd** %5, align 8
  %47 = getelementptr inbounds %struct.iwl_scan_req_tx_cmd, %struct.iwl_scan_req_tx_cmd* %46, i64 1
  %48 = getelementptr inbounds %struct.iwl_scan_req_tx_cmd, %struct.iwl_scan_req_tx_cmd* %47, i32 0, i32 0
  store i32 %45, i32* %48, align 8
  ret void
}

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i8* @iwl_mvm_scan_rate_n_flags(%struct.iwl_mvm*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
