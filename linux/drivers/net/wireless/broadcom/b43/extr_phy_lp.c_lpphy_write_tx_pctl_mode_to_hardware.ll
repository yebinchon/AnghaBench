; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_lp.c_lpphy_write_tx_pctl_mode_to_hardware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_lp.c_lpphy_write_tx_pctl_mode_to_hardware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.b43_phy_lp* }
%struct.b43_phy_lp = type { i32 }

@B43_LPPHY_TX_PWR_CTL_CMD_MODE_OFF = common dso_local global i32 0, align 4
@B43_LPPHY_TX_PWR_CTL_CMD_MODE_HW = common dso_local global i32 0, align 4
@B43_LPPHY_TX_PWR_CTL_CMD_MODE_SW = common dso_local global i32 0, align 4
@B43_LPPHY_TX_PWR_CTL_CMD = common dso_local global i32 0, align 4
@B43_LPPHY_TX_PWR_CTL_CMD_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*)* @lpphy_write_tx_pctl_mode_to_hardware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpphy_write_tx_pctl_mode_to_hardware(%struct.b43_wldev* %0) #0 {
  %2 = alloca %struct.b43_wldev*, align 8
  %3 = alloca %struct.b43_phy_lp*, align 8
  %4 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %2, align 8
  %5 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %6 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load %struct.b43_phy_lp*, %struct.b43_phy_lp** %7, align 8
  store %struct.b43_phy_lp* %8, %struct.b43_phy_lp** %3, align 8
  %9 = load %struct.b43_phy_lp*, %struct.b43_phy_lp** %3, align 8
  %10 = getelementptr inbounds %struct.b43_phy_lp, %struct.b43_phy_lp* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %18 [
    i32 129, label %12
    i32 130, label %14
    i32 128, label %16
  ]

12:                                               ; preds = %1
  %13 = load i32, i32* @B43_LPPHY_TX_PWR_CTL_CMD_MODE_OFF, align 4
  store i32 %13, i32* %4, align 4
  br label %20

14:                                               ; preds = %1
  %15 = load i32, i32* @B43_LPPHY_TX_PWR_CTL_CMD_MODE_HW, align 4
  store i32 %15, i32* %4, align 4
  br label %20

16:                                               ; preds = %1
  %17 = load i32, i32* @B43_LPPHY_TX_PWR_CTL_CMD_MODE_SW, align 4
  store i32 %17, i32* %4, align 4
  br label %20

18:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  %19 = call i32 @B43_WARN_ON(i32 1)
  br label %20

20:                                               ; preds = %18, %16, %14, %12
  %21 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %22 = load i32, i32* @B43_LPPHY_TX_PWR_CTL_CMD, align 4
  %23 = load i32, i32* @B43_LPPHY_TX_PWR_CTL_CMD_MODE, align 4
  %24 = xor i32 %23, -1
  %25 = and i32 %24, 65535
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @b43_phy_maskset(%struct.b43_wldev* %21, i32 %22, i32 %25, i32 %26)
  ret void
}

declare dso_local i32 @B43_WARN_ON(i32) #1

declare dso_local i32 @b43_phy_maskset(%struct.b43_wldev*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
