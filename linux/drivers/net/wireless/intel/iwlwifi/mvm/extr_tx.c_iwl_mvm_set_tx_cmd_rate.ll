; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_tx.c_iwl_mvm_set_tx_cmd_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_tx.c_iwl_mvm_set_tx_cmd_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32 }
%struct.iwl_tx_cmd = type { i32, i32, i64, i32, i32 }
%struct.ieee80211_tx_info = type { i32 }
%struct.ieee80211_sta = type { i32 }
%struct.iwl_mvm_sta = type { i64 }

@IWL_RTS_DFAULT_RETRY_LIMIT = common dso_local global i32 0, align 4
@IWL_MGMT_DFAULT_RETRY_LIMIT = common dso_local global i32 0, align 4
@IWL_BAR_DFAULT_RETRY_LIMIT = common dso_local global i32 0, align 4
@IWL_DEFAULT_TX_RETRY = common dso_local global i32 0, align 4
@IEEE80211_STA_AUTHORIZED = common dso_local global i64 0, align 8
@TX_CMD_FLG_STA_RATE = common dso_local global i32 0, align 4
@TX_CMD_FLG_ACK = common dso_local global i32 0, align 4
@TX_CMD_FLG_BAR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iwl_mvm_set_tx_cmd_rate(%struct.iwl_mvm* %0, %struct.iwl_tx_cmd* %1, %struct.ieee80211_tx_info* %2, %struct.ieee80211_sta* %3, i32 %4) #0 {
  %6 = alloca %struct.iwl_mvm*, align 8
  %7 = alloca %struct.iwl_tx_cmd*, align 8
  %8 = alloca %struct.ieee80211_tx_info*, align 8
  %9 = alloca %struct.ieee80211_sta*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.iwl_mvm_sta*, align 8
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %6, align 8
  store %struct.iwl_tx_cmd* %1, %struct.iwl_tx_cmd** %7, align 8
  store %struct.ieee80211_tx_info* %2, %struct.ieee80211_tx_info** %8, align 8
  store %struct.ieee80211_sta* %3, %struct.ieee80211_sta** %9, align 8
  store i32 %4, i32* %10, align 4
  %12 = load i32, i32* @IWL_RTS_DFAULT_RETRY_LIMIT, align 4
  %13 = load %struct.iwl_tx_cmd*, %struct.iwl_tx_cmd** %7, align 8
  %14 = getelementptr inbounds %struct.iwl_tx_cmd, %struct.iwl_tx_cmd* %13, i32 0, i32 4
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* %10, align 4
  %16 = call i64 @ieee80211_is_probe_resp(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %31

18:                                               ; preds = %5
  %19 = load i32, i32* @IWL_MGMT_DFAULT_RETRY_LIMIT, align 4
  %20 = load %struct.iwl_tx_cmd*, %struct.iwl_tx_cmd** %7, align 8
  %21 = getelementptr inbounds %struct.iwl_tx_cmd, %struct.iwl_tx_cmd* %20, i32 0, i32 3
  store i32 %19, i32* %21, align 8
  %22 = load %struct.iwl_tx_cmd*, %struct.iwl_tx_cmd** %7, align 8
  %23 = getelementptr inbounds %struct.iwl_tx_cmd, %struct.iwl_tx_cmd* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.iwl_tx_cmd*, %struct.iwl_tx_cmd** %7, align 8
  %26 = getelementptr inbounds %struct.iwl_tx_cmd, %struct.iwl_tx_cmd* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @min(i32 %24, i32 %27)
  %29 = load %struct.iwl_tx_cmd*, %struct.iwl_tx_cmd** %7, align 8
  %30 = getelementptr inbounds %struct.iwl_tx_cmd, %struct.iwl_tx_cmd* %29, i32 0, i32 4
  store i32 %28, i32* %30, align 4
  br label %44

31:                                               ; preds = %5
  %32 = load i32, i32* %10, align 4
  %33 = call i64 @ieee80211_is_back_req(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %31
  %36 = load i32, i32* @IWL_BAR_DFAULT_RETRY_LIMIT, align 4
  %37 = load %struct.iwl_tx_cmd*, %struct.iwl_tx_cmd** %7, align 8
  %38 = getelementptr inbounds %struct.iwl_tx_cmd, %struct.iwl_tx_cmd* %37, i32 0, i32 3
  store i32 %36, i32* %38, align 8
  br label %43

39:                                               ; preds = %31
  %40 = load i32, i32* @IWL_DEFAULT_TX_RETRY, align 4
  %41 = load %struct.iwl_tx_cmd*, %struct.iwl_tx_cmd** %7, align 8
  %42 = getelementptr inbounds %struct.iwl_tx_cmd, %struct.iwl_tx_cmd* %41, i32 0, i32 3
  store i32 %40, i32* %42, align 8
  br label %43

43:                                               ; preds = %39, %35
  br label %44

44:                                               ; preds = %43, %18
  %45 = load i32, i32* %10, align 4
  %46 = call i64 @ieee80211_is_data(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %69

48:                                               ; preds = %44
  %49 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %50 = icmp ne %struct.ieee80211_sta* %49, null
  br i1 %50, label %51, label %69

51:                                               ; preds = %48
  %52 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %53 = call %struct.iwl_mvm_sta* @iwl_mvm_sta_from_mac80211(%struct.ieee80211_sta* %52)
  store %struct.iwl_mvm_sta* %53, %struct.iwl_mvm_sta** %11, align 8
  %54 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %11, align 8
  %55 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @IEEE80211_STA_AUTHORIZED, align 8
  %58 = icmp sge i64 %56, %57
  br i1 %58, label %59, label %68

59:                                               ; preds = %51
  %60 = load %struct.iwl_tx_cmd*, %struct.iwl_tx_cmd** %7, align 8
  %61 = getelementptr inbounds %struct.iwl_tx_cmd, %struct.iwl_tx_cmd* %60, i32 0, i32 2
  store i64 0, i64* %61, align 8
  %62 = load i32, i32* @TX_CMD_FLG_STA_RATE, align 4
  %63 = call i32 @cpu_to_le32(i32 %62)
  %64 = load %struct.iwl_tx_cmd*, %struct.iwl_tx_cmd** %7, align 8
  %65 = getelementptr inbounds %struct.iwl_tx_cmd, %struct.iwl_tx_cmd* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = or i32 %66, %63
  store i32 %67, i32* %65, align 4
  br label %92

68:                                               ; preds = %51
  br label %83

69:                                               ; preds = %48, %44
  %70 = load i32, i32* %10, align 4
  %71 = call i64 @ieee80211_is_back_req(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %82

73:                                               ; preds = %69
  %74 = load i32, i32* @TX_CMD_FLG_ACK, align 4
  %75 = load i32, i32* @TX_CMD_FLG_BAR, align 4
  %76 = or i32 %74, %75
  %77 = call i32 @cpu_to_le32(i32 %76)
  %78 = load %struct.iwl_tx_cmd*, %struct.iwl_tx_cmd** %7, align 8
  %79 = getelementptr inbounds %struct.iwl_tx_cmd, %struct.iwl_tx_cmd* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = or i32 %80, %77
  store i32 %81, i32* %79, align 4
  br label %82

82:                                               ; preds = %73, %69
  br label %83

83:                                               ; preds = %82, %68
  %84 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %85 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %86 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %87 = load i32, i32* %10, align 4
  %88 = call i32 @iwl_mvm_get_tx_rate_n_flags(%struct.iwl_mvm* %84, %struct.ieee80211_tx_info* %85, %struct.ieee80211_sta* %86, i32 %87)
  %89 = call i32 @cpu_to_le32(i32 %88)
  %90 = load %struct.iwl_tx_cmd*, %struct.iwl_tx_cmd** %7, align 8
  %91 = getelementptr inbounds %struct.iwl_tx_cmd, %struct.iwl_tx_cmd* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 8
  br label %92

92:                                               ; preds = %83, %59
  ret void
}

declare dso_local i64 @ieee80211_is_probe_resp(i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i64 @ieee80211_is_back_req(i32) #1

declare dso_local i64 @ieee80211_is_data(i32) #1

declare dso_local %struct.iwl_mvm_sta* @iwl_mvm_sta_from_mac80211(%struct.ieee80211_sta*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @iwl_mvm_get_tx_rate_n_flags(%struct.iwl_mvm*, %struct.ieee80211_tx_info*, %struct.ieee80211_sta*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
