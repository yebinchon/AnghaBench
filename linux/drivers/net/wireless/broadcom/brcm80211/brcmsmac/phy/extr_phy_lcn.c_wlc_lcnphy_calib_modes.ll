; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/extr_phy_lcn.c_wlc_lcnphy_calib_modes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/extr_phy_lcn.c_wlc_lcnphy_calib_modes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.brcms_phy_lcnphy* }
%struct.brcms_phy_lcnphy = type { i32, i32 }
%struct.brcms_phy_pub = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wlc_lcnphy_calib_modes(%struct.brcms_phy* %0, i32 %1) #0 {
  %3 = alloca %struct.brcms_phy*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.brcms_phy_lcnphy*, align 8
  store %struct.brcms_phy* %0, %struct.brcms_phy** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %11 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.brcms_phy_lcnphy*, %struct.brcms_phy_lcnphy** %12, align 8
  store %struct.brcms_phy_lcnphy* %13, %struct.brcms_phy_lcnphy** %9, align 8
  %14 = load i32, i32* %4, align 4
  switch i32 %14, label %74 [
    i32 130, label %15
    i32 131, label %16
    i32 129, label %19
    i32 128, label %22
    i32 132, label %65
  ]

15:                                               ; preds = %2
  br label %74

16:                                               ; preds = %2
  %17 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %18 = call i32 @wlc_lcnphy_periodic_cal(%struct.brcms_phy* %17)
  br label %74

19:                                               ; preds = %2
  %20 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %21 = call i32 @wlc_lcnphy_periodic_cal(%struct.brcms_phy* %20)
  br label %74

22:                                               ; preds = %2
  %23 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %24 = call i32 @wlc_lcnphy_tempsense_based_pwr_ctrl_enabled(%struct.brcms_phy* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %64

26:                                               ; preds = %22
  %27 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %28 = call i32 @wlc_lcnphy_tempsense(%struct.brcms_phy* %27, i32 0)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @LCNPHY_TEMPSENSE(i32 %29)
  store i32 %30, i32* %6, align 4
  %31 = load %struct.brcms_phy_lcnphy*, %struct.brcms_phy_lcnphy** %9, align 8
  %32 = getelementptr inbounds %struct.brcms_phy_lcnphy, %struct.brcms_phy_lcnphy* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @LCNPHY_TEMPSENSE(i32 %33)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* %7, align 4
  %37 = sub nsw i32 %35, %36
  store i32 %37, i32* %8, align 4
  %38 = load %struct.brcms_phy_lcnphy*, %struct.brcms_phy_lcnphy** %9, align 8
  %39 = getelementptr inbounds %struct.brcms_phy_lcnphy, %struct.brcms_phy_lcnphy* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp sgt i32 %40, 90
  br i1 %41, label %48, label %42

42:                                               ; preds = %26
  %43 = load i32, i32* %8, align 4
  %44 = icmp sgt i32 %43, 60
  br i1 %44, label %48, label %45

45:                                               ; preds = %42
  %46 = load i32, i32* %8, align 4
  %47 = icmp slt i32 %46, -60
  br i1 %47, label %48, label %58

48:                                               ; preds = %45, %42, %26
  %49 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %50 = call i32 @wlc_lcnphy_glacial_timer_based_cal(%struct.brcms_phy* %49)
  %51 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %52 = call i32 @wlc_2064_vco_cal(%struct.brcms_phy* %51)
  %53 = load i32, i32* %5, align 4
  %54 = load %struct.brcms_phy_lcnphy*, %struct.brcms_phy_lcnphy** %9, align 8
  %55 = getelementptr inbounds %struct.brcms_phy_lcnphy, %struct.brcms_phy_lcnphy* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  %56 = load %struct.brcms_phy_lcnphy*, %struct.brcms_phy_lcnphy** %9, align 8
  %57 = getelementptr inbounds %struct.brcms_phy_lcnphy, %struct.brcms_phy_lcnphy* %56, i32 0, i32 0
  store i32 0, i32* %57, align 4
  br label %63

58:                                               ; preds = %45
  %59 = load %struct.brcms_phy_lcnphy*, %struct.brcms_phy_lcnphy** %9, align 8
  %60 = getelementptr inbounds %struct.brcms_phy_lcnphy, %struct.brcms_phy_lcnphy* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %60, align 4
  br label %63

63:                                               ; preds = %58, %48
  br label %64

64:                                               ; preds = %63, %22
  br label %74

65:                                               ; preds = %2
  %66 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %67 = call i32 @wlc_lcnphy_tempsense_based_pwr_ctrl_enabled(%struct.brcms_phy* %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %65
  %70 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %71 = bitcast %struct.brcms_phy* %70 to %struct.brcms_phy_pub*
  %72 = call i32 @wlc_lcnphy_tx_power_adjustment(%struct.brcms_phy_pub* %71)
  br label %73

73:                                               ; preds = %69, %65
  br label %74

74:                                               ; preds = %2, %73, %64, %19, %16, %15
  ret void
}

declare dso_local i32 @wlc_lcnphy_periodic_cal(%struct.brcms_phy*) #1

declare dso_local i32 @wlc_lcnphy_tempsense_based_pwr_ctrl_enabled(%struct.brcms_phy*) #1

declare dso_local i32 @wlc_lcnphy_tempsense(%struct.brcms_phy*, i32) #1

declare dso_local i32 @LCNPHY_TEMPSENSE(i32) #1

declare dso_local i32 @wlc_lcnphy_glacial_timer_based_cal(%struct.brcms_phy*) #1

declare dso_local i32 @wlc_2064_vco_cal(%struct.brcms_phy*) #1

declare dso_local i32 @wlc_lcnphy_tx_power_adjustment(%struct.brcms_phy_pub*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
