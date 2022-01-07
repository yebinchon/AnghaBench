; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_lcn.c_b43_phy_lcn_tx_pwr_ctl_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_lcn.c_b43_phy_lcn_tx_pwr_ctl_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.lcn_tx_gains = type { i32, i32, i32, i64 }

@NL80211_BAND_2GHZ = common dso_local global i64 0, align 8
@B43_SENSE_TEMP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"TX power control not supported for this HW\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*)* @b43_phy_lcn_tx_pwr_ctl_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_phy_lcn_tx_pwr_ctl_init(%struct.b43_wldev* %0) #0 {
  %2 = alloca %struct.b43_wldev*, align 8
  %3 = alloca %struct.lcn_tx_gains, align 8
  %4 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %2, align 8
  %5 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %6 = call i32 @b43_mac_suspend(%struct.b43_wldev* %5)
  %7 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %8 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %40, label %14

14:                                               ; preds = %1
  %15 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %16 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i64 @b43_current_band(i32 %17)
  %19 = load i64, i64* @NL80211_BAND_2GHZ, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.lcn_tx_gains, %struct.lcn_tx_gains* %3, i32 0, i32 0
  store i32 4, i32* %22, align 8
  %23 = getelementptr inbounds %struct.lcn_tx_gains, %struct.lcn_tx_gains* %3, i32 0, i32 1
  store i32 12, i32* %23, align 4
  %24 = getelementptr inbounds %struct.lcn_tx_gains, %struct.lcn_tx_gains* %3, i32 0, i32 2
  store i32 12, i32* %24, align 8
  %25 = getelementptr inbounds %struct.lcn_tx_gains, %struct.lcn_tx_gains* %3, i32 0, i32 3
  store i64 0, i64* %25, align 8
  store i32 150, i32* %4, align 4
  br label %31

26:                                               ; preds = %14
  %27 = getelementptr inbounds %struct.lcn_tx_gains, %struct.lcn_tx_gains* %3, i32 0, i32 0
  store i32 7, i32* %27, align 8
  %28 = getelementptr inbounds %struct.lcn_tx_gains, %struct.lcn_tx_gains* %3, i32 0, i32 1
  store i32 15, i32* %28, align 4
  %29 = getelementptr inbounds %struct.lcn_tx_gains, %struct.lcn_tx_gains* %3, i32 0, i32 2
  store i32 14, i32* %29, align 8
  %30 = getelementptr inbounds %struct.lcn_tx_gains, %struct.lcn_tx_gains* %3, i32 0, i32 3
  store i64 0, i64* %30, align 8
  store i32 150, i32* %4, align 4
  br label %31

31:                                               ; preds = %26, %21
  %32 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %33 = call i32 @b43_phy_lcn_set_tx_gain(%struct.b43_wldev* %32, %struct.lcn_tx_gains* %3)
  %34 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @b43_phy_lcn_set_bbmult(%struct.b43_wldev* %34, i32 %35)
  %37 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %38 = load i32, i32* @B43_SENSE_TEMP, align 4
  %39 = call i32 @b43_phy_lcn_sense_setup(%struct.b43_wldev* %37, i32 %38)
  br label %45

40:                                               ; preds = %1
  %41 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %42 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @b43err(i32 %43, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  br label %45

45:                                               ; preds = %40, %31
  %46 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %47 = call i32 @b43_mac_enable(%struct.b43_wldev* %46)
  ret void
}

declare dso_local i32 @b43_mac_suspend(%struct.b43_wldev*) #1

declare dso_local i64 @b43_current_band(i32) #1

declare dso_local i32 @b43_phy_lcn_set_tx_gain(%struct.b43_wldev*, %struct.lcn_tx_gains*) #1

declare dso_local i32 @b43_phy_lcn_set_bbmult(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43_phy_lcn_sense_setup(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43err(i32, i8*) #1

declare dso_local i32 @b43_mac_enable(%struct.b43_wldev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
