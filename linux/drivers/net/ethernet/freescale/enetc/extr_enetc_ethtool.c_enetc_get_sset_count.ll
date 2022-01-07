; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/enetc/extr_enetc_ethtool.c_enetc_get_sset_count.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/enetc/extr_enetc_ethtool.c_enetc_get_sset_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.enetc_ndev_priv = type { i32, i32, i32 }

@ETH_SS_STATS = common dso_local global i32 0, align 4
@enetc_si_counters = common dso_local global i32 0, align 4
@tx_ring_stats = common dso_local global i32 0, align 4
@rx_ring_stats = common dso_local global i32 0, align 4
@enetc_port_counters = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @enetc_get_sset_count to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @enetc_get_sset_count(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.enetc_ndev_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.net_device*, %struct.net_device** %4, align 8
  %8 = call %struct.enetc_ndev_priv* @netdev_priv(%struct.net_device* %7)
  store %struct.enetc_ndev_priv* %8, %struct.enetc_ndev_priv** %6, align 8
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @ETH_SS_STATS, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %41

12:                                               ; preds = %2
  %13 = load i32, i32* @enetc_si_counters, align 4
  %14 = call i32 @ARRAY_SIZE(i32 %13)
  %15 = load i32, i32* @tx_ring_stats, align 4
  %16 = call i32 @ARRAY_SIZE(i32 %15)
  %17 = load %struct.enetc_ndev_priv*, %struct.enetc_ndev_priv** %6, align 8
  %18 = getelementptr inbounds %struct.enetc_ndev_priv, %struct.enetc_ndev_priv* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = mul nsw i32 %16, %19
  %21 = add nsw i32 %14, %20
  %22 = load i32, i32* @rx_ring_stats, align 4
  %23 = call i32 @ARRAY_SIZE(i32 %22)
  %24 = load %struct.enetc_ndev_priv*, %struct.enetc_ndev_priv** %6, align 8
  %25 = getelementptr inbounds %struct.enetc_ndev_priv, %struct.enetc_ndev_priv* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = mul nsw i32 %23, %26
  %28 = add nsw i32 %21, %27
  %29 = load %struct.enetc_ndev_priv*, %struct.enetc_ndev_priv** %6, align 8
  %30 = getelementptr inbounds %struct.enetc_ndev_priv, %struct.enetc_ndev_priv* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @enetc_si_is_pf(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %12
  %35 = load i32, i32* @enetc_port_counters, align 4
  %36 = call i32 @ARRAY_SIZE(i32 %35)
  br label %38

37:                                               ; preds = %12
  br label %38

38:                                               ; preds = %37, %34
  %39 = phi i32 [ %36, %34 ], [ 0, %37 ]
  %40 = add nsw i32 %28, %39
  store i32 %40, i32* %3, align 4
  br label %44

41:                                               ; preds = %2
  %42 = load i32, i32* @EOPNOTSUPP, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %41, %38
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local %struct.enetc_ndev_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i64 @enetc_si_is_pf(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
