; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_tx.c_iwl_mvm_set_tx_cmd_crypto.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_tx.c_iwl_mvm_set_tx_cmd_crypto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32 }
%struct.ieee80211_tx_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ieee80211_key_conf* }
%struct.ieee80211_key_conf = type { i32, i32, i32, i32, i32, i32 }
%struct.iwl_tx_cmd = type { i32, i32* }
%struct.sk_buff = type { i32* }

@TX_CMD_SEC_CCM = common dso_local global i32 0, align 4
@TX_CMD_SEC_TKIP = common dso_local global i32 0, align 4
@TX_CMD_SEC_KEY128 = common dso_local global i32 0, align 4
@TX_CMD_SEC_WEP = common dso_local global i32 0, align 4
@TX_CMD_SEC_WEP_KEY_IDX_POS = common dso_local global i32 0, align 4
@TX_CMD_SEC_WEP_KEY_IDX_MSK = common dso_local global i32 0, align 4
@TX_CMD_SEC_GCMP = common dso_local global i32 0, align 4
@TX_CMD_SEC_KEY_FROM_TABLE = common dso_local global i32 0, align 4
@TX_CMD_SEC_EXT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_mvm*, %struct.ieee80211_tx_info*, %struct.iwl_tx_cmd*, %struct.sk_buff*, i32)* @iwl_mvm_set_tx_cmd_crypto to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_mvm_set_tx_cmd_crypto(%struct.iwl_mvm* %0, %struct.ieee80211_tx_info* %1, %struct.iwl_tx_cmd* %2, %struct.sk_buff* %3, i32 %4) #0 {
  %6 = alloca %struct.iwl_mvm*, align 8
  %7 = alloca %struct.ieee80211_tx_info*, align 8
  %8 = alloca %struct.iwl_tx_cmd*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ieee80211_key_conf*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %6, align 8
  store %struct.ieee80211_tx_info* %1, %struct.ieee80211_tx_info** %7, align 8
  store %struct.iwl_tx_cmd* %2, %struct.iwl_tx_cmd** %8, align 8
  store %struct.sk_buff* %3, %struct.sk_buff** %9, align 8
  store i32 %4, i32* %10, align 4
  %15 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %7, align 8
  %16 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %17, align 8
  store %struct.ieee80211_key_conf* %18, %struct.ieee80211_key_conf** %11, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %20 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %10, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  store i32* %24, i32** %12, align 8
  %25 = load i32, i32* @TX_CMD_SEC_CCM, align 4
  store i32 %25, i32* %13, align 4
  %26 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %27 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  switch i32 %28, label %104 [
    i32 134, label %29
    i32 130, label %36
    i32 129, label %53
    i32 128, label %59
    i32 132, label %84
    i32 131, label %84
    i32 133, label %86
  ]

29:                                               ; preds = %5
  %30 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %7, align 8
  %31 = load %struct.iwl_tx_cmd*, %struct.iwl_tx_cmd** %8, align 8
  %32 = call i32 @iwl_mvm_set_tx_cmd_ccmp(%struct.ieee80211_tx_info* %30, %struct.iwl_tx_cmd* %31)
  %33 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %7, align 8
  %34 = load i32*, i32** %12, align 8
  %35 = call i32 @iwl_mvm_set_tx_cmd_pn(%struct.ieee80211_tx_info* %33, i32* %34)
  br label %110

36:                                               ; preds = %5
  %37 = load i32, i32* @TX_CMD_SEC_TKIP, align 4
  %38 = load %struct.iwl_tx_cmd*, %struct.iwl_tx_cmd** %8, align 8
  %39 = getelementptr inbounds %struct.iwl_tx_cmd, %struct.iwl_tx_cmd* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %41 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %40, i32 0, i32 5
  %42 = call i32 @atomic64_inc_return(i32* %41)
  store i32 %42, i32* %14, align 4
  %43 = load i32*, i32** %12, align 8
  %44 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %45 = load i32, i32* %14, align 4
  %46 = call i32 @ieee80211_tkip_add_iv(i32* %43, %struct.ieee80211_key_conf* %44, i32 %45)
  %47 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %48 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %49 = load %struct.iwl_tx_cmd*, %struct.iwl_tx_cmd** %8, align 8
  %50 = getelementptr inbounds %struct.iwl_tx_cmd, %struct.iwl_tx_cmd* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = call i32 @ieee80211_get_tkip_p2k(%struct.ieee80211_key_conf* %47, %struct.sk_buff* %48, i32* %51)
  br label %110

53:                                               ; preds = %5
  %54 = load i32, i32* @TX_CMD_SEC_KEY128, align 4
  %55 = load %struct.iwl_tx_cmd*, %struct.iwl_tx_cmd** %8, align 8
  %56 = getelementptr inbounds %struct.iwl_tx_cmd, %struct.iwl_tx_cmd* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = or i32 %57, %54
  store i32 %58, i32* %56, align 8
  br label %59

59:                                               ; preds = %5, %53
  %60 = load i32, i32* @TX_CMD_SEC_WEP, align 4
  %61 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %62 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @TX_CMD_SEC_WEP_KEY_IDX_POS, align 4
  %65 = shl i32 %63, %64
  %66 = load i32, i32* @TX_CMD_SEC_WEP_KEY_IDX_MSK, align 4
  %67 = and i32 %65, %66
  %68 = or i32 %60, %67
  %69 = load %struct.iwl_tx_cmd*, %struct.iwl_tx_cmd** %8, align 8
  %70 = getelementptr inbounds %struct.iwl_tx_cmd, %struct.iwl_tx_cmd* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = or i32 %71, %68
  store i32 %72, i32* %70, align 8
  %73 = load %struct.iwl_tx_cmd*, %struct.iwl_tx_cmd** %8, align 8
  %74 = getelementptr inbounds %struct.iwl_tx_cmd, %struct.iwl_tx_cmd* %73, i32 0, i32 1
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 3
  %77 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %78 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %81 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @memcpy(i32* %76, i32 %79, i32 %82)
  br label %110

84:                                               ; preds = %5, %5
  %85 = load i32, i32* @TX_CMD_SEC_GCMP, align 4
  store i32 %85, i32* %13, align 4
  br label %86

86:                                               ; preds = %5, %84
  %87 = load i32, i32* %13, align 4
  %88 = load i32, i32* @TX_CMD_SEC_KEY_FROM_TABLE, align 4
  %89 = or i32 %87, %88
  %90 = load %struct.iwl_tx_cmd*, %struct.iwl_tx_cmd** %8, align 8
  %91 = getelementptr inbounds %struct.iwl_tx_cmd, %struct.iwl_tx_cmd* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = or i32 %92, %89
  store i32 %93, i32* %91, align 8
  %94 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %95 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.iwl_tx_cmd*, %struct.iwl_tx_cmd** %8, align 8
  %98 = getelementptr inbounds %struct.iwl_tx_cmd, %struct.iwl_tx_cmd* %97, i32 0, i32 1
  %99 = load i32*, i32** %98, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 0
  store i32 %96, i32* %100, align 4
  %101 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %7, align 8
  %102 = load i32*, i32** %12, align 8
  %103 = call i32 @iwl_mvm_set_tx_cmd_pn(%struct.ieee80211_tx_info* %101, i32* %102)
  br label %110

104:                                              ; preds = %5
  %105 = load i32, i32* @TX_CMD_SEC_EXT, align 4
  %106 = load %struct.iwl_tx_cmd*, %struct.iwl_tx_cmd** %8, align 8
  %107 = getelementptr inbounds %struct.iwl_tx_cmd, %struct.iwl_tx_cmd* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = or i32 %108, %105
  store i32 %109, i32* %107, align 8
  br label %110

110:                                              ; preds = %104, %86, %59, %36, %29
  ret void
}

declare dso_local i32 @iwl_mvm_set_tx_cmd_ccmp(%struct.ieee80211_tx_info*, %struct.iwl_tx_cmd*) #1

declare dso_local i32 @iwl_mvm_set_tx_cmd_pn(%struct.ieee80211_tx_info*, i32*) #1

declare dso_local i32 @atomic64_inc_return(i32*) #1

declare dso_local i32 @ieee80211_tkip_add_iv(i32*, %struct.ieee80211_key_conf*, i32) #1

declare dso_local i32 @ieee80211_get_tkip_p2k(%struct.ieee80211_key_conf*, %struct.sk_buff*, i32*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
