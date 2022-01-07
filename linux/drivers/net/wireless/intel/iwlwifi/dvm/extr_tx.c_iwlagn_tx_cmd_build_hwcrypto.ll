; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_tx.c_iwlagn_tx_cmd_build_hwcrypto.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_tx.c_iwlagn_tx_cmd_build_hwcrypto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_priv = type { i32 }
%struct.ieee80211_tx_info = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ieee80211_key_conf* }
%struct.ieee80211_key_conf = type { i32, i32, i32, i32 }
%struct.iwl_tx_cmd = type { i32, i32*, i32 }
%struct.sk_buff = type { i32 }

@TX_CMD_SEC_CCM = common dso_local global i32 0, align 4
@IEEE80211_TX_CTL_AMPDU = common dso_local global i32 0, align 4
@TX_CMD_FLG_AGG_CCMP_MSK = common dso_local global i32 0, align 4
@TX_CMD_SEC_TKIP = common dso_local global i32 0, align 4
@TX_CMD_SEC_KEY128 = common dso_local global i32 0, align 4
@TX_CMD_SEC_WEP = common dso_local global i32 0, align 4
@TX_CMD_SEC_MSK = common dso_local global i32 0, align 4
@TX_CMD_SEC_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"Configuring packet for WEP encryption with key %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Unknown encode cipher %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_priv*, %struct.ieee80211_tx_info*, %struct.iwl_tx_cmd*, %struct.sk_buff*)* @iwlagn_tx_cmd_build_hwcrypto to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwlagn_tx_cmd_build_hwcrypto(%struct.iwl_priv* %0, %struct.ieee80211_tx_info* %1, %struct.iwl_tx_cmd* %2, %struct.sk_buff* %3) #0 {
  %5 = alloca %struct.iwl_priv*, align 8
  %6 = alloca %struct.ieee80211_tx_info*, align 8
  %7 = alloca %struct.iwl_tx_cmd*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.ieee80211_key_conf*, align 8
  store %struct.iwl_priv* %0, %struct.iwl_priv** %5, align 8
  store %struct.ieee80211_tx_info* %1, %struct.ieee80211_tx_info** %6, align 8
  store %struct.iwl_tx_cmd* %2, %struct.iwl_tx_cmd** %7, align 8
  store %struct.sk_buff* %3, %struct.sk_buff** %8, align 8
  %10 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %6, align 8
  %11 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %12, align 8
  store %struct.ieee80211_key_conf* %13, %struct.ieee80211_key_conf** %9, align 8
  %14 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %9, align 8
  %15 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %90 [
    i32 131, label %17
    i32 130, label %44
    i32 129, label %54
    i32 128, label %60
  ]

17:                                               ; preds = %4
  %18 = load i32, i32* @TX_CMD_SEC_CCM, align 4
  %19 = load %struct.iwl_tx_cmd*, %struct.iwl_tx_cmd** %7, align 8
  %20 = getelementptr inbounds %struct.iwl_tx_cmd, %struct.iwl_tx_cmd* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = load %struct.iwl_tx_cmd*, %struct.iwl_tx_cmd** %7, align 8
  %22 = getelementptr inbounds %struct.iwl_tx_cmd, %struct.iwl_tx_cmd* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %9, align 8
  %25 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %9, align 8
  %28 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @memcpy(i32* %23, i32 %26, i32 %29)
  %31 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %6, align 8
  %32 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @IEEE80211_TX_CTL_AMPDU, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %17
  %38 = load i32, i32* @TX_CMD_FLG_AGG_CCMP_MSK, align 4
  %39 = load %struct.iwl_tx_cmd*, %struct.iwl_tx_cmd** %7, align 8
  %40 = getelementptr inbounds %struct.iwl_tx_cmd, %struct.iwl_tx_cmd* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = or i32 %41, %38
  store i32 %42, i32* %40, align 8
  br label %43

43:                                               ; preds = %37, %17
  br label %96

44:                                               ; preds = %4
  %45 = load i32, i32* @TX_CMD_SEC_TKIP, align 4
  %46 = load %struct.iwl_tx_cmd*, %struct.iwl_tx_cmd** %7, align 8
  %47 = getelementptr inbounds %struct.iwl_tx_cmd, %struct.iwl_tx_cmd* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  %48 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %9, align 8
  %49 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %50 = load %struct.iwl_tx_cmd*, %struct.iwl_tx_cmd** %7, align 8
  %51 = getelementptr inbounds %struct.iwl_tx_cmd, %struct.iwl_tx_cmd* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = call i32 @ieee80211_get_tkip_p2k(%struct.ieee80211_key_conf* %48, %struct.sk_buff* %49, i32* %52)
  br label %96

54:                                               ; preds = %4
  %55 = load i32, i32* @TX_CMD_SEC_KEY128, align 4
  %56 = load %struct.iwl_tx_cmd*, %struct.iwl_tx_cmd** %7, align 8
  %57 = getelementptr inbounds %struct.iwl_tx_cmd, %struct.iwl_tx_cmd* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = or i32 %58, %55
  store i32 %59, i32* %57, align 8
  br label %60

60:                                               ; preds = %4, %54
  %61 = load i32, i32* @TX_CMD_SEC_WEP, align 4
  %62 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %9, align 8
  %63 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @TX_CMD_SEC_MSK, align 4
  %66 = and i32 %64, %65
  %67 = load i32, i32* @TX_CMD_SEC_SHIFT, align 4
  %68 = shl i32 %66, %67
  %69 = or i32 %61, %68
  %70 = load %struct.iwl_tx_cmd*, %struct.iwl_tx_cmd** %7, align 8
  %71 = getelementptr inbounds %struct.iwl_tx_cmd, %struct.iwl_tx_cmd* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = or i32 %72, %69
  store i32 %73, i32* %71, align 8
  %74 = load %struct.iwl_tx_cmd*, %struct.iwl_tx_cmd** %7, align 8
  %75 = getelementptr inbounds %struct.iwl_tx_cmd, %struct.iwl_tx_cmd* %74, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 3
  %78 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %9, align 8
  %79 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %9, align 8
  %82 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @memcpy(i32* %77, i32 %80, i32 %83)
  %85 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %86 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %9, align 8
  %87 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @IWL_DEBUG_TX(%struct.iwl_priv* %85, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %88)
  br label %96

90:                                               ; preds = %4
  %91 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %92 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %9, align 8
  %93 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @IWL_ERR(%struct.iwl_priv* %91, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %94)
  br label %96

96:                                               ; preds = %90, %60, %44, %43
  ret void
}

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @ieee80211_get_tkip_p2k(%struct.ieee80211_key_conf*, %struct.sk_buff*, i32*) #1

declare dso_local i32 @IWL_DEBUG_TX(%struct.iwl_priv*, i8*, i32) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_priv*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
