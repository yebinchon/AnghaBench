; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_lp.c_lpphy_read_tx_pctl_mode_from_hardware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_lp.c_lpphy_read_tx_pctl_mode_from_hardware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.b43_phy_lp* }
%struct.b43_phy_lp = type { i32 }

@B43_LPPHY_TX_PWR_CTL_CMD = common dso_local global i32 0, align 4
@B43_LPPHY_TX_PWR_CTL_CMD_MODE = common dso_local global i32 0, align 4
@B43_LPPHY_TXPCTL_OFF = common dso_local global i32 0, align 4
@B43_LPPHY_TXPCTL_SW = common dso_local global i32 0, align 4
@B43_LPPHY_TXPCTL_HW = common dso_local global i32 0, align 4
@B43_LPPHY_TXPCTL_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*)* @lpphy_read_tx_pctl_mode_from_hardware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpphy_read_tx_pctl_mode_from_hardware(%struct.b43_wldev* %0) #0 {
  %2 = alloca %struct.b43_wldev*, align 8
  %3 = alloca %struct.b43_phy_lp*, align 8
  %4 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %2, align 8
  %5 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %6 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load %struct.b43_phy_lp*, %struct.b43_phy_lp** %7, align 8
  store %struct.b43_phy_lp* %8, %struct.b43_phy_lp** %3, align 8
  %9 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %10 = load i32, i32* @B43_LPPHY_TX_PWR_CTL_CMD, align 4
  %11 = call i32 @b43_phy_read(%struct.b43_wldev* %9, i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @B43_LPPHY_TX_PWR_CTL_CMD_MODE, align 4
  %14 = and i32 %12, %13
  switch i32 %14, label %27 [
    i32 129, label %15
    i32 128, label %19
    i32 130, label %23
  ]

15:                                               ; preds = %1
  %16 = load i32, i32* @B43_LPPHY_TXPCTL_OFF, align 4
  %17 = load %struct.b43_phy_lp*, %struct.b43_phy_lp** %3, align 8
  %18 = getelementptr inbounds %struct.b43_phy_lp, %struct.b43_phy_lp* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  br label %32

19:                                               ; preds = %1
  %20 = load i32, i32* @B43_LPPHY_TXPCTL_SW, align 4
  %21 = load %struct.b43_phy_lp*, %struct.b43_phy_lp** %3, align 8
  %22 = getelementptr inbounds %struct.b43_phy_lp, %struct.b43_phy_lp* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  br label %32

23:                                               ; preds = %1
  %24 = load i32, i32* @B43_LPPHY_TXPCTL_HW, align 4
  %25 = load %struct.b43_phy_lp*, %struct.b43_phy_lp** %3, align 8
  %26 = getelementptr inbounds %struct.b43_phy_lp, %struct.b43_phy_lp* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  br label %32

27:                                               ; preds = %1
  %28 = load i32, i32* @B43_LPPHY_TXPCTL_UNKNOWN, align 4
  %29 = load %struct.b43_phy_lp*, %struct.b43_phy_lp** %3, align 8
  %30 = getelementptr inbounds %struct.b43_phy_lp, %struct.b43_phy_lp* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  %31 = call i32 @B43_WARN_ON(i32 1)
  br label %32

32:                                               ; preds = %27, %23, %19, %15
  ret void
}

declare dso_local i32 @b43_phy_read(%struct.b43_wldev*, i32) #1

declare dso_local i32 @B43_WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
