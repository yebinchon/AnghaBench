; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_cfg80211.c_mwifiex_cfg80211_get_tx_power.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_cfg80211.c_mwifiex_cfg80211_get_tx_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.wireless_dev = type { i32 }
%struct.mwifiex_adapter = type { i32 }
%struct.mwifiex_private = type { i32 }

@MWIFIEX_BSS_ROLE_ANY = common dso_local global i32 0, align 4
@HostCmd_CMD_RF_TX_PWR = common dso_local global i32 0, align 4
@HostCmd_ACT_GEN_GET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiphy*, %struct.wireless_dev*, i32*)* @mwifiex_cfg80211_get_tx_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwifiex_cfg80211_get_tx_power(%struct.wiphy* %0, %struct.wireless_dev* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wiphy*, align 8
  %6 = alloca %struct.wireless_dev*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.mwifiex_adapter*, align 8
  %9 = alloca %struct.mwifiex_private*, align 8
  %10 = alloca i32, align 4
  store %struct.wiphy* %0, %struct.wiphy** %5, align 8
  store %struct.wireless_dev* %1, %struct.wireless_dev** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load %struct.wiphy*, %struct.wiphy** %5, align 8
  %12 = call %struct.mwifiex_adapter* @mwifiex_cfg80211_get_adapter(%struct.wiphy* %11)
  store %struct.mwifiex_adapter* %12, %struct.mwifiex_adapter** %8, align 8
  %13 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %8, align 8
  %14 = load i32, i32* @MWIFIEX_BSS_ROLE_ANY, align 4
  %15 = call %struct.mwifiex_private* @mwifiex_get_priv(%struct.mwifiex_adapter* %13, i32 %14)
  store %struct.mwifiex_private* %15, %struct.mwifiex_private** %9, align 8
  %16 = load %struct.mwifiex_private*, %struct.mwifiex_private** %9, align 8
  %17 = load i32, i32* @HostCmd_CMD_RF_TX_PWR, align 4
  %18 = load i32, i32* @HostCmd_ACT_GEN_GET, align 4
  %19 = call i32 @mwifiex_send_cmd(%struct.mwifiex_private* %16, i32 %17, i32 %18, i32 0, i32* null, i32 1)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load i32, i32* %10, align 4
  store i32 %23, i32* %4, align 4
  br label %29

24:                                               ; preds = %3
  %25 = load %struct.mwifiex_private*, %struct.mwifiex_private** %9, align 8
  %26 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32*, i32** %7, align 8
  store i32 %27, i32* %28, align 4
  store i32 0, i32* %4, align 4
  br label %29

29:                                               ; preds = %24, %22
  %30 = load i32, i32* %4, align 4
  ret i32 %30
}

declare dso_local %struct.mwifiex_adapter* @mwifiex_cfg80211_get_adapter(%struct.wiphy*) #1

declare dso_local %struct.mwifiex_private* @mwifiex_get_priv(%struct.mwifiex_adapter*, i32) #1

declare dso_local i32 @mwifiex_send_cmd(%struct.mwifiex_private*, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
