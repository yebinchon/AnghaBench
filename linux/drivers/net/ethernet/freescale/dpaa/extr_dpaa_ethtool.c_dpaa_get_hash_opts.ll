; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa/extr_dpaa_ethtool.c_dpaa_get_hash_opts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa/extr_dpaa_ethtool.c_dpaa_get_hash_opts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_rxnfc = type { i32, i32 }
%struct.dpaa_priv = type { i32 }

@RXH_L4_B_0_1 = common dso_local global i32 0, align 4
@RXH_L4_B_2_3 = common dso_local global i32 0, align 4
@RXH_IP_SRC = common dso_local global i32 0, align 4
@RXH_IP_DST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_rxnfc*)* @dpaa_get_hash_opts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dpaa_get_hash_opts(%struct.net_device* %0, %struct.ethtool_rxnfc* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_rxnfc*, align 8
  %5 = alloca %struct.dpaa_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_rxnfc* %1, %struct.ethtool_rxnfc** %4, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.dpaa_priv* @netdev_priv(%struct.net_device* %6)
  store %struct.dpaa_priv* %7, %struct.dpaa_priv** %5, align 8
  %8 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %4, align 8
  %9 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %8, i32 0, i32 0
  store i32 0, i32* %9, align 4
  %10 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %4, align 8
  %11 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %41 [
    i32 131, label %13
    i32 130, label %13
    i32 129, label %13
    i32 128, label %13
    i32 135, label %27
    i32 134, label %27
    i32 133, label %27
    i32 132, label %27
    i32 141, label %27
    i32 140, label %27
    i32 139, label %27
    i32 138, label %27
    i32 137, label %27
    i32 136, label %27
  ]

13:                                               ; preds = %2, %2, %2, %2
  %14 = load %struct.dpaa_priv*, %struct.dpaa_priv** %5, align 8
  %15 = getelementptr inbounds %struct.dpaa_priv, %struct.dpaa_priv* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %13
  %19 = load i32, i32* @RXH_L4_B_0_1, align 4
  %20 = load i32, i32* @RXH_L4_B_2_3, align 4
  %21 = or i32 %19, %20
  %22 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %4, align 8
  %23 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = or i32 %24, %21
  store i32 %25, i32* %23, align 4
  br label %26

26:                                               ; preds = %18, %13
  br label %27

27:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %26
  %28 = load %struct.dpaa_priv*, %struct.dpaa_priv** %5, align 8
  %29 = getelementptr inbounds %struct.dpaa_priv, %struct.dpaa_priv* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %27
  %33 = load i32, i32* @RXH_IP_SRC, align 4
  %34 = load i32, i32* @RXH_IP_DST, align 4
  %35 = or i32 %33, %34
  %36 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %4, align 8
  %37 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = or i32 %38, %35
  store i32 %39, i32* %37, align 4
  br label %40

40:                                               ; preds = %32, %27
  br label %44

41:                                               ; preds = %2
  %42 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %4, align 8
  %43 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %42, i32 0, i32 0
  store i32 0, i32* %43, align 4
  br label %44

44:                                               ; preds = %41, %40
  ret i32 0
}

declare dso_local %struct.dpaa_priv* @netdev_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
