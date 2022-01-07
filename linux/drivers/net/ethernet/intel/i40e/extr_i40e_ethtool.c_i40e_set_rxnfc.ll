; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_ethtool.c_i40e_set_rxnfc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_ethtool.c_i40e_set_rxnfc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_rxnfc = type { i32 }
%struct.i40e_netdev_priv = type { %struct.i40e_vsi* }
%struct.i40e_vsi = type { %struct.i40e_pf* }
%struct.i40e_pf = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_rxnfc*)* @i40e_set_rxnfc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40e_set_rxnfc(%struct.net_device* %0, %struct.ethtool_rxnfc* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_rxnfc*, align 8
  %5 = alloca %struct.i40e_netdev_priv*, align 8
  %6 = alloca %struct.i40e_vsi*, align 8
  %7 = alloca %struct.i40e_pf*, align 8
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_rxnfc* %1, %struct.ethtool_rxnfc** %4, align 8
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = call %struct.i40e_netdev_priv* @netdev_priv(%struct.net_device* %9)
  store %struct.i40e_netdev_priv* %10, %struct.i40e_netdev_priv** %5, align 8
  %11 = load %struct.i40e_netdev_priv*, %struct.i40e_netdev_priv** %5, align 8
  %12 = getelementptr inbounds %struct.i40e_netdev_priv, %struct.i40e_netdev_priv* %11, i32 0, i32 0
  %13 = load %struct.i40e_vsi*, %struct.i40e_vsi** %12, align 8
  store %struct.i40e_vsi* %13, %struct.i40e_vsi** %6, align 8
  %14 = load %struct.i40e_vsi*, %struct.i40e_vsi** %6, align 8
  %15 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %14, i32 0, i32 0
  %16 = load %struct.i40e_pf*, %struct.i40e_pf** %15, align 8
  store %struct.i40e_pf* %16, %struct.i40e_pf** %7, align 8
  %17 = load i32, i32* @EOPNOTSUPP, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %8, align 4
  %19 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %4, align 8
  %20 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  switch i32 %21, label %34 [
    i32 128, label %22
    i32 129, label %26
    i32 130, label %30
  ]

22:                                               ; preds = %2
  %23 = load %struct.i40e_pf*, %struct.i40e_pf** %7, align 8
  %24 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %4, align 8
  %25 = call i32 @i40e_set_rss_hash_opt(%struct.i40e_pf* %23, %struct.ethtool_rxnfc* %24)
  store i32 %25, i32* %8, align 4
  br label %35

26:                                               ; preds = %2
  %27 = load %struct.i40e_vsi*, %struct.i40e_vsi** %6, align 8
  %28 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %4, align 8
  %29 = call i32 @i40e_add_fdir_ethtool(%struct.i40e_vsi* %27, %struct.ethtool_rxnfc* %28)
  store i32 %29, i32* %8, align 4
  br label %35

30:                                               ; preds = %2
  %31 = load %struct.i40e_vsi*, %struct.i40e_vsi** %6, align 8
  %32 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %4, align 8
  %33 = call i32 @i40e_del_fdir_entry(%struct.i40e_vsi* %31, %struct.ethtool_rxnfc* %32)
  store i32 %33, i32* %8, align 4
  br label %35

34:                                               ; preds = %2
  br label %35

35:                                               ; preds = %34, %30, %26, %22
  %36 = load i32, i32* %8, align 4
  ret i32 %36
}

declare dso_local %struct.i40e_netdev_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @i40e_set_rss_hash_opt(%struct.i40e_pf*, %struct.ethtool_rxnfc*) #1

declare dso_local i32 @i40e_add_fdir_ethtool(%struct.i40e_vsi*, %struct.ethtool_rxnfc*) #1

declare dso_local i32 @i40e_del_fdir_entry(%struct.i40e_vsi*, %struct.ethtool_rxnfc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
