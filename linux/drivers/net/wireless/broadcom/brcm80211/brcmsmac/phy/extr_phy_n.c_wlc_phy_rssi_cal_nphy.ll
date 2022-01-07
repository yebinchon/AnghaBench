; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_rssi_cal_nphy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_rssi_cal_nphy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@NPHY_RSSI_SEL_NB = common dso_local global i32 0, align 4
@NPHY_RSSI_SEL_W1 = common dso_local global i32 0, align 4
@NPHY_RSSI_SEL_W2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wlc_phy_rssi_cal_nphy(%struct.brcms_phy* %0) #0 {
  %2 = alloca %struct.brcms_phy*, align 8
  store %struct.brcms_phy* %0, %struct.brcms_phy** %2, align 8
  %3 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %4 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call i64 @NREV_GE(i32 %6, i32 3)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %11 = call i32 @wlc_phy_rssi_cal_nphy_rev3(%struct.brcms_phy* %10)
  br label %22

12:                                               ; preds = %1
  %13 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %14 = load i32, i32* @NPHY_RSSI_SEL_NB, align 4
  %15 = call i32 @wlc_phy_rssi_cal_nphy_rev2(%struct.brcms_phy* %13, i32 %14)
  %16 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %17 = load i32, i32* @NPHY_RSSI_SEL_W1, align 4
  %18 = call i32 @wlc_phy_rssi_cal_nphy_rev2(%struct.brcms_phy* %16, i32 %17)
  %19 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %20 = load i32, i32* @NPHY_RSSI_SEL_W2, align 4
  %21 = call i32 @wlc_phy_rssi_cal_nphy_rev2(%struct.brcms_phy* %19, i32 %20)
  br label %22

22:                                               ; preds = %12, %9
  ret void
}

declare dso_local i64 @NREV_GE(i32, i32) #1

declare dso_local i32 @wlc_phy_rssi_cal_nphy_rev3(%struct.brcms_phy*) #1

declare dso_local i32 @wlc_phy_rssi_cal_nphy_rev2(%struct.brcms_phy*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
