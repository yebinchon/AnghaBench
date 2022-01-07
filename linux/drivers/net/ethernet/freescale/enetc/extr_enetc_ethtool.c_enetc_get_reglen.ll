; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/enetc/extr_enetc_ethtool.c_enetc_get_reglen.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/enetc/extr_enetc_ethtool.c_enetc_get_reglen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.enetc_ndev_priv = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.enetc_hw }
%struct.enetc_hw = type { i64 }

@enetc_si_regs = common dso_local global i32 0, align 4
@enetc_txbdr_regs = common dso_local global i32 0, align 4
@enetc_rxbdr_regs = common dso_local global i32 0, align 4
@enetc_port_regs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @enetc_get_reglen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @enetc_get_reglen(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.enetc_ndev_priv*, align 8
  %4 = alloca %struct.enetc_hw*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.enetc_ndev_priv* @netdev_priv(%struct.net_device* %6)
  store %struct.enetc_ndev_priv* %7, %struct.enetc_ndev_priv** %3, align 8
  %8 = load %struct.enetc_ndev_priv*, %struct.enetc_ndev_priv** %3, align 8
  %9 = getelementptr inbounds %struct.enetc_ndev_priv, %struct.enetc_ndev_priv* %8, i32 0, i32 2
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store %struct.enetc_hw* %11, %struct.enetc_hw** %4, align 8
  %12 = load i32, i32* @enetc_si_regs, align 4
  %13 = call i32 @ARRAY_SIZE(i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* @enetc_txbdr_regs, align 4
  %15 = call i32 @ARRAY_SIZE(i32 %14)
  %16 = load %struct.enetc_ndev_priv*, %struct.enetc_ndev_priv** %3, align 8
  %17 = getelementptr inbounds %struct.enetc_ndev_priv, %struct.enetc_ndev_priv* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = mul nsw i32 %15, %18
  %20 = load i32, i32* %5, align 4
  %21 = add nsw i32 %20, %19
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* @enetc_rxbdr_regs, align 4
  %23 = call i32 @ARRAY_SIZE(i32 %22)
  %24 = load %struct.enetc_ndev_priv*, %struct.enetc_ndev_priv** %3, align 8
  %25 = getelementptr inbounds %struct.enetc_ndev_priv, %struct.enetc_ndev_priv* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = mul nsw i32 %23, %26
  %28 = load i32, i32* %5, align 4
  %29 = add nsw i32 %28, %27
  store i32 %29, i32* %5, align 4
  %30 = load %struct.enetc_hw*, %struct.enetc_hw** %4, align 8
  %31 = getelementptr inbounds %struct.enetc_hw, %struct.enetc_hw* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %1
  %35 = load i32, i32* @enetc_port_regs, align 4
  %36 = call i32 @ARRAY_SIZE(i32 %35)
  %37 = load i32, i32* %5, align 4
  %38 = add nsw i32 %37, %36
  store i32 %38, i32* %5, align 4
  br label %39

39:                                               ; preds = %34, %1
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = mul i64 %41, 8
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* %5, align 4
  ret i32 %44
}

declare dso_local %struct.enetc_ndev_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
