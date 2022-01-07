; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_txc43128_phy.c_txc_set_power.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_txc43128_phy.c_txc_set_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ef4_nic = type { i32 }

@PHY_MODE_LOW_POWER = common dso_local global i32 0, align 4
@TXC_REQUIRED_DEVS = common dso_local global i32 0, align 4
@MDIO_MMD_PCS = common dso_local global i32 0, align 4
@MDIO_MMD_PHYXS = common dso_local global i32 0, align 4
@MDIO_MMD_PMAPMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ef4_nic*)* @txc_set_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @txc_set_power(%struct.ef4_nic* %0) #0 {
  %2 = alloca %struct.ef4_nic*, align 8
  store %struct.ef4_nic* %0, %struct.ef4_nic** %2, align 8
  %3 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %4 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %5 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @PHY_MODE_LOW_POWER, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = load i32, i32* @TXC_REQUIRED_DEVS, align 4
  %14 = call i32 @ef4_mdio_set_mmds_lpower(%struct.ef4_nic* %3, i32 %12, i32 %13)
  %15 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %16 = load i32, i32* @MDIO_MMD_PCS, align 4
  %17 = call i32 @txc_glrgs_lane_power(%struct.ef4_nic* %15, i32 %16)
  %18 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %19 = load i32, i32* @MDIO_MMD_PHYXS, align 4
  %20 = call i32 @txc_glrgs_lane_power(%struct.ef4_nic* %18, i32 %19)
  %21 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %22 = load i32, i32* @MDIO_MMD_PMAPMD, align 4
  %23 = call i32 @txc_analog_lane_power(%struct.ef4_nic* %21, i32 %22)
  %24 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %25 = load i32, i32* @MDIO_MMD_PHYXS, align 4
  %26 = call i32 @txc_analog_lane_power(%struct.ef4_nic* %24, i32 %25)
  ret void
}

declare dso_local i32 @ef4_mdio_set_mmds_lpower(%struct.ef4_nic*, i32, i32) #1

declare dso_local i32 @txc_glrgs_lane_power(%struct.ef4_nic*, i32) #1

declare dso_local i32 @txc_analog_lane_power(%struct.ef4_nic*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
