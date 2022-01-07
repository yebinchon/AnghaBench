; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/enetc/extr_enetc_pf.c_enetc_set_loopback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/enetc/extr_enetc_pf.c_enetc_set_loopback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.enetc_ndev_priv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.enetc_hw }
%struct.enetc_hw = type { i32 }

@ENETC_PM0_IF_MODE = common dso_local global i32 0, align 4
@ENETC_PMO_IFM_RG = common dso_local global i32 0, align 4
@ENETC_PM0_IFM_RLP = common dso_local global i32 0, align 4
@ENETC_PM0_CMD_CFG = common dso_local global i32 0, align 4
@ENETC_PM0_CMD_XGLP = common dso_local global i32 0, align 4
@ENETC_PM0_CMD_PHY_TX_EN = common dso_local global i32 0, align 4
@ENETC_PM1_CMD_CFG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32)* @enetc_set_loopback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enetc_set_loopback(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.enetc_ndev_priv*, align 8
  %6 = alloca %struct.enetc_hw*, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.enetc_ndev_priv* @netdev_priv(%struct.net_device* %8)
  store %struct.enetc_ndev_priv* %9, %struct.enetc_ndev_priv** %5, align 8
  %10 = load %struct.enetc_ndev_priv*, %struct.enetc_ndev_priv** %5, align 8
  %11 = getelementptr inbounds %struct.enetc_ndev_priv, %struct.enetc_ndev_priv* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store %struct.enetc_hw* %13, %struct.enetc_hw** %6, align 8
  %14 = load %struct.enetc_hw*, %struct.enetc_hw** %6, align 8
  %15 = load i32, i32* @ENETC_PM0_IF_MODE, align 4
  %16 = call i32 @enetc_port_rd(%struct.enetc_hw* %14, i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @ENETC_PMO_IFM_RG, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %38

21:                                               ; preds = %2
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @ENETC_PM0_IFM_RLP, align 4
  %24 = xor i32 %23, -1
  %25 = and i32 %22, %24
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %21
  %29 = load i32, i32* @ENETC_PM0_IFM_RLP, align 4
  br label %31

30:                                               ; preds = %21
  br label %31

31:                                               ; preds = %30, %28
  %32 = phi i32 [ %29, %28 ], [ 0, %30 ]
  %33 = or i32 %25, %32
  store i32 %33, i32* %7, align 4
  %34 = load %struct.enetc_hw*, %struct.enetc_hw** %6, align 8
  %35 = load i32, i32* @ENETC_PM0_IF_MODE, align 4
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @enetc_port_wr(%struct.enetc_hw* %34, i32 %35, i32 %36)
  br label %74

38:                                               ; preds = %2
  %39 = load %struct.enetc_hw*, %struct.enetc_hw** %6, align 8
  %40 = load i32, i32* @ENETC_PM0_CMD_CFG, align 4
  %41 = call i32 @enetc_port_rd(%struct.enetc_hw* %39, i32 %40)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @ENETC_PM0_CMD_XGLP, align 4
  %44 = xor i32 %43, -1
  %45 = and i32 %42, %44
  %46 = load i32, i32* %4, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %38
  %49 = load i32, i32* @ENETC_PM0_CMD_XGLP, align 4
  br label %51

50:                                               ; preds = %38
  br label %51

51:                                               ; preds = %50, %48
  %52 = phi i32 [ %49, %48 ], [ 0, %50 ]
  %53 = or i32 %45, %52
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* @ENETC_PM0_CMD_PHY_TX_EN, align 4
  %56 = xor i32 %55, -1
  %57 = and i32 %54, %56
  %58 = load i32, i32* %4, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %51
  %61 = load i32, i32* @ENETC_PM0_CMD_PHY_TX_EN, align 4
  br label %63

62:                                               ; preds = %51
  br label %63

63:                                               ; preds = %62, %60
  %64 = phi i32 [ %61, %60 ], [ 0, %62 ]
  %65 = or i32 %57, %64
  store i32 %65, i32* %7, align 4
  %66 = load %struct.enetc_hw*, %struct.enetc_hw** %6, align 8
  %67 = load i32, i32* @ENETC_PM0_CMD_CFG, align 4
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @enetc_port_wr(%struct.enetc_hw* %66, i32 %67, i32 %68)
  %70 = load %struct.enetc_hw*, %struct.enetc_hw** %6, align 8
  %71 = load i32, i32* @ENETC_PM1_CMD_CFG, align 4
  %72 = load i32, i32* %7, align 4
  %73 = call i32 @enetc_port_wr(%struct.enetc_hw* %70, i32 %71, i32 %72)
  br label %74

74:                                               ; preds = %63, %31
  ret void
}

declare dso_local %struct.enetc_ndev_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @enetc_port_rd(%struct.enetc_hw*, i32) #1

declare dso_local i32 @enetc_port_wr(%struct.enetc_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
