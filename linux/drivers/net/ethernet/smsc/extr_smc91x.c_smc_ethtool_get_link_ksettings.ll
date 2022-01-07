; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/smsc/extr_smc91x.c_smc_ethtool_get_link_ksettings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/smsc/extr_smc91x.c_smc_ethtool_get_link_ksettings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_link_ksettings = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i64, i32, i32 }
%struct.smc_local = type { i64, i32, i32, i32, i32 }

@SUPPORTED_10baseT_Half = common dso_local global i32 0, align 4
@SUPPORTED_10baseT_Full = common dso_local global i32 0, align 4
@SUPPORTED_TP = common dso_local global i32 0, align 4
@SUPPORTED_AUI = common dso_local global i32 0, align 4
@SPEED_10 = common dso_local global i32 0, align 4
@SPEED_100 = common dso_local global i32 0, align 4
@AUTONEG_DISABLE = common dso_local global i32 0, align 4
@TCR_SWFDUP = common dso_local global i32 0, align 4
@DUPLEX_FULL = common dso_local global i32 0, align 4
@DUPLEX_HALF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_link_ksettings*)* @smc_ethtool_get_link_ksettings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smc_ethtool_get_link_ksettings(%struct.net_device* %0, %struct.ethtool_link_ksettings* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_link_ksettings*, align 8
  %5 = alloca %struct.smc_local*, align 8
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_link_ksettings* %1, %struct.ethtool_link_ksettings** %4, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.smc_local* @netdev_priv(%struct.net_device* %7)
  store %struct.smc_local* %8, %struct.smc_local** %5, align 8
  %9 = load %struct.smc_local*, %struct.smc_local** %5, align 8
  %10 = getelementptr inbounds %struct.smc_local, %struct.smc_local* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %24

13:                                               ; preds = %2
  %14 = load %struct.smc_local*, %struct.smc_local** %5, align 8
  %15 = getelementptr inbounds %struct.smc_local, %struct.smc_local* %14, i32 0, i32 3
  %16 = call i32 @spin_lock_irq(i32* %15)
  %17 = load %struct.smc_local*, %struct.smc_local** %5, align 8
  %18 = getelementptr inbounds %struct.smc_local, %struct.smc_local* %17, i32 0, i32 4
  %19 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %20 = call i32 @mii_ethtool_get_link_ksettings(i32* %18, %struct.ethtool_link_ksettings* %19)
  %21 = load %struct.smc_local*, %struct.smc_local** %5, align 8
  %22 = getelementptr inbounds %struct.smc_local, %struct.smc_local* %21, i32 0, i32 3
  %23 = call i32 @spin_unlock_irq(i32* %22)
  br label %81

24:                                               ; preds = %2
  %25 = load i32, i32* @SUPPORTED_10baseT_Half, align 4
  %26 = load i32, i32* @SUPPORTED_10baseT_Full, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @SUPPORTED_TP, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @SUPPORTED_AUI, align 4
  %31 = or i32 %29, %30
  store i32 %31, i32* %6, align 4
  %32 = load %struct.smc_local*, %struct.smc_local** %5, align 8
  %33 = getelementptr inbounds %struct.smc_local, %struct.smc_local* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = icmp eq i32 %34, 10
  br i1 %35, label %36, label %41

36:                                               ; preds = %24
  %37 = load i32, i32* @SPEED_10, align 4
  %38 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %39 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 3
  store i32 %37, i32* %40, align 4
  br label %52

41:                                               ; preds = %24
  %42 = load %struct.smc_local*, %struct.smc_local** %5, align 8
  %43 = getelementptr inbounds %struct.smc_local, %struct.smc_local* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = icmp eq i32 %44, 100
  br i1 %45, label %46, label %51

46:                                               ; preds = %41
  %47 = load i32, i32* @SPEED_100, align 4
  %48 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %49 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 3
  store i32 %47, i32* %50, align 4
  br label %51

51:                                               ; preds = %46, %41
  br label %52

52:                                               ; preds = %51, %36
  %53 = load i32, i32* @AUTONEG_DISABLE, align 4
  %54 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %55 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 2
  store i32 %53, i32* %56, align 8
  %57 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %58 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 1
  store i64 0, i64* %59, align 8
  %60 = load %struct.smc_local*, %struct.smc_local** %5, align 8
  %61 = getelementptr inbounds %struct.smc_local, %struct.smc_local* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @TCR_SWFDUP, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %52
  %67 = load i32, i32* @DUPLEX_FULL, align 4
  br label %70

68:                                               ; preds = %52
  %69 = load i32, i32* @DUPLEX_HALF, align 4
  br label %70

70:                                               ; preds = %68, %66
  %71 = phi i32 [ %67, %66 ], [ %69, %68 ]
  %72 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %73 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  store i32 %71, i32* %74, align 8
  %75 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %76 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* %6, align 4
  %80 = call i32 @ethtool_convert_legacy_u32_to_link_mode(i32 %78, i32 %79)
  br label %81

81:                                               ; preds = %70, %13
  ret i32 0
}

declare dso_local %struct.smc_local* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @mii_ethtool_get_link_ksettings(i32*, %struct.ethtool_link_ksettings*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @ethtool_convert_legacy_u32_to_link_mode(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
