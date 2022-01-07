; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_ethtool.c_i40e_get_rxnfc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_ethtool.c_i40e_get_rxnfc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_rxnfc = type { i32, i32, i32 }
%struct.i40e_netdev_priv = type { %struct.i40e_vsi* }
%struct.i40e_vsi = type { i32, %struct.i40e_pf* }
%struct.i40e_pf = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_rxnfc*, i32*)* @i40e_get_rxnfc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40e_get_rxnfc(%struct.net_device* %0, %struct.ethtool_rxnfc* %1, i32* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_rxnfc*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.i40e_netdev_priv*, align 8
  %8 = alloca %struct.i40e_vsi*, align 8
  %9 = alloca %struct.i40e_pf*, align 8
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_rxnfc* %1, %struct.ethtool_rxnfc** %5, align 8
  store i32* %2, i32** %6, align 8
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = call %struct.i40e_netdev_priv* @netdev_priv(%struct.net_device* %11)
  store %struct.i40e_netdev_priv* %12, %struct.i40e_netdev_priv** %7, align 8
  %13 = load %struct.i40e_netdev_priv*, %struct.i40e_netdev_priv** %7, align 8
  %14 = getelementptr inbounds %struct.i40e_netdev_priv, %struct.i40e_netdev_priv* %13, i32 0, i32 0
  %15 = load %struct.i40e_vsi*, %struct.i40e_vsi** %14, align 8
  store %struct.i40e_vsi* %15, %struct.i40e_vsi** %8, align 8
  %16 = load %struct.i40e_vsi*, %struct.i40e_vsi** %8, align 8
  %17 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %16, i32 0, i32 1
  %18 = load %struct.i40e_pf*, %struct.i40e_pf** %17, align 8
  store %struct.i40e_pf* %18, %struct.i40e_pf** %9, align 8
  %19 = load i32, i32* @EOPNOTSUPP, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %10, align 4
  %21 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %22 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  switch i32 %23, label %53 [
    i32 128, label %24
    i32 129, label %30
    i32 131, label %34
    i32 130, label %44
    i32 132, label %48
  ]

24:                                               ; preds = %3
  %25 = load %struct.i40e_vsi*, %struct.i40e_vsi** %8, align 8
  %26 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %29 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  store i32 0, i32* %10, align 4
  br label %54

30:                                               ; preds = %3
  %31 = load %struct.i40e_pf*, %struct.i40e_pf** %9, align 8
  %32 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %33 = call i32 @i40e_get_rss_hash_opts(%struct.i40e_pf* %31, %struct.ethtool_rxnfc* %32)
  store i32 %33, i32* %10, align 4
  br label %54

34:                                               ; preds = %3
  %35 = load %struct.i40e_pf*, %struct.i40e_pf** %9, align 8
  %36 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %39 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 4
  %40 = load %struct.i40e_pf*, %struct.i40e_pf** %9, align 8
  %41 = call i32 @i40e_get_fd_cnt_all(%struct.i40e_pf* %40)
  %42 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %43 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  store i32 0, i32* %10, align 4
  br label %54

44:                                               ; preds = %3
  %45 = load %struct.i40e_pf*, %struct.i40e_pf** %9, align 8
  %46 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %47 = call i32 @i40e_get_ethtool_fdir_entry(%struct.i40e_pf* %45, %struct.ethtool_rxnfc* %46)
  store i32 %47, i32* %10, align 4
  br label %54

48:                                               ; preds = %3
  %49 = load %struct.i40e_pf*, %struct.i40e_pf** %9, align 8
  %50 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %51 = load i32*, i32** %6, align 8
  %52 = call i32 @i40e_get_ethtool_fdir_all(%struct.i40e_pf* %49, %struct.ethtool_rxnfc* %50, i32* %51)
  store i32 %52, i32* %10, align 4
  br label %54

53:                                               ; preds = %3
  br label %54

54:                                               ; preds = %53, %48, %44, %34, %30, %24
  %55 = load i32, i32* %10, align 4
  ret i32 %55
}

declare dso_local %struct.i40e_netdev_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @i40e_get_rss_hash_opts(%struct.i40e_pf*, %struct.ethtool_rxnfc*) #1

declare dso_local i32 @i40e_get_fd_cnt_all(%struct.i40e_pf*) #1

declare dso_local i32 @i40e_get_ethtool_fdir_entry(%struct.i40e_pf*, %struct.ethtool_rxnfc*) #1

declare dso_local i32 @i40e_get_ethtool_fdir_all(%struct.i40e_pf*, %struct.ethtool_rxnfc*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
