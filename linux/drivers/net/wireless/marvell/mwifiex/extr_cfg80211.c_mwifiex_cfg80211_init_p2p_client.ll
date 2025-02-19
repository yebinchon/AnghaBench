; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_cfg80211.c_mwifiex_cfg80211_init_p2p_client.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_cfg80211.c_mwifiex_cfg80211_init_p2p_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { i32 }

@P2P_MODE_DEVICE = common dso_local global i32 0, align 4
@HostCmd_CMD_P2P_MODE_CFG = common dso_local global i32 0, align 4
@HostCmd_ACT_GEN_SET = common dso_local global i32 0, align 4
@P2P_MODE_CLIENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mwifiex_private*)* @mwifiex_cfg80211_init_p2p_client to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwifiex_cfg80211_init_p2p_client(%struct.mwifiex_private* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mwifiex_private*, align 8
  %4 = alloca i32, align 4
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %3, align 8
  %5 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %6 = call i64 @mwifiex_cfg80211_deinit_p2p(%struct.mwifiex_private* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %26

9:                                                ; preds = %1
  %10 = load i32, i32* @P2P_MODE_DEVICE, align 4
  store i32 %10, i32* %4, align 4
  %11 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %12 = load i32, i32* @HostCmd_CMD_P2P_MODE_CFG, align 4
  %13 = load i32, i32* @HostCmd_ACT_GEN_SET, align 4
  %14 = call i64 @mwifiex_send_cmd(%struct.mwifiex_private* %11, i32 %12, i32 %13, i32 0, i32* %4, i32 1)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %9
  store i32 -1, i32* %2, align 4
  br label %26

17:                                               ; preds = %9
  %18 = load i32, i32* @P2P_MODE_CLIENT, align 4
  store i32 %18, i32* %4, align 4
  %19 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %20 = load i32, i32* @HostCmd_CMD_P2P_MODE_CFG, align 4
  %21 = load i32, i32* @HostCmd_ACT_GEN_SET, align 4
  %22 = call i64 @mwifiex_send_cmd(%struct.mwifiex_private* %19, i32 %20, i32 %21, i32 0, i32* %4, i32 1)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  store i32 -1, i32* %2, align 4
  br label %26

25:                                               ; preds = %17
  store i32 0, i32* %2, align 4
  br label %26

26:                                               ; preds = %25, %24, %16, %8
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local i64 @mwifiex_cfg80211_deinit_p2p(%struct.mwifiex_private*) #1

declare dso_local i64 @mwifiex_send_cmd(%struct.mwifiex_private*, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
