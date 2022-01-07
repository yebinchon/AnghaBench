; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_lp.c_lpphy_papd_cal_txpwr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_lp.c_lpphy_papd_cal_txpwr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.b43_phy_lp* }
%struct.b43_phy_lp = type { i32 }
%struct.lpphy_tx_gains = type { i32 }

@B43_LPPHY_AFE_CTL_OVR = common dso_local global i32 0, align 4
@B43_LPPHY_RF_PWR_OVERRIDE = common dso_local global i32 0, align 4
@B43_LPPHY_TXPCTL_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*)* @lpphy_papd_cal_txpwr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpphy_papd_cal_txpwr(%struct.b43_wldev* %0) #0 {
  %2 = alloca %struct.b43_wldev*, align 8
  %3 = alloca %struct.b43_phy_lp*, align 8
  %4 = alloca %struct.lpphy_tx_gains, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.lpphy_tx_gains, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %2, align 8
  %10 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %11 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.b43_phy_lp*, %struct.b43_phy_lp** %12, align 8
  store %struct.b43_phy_lp* %13, %struct.b43_phy_lp** %3, align 8
  %14 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %15 = call i32 @lpphy_read_tx_pctl_mode_from_hardware(%struct.b43_wldev* %14)
  %16 = load %struct.b43_phy_lp*, %struct.b43_phy_lp** %3, align 8
  %17 = getelementptr inbounds %struct.b43_phy_lp, %struct.b43_phy_lp* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %5, align 4
  %19 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %20 = load i32, i32* @B43_LPPHY_AFE_CTL_OVR, align 4
  %21 = call i32 @b43_phy_read(%struct.b43_wldev* %19, i32 %20)
  %22 = and i32 %21, 64
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %1
  %26 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %27 = call i32 @lpphy_get_tx_gains(%struct.b43_wldev* %26)
  %28 = getelementptr inbounds %struct.lpphy_tx_gains, %struct.lpphy_tx_gains* %9, i32 0, i32 0
  store i32 %27, i32* %28, align 4
  %29 = bitcast %struct.lpphy_tx_gains* %4 to i8*
  %30 = bitcast %struct.lpphy_tx_gains* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %29, i8* align 4 %30, i64 4, i1 false)
  br label %31

31:                                               ; preds = %25, %1
  %32 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %33 = load i32, i32* @B43_LPPHY_RF_PWR_OVERRIDE, align 4
  %34 = call i32 @b43_phy_read(%struct.b43_wldev* %32, i32 %33)
  %35 = and i32 %34, 255
  store i32 %35, i32* %7, align 4
  %36 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %37 = call i32 @lpphy_get_bb_mult(%struct.b43_wldev* %36)
  store i32 %37, i32* %8, align 4
  %38 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %39 = load i32, i32* @B43_LPPHY_TXPCTL_OFF, align 4
  %40 = call i32 @lpphy_set_tx_power_control(%struct.b43_wldev* %38, i32 %39)
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %31
  %44 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %45 = getelementptr inbounds %struct.lpphy_tx_gains, %struct.lpphy_tx_gains* %4, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @lpphy_set_tx_gains(%struct.b43_wldev* %44, i32 %46)
  br label %48

48:                                               ; preds = %43, %31
  %49 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @lpphy_set_bb_mult(%struct.b43_wldev* %49, i32 %50)
  %52 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @lpphy_set_tx_power_control(%struct.b43_wldev* %52, i32 %53)
  %55 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %56 = load i32, i32* @B43_LPPHY_RF_PWR_OVERRIDE, align 4
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @b43_phy_maskset(%struct.b43_wldev* %55, i32 %56, i32 65280, i32 %57)
  ret void
}

declare dso_local i32 @lpphy_read_tx_pctl_mode_from_hardware(%struct.b43_wldev*) #1

declare dso_local i32 @b43_phy_read(%struct.b43_wldev*, i32) #1

declare dso_local i32 @lpphy_get_tx_gains(%struct.b43_wldev*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @lpphy_get_bb_mult(%struct.b43_wldev*) #1

declare dso_local i32 @lpphy_set_tx_power_control(%struct.b43_wldev*, i32) #1

declare dso_local i32 @lpphy_set_tx_gains(%struct.b43_wldev*, i32) #1

declare dso_local i32 @lpphy_set_bb_mult(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43_phy_maskset(%struct.b43_wldev*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
