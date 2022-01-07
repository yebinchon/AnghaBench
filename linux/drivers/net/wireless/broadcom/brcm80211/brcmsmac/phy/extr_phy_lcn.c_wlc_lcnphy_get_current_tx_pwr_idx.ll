; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/extr_phy_lcn.c_wlc_lcnphy_get_current_tx_pwr_idx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/extr_phy_lcn.c_wlc_lcnphy_get_current_tx_pwr_idx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.brcms_phy_lcnphy* }
%struct.brcms_phy_lcnphy = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @wlc_lcnphy_get_current_tx_pwr_idx(%struct.brcms_phy* %0) #0 {
  %2 = alloca %struct.brcms_phy*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.brcms_phy_lcnphy*, align 8
  store %struct.brcms_phy* %0, %struct.brcms_phy** %2, align 8
  %5 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %6 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load %struct.brcms_phy_lcnphy*, %struct.brcms_phy_lcnphy** %7, align 8
  store %struct.brcms_phy_lcnphy* %8, %struct.brcms_phy_lcnphy** %4, align 8
  %9 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %10 = call i64 @txpwrctrl_off(%struct.brcms_phy* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load %struct.brcms_phy_lcnphy*, %struct.brcms_phy_lcnphy** %4, align 8
  %14 = getelementptr inbounds %struct.brcms_phy_lcnphy, %struct.brcms_phy_lcnphy* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %3, align 8
  br label %30

16:                                               ; preds = %1
  %17 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %18 = call i64 @wlc_lcnphy_tssi_based_pwr_ctrl_enabled(%struct.brcms_phy* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %16
  %21 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %22 = call i32 @wlc_lcnphy_get_current_tx_pwr_idx_if_pwrctrl_on(%struct.brcms_phy* %21)
  %23 = sdiv i32 %22, 2
  %24 = sext i32 %23 to i64
  store i64 %24, i64* %3, align 8
  br label %29

25:                                               ; preds = %16
  %26 = load %struct.brcms_phy_lcnphy*, %struct.brcms_phy_lcnphy** %4, align 8
  %27 = getelementptr inbounds %struct.brcms_phy_lcnphy, %struct.brcms_phy_lcnphy* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %3, align 8
  br label %29

29:                                               ; preds = %25, %20
  br label %30

30:                                               ; preds = %29, %12
  %31 = load i64, i64* %3, align 8
  ret i64 %31
}

declare dso_local i64 @txpwrctrl_off(%struct.brcms_phy*) #1

declare dso_local i64 @wlc_lcnphy_tssi_based_pwr_ctrl_enabled(%struct.brcms_phy*) #1

declare dso_local i32 @wlc_lcnphy_get_current_tx_pwr_idx_if_pwrctrl_on(%struct.brcms_phy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
