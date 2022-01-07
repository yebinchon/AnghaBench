; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/extr_aq_ethtool.c_aq_ethtool_get_rxnfc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/extr_aq_ethtool.c_aq_ethtool_get_rxnfc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_rxnfc = type { i32, i32, i32 }
%struct.aq_nic_s = type { i32 }
%struct.aq_nic_cfg_s = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_rxnfc*, i32*)* @aq_ethtool_get_rxnfc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aq_ethtool_get_rxnfc(%struct.net_device* %0, %struct.ethtool_rxnfc* %1, i32* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_rxnfc*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.aq_nic_s*, align 8
  %8 = alloca %struct.aq_nic_cfg_s*, align 8
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_rxnfc* %1, %struct.ethtool_rxnfc** %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = call %struct.aq_nic_s* @netdev_priv(%struct.net_device* %10)
  store %struct.aq_nic_s* %11, %struct.aq_nic_s** %7, align 8
  %12 = load %struct.aq_nic_s*, %struct.aq_nic_s** %7, align 8
  %13 = call %struct.aq_nic_cfg_s* @aq_nic_get_cfg(%struct.aq_nic_s* %12)
  store %struct.aq_nic_cfg_s* %13, %struct.aq_nic_cfg_s** %8, align 8
  store i32 0, i32* %9, align 4
  %14 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %15 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %37 [
    i32 128, label %17
    i32 130, label %23
    i32 129, label %28
    i32 131, label %32
  ]

17:                                               ; preds = %3
  %18 = load %struct.aq_nic_cfg_s*, %struct.aq_nic_cfg_s** %8, align 8
  %19 = getelementptr inbounds %struct.aq_nic_cfg_s, %struct.aq_nic_cfg_s* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %22 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 4
  br label %40

23:                                               ; preds = %3
  %24 = load %struct.aq_nic_s*, %struct.aq_nic_s** %7, align 8
  %25 = call i32 @aq_get_rxnfc_count_all_rules(%struct.aq_nic_s* %24)
  %26 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %27 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  br label %40

28:                                               ; preds = %3
  %29 = load %struct.aq_nic_s*, %struct.aq_nic_s** %7, align 8
  %30 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %31 = call i32 @aq_get_rxnfc_rule(%struct.aq_nic_s* %29, %struct.ethtool_rxnfc* %30)
  store i32 %31, i32* %9, align 4
  br label %40

32:                                               ; preds = %3
  %33 = load %struct.aq_nic_s*, %struct.aq_nic_s** %7, align 8
  %34 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %35 = load i32*, i32** %6, align 8
  %36 = call i32 @aq_get_rxnfc_all_rules(%struct.aq_nic_s* %33, %struct.ethtool_rxnfc* %34, i32* %35)
  store i32 %36, i32* %9, align 4
  br label %40

37:                                               ; preds = %3
  %38 = load i32, i32* @EOPNOTSUPP, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %9, align 4
  br label %40

40:                                               ; preds = %37, %32, %28, %23, %17
  %41 = load i32, i32* %9, align 4
  ret i32 %41
}

declare dso_local %struct.aq_nic_s* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.aq_nic_cfg_s* @aq_nic_get_cfg(%struct.aq_nic_s*) #1

declare dso_local i32 @aq_get_rxnfc_count_all_rules(%struct.aq_nic_s*) #1

declare dso_local i32 @aq_get_rxnfc_rule(%struct.aq_nic_s*, %struct.ethtool_rxnfc*) #1

declare dso_local i32 @aq_get_rxnfc_all_rules(%struct.aq_nic_s*, %struct.ethtool_rxnfc*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
