; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/extr_phy_lcn.c_wlc_lcnphy_stop_tx_tone.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/extr_phy_lcn.c_wlc_lcnphy_stop_tx_tone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.brcms_phy_lcnphy* }
%struct.brcms_phy_lcnphy = type { i64 }

@RADIO_2064_REG112 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wlc_lcnphy_stop_tx_tone(%struct.brcms_phy* %0) #0 {
  %2 = alloca %struct.brcms_phy*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.brcms_phy_lcnphy*, align 8
  store %struct.brcms_phy* %0, %struct.brcms_phy** %2, align 8
  %5 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %6 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load %struct.brcms_phy_lcnphy*, %struct.brcms_phy_lcnphy** %7, align 8
  store %struct.brcms_phy_lcnphy* %8, %struct.brcms_phy_lcnphy** %4, align 8
  %9 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %10 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %9, i32 0, i32 0
  store i64 0, i64* %10, align 8
  %11 = load %struct.brcms_phy_lcnphy*, %struct.brcms_phy_lcnphy** %4, align 8
  %12 = getelementptr inbounds %struct.brcms_phy_lcnphy, %struct.brcms_phy_lcnphy* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %1
  %16 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %17 = call i32 @write_phy_reg(%struct.brcms_phy* %16, i32 2370, i32 7)
  %18 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %19 = call i32 @write_phy_reg(%struct.brcms_phy* %18, i32 2363, i32 8215)
  %20 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %21 = call i32 @write_phy_reg(%struct.brcms_phy* %20, i32 2364, i32 10181)
  %22 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %23 = call i32 @wlc_lcnphy_txrx_spur_avoidance_mode(%struct.brcms_phy* %22, i32 1)
  br label %24

24:                                               ; preds = %15, %1
  %25 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %26 = call i32 @read_phy_reg(%struct.brcms_phy* %25, i32 1604)
  store i32 %26, i32* %3, align 4
  %27 = load i32, i32* %3, align 4
  %28 = and i32 %27, 1
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %24
  %31 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %32 = call i32 @wlc_lcnphy_tx_pu(%struct.brcms_phy* %31, i32 0)
  %33 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %34 = call i32 @mod_phy_reg(%struct.brcms_phy* %33, i32 1599, i32 2, i32 2)
  br label %43

35:                                               ; preds = %24
  %36 = load i32, i32* %3, align 4
  %37 = and i32 %36, 2
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %41 = call i32 @mod_phy_reg(%struct.brcms_phy* %40, i32 1107, i32 32768, i32 0)
  br label %42

42:                                               ; preds = %39, %35
  br label %43

43:                                               ; preds = %42, %30
  %44 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %45 = call i32 @mod_phy_reg(%struct.brcms_phy* %44, i32 1750, i32 3, i32 1)
  %46 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %47 = call i32 @mod_phy_reg(%struct.brcms_phy* %46, i32 1754, i32 8, i32 0)
  %48 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %49 = call i32 @mod_phy_reg(%struct.brcms_phy* %48, i32 1754, i32 128, i32 0)
  %50 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %51 = load i32, i32* @RADIO_2064_REG112, align 4
  %52 = call i32 @and_radio_reg(%struct.brcms_phy* %50, i32 %51, i32 65529)
  %53 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %54 = call i32 @wlc_lcnphy_deaf_mode(%struct.brcms_phy* %53, i32 0)
  ret void
}

declare dso_local i32 @write_phy_reg(%struct.brcms_phy*, i32, i32) #1

declare dso_local i32 @wlc_lcnphy_txrx_spur_avoidance_mode(%struct.brcms_phy*, i32) #1

declare dso_local i32 @read_phy_reg(%struct.brcms_phy*, i32) #1

declare dso_local i32 @wlc_lcnphy_tx_pu(%struct.brcms_phy*, i32) #1

declare dso_local i32 @mod_phy_reg(%struct.brcms_phy*, i32, i32, i32) #1

declare dso_local i32 @and_radio_reg(%struct.brcms_phy*, i32, i32) #1

declare dso_local i32 @wlc_lcnphy_deaf_mode(%struct.brcms_phy*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
