; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7615/extr_mac.c_mt7615_mac_set_default_sensitivity.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7615/extr_mac.c_mt7615_mac_set_default_sensitivity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt7615_dev = type { i32, i32, i32 }

@MT_WF_PHY_B0_MIN_PRI_PWR = common dso_local global i32 0, align 4
@MT_WF_PHY_B0_PD_OFDM_MASK = common dso_local global i32 0, align 4
@MT_WF_PHY_B1_MIN_PRI_PWR = common dso_local global i32 0, align 4
@MT_WF_PHY_B1_PD_OFDM_MASK = common dso_local global i32 0, align 4
@MT_WF_PHY_B0_RXTD_CCK_PD = common dso_local global i32 0, align 4
@MT_WF_PHY_B0_PD_CCK_MASK = common dso_local global i32 0, align 4
@MT_WF_PHY_B1_RXTD_CCK_PD = common dso_local global i32 0, align 4
@MT_WF_PHY_B1_PD_CCK_MASK = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mt7615_dev*)* @mt7615_mac_set_default_sensitivity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mt7615_mac_set_default_sensitivity(%struct.mt7615_dev* %0) #0 {
  %2 = alloca %struct.mt7615_dev*, align 8
  store %struct.mt7615_dev* %0, %struct.mt7615_dev** %2, align 8
  %3 = load %struct.mt7615_dev*, %struct.mt7615_dev** %2, align 8
  %4 = load i32, i32* @MT_WF_PHY_B0_MIN_PRI_PWR, align 4
  %5 = load i32, i32* @MT_WF_PHY_B0_PD_OFDM_MASK, align 4
  %6 = call i32 @MT_WF_PHY_B0_PD_OFDM(i32 316)
  %7 = call i32 @mt76_rmw(%struct.mt7615_dev* %3, i32 %4, i32 %5, i32 %6)
  %8 = load %struct.mt7615_dev*, %struct.mt7615_dev** %2, align 8
  %9 = load i32, i32* @MT_WF_PHY_B1_MIN_PRI_PWR, align 4
  %10 = load i32, i32* @MT_WF_PHY_B1_PD_OFDM_MASK, align 4
  %11 = call i32 @MT_WF_PHY_B1_PD_OFDM(i32 316)
  %12 = call i32 @mt76_rmw(%struct.mt7615_dev* %8, i32 %9, i32 %10, i32 %11)
  %13 = load %struct.mt7615_dev*, %struct.mt7615_dev** %2, align 8
  %14 = load i32, i32* @MT_WF_PHY_B0_RXTD_CCK_PD, align 4
  %15 = load i32, i32* @MT_WF_PHY_B0_PD_CCK_MASK, align 4
  %16 = call i32 @MT_WF_PHY_B0_PD_CCK(i32 146)
  %17 = call i32 @mt76_rmw(%struct.mt7615_dev* %13, i32 %14, i32 %15, i32 %16)
  %18 = load %struct.mt7615_dev*, %struct.mt7615_dev** %2, align 8
  %19 = load i32, i32* @MT_WF_PHY_B1_RXTD_CCK_PD, align 4
  %20 = load i32, i32* @MT_WF_PHY_B1_PD_CCK_MASK, align 4
  %21 = call i32 @MT_WF_PHY_B1_PD_CCK(i32 146)
  %22 = call i32 @mt76_rmw(%struct.mt7615_dev* %18, i32 %19, i32 %20, i32 %21)
  %23 = load %struct.mt7615_dev*, %struct.mt7615_dev** %2, align 8
  %24 = getelementptr inbounds %struct.mt7615_dev, %struct.mt7615_dev* %23, i32 0, i32 0
  store i32 -98, i32* %24, align 4
  %25 = load %struct.mt7615_dev*, %struct.mt7615_dev** %2, align 8
  %26 = getelementptr inbounds %struct.mt7615_dev, %struct.mt7615_dev* %25, i32 0, i32 1
  store i32 -110, i32* %26, align 4
  %27 = load i32, i32* @jiffies, align 4
  %28 = load %struct.mt7615_dev*, %struct.mt7615_dev** %2, align 8
  %29 = getelementptr inbounds %struct.mt7615_dev, %struct.mt7615_dev* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 4
  ret void
}

declare dso_local i32 @mt76_rmw(%struct.mt7615_dev*, i32, i32, i32) #1

declare dso_local i32 @MT_WF_PHY_B0_PD_OFDM(i32) #1

declare dso_local i32 @MT_WF_PHY_B1_PD_OFDM(i32) #1

declare dso_local i32 @MT_WF_PHY_B0_PD_CCK(i32) #1

declare dso_local i32 @MT_WF_PHY_B1_PD_CCK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
