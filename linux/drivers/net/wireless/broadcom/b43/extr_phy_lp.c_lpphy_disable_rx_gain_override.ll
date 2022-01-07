; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_lp.c_lpphy_disable_rx_gain_override.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_lp.c_lpphy_disable_rx_gain_override.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@B43_LPPHY_RF_OVERRIDE_0 = common dso_local global i32 0, align 4
@B43_LPPHY_RF_OVERRIDE_2 = common dso_local global i32 0, align 4
@NL80211_BAND_2GHZ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*)* @lpphy_disable_rx_gain_override to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpphy_disable_rx_gain_override(%struct.b43_wldev* %0) #0 {
  %2 = alloca %struct.b43_wldev*, align 8
  store %struct.b43_wldev* %0, %struct.b43_wldev** %2, align 8
  %3 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %4 = load i32, i32* @B43_LPPHY_RF_OVERRIDE_0, align 4
  %5 = call i32 @b43_phy_mask(%struct.b43_wldev* %3, i32 %4, i32 65534)
  %6 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %7 = load i32, i32* @B43_LPPHY_RF_OVERRIDE_0, align 4
  %8 = call i32 @b43_phy_mask(%struct.b43_wldev* %6, i32 %7, i32 65519)
  %9 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %10 = load i32, i32* @B43_LPPHY_RF_OVERRIDE_0, align 4
  %11 = call i32 @b43_phy_mask(%struct.b43_wldev* %9, i32 %10, i32 65471)
  %12 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %13 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp sge i32 %15, 2
  br i1 %16, label %17, label %35

17:                                               ; preds = %1
  %18 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %19 = load i32, i32* @B43_LPPHY_RF_OVERRIDE_2, align 4
  %20 = call i32 @b43_phy_mask(%struct.b43_wldev* %18, i32 %19, i32 65279)
  %21 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %22 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @b43_current_band(i32 %23)
  %25 = load i64, i64* @NL80211_BAND_2GHZ, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %34

27:                                               ; preds = %17
  %28 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %29 = load i32, i32* @B43_LPPHY_RF_OVERRIDE_2, align 4
  %30 = call i32 @b43_phy_mask(%struct.b43_wldev* %28, i32 %29, i32 64511)
  %31 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %32 = call i32 @B43_PHY_OFDM(i32 229)
  %33 = call i32 @b43_phy_mask(%struct.b43_wldev* %31, i32 %32, i32 65527)
  br label %34

34:                                               ; preds = %27, %17
  br label %39

35:                                               ; preds = %1
  %36 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %37 = load i32, i32* @B43_LPPHY_RF_OVERRIDE_2, align 4
  %38 = call i32 @b43_phy_mask(%struct.b43_wldev* %36, i32 %37, i32 65023)
  br label %39

39:                                               ; preds = %35, %34
  ret void
}

declare dso_local i32 @b43_phy_mask(%struct.b43_wldev*, i32, i32) #1

declare dso_local i64 @b43_current_band(i32) #1

declare dso_local i32 @B43_PHY_OFDM(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
