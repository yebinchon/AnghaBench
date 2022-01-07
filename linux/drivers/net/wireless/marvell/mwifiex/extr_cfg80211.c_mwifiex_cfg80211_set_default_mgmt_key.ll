; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_cfg80211.c_mwifiex_cfg80211_set_default_mgmt_key.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_cfg80211.c_mwifiex_cfg80211_set_default_mgmt_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.net_device = type { i32 }
%struct.mwifiex_private = type { i32 }
%struct.mwifiex_ds_encrypt_key = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [36 x i8] c"set default mgmt key, key index=%d\0A\00", align 1
@WLAN_KEY_LEN_CCMP = common dso_local global i32 0, align 4
@HostCmd_CMD_802_11_KEY_MATERIAL = common dso_local global i32 0, align 4
@HostCmd_ACT_GEN_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiphy*, %struct.net_device*, i32)* @mwifiex_cfg80211_set_default_mgmt_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwifiex_cfg80211_set_default_mgmt_key(%struct.wiphy* %0, %struct.net_device* %1, i32 %2) #0 {
  %4 = alloca %struct.wiphy*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mwifiex_private*, align 8
  %8 = alloca %struct.mwifiex_ds_encrypt_key, align 4
  store %struct.wiphy* %0, %struct.wiphy** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.net_device*, %struct.net_device** %5, align 8
  %10 = call %struct.mwifiex_private* @mwifiex_netdev_get_priv(%struct.net_device* %9)
  store %struct.mwifiex_private* %10, %struct.mwifiex_private** %7, align 8
  %11 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @wiphy_dbg(%struct.wiphy* %11, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = call i32 @memset(%struct.mwifiex_ds_encrypt_key* %8, i32 0, i32 16)
  %15 = load i32, i32* @WLAN_KEY_LEN_CCMP, align 4
  %16 = getelementptr inbounds %struct.mwifiex_ds_encrypt_key, %struct.mwifiex_ds_encrypt_key* %8, i32 0, i32 3
  store i32 %15, i32* %16, align 4
  %17 = load i32, i32* %6, align 4
  %18 = getelementptr inbounds %struct.mwifiex_ds_encrypt_key, %struct.mwifiex_ds_encrypt_key* %8, i32 0, i32 2
  store i32 %17, i32* %18, align 4
  %19 = getelementptr inbounds %struct.mwifiex_ds_encrypt_key, %struct.mwifiex_ds_encrypt_key* %8, i32 0, i32 0
  store i32 1, i32* %19, align 4
  %20 = getelementptr inbounds %struct.mwifiex_ds_encrypt_key, %struct.mwifiex_ds_encrypt_key* %8, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @eth_broadcast_addr(i32 %21)
  %23 = load %struct.mwifiex_private*, %struct.mwifiex_private** %7, align 8
  %24 = load i32, i32* @HostCmd_CMD_802_11_KEY_MATERIAL, align 4
  %25 = load i32, i32* @HostCmd_ACT_GEN_SET, align 4
  %26 = call i32 @mwifiex_send_cmd(%struct.mwifiex_private* %23, i32 %24, i32 %25, i32 1, %struct.mwifiex_ds_encrypt_key* %8, i32 1)
  ret i32 %26
}

declare dso_local %struct.mwifiex_private* @mwifiex_netdev_get_priv(%struct.net_device*) #1

declare dso_local i32 @wiphy_dbg(%struct.wiphy*, i8*, i32) #1

declare dso_local i32 @memset(%struct.mwifiex_ds_encrypt_key*, i32, i32) #1

declare dso_local i32 @eth_broadcast_addr(i32) #1

declare dso_local i32 @mwifiex_send_cmd(%struct.mwifiex_private*, i32, i32, i32, %struct.mwifiex_ds_encrypt_key*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
