; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_ethtool.c_efx_ethtool_set_rxnfc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_ethtool.c_efx_ethtool_set_rxnfc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_rxnfc = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.efx_nic = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@EFX_FILTER_PRI_MANUAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_rxnfc*)* @efx_ethtool_set_rxnfc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efx_ethtool_set_rxnfc(%struct.net_device* %0, %struct.ethtool_rxnfc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_rxnfc*, align 8
  %6 = alloca %struct.efx_nic*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_rxnfc* %1, %struct.ethtool_rxnfc** %5, align 8
  %7 = load %struct.net_device*, %struct.net_device** %4, align 8
  %8 = call %struct.efx_nic* @netdev_priv(%struct.net_device* %7)
  store %struct.efx_nic* %8, %struct.efx_nic** %6, align 8
  %9 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %10 = call i64 @efx_filter_get_rx_id_limit(%struct.efx_nic* %9)
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* @EOPNOTSUPP, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %38

15:                                               ; preds = %2
  %16 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %17 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %35 [
    i32 128, label %19
    i32 129, label %27
  ]

19:                                               ; preds = %15
  %20 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %21 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %22 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %21, i32 0, i32 1
  %23 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %24 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @efx_ethtool_set_class_rule(%struct.efx_nic* %20, %struct.TYPE_2__* %22, i32 %25)
  store i32 %26, i32* %3, align 4
  br label %38

27:                                               ; preds = %15
  %28 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %29 = load i32, i32* @EFX_FILTER_PRI_MANUAL, align 4
  %30 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %31 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @efx_filter_remove_id_safe(%struct.efx_nic* %28, i32 %29, i32 %33)
  store i32 %34, i32* %3, align 4
  br label %38

35:                                               ; preds = %15
  %36 = load i32, i32* @EOPNOTSUPP, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %35, %27, %19, %12
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local %struct.efx_nic* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @efx_filter_get_rx_id_limit(%struct.efx_nic*) #1

declare dso_local i32 @efx_ethtool_set_class_rule(%struct.efx_nic*, %struct.TYPE_2__*, i32) #1

declare dso_local i32 @efx_filter_remove_id_safe(%struct.efx_nic*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
