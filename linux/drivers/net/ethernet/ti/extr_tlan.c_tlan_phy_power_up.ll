; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_tlan.c_tlan_phy_power_up.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_tlan.c_tlan_phy_power_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32 }
%struct.tlan_priv = type { i64, i32* }

@TLAN_DEBUG_GNRL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"%s: Powering up PHY.\0A\00", align 1
@MII_GC_LOOPBK = common dso_local global i32 0, align 4
@MII_GEN_CTL = common dso_local global i32 0, align 4
@TLAN_TIMER_PHY_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @tlan_phy_power_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tlan_phy_power_up(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.tlan_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.tlan_priv* @netdev_priv(%struct.net_device* %5)
  store %struct.tlan_priv* %6, %struct.tlan_priv** %3, align 8
  %7 = load i32, i32* @TLAN_DEBUG_GNRL, align 4
  %8 = load %struct.net_device*, %struct.net_device** %2, align 8
  %9 = getelementptr inbounds %struct.net_device, %struct.net_device* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @TLAN_DBG(i32 %7, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load %struct.net_device*, %struct.net_device** %2, align 8
  %13 = getelementptr inbounds %struct.net_device, %struct.net_device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @tlan_mii_sync(i32 %14)
  %16 = load i32, i32* @MII_GC_LOOPBK, align 4
  store i32 %16, i32* %4, align 4
  %17 = load %struct.net_device*, %struct.net_device** %2, align 8
  %18 = load %struct.tlan_priv*, %struct.tlan_priv** %3, align 8
  %19 = getelementptr inbounds %struct.tlan_priv, %struct.tlan_priv* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = load %struct.tlan_priv*, %struct.tlan_priv** %3, align 8
  %22 = getelementptr inbounds %struct.tlan_priv, %struct.tlan_priv* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds i32, i32* %20, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @MII_GEN_CTL, align 4
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @tlan_mii_write_reg(%struct.net_device* %17, i32 %25, i32 %26, i32 %27)
  %29 = load %struct.net_device*, %struct.net_device** %2, align 8
  %30 = getelementptr inbounds %struct.net_device, %struct.net_device* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @tlan_mii_sync(i32 %31)
  %33 = load %struct.net_device*, %struct.net_device** %2, align 8
  %34 = call i32 @msecs_to_jiffies(i32 500)
  %35 = load i32, i32* @TLAN_TIMER_PHY_RESET, align 4
  %36 = call i32 @tlan_set_timer(%struct.net_device* %33, i32 %34, i32 %35)
  ret void
}

declare dso_local %struct.tlan_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @TLAN_DBG(i32, i8*, i32) #1

declare dso_local i32 @tlan_mii_sync(i32) #1

declare dso_local i32 @tlan_mii_write_reg(%struct.net_device*, i32, i32, i32) #1

declare dso_local i32 @tlan_set_timer(%struct.net_device*, i32, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
