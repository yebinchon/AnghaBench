; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_sta.c_iwl_mvm_enable_txq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_sta.c_iwl_mvm_enable_txq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32 }
%struct.ieee80211_sta = type { i32 }
%struct.iwl_trans_txq_scd_cfg = type { i32, i32, i32, i32, i32 }
%struct.iwl_scd_txq_cfg_cmd = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@SCD_CFG_ENABLE_QUEUE = common dso_local global i32 0, align 4
@SCD_QUEUE_CFG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Failed to configure queue %d on FIFO %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_mvm*, %struct.ieee80211_sta*, i32, i32, %struct.iwl_trans_txq_scd_cfg*, i32)* @iwl_mvm_enable_txq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_mvm_enable_txq(%struct.iwl_mvm* %0, %struct.ieee80211_sta* %1, i32 %2, i32 %3, %struct.iwl_trans_txq_scd_cfg* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.iwl_mvm*, align 8
  %9 = alloca %struct.ieee80211_sta*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.iwl_trans_txq_scd_cfg*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.iwl_scd_txq_cfg_cmd, align 4
  %15 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %8, align 8
  store %struct.ieee80211_sta* %1, %struct.ieee80211_sta** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store %struct.iwl_trans_txq_scd_cfg* %4, %struct.iwl_trans_txq_scd_cfg** %12, align 8
  store i32 %5, i32* %13, align 4
  %16 = getelementptr inbounds %struct.iwl_scd_txq_cfg_cmd, %struct.iwl_scd_txq_cfg_cmd* %14, i32 0, i32 0
  %17 = load i32, i32* %10, align 4
  store i32 %17, i32* %16, align 4
  %18 = getelementptr inbounds %struct.iwl_scd_txq_cfg_cmd, %struct.iwl_scd_txq_cfg_cmd* %14, i32 0, i32 1
  %19 = load i32, i32* %11, align 4
  %20 = call i32 @cpu_to_le16(i32 %19)
  store i32 %20, i32* %18, align 4
  %21 = getelementptr inbounds %struct.iwl_scd_txq_cfg_cmd, %struct.iwl_scd_txq_cfg_cmd* %14, i32 0, i32 2
  %22 = load %struct.iwl_trans_txq_scd_cfg*, %struct.iwl_trans_txq_scd_cfg** %12, align 8
  %23 = getelementptr inbounds %struct.iwl_trans_txq_scd_cfg, %struct.iwl_trans_txq_scd_cfg* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %21, align 4
  %25 = getelementptr inbounds %struct.iwl_scd_txq_cfg_cmd, %struct.iwl_scd_txq_cfg_cmd* %14, i32 0, i32 3
  %26 = load %struct.iwl_trans_txq_scd_cfg*, %struct.iwl_trans_txq_scd_cfg** %12, align 8
  %27 = getelementptr inbounds %struct.iwl_trans_txq_scd_cfg, %struct.iwl_trans_txq_scd_cfg* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %25, align 4
  %29 = getelementptr inbounds %struct.iwl_scd_txq_cfg_cmd, %struct.iwl_scd_txq_cfg_cmd* %14, i32 0, i32 4
  %30 = load %struct.iwl_trans_txq_scd_cfg*, %struct.iwl_trans_txq_scd_cfg** %12, align 8
  %31 = getelementptr inbounds %struct.iwl_trans_txq_scd_cfg, %struct.iwl_trans_txq_scd_cfg* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %29, align 4
  %33 = getelementptr inbounds %struct.iwl_scd_txq_cfg_cmd, %struct.iwl_scd_txq_cfg_cmd* %14, i32 0, i32 5
  %34 = load %struct.iwl_trans_txq_scd_cfg*, %struct.iwl_trans_txq_scd_cfg** %12, align 8
  %35 = getelementptr inbounds %struct.iwl_trans_txq_scd_cfg, %struct.iwl_trans_txq_scd_cfg* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %33, align 4
  %37 = getelementptr inbounds %struct.iwl_scd_txq_cfg_cmd, %struct.iwl_scd_txq_cfg_cmd* %14, i32 0, i32 6
  %38 = load %struct.iwl_trans_txq_scd_cfg*, %struct.iwl_trans_txq_scd_cfg** %12, align 8
  %39 = getelementptr inbounds %struct.iwl_trans_txq_scd_cfg, %struct.iwl_trans_txq_scd_cfg* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %37, align 4
  %41 = getelementptr inbounds %struct.iwl_scd_txq_cfg_cmd, %struct.iwl_scd_txq_cfg_cmd* %14, i32 0, i32 7
  %42 = load i32, i32* @SCD_CFG_ENABLE_QUEUE, align 4
  store i32 %42, i32* %41, align 4
  %43 = load %struct.iwl_mvm*, %struct.iwl_mvm** %8, align 8
  %44 = call i32 @iwl_mvm_has_new_tx_api(%struct.iwl_mvm* %43)
  %45 = call i64 @WARN_ON(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %84

48:                                               ; preds = %6
  %49 = load %struct.iwl_mvm*, %struct.iwl_mvm** %8, align 8
  %50 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %51 = load i32, i32* %10, align 4
  %52 = load %struct.iwl_trans_txq_scd_cfg*, %struct.iwl_trans_txq_scd_cfg** %12, align 8
  %53 = getelementptr inbounds %struct.iwl_trans_txq_scd_cfg, %struct.iwl_trans_txq_scd_cfg* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.iwl_trans_txq_scd_cfg*, %struct.iwl_trans_txq_scd_cfg** %12, align 8
  %56 = getelementptr inbounds %struct.iwl_trans_txq_scd_cfg, %struct.iwl_trans_txq_scd_cfg* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @iwl_mvm_update_txq_mapping(%struct.iwl_mvm* %49, %struct.ieee80211_sta* %50, i32 %51, i32 %54, i32 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %48
  store i32 0, i32* %7, align 4
  br label %84

61:                                               ; preds = %48
  %62 = load %struct.iwl_mvm*, %struct.iwl_mvm** %8, align 8
  %63 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* %11, align 4
  %67 = load i32, i32* %13, align 4
  %68 = call i32 @iwl_trans_txq_enable_cfg(i32 %64, i32 %65, i32 %66, i32* null, i32 %67)
  store i32 %68, i32* %15, align 4
  %69 = load i32, i32* %15, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %61
  %72 = getelementptr inbounds %struct.iwl_scd_txq_cfg_cmd, %struct.iwl_scd_txq_cfg_cmd* %14, i32 0, i32 1
  %73 = call i32 @le16_add_cpu(i32* %72, i32 1)
  br label %74

74:                                               ; preds = %71, %61
  %75 = load %struct.iwl_mvm*, %struct.iwl_mvm** %8, align 8
  %76 = load i32, i32* @SCD_QUEUE_CFG, align 4
  %77 = call i32 @iwl_mvm_send_cmd_pdu(%struct.iwl_mvm* %75, i32 %76, i32 0, i32 32, %struct.iwl_scd_txq_cfg_cmd* %14)
  %78 = load i32, i32* %10, align 4
  %79 = load %struct.iwl_trans_txq_scd_cfg*, %struct.iwl_trans_txq_scd_cfg** %12, align 8
  %80 = getelementptr inbounds %struct.iwl_trans_txq_scd_cfg, %struct.iwl_trans_txq_scd_cfg* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @WARN(i32 %77, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %78, i32 %81)
  %83 = load i32, i32* %15, align 4
  store i32 %83, i32* %7, align 4
  br label %84

84:                                               ; preds = %74, %60, %47
  %85 = load i32, i32* %7, align 4
  ret i32 %85
}

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @iwl_mvm_has_new_tx_api(%struct.iwl_mvm*) #1

declare dso_local i32 @iwl_mvm_update_txq_mapping(%struct.iwl_mvm*, %struct.ieee80211_sta*, i32, i32, i32) #1

declare dso_local i32 @iwl_trans_txq_enable_cfg(i32, i32, i32, i32*, i32) #1

declare dso_local i32 @le16_add_cpu(i32*, i32) #1

declare dso_local i32 @WARN(i32, i8*, i32, i32) #1

declare dso_local i32 @iwl_mvm_send_cmd_pdu(%struct.iwl_mvm*, i32, i32, i32, %struct.iwl_scd_txq_cfg_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
