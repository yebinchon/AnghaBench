; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_sky2.c_sky2_set_features.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_sky2.c_sky2_set_features.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.sky2_port = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@NETIF_F_RXCSUM = common dso_local global i32 0, align 4
@SKY2_HW_NEW_LE = common dso_local global i32 0, align 4
@rxqaddr = common dso_local global i32* null, align 8
@Q_CSR = common dso_local global i32 0, align 4
@BMU_ENA_RX_CHKSUM = common dso_local global i32 0, align 4
@BMU_DIS_RX_CHKSUM = common dso_local global i32 0, align 4
@NETIF_F_RXHASH = common dso_local global i32 0, align 4
@NETIF_F_HW_VLAN_CTAG_TX = common dso_local global i32 0, align 4
@NETIF_F_HW_VLAN_CTAG_RX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @sky2_set_features to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sky2_set_features(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sky2_port*, align 8
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.sky2_port* @netdev_priv(%struct.net_device* %7)
  store %struct.sky2_port* %8, %struct.sky2_port** %5, align 8
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = getelementptr inbounds %struct.net_device, %struct.net_device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* %4, align 4
  %13 = xor i32 %11, %12
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @NETIF_F_RXCSUM, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %50

18:                                               ; preds = %2
  %19 = load %struct.sky2_port*, %struct.sky2_port** %5, align 8
  %20 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @SKY2_HW_NEW_LE, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %50, label %27

27:                                               ; preds = %18
  %28 = load %struct.sky2_port*, %struct.sky2_port** %5, align 8
  %29 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = load i32*, i32** @rxqaddr, align 8
  %32 = load %struct.sky2_port*, %struct.sky2_port** %5, align 8
  %33 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds i32, i32* %31, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @Q_CSR, align 4
  %38 = call i32 @Q_ADDR(i32 %36, i32 %37)
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @NETIF_F_RXCSUM, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %27
  %44 = load i32, i32* @BMU_ENA_RX_CHKSUM, align 4
  br label %47

45:                                               ; preds = %27
  %46 = load i32, i32* @BMU_DIS_RX_CHKSUM, align 4
  br label %47

47:                                               ; preds = %45, %43
  %48 = phi i32 [ %44, %43 ], [ %46, %45 ]
  %49 = call i32 @sky2_write32(%struct.TYPE_2__* %30, i32 %38, i32 %48)
  br label %50

50:                                               ; preds = %47, %18, %2
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* @NETIF_F_RXHASH, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %50
  %56 = load %struct.net_device*, %struct.net_device** %3, align 8
  %57 = load i32, i32* %4, align 4
  %58 = call i32 @rx_set_rss(%struct.net_device* %56, i32 %57)
  br label %59

59:                                               ; preds = %55, %50
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_TX, align 4
  %62 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_RX, align 4
  %63 = or i32 %61, %62
  %64 = and i32 %60, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %59
  %67 = load %struct.net_device*, %struct.net_device** %3, align 8
  %68 = load i32, i32* %4, align 4
  %69 = call i32 @sky2_vlan_mode(%struct.net_device* %67, i32 %68)
  br label %70

70:                                               ; preds = %66, %59
  ret i32 0
}

declare dso_local %struct.sky2_port* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @sky2_write32(%struct.TYPE_2__*, i32, i32) #1

declare dso_local i32 @Q_ADDR(i32, i32) #1

declare dso_local i32 @rx_set_rss(%struct.net_device*, i32) #1

declare dso_local i32 @sky2_vlan_mode(%struct.net_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
