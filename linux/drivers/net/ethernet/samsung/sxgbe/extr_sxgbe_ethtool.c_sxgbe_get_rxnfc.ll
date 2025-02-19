; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/samsung/sxgbe/extr_sxgbe_ethtool.c_sxgbe_get_rxnfc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/samsung/sxgbe/extr_sxgbe_ethtool.c_sxgbe_get_rxnfc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_rxnfc = type { i32 }
%struct.sxgbe_priv_data = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_rxnfc*, i32*)* @sxgbe_get_rxnfc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sxgbe_get_rxnfc(%struct.net_device* %0, %struct.ethtool_rxnfc* %1, i32* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_rxnfc*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.sxgbe_priv_data*, align 8
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_rxnfc* %1, %struct.ethtool_rxnfc** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.sxgbe_priv_data* @netdev_priv(%struct.net_device* %9)
  store %struct.sxgbe_priv_data* %10, %struct.sxgbe_priv_data** %7, align 8
  %11 = load i32, i32* @EOPNOTSUPP, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %8, align 4
  %13 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %14 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %20 [
    i32 128, label %16
  ]

16:                                               ; preds = %3
  %17 = load %struct.sxgbe_priv_data*, %struct.sxgbe_priv_data** %7, align 8
  %18 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %19 = call i32 @sxgbe_get_rss_hash_opts(%struct.sxgbe_priv_data* %17, %struct.ethtool_rxnfc* %18)
  store i32 %19, i32* %8, align 4
  br label %21

20:                                               ; preds = %3
  br label %21

21:                                               ; preds = %20, %16
  %22 = load i32, i32* %8, align 4
  ret i32 %22
}

declare dso_local %struct.sxgbe_priv_data* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @sxgbe_get_rss_hash_opts(%struct.sxgbe_priv_data*, %struct.ethtool_rxnfc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
