; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_tlan.c_tlan_phy_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_tlan.c_tlan_phy_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32 }
%struct.tlan_priv = type { i32*, i64 }

@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@TLAN_DEBUG_GNRL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"%s: Resetting PHY.\0A\00", align 1
@MII_GC_LOOPBK = common dso_local global i32 0, align 4
@MII_GC_RESET = common dso_local global i32 0, align 4
@MII_GEN_CTL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"PHY reset timeout\0A\00", align 1
@TLAN_TIMER_PHY_START_LINK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @tlan_phy_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tlan_phy_reset(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.tlan_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = call %struct.tlan_priv* @netdev_priv(%struct.net_device* %7)
  store %struct.tlan_priv* %8, %struct.tlan_priv** %3, align 8
  %9 = load i64, i64* @jiffies, align 8
  %10 = load i64, i64* @HZ, align 8
  %11 = add i64 %9, %10
  store i64 %11, i64* %6, align 8
  %12 = load %struct.tlan_priv*, %struct.tlan_priv** %3, align 8
  %13 = getelementptr inbounds %struct.tlan_priv, %struct.tlan_priv* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = load %struct.tlan_priv*, %struct.tlan_priv** %3, align 8
  %16 = getelementptr inbounds %struct.tlan_priv, %struct.tlan_priv* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds i32, i32* %14, i64 %17
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* @TLAN_DEBUG_GNRL, align 4
  %21 = load %struct.net_device*, %struct.net_device** %2, align 8
  %22 = getelementptr inbounds %struct.net_device, %struct.net_device* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @TLAN_DBG(i32 %20, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load %struct.net_device*, %struct.net_device** %2, align 8
  %26 = getelementptr inbounds %struct.net_device, %struct.net_device* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @tlan_mii_sync(i32 %27)
  %29 = load i32, i32* @MII_GC_LOOPBK, align 4
  %30 = load i32, i32* @MII_GC_RESET, align 4
  %31 = or i32 %29, %30
  store i32 %31, i32* %5, align 4
  %32 = load %struct.net_device*, %struct.net_device** %2, align 8
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @MII_GEN_CTL, align 4
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @tlan_mii_write_reg(%struct.net_device* %32, i32 %33, i32 %34, i32 %35)
  br label %37

37:                                               ; preds = %50, %1
  %38 = load %struct.net_device*, %struct.net_device** %2, align 8
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @MII_GEN_CTL, align 4
  %41 = call i32 @tlan_mii_read_reg(%struct.net_device* %38, i32 %39, i32 %40, i32* %5)
  %42 = load i64, i64* @jiffies, align 8
  %43 = load i64, i64* %6, align 8
  %44 = call i64 @time_after(i64 %42, i64 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %37
  %47 = load %struct.net_device*, %struct.net_device** %2, align 8
  %48 = call i32 @netdev_err(%struct.net_device* %47, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %60

49:                                               ; preds = %37
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* @MII_GC_RESET, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %37, label %55

55:                                               ; preds = %50
  %56 = load %struct.net_device*, %struct.net_device** %2, align 8
  %57 = call i32 @msecs_to_jiffies(i32 50)
  %58 = load i32, i32* @TLAN_TIMER_PHY_START_LINK, align 4
  %59 = call i32 @tlan_set_timer(%struct.net_device* %56, i32 %57, i32 %58)
  br label %60

60:                                               ; preds = %55, %46
  ret void
}

declare dso_local %struct.tlan_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @TLAN_DBG(i32, i8*, i32) #1

declare dso_local i32 @tlan_mii_sync(i32) #1

declare dso_local i32 @tlan_mii_write_reg(%struct.net_device*, i32, i32, i32) #1

declare dso_local i32 @tlan_mii_read_reg(%struct.net_device*, i32, i32, i32*) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i32 @tlan_set_timer(%struct.net_device*, i32, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
