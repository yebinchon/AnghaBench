; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_lp.c_lpphy_calibration.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_lp.c_lpphy_calibration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.b43_phy_lp* }
%struct.b43_phy_lp = type { i64, i64, i32 }

@B43_LPPHY_TXPCTL_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*)* @lpphy_calibration to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpphy_calibration(%struct.b43_wldev* %0) #0 {
  %2 = alloca %struct.b43_wldev*, align 8
  %3 = alloca %struct.b43_phy_lp*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %2, align 8
  %6 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %7 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 1
  %9 = load %struct.b43_phy_lp*, %struct.b43_phy_lp** %8, align 8
  store %struct.b43_phy_lp* %9, %struct.b43_phy_lp** %3, align 8
  store i32 0, i32* %5, align 4
  %10 = load %struct.b43_phy_lp*, %struct.b43_phy_lp** %3, align 8
  %11 = getelementptr inbounds %struct.b43_phy_lp, %struct.b43_phy_lp* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.b43_phy_lp*, %struct.b43_phy_lp** %3, align 8
  %14 = getelementptr inbounds %struct.b43_phy_lp, %struct.b43_phy_lp* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %12, %15
  br i1 %16, label %17, label %23

17:                                               ; preds = %1
  store i32 1, i32* %5, align 4
  %18 = load %struct.b43_phy_lp*, %struct.b43_phy_lp** %3, align 8
  %19 = getelementptr inbounds %struct.b43_phy_lp, %struct.b43_phy_lp* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.b43_phy_lp*, %struct.b43_phy_lp** %3, align 8
  %22 = getelementptr inbounds %struct.b43_phy_lp, %struct.b43_phy_lp* %21, i32 0, i32 0
  store i64 %20, i64* %22, align 8
  br label %23

23:                                               ; preds = %17, %1
  %24 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %25 = call i32 @b43_mac_suspend(%struct.b43_wldev* %24)
  %26 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %27 = call i32 @lpphy_btcoex_override(%struct.b43_wldev* %26)
  %28 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %29 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp sge i32 %31, 2
  br i1 %32, label %33, label %36

33:                                               ; preds = %23
  %34 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %35 = call i32 @lpphy_save_dig_flt_state(%struct.b43_wldev* %34)
  br label %36

36:                                               ; preds = %33, %23
  %37 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %38 = call i32 @lpphy_read_tx_pctl_mode_from_hardware(%struct.b43_wldev* %37)
  %39 = load %struct.b43_phy_lp*, %struct.b43_phy_lp** %3, align 8
  %40 = getelementptr inbounds %struct.b43_phy_lp, %struct.b43_phy_lp* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  store i32 %41, i32* %4, align 4
  %42 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %43 = load i32, i32* @B43_LPPHY_TXPCTL_OFF, align 4
  %44 = call i32 @lpphy_set_tx_power_control(%struct.b43_wldev* %42, i32 %43)
  %45 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %46 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %36
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* @B43_LPPHY_TXPCTL_OFF, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %50
  %55 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %56 = call i32 @lpphy_pr41573_workaround(%struct.b43_wldev* %55)
  br label %57

57:                                               ; preds = %54, %50, %36
  %58 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %59 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp sge i32 %61, 2
  br i1 %62, label %63, label %69

63:                                               ; preds = %57
  %64 = load i32, i32* %5, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %63
  %67 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %68 = call i32 @lpphy_papd_cal_txpwr(%struct.b43_wldev* %67)
  br label %69

69:                                               ; preds = %66, %63, %57
  %70 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %71 = load i32, i32* %4, align 4
  %72 = call i32 @lpphy_set_tx_power_control(%struct.b43_wldev* %70, i32 %71)
  %73 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %74 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = icmp sge i32 %76, 2
  br i1 %77, label %78, label %81

78:                                               ; preds = %69
  %79 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %80 = call i32 @lpphy_restore_dig_flt_state(%struct.b43_wldev* %79)
  br label %81

81:                                               ; preds = %78, %69
  %82 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %83 = call i32 @lpphy_rx_iq_cal(%struct.b43_wldev* %82, i32 1, i32 1, i32 0, i32 0, i32* null)
  %84 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %85 = call i32 @b43_mac_enable(%struct.b43_wldev* %84)
  ret void
}

declare dso_local i32 @b43_mac_suspend(%struct.b43_wldev*) #1

declare dso_local i32 @lpphy_btcoex_override(%struct.b43_wldev*) #1

declare dso_local i32 @lpphy_save_dig_flt_state(%struct.b43_wldev*) #1

declare dso_local i32 @lpphy_read_tx_pctl_mode_from_hardware(%struct.b43_wldev*) #1

declare dso_local i32 @lpphy_set_tx_power_control(%struct.b43_wldev*, i32) #1

declare dso_local i32 @lpphy_pr41573_workaround(%struct.b43_wldev*) #1

declare dso_local i32 @lpphy_papd_cal_txpwr(%struct.b43_wldev*) #1

declare dso_local i32 @lpphy_restore_dig_flt_state(%struct.b43_wldev*) #1

declare dso_local i32 @lpphy_rx_iq_cal(%struct.b43_wldev*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @b43_mac_enable(%struct.b43_wldev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
