; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_cfg80211.c_mwifiex_cfg80211_set_cqm_rssi_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_cfg80211.c_mwifiex_cfg80211_set_cqm_rssi_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.net_device = type { i32 }
%struct.mwifiex_private = type { i64, i64 }
%struct.mwifiex_ds_misc_subsc_evt = type { i32, i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i8* }
%struct.TYPE_3__ = type { i32, i8* }

@BITMASK_BCN_RSSI_LOW = common dso_local global i32 0, align 4
@BITMASK_BCN_RSSI_HIGH = common dso_local global i32 0, align 4
@HostCmd_ACT_BITWISE_SET = common dso_local global i32 0, align 4
@HostCmd_CMD_802_11_SUBSCRIBE_EVENT = common dso_local global i32 0, align 4
@HostCmd_ACT_BITWISE_CLR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiphy*, %struct.net_device*, i64, i64)* @mwifiex_cfg80211_set_cqm_rssi_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwifiex_cfg80211_set_cqm_rssi_config(%struct.wiphy* %0, %struct.net_device* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.wiphy*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.mwifiex_private*, align 8
  %11 = alloca %struct.mwifiex_ds_misc_subsc_evt, align 8
  store %struct.wiphy* %0, %struct.wiphy** %6, align 8
  store %struct.net_device* %1, %struct.net_device** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load %struct.net_device*, %struct.net_device** %7, align 8
  %13 = call %struct.mwifiex_private* @mwifiex_netdev_get_priv(%struct.net_device* %12)
  store %struct.mwifiex_private* %13, %struct.mwifiex_private** %10, align 8
  %14 = load i64, i64* %8, align 8
  %15 = load %struct.mwifiex_private*, %struct.mwifiex_private** %10, align 8
  %16 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %15, i32 0, i32 1
  store i64 %14, i64* %16, align 8
  %17 = load i64, i64* %9, align 8
  %18 = load %struct.mwifiex_private*, %struct.mwifiex_private** %10, align 8
  %19 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %18, i32 0, i32 0
  store i64 %17, i64* %19, align 8
  %20 = call i32 @memset(%struct.mwifiex_ds_misc_subsc_evt* %11, i32 0, i32 40)
  %21 = load i32, i32* @BITMASK_BCN_RSSI_LOW, align 4
  %22 = load i32, i32* @BITMASK_BCN_RSSI_HIGH, align 4
  %23 = or i32 %21, %22
  %24 = getelementptr inbounds %struct.mwifiex_ds_misc_subsc_evt, %struct.mwifiex_ds_misc_subsc_evt* %11, i32 0, i32 0
  store i32 %23, i32* %24, align 8
  %25 = load i64, i64* %8, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %48

27:                                               ; preds = %4
  %28 = load i64, i64* %9, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %48

30:                                               ; preds = %27
  %31 = load i32, i32* @HostCmd_ACT_BITWISE_SET, align 4
  %32 = getelementptr inbounds %struct.mwifiex_ds_misc_subsc_evt, %struct.mwifiex_ds_misc_subsc_evt* %11, i32 0, i32 1
  store i32 %31, i32* %32, align 4
  %33 = load i64, i64* %8, align 8
  %34 = call i8* @abs(i64 %33)
  %35 = getelementptr inbounds %struct.mwifiex_ds_misc_subsc_evt, %struct.mwifiex_ds_misc_subsc_evt* %11, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  store i8* %34, i8** %36, align 8
  %37 = load i64, i64* %8, align 8
  %38 = call i8* @abs(i64 %37)
  %39 = getelementptr inbounds %struct.mwifiex_ds_misc_subsc_evt, %struct.mwifiex_ds_misc_subsc_evt* %11, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  store i8* %38, i8** %40, align 8
  %41 = getelementptr inbounds %struct.mwifiex_ds_misc_subsc_evt, %struct.mwifiex_ds_misc_subsc_evt* %11, i32 0, i32 3
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  store i32 1, i32* %42, align 8
  %43 = getelementptr inbounds %struct.mwifiex_ds_misc_subsc_evt, %struct.mwifiex_ds_misc_subsc_evt* %11, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  store i32 1, i32* %44, align 8
  %45 = load %struct.mwifiex_private*, %struct.mwifiex_private** %10, align 8
  %46 = load i32, i32* @HostCmd_CMD_802_11_SUBSCRIBE_EVENT, align 4
  %47 = call i32 @mwifiex_send_cmd(%struct.mwifiex_private* %45, i32 %46, i32 0, i32 0, %struct.mwifiex_ds_misc_subsc_evt* %11, i32 1)
  store i32 %47, i32* %5, align 4
  br label %54

48:                                               ; preds = %27, %4
  %49 = load i32, i32* @HostCmd_ACT_BITWISE_CLR, align 4
  %50 = getelementptr inbounds %struct.mwifiex_ds_misc_subsc_evt, %struct.mwifiex_ds_misc_subsc_evt* %11, i32 0, i32 1
  store i32 %49, i32* %50, align 4
  %51 = load %struct.mwifiex_private*, %struct.mwifiex_private** %10, align 8
  %52 = load i32, i32* @HostCmd_CMD_802_11_SUBSCRIBE_EVENT, align 4
  %53 = call i32 @mwifiex_send_cmd(%struct.mwifiex_private* %51, i32 %52, i32 0, i32 0, %struct.mwifiex_ds_misc_subsc_evt* %11, i32 1)
  store i32 %53, i32* %5, align 4
  br label %54

54:                                               ; preds = %48, %30
  %55 = load i32, i32* %5, align 4
  ret i32 %55
}

declare dso_local %struct.mwifiex_private* @mwifiex_netdev_get_priv(%struct.net_device*) #1

declare dso_local i32 @memset(%struct.mwifiex_ds_misc_subsc_evt*, i32, i32) #1

declare dso_local i8* @abs(i64) #1

declare dso_local i32 @mwifiex_send_cmd(%struct.mwifiex_private*, i32, i32, i32, %struct.mwifiex_ds_misc_subsc_evt*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
