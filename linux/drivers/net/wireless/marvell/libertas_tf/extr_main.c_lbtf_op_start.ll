; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas_tf/extr_main.c_lbtf_op_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas_tf/extr_main.c_lbtf_op_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.lbtf_private* }
%struct.lbtf_private = type { i32, i32, i32 }

@LBTF_DEB_MACOPS = common dso_local global i32 0, align 4
@WLAN_CAPABILITY_SHORT_PREAMBLE = common dso_local global i32 0, align 4
@RADIO_ON = common dso_local global i32 0, align 4
@CMD_ACT_MAC_RX_ON = common dso_local global i32 0, align 4
@CMD_ACT_MAC_TX_ON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*)* @lbtf_op_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lbtf_op_start(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.lbtf_private*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %4 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %5 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %4, i32 0, i32 0
  %6 = load %struct.lbtf_private*, %struct.lbtf_private** %5, align 8
  store %struct.lbtf_private* %6, %struct.lbtf_private** %3, align 8
  %7 = load i32, i32* @LBTF_DEB_MACOPS, align 4
  %8 = call i32 @lbtf_deb_enter(i32 %7)
  %9 = load i32, i32* @WLAN_CAPABILITY_SHORT_PREAMBLE, align 4
  %10 = load %struct.lbtf_private*, %struct.lbtf_private** %3, align 8
  %11 = getelementptr inbounds %struct.lbtf_private, %struct.lbtf_private* %10, i32 0, i32 2
  store i32 %9, i32* %11, align 4
  %12 = load i32, i32* @RADIO_ON, align 4
  %13 = load %struct.lbtf_private*, %struct.lbtf_private** %3, align 8
  %14 = getelementptr inbounds %struct.lbtf_private, %struct.lbtf_private* %13, i32 0, i32 1
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* @CMD_ACT_MAC_RX_ON, align 4
  %16 = load i32, i32* @CMD_ACT_MAC_TX_ON, align 4
  %17 = or i32 %15, %16
  %18 = load %struct.lbtf_private*, %struct.lbtf_private** %3, align 8
  %19 = getelementptr inbounds %struct.lbtf_private, %struct.lbtf_private* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  %20 = load %struct.lbtf_private*, %struct.lbtf_private** %3, align 8
  %21 = call i32 @lbtf_set_mac_control(%struct.lbtf_private* %20)
  %22 = load %struct.lbtf_private*, %struct.lbtf_private** %3, align 8
  %23 = call i32 @lbtf_set_radio_control(%struct.lbtf_private* %22)
  %24 = load i32, i32* @LBTF_DEB_MACOPS, align 4
  %25 = call i32 @lbtf_deb_leave(i32 %24)
  ret i32 0
}

declare dso_local i32 @lbtf_deb_enter(i32) #1

declare dso_local i32 @lbtf_set_mac_control(%struct.lbtf_private*) #1

declare dso_local i32 @lbtf_set_radio_control(%struct.lbtf_private*) #1

declare dso_local i32 @lbtf_deb_leave(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
