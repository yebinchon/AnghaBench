; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/enetc/extr_enetc_ethtool.c_enetc_get_ringparam.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/enetc/extr_enetc_ethtool.c_enetc_get_ringparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_ringparam = type { i64, i64 }
%struct.enetc_ndev_priv = type { i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.enetc_hw }
%struct.enetc_hw = type { i32 }

@ENETC_RBLENR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"RxBDR[RBLENR] = %d!\0A\00", align 1
@ENETC_TBLENR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"TxBDR[TBLENR] = %d!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_ringparam*)* @enetc_get_ringparam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enetc_get_ringparam(%struct.net_device* %0, %struct.ethtool_ringparam* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_ringparam*, align 8
  %5 = alloca %struct.enetc_ndev_priv*, align 8
  %6 = alloca %struct.enetc_hw*, align 8
  %7 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_ringparam* %1, %struct.ethtool_ringparam** %4, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.enetc_ndev_priv* @netdev_priv(%struct.net_device* %8)
  store %struct.enetc_ndev_priv* %9, %struct.enetc_ndev_priv** %5, align 8
  %10 = load %struct.enetc_ndev_priv*, %struct.enetc_ndev_priv** %5, align 8
  %11 = getelementptr inbounds %struct.enetc_ndev_priv, %struct.enetc_ndev_priv* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %4, align 8
  %14 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %13, i32 0, i32 0
  store i64 %12, i64* %14, align 8
  %15 = load %struct.enetc_ndev_priv*, %struct.enetc_ndev_priv** %5, align 8
  %16 = getelementptr inbounds %struct.enetc_ndev_priv, %struct.enetc_ndev_priv* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %4, align 8
  %19 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %18, i32 0, i32 1
  store i64 %17, i64* %19, align 8
  %20 = load %struct.net_device*, %struct.net_device** %3, align 8
  %21 = call i64 @netif_running(%struct.net_device* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %58

23:                                               ; preds = %2
  %24 = load %struct.enetc_ndev_priv*, %struct.enetc_ndev_priv** %5, align 8
  %25 = getelementptr inbounds %struct.enetc_ndev_priv, %struct.enetc_ndev_priv* %24, i32 0, i32 2
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  store %struct.enetc_hw* %27, %struct.enetc_hw** %6, align 8
  %28 = load %struct.enetc_hw*, %struct.enetc_hw** %6, align 8
  %29 = load i32, i32* @ENETC_RBLENR, align 4
  %30 = call i64 @enetc_rxbdr_rd(%struct.enetc_hw* %28, i32 0, i32 %29)
  store i64 %30, i64* %7, align 8
  %31 = load i64, i64* %7, align 8
  %32 = load %struct.enetc_ndev_priv*, %struct.enetc_ndev_priv** %5, align 8
  %33 = getelementptr inbounds %struct.enetc_ndev_priv, %struct.enetc_ndev_priv* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %31, %34
  br i1 %35, label %36, label %42

36:                                               ; preds = %23
  %37 = load %struct.enetc_ndev_priv*, %struct.enetc_ndev_priv** %5, align 8
  %38 = load %struct.enetc_hw*, %struct.enetc_hw** %6, align 8
  %39 = load %struct.net_device*, %struct.net_device** %3, align 8
  %40 = load i64, i64* %7, align 8
  %41 = call i32 @netif_err(%struct.enetc_ndev_priv* %37, %struct.enetc_hw* %38, %struct.net_device* %39, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i64 %40)
  br label %42

42:                                               ; preds = %36, %23
  %43 = load %struct.enetc_hw*, %struct.enetc_hw** %6, align 8
  %44 = load i32, i32* @ENETC_TBLENR, align 4
  %45 = call i64 @enetc_txbdr_rd(%struct.enetc_hw* %43, i32 0, i32 %44)
  store i64 %45, i64* %7, align 8
  %46 = load i64, i64* %7, align 8
  %47 = load %struct.enetc_ndev_priv*, %struct.enetc_ndev_priv** %5, align 8
  %48 = getelementptr inbounds %struct.enetc_ndev_priv, %struct.enetc_ndev_priv* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %46, %49
  br i1 %50, label %51, label %57

51:                                               ; preds = %42
  %52 = load %struct.enetc_ndev_priv*, %struct.enetc_ndev_priv** %5, align 8
  %53 = load %struct.enetc_hw*, %struct.enetc_hw** %6, align 8
  %54 = load %struct.net_device*, %struct.net_device** %3, align 8
  %55 = load i64, i64* %7, align 8
  %56 = call i32 @netif_err(%struct.enetc_ndev_priv* %52, %struct.enetc_hw* %53, %struct.net_device* %54, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i64 %55)
  br label %57

57:                                               ; preds = %51, %42
  br label %58

58:                                               ; preds = %57, %2
  ret void
}

declare dso_local %struct.enetc_ndev_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i64 @enetc_rxbdr_rd(%struct.enetc_hw*, i32, i32) #1

declare dso_local i32 @netif_err(%struct.enetc_ndev_priv*, %struct.enetc_hw*, %struct.net_device*, i8*, i64) #1

declare dso_local i64 @enetc_txbdr_rd(%struct.enetc_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
