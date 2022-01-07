; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_ethtool.c_ixgbe_set_rxnfc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_ethtool.c_ixgbe_set_rxnfc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_rxnfc = type { i32 }
%struct.ixgbe_adapter = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_rxnfc*)* @ixgbe_set_rxnfc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_set_rxnfc(%struct.net_device* %0, %struct.ethtool_rxnfc* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_rxnfc*, align 8
  %5 = alloca %struct.ixgbe_adapter*, align 8
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_rxnfc* %1, %struct.ethtool_rxnfc** %4, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.ixgbe_adapter* @netdev_priv(%struct.net_device* %7)
  store %struct.ixgbe_adapter* %8, %struct.ixgbe_adapter** %5, align 8
  %9 = load i32, i32* @EOPNOTSUPP, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %6, align 4
  %11 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %4, align 8
  %12 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %26 [
    i32 129, label %14
    i32 130, label %18
    i32 128, label %22
  ]

14:                                               ; preds = %2
  %15 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %16 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %4, align 8
  %17 = call i32 @ixgbe_add_ethtool_fdir_entry(%struct.ixgbe_adapter* %15, %struct.ethtool_rxnfc* %16)
  store i32 %17, i32* %6, align 4
  br label %27

18:                                               ; preds = %2
  %19 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %20 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %4, align 8
  %21 = call i32 @ixgbe_del_ethtool_fdir_entry(%struct.ixgbe_adapter* %19, %struct.ethtool_rxnfc* %20)
  store i32 %21, i32* %6, align 4
  br label %27

22:                                               ; preds = %2
  %23 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %24 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %4, align 8
  %25 = call i32 @ixgbe_set_rss_hash_opt(%struct.ixgbe_adapter* %23, %struct.ethtool_rxnfc* %24)
  store i32 %25, i32* %6, align 4
  br label %27

26:                                               ; preds = %2
  br label %27

27:                                               ; preds = %26, %22, %18, %14
  %28 = load i32, i32* %6, align 4
  ret i32 %28
}

declare dso_local %struct.ixgbe_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ixgbe_add_ethtool_fdir_entry(%struct.ixgbe_adapter*, %struct.ethtool_rxnfc*) #1

declare dso_local i32 @ixgbe_del_ethtool_fdir_entry(%struct.ixgbe_adapter*, %struct.ethtool_rxnfc*) #1

declare dso_local i32 @ixgbe_set_rss_hash_opt(%struct.ixgbe_adapter*, %struct.ethtool_rxnfc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
