; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igc/extr_igc_ethtool.c_igc_get_rxnfc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igc/extr_igc_ethtool.c_igc_get_rxnfc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_rxnfc = type { i32, i32, i32 }
%struct.igc_adapter = type { i32, i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_rxnfc*, i32*)* @igc_get_rxnfc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @igc_get_rxnfc(%struct.net_device* %0, %struct.ethtool_rxnfc* %1, i32* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_rxnfc*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.igc_adapter*, align 8
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_rxnfc* %1, %struct.ethtool_rxnfc** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.igc_adapter* @netdev_priv(%struct.net_device* %9)
  store %struct.igc_adapter* %10, %struct.igc_adapter** %7, align 8
  %11 = load i32, i32* @EOPNOTSUPP, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %8, align 4
  %13 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %14 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %41 [
    i32 128, label %16
    i32 131, label %22
    i32 130, label %28
    i32 132, label %32
    i32 129, label %37
  ]

16:                                               ; preds = %3
  %17 = load %struct.igc_adapter*, %struct.igc_adapter** %7, align 8
  %18 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %21 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %20, i32 0, i32 2
  store i32 %19, i32* %21, align 4
  store i32 0, i32* %8, align 4
  br label %42

22:                                               ; preds = %3
  %23 = load %struct.igc_adapter*, %struct.igc_adapter** %7, align 8
  %24 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %27 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  store i32 0, i32* %8, align 4
  br label %42

28:                                               ; preds = %3
  %29 = load %struct.igc_adapter*, %struct.igc_adapter** %7, align 8
  %30 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %31 = call i32 @igc_get_ethtool_nfc_entry(%struct.igc_adapter* %29, %struct.ethtool_rxnfc* %30)
  store i32 %31, i32* %8, align 4
  br label %42

32:                                               ; preds = %3
  %33 = load %struct.igc_adapter*, %struct.igc_adapter** %7, align 8
  %34 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %35 = load i32*, i32** %6, align 8
  %36 = call i32 @igc_get_ethtool_nfc_all(%struct.igc_adapter* %33, %struct.ethtool_rxnfc* %34, i32* %35)
  store i32 %36, i32* %8, align 4
  br label %42

37:                                               ; preds = %3
  %38 = load %struct.igc_adapter*, %struct.igc_adapter** %7, align 8
  %39 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %40 = call i32 @igc_get_rss_hash_opts(%struct.igc_adapter* %38, %struct.ethtool_rxnfc* %39)
  store i32 %40, i32* %8, align 4
  br label %42

41:                                               ; preds = %3
  br label %42

42:                                               ; preds = %41, %37, %32, %28, %22, %16
  %43 = load i32, i32* %8, align 4
  ret i32 %43
}

declare dso_local %struct.igc_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @igc_get_ethtool_nfc_entry(%struct.igc_adapter*, %struct.ethtool_rxnfc*) #1

declare dso_local i32 @igc_get_ethtool_nfc_all(%struct.igc_adapter*, %struct.ethtool_rxnfc*, i32*) #1

declare dso_local i32 @igc_get_rss_hash_opts(%struct.igc_adapter*, %struct.ethtool_rxnfc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
