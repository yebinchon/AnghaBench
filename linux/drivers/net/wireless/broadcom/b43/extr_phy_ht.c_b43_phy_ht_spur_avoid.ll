; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_ht.c_b43_phy_ht_spur_avoid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_ht.c_b43_phy_ht_spur_avoid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.bcma_device* }
%struct.bcma_device = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.ieee80211_channel = type { i32 }

@B43_BCMA_CLKCTLST_PHY_PLL_REQ = common dso_local global i32 0, align 4
@B43_BCMA_CLKCTLST_80211_PLL_REQ = common dso_local global i32 0, align 4
@B43_BCMA_CLKCTLST_80211_PLL_ST = common dso_local global i32 0, align 4
@B43_BCMA_CLKCTLST_PHY_PLL_ST = common dso_local global i32 0, align 4
@B43_PHY_HT_BBCFG = common dso_local global i32 0, align 4
@B43_PHY_HT_BBCFG_RSTRX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*, %struct.ieee80211_channel*)* @b43_phy_ht_spur_avoid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_phy_ht_spur_avoid(%struct.b43_wldev* %0, %struct.ieee80211_channel* %1) #0 {
  %3 = alloca %struct.b43_wldev*, align 8
  %4 = alloca %struct.ieee80211_channel*, align 8
  %5 = alloca %struct.bcma_device*, align 8
  %6 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %3, align 8
  store %struct.ieee80211_channel* %1, %struct.ieee80211_channel** %4, align 8
  %7 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %8 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %7, i32 0, i32 0
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.bcma_device*, %struct.bcma_device** %10, align 8
  store %struct.bcma_device* %11, %struct.bcma_device** %5, align 8
  store i32 0, i32* %6, align 4
  %12 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %13 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp eq i32 %14, 13
  br i1 %15, label %21, label %16

16:                                               ; preds = %2
  %17 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %18 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp eq i32 %19, 14
  br i1 %20, label %21, label %22

21:                                               ; preds = %16, %2
  store i32 1, i32* %6, align 4
  br label %22

22:                                               ; preds = %21, %16
  %23 = load %struct.bcma_device*, %struct.bcma_device** %5, align 8
  %24 = load i32, i32* @B43_BCMA_CLKCTLST_PHY_PLL_REQ, align 4
  %25 = call i32 @bcma_core_pll_ctl(%struct.bcma_device* %23, i32 %24, i32 0, i32 0)
  %26 = load %struct.bcma_device*, %struct.bcma_device** %5, align 8
  %27 = getelementptr inbounds %struct.bcma_device, %struct.bcma_device* %26, i32 0, i32 0
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @bcma_pmu_spuravoid_pllupdate(i32* %29, i32 %30)
  %32 = load %struct.bcma_device*, %struct.bcma_device** %5, align 8
  %33 = load i32, i32* @B43_BCMA_CLKCTLST_80211_PLL_REQ, align 4
  %34 = load i32, i32* @B43_BCMA_CLKCTLST_PHY_PLL_REQ, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @B43_BCMA_CLKCTLST_80211_PLL_ST, align 4
  %37 = load i32, i32* @B43_BCMA_CLKCTLST_PHY_PLL_ST, align 4
  %38 = or i32 %36, %37
  %39 = call i32 @bcma_core_pll_ctl(%struct.bcma_device* %32, i32 %35, i32 %38, i32 0)
  %40 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @b43_mac_switch_freq(%struct.b43_wldev* %40, i32 %41)
  %43 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %44 = call i32 @b43_wireless_core_phy_pll_reset(%struct.b43_wldev* %43)
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %22
  %48 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %49 = load i32, i32* @B43_PHY_HT_BBCFG, align 4
  %50 = load i32, i32* @B43_PHY_HT_BBCFG_RSTRX, align 4
  %51 = call i32 @b43_phy_set(%struct.b43_wldev* %48, i32 %49, i32 %50)
  br label %59

52:                                               ; preds = %22
  %53 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %54 = load i32, i32* @B43_PHY_HT_BBCFG, align 4
  %55 = load i32, i32* @B43_PHY_HT_BBCFG_RSTRX, align 4
  %56 = xor i32 %55, -1
  %57 = and i32 %56, 65535
  %58 = call i32 @b43_phy_mask(%struct.b43_wldev* %53, i32 %54, i32 %57)
  br label %59

59:                                               ; preds = %52, %47
  %60 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %61 = call i32 @b43_phy_ht_reset_cca(%struct.b43_wldev* %60)
  ret void
}

declare dso_local i32 @bcma_core_pll_ctl(%struct.bcma_device*, i32, i32, i32) #1

declare dso_local i32 @bcma_pmu_spuravoid_pllupdate(i32*, i32) #1

declare dso_local i32 @b43_mac_switch_freq(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43_wireless_core_phy_pll_reset(%struct.b43_wldev*) #1

declare dso_local i32 @b43_phy_set(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_phy_mask(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_phy_ht_reset_cca(%struct.b43_wldev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
