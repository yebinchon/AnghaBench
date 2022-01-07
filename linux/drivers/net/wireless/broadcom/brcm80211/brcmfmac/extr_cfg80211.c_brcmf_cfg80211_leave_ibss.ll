; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_cfg80211.c_brcmf_cfg80211_leave_ibss.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_cfg80211.c_brcmf_cfg80211_leave_ibss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.net_device = type { i32 }
%struct.brcmf_if = type { i32 }

@TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"Enter\0A\00", align 1
@WLAN_REASON_DEAUTH_LEAVING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"Exit\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiphy*, %struct.net_device*)* @brcmf_cfg80211_leave_ibss to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcmf_cfg80211_leave_ibss(%struct.wiphy* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wiphy*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.brcmf_if*, align 8
  store %struct.wiphy* %0, %struct.wiphy** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %7 = load %struct.net_device*, %struct.net_device** %5, align 8
  %8 = call %struct.brcmf_if* @netdev_priv(%struct.net_device* %7)
  store %struct.brcmf_if* %8, %struct.brcmf_if** %6, align 8
  %9 = load i32, i32* @TRACE, align 4
  %10 = call i32 @brcmf_dbg(i32 %9, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.brcmf_if*, %struct.brcmf_if** %6, align 8
  %12 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @check_vif_up(i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %27

17:                                               ; preds = %2
  %18 = load %struct.brcmf_if*, %struct.brcmf_if** %6, align 8
  %19 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @WLAN_REASON_DEAUTH_LEAVING, align 4
  %22 = call i32 @brcmf_link_down(i32 %20, i32 %21)
  %23 = load %struct.brcmf_if*, %struct.brcmf_if** %6, align 8
  %24 = call i32 @brcmf_net_setcarrier(%struct.brcmf_if* %23, i32 0)
  %25 = load i32, i32* @TRACE, align 4
  %26 = call i32 @brcmf_dbg(i32 %25, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %27

27:                                               ; preds = %17, %16
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local %struct.brcmf_if* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @brcmf_dbg(i32, i8*) #1

declare dso_local i32 @check_vif_up(i32) #1

declare dso_local i32 @brcmf_link_down(i32, i32) #1

declare dso_local i32 @brcmf_net_setcarrier(%struct.brcmf_if*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
