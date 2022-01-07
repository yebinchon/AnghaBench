; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_lp.c_lpphy_rev2plus_set_rx_gain.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_lp.c_lpphy_rev2plus_set_rx_gain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { i32 }

@B43_LPPHY_RF_OVERRIDE_VAL_0 = common dso_local global i32 0, align 4
@B43_LPPHY_RF_OVERRIDE_2_VAL = common dso_local global i32 0, align 4
@B43_LPPHY_RX_GAIN_CTL_OVERRIDE_VAL = common dso_local global i32 0, align 4
@B43_LPPHY_AFE_DDFS = common dso_local global i32 0, align 4
@NL80211_BAND_2GHZ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*, i32)* @lpphy_rev2plus_set_rx_gain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpphy_rev2plus_set_rx_gain(%struct.b43_wldev* %0, i32 %1) #0 {
  %3 = alloca %struct.b43_wldev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = and i32 %10, 65535
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %4, align 4
  %13 = ashr i32 %12, 16
  %14 = and i32 %13, 15
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %4, align 4
  %16 = ashr i32 %15, 21
  %17 = and i32 %16, 1
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %4, align 4
  %19 = ashr i32 %18, 20
  %20 = xor i32 %19, -1
  %21 = and i32 %20, 1
  store i32 %21, i32* %8, align 4
  %22 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %23 = load i32, i32* @B43_LPPHY_RF_OVERRIDE_VAL_0, align 4
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @b43_phy_maskset(%struct.b43_wldev* %22, i32 %23, i32 65534, i32 %24)
  %26 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %27 = load i32, i32* @B43_LPPHY_RF_OVERRIDE_2_VAL, align 4
  %28 = load i32, i32* %7, align 4
  %29 = shl i32 %28, 9
  %30 = call i32 @b43_phy_maskset(%struct.b43_wldev* %26, i32 %27, i32 65023, i32 %29)
  %31 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %32 = load i32, i32* @B43_LPPHY_RF_OVERRIDE_2_VAL, align 4
  %33 = load i32, i32* %7, align 4
  %34 = shl i32 %33, 10
  %35 = call i32 @b43_phy_maskset(%struct.b43_wldev* %31, i32 %32, i32 64511, i32 %34)
  %36 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %37 = load i32, i32* @B43_LPPHY_RX_GAIN_CTL_OVERRIDE_VAL, align 4
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @b43_phy_write(%struct.b43_wldev* %36, i32 %37, i32 %38)
  %40 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %41 = load i32, i32* @B43_LPPHY_AFE_DDFS, align 4
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @b43_phy_maskset(%struct.b43_wldev* %40, i32 %41, i32 65520, i32 %42)
  %44 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %45 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @b43_current_band(i32 %46)
  %48 = load i64, i64* @NL80211_BAND_2GHZ, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %64

50:                                               ; preds = %2
  %51 = load i32, i32* %4, align 4
  %52 = ashr i32 %51, 2
  %53 = and i32 %52, 3
  store i32 %53, i32* %9, align 4
  %54 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %55 = load i32, i32* @B43_LPPHY_RF_OVERRIDE_2_VAL, align 4
  %56 = load i32, i32* %9, align 4
  %57 = shl i32 %56, 11
  %58 = call i32 @b43_phy_maskset(%struct.b43_wldev* %54, i32 %55, i32 59391, i32 %57)
  %59 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %60 = call i32 @B43_PHY_OFDM(i32 230)
  %61 = load i32, i32* %9, align 4
  %62 = shl i32 %61, 3
  %63 = call i32 @b43_phy_maskset(%struct.b43_wldev* %59, i32 %60, i32 65511, i32 %62)
  br label %64

64:                                               ; preds = %50, %2
  ret void
}

declare dso_local i32 @b43_phy_maskset(%struct.b43_wldev*, i32, i32, i32) #1

declare dso_local i32 @b43_phy_write(%struct.b43_wldev*, i32, i32) #1

declare dso_local i64 @b43_current_band(i32) #1

declare dso_local i32 @B43_PHY_OFDM(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
