; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/smsc/extr_smc91c92_cs.c_smc_get_link_ksettings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/smsc/extr_smc91c92_cs.c_smc_get_link_ksettings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_link_ksettings = type { i32 }
%struct.smc_private = type { i32, i32, i32 }

@BANK_SELECT = common dso_local global i64 0, align 8
@CFG_MII_SELECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_link_ksettings*)* @smc_get_link_ksettings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smc_get_link_ksettings(%struct.net_device* %0, %struct.ethtool_link_ksettings* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_link_ksettings*, align 8
  %5 = alloca %struct.smc_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_link_ksettings* %1, %struct.ethtool_link_ksettings** %4, align 8
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = call %struct.smc_private* @netdev_priv(%struct.net_device* %9)
  store %struct.smc_private* %10, %struct.smc_private** %5, align 8
  %11 = load %struct.net_device*, %struct.net_device** %3, align 8
  %12 = getelementptr inbounds %struct.net_device, %struct.net_device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* @BANK_SELECT, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @inw(i64 %17)
  store i32 %18, i32* %7, align 4
  %19 = load %struct.smc_private*, %struct.smc_private** %5, align 8
  %20 = getelementptr inbounds %struct.smc_private, %struct.smc_private* %19, i32 0, i32 1
  %21 = load i64, i64* %8, align 8
  %22 = call i32 @spin_lock_irqsave(i32* %20, i64 %21)
  %23 = call i32 @SMC_SELECT_BANK(i32 3)
  %24 = load %struct.smc_private*, %struct.smc_private** %5, align 8
  %25 = getelementptr inbounds %struct.smc_private, %struct.smc_private* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @CFG_MII_SELECT, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %2
  %31 = load %struct.smc_private*, %struct.smc_private** %5, align 8
  %32 = getelementptr inbounds %struct.smc_private, %struct.smc_private* %31, i32 0, i32 2
  %33 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %34 = call i32 @mii_ethtool_get_link_ksettings(i32* %32, %struct.ethtool_link_ksettings* %33)
  br label %39

35:                                               ; preds = %2
  %36 = load %struct.net_device*, %struct.net_device** %3, align 8
  %37 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %38 = call i32 @smc_netdev_get_ecmd(%struct.net_device* %36, %struct.ethtool_link_ksettings* %37)
  br label %39

39:                                               ; preds = %35, %30
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @SMC_SELECT_BANK(i32 %40)
  %42 = load %struct.smc_private*, %struct.smc_private** %5, align 8
  %43 = getelementptr inbounds %struct.smc_private, %struct.smc_private* %42, i32 0, i32 1
  %44 = load i64, i64* %8, align 8
  %45 = call i32 @spin_unlock_irqrestore(i32* %43, i64 %44)
  ret i32 0
}

declare dso_local %struct.smc_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @inw(i64) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @SMC_SELECT_BANK(i32) #1

declare dso_local i32 @mii_ethtool_get_link_ksettings(i32*, %struct.ethtool_link_ksettings*) #1

declare dso_local i32 @smc_netdev_get_ecmd(%struct.net_device*, %struct.ethtool_link_ksettings*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
