; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/emac/extr_emac-mac.c_emac_mac_up.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/emac/extr_emac-mac.c_emac_mac_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.emac_adapter = type { %struct.TYPE_8__, %struct.TYPE_7__*, i64, %struct.TYPE_6__, %struct.net_device* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.net_device = type { i32 }

@PHY_POLL = common dso_local global i32 0, align 4
@emac_adjust_link = common dso_local global i32 0, align 4
@PHY_INTERFACE_MODE_SGMII = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"could not connect phy\0A\00", align 1
@DIS_INT = common dso_local global i64 0, align 8
@EMAC_INT_STATUS = common dso_local global i64 0, align 8
@EMAC_INT_MASK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @emac_mac_up(%struct.emac_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.emac_adapter*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  store %struct.emac_adapter* %0, %struct.emac_adapter** %3, align 8
  %6 = load %struct.emac_adapter*, %struct.emac_adapter** %3, align 8
  %7 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %6, i32 0, i32 4
  %8 = load %struct.net_device*, %struct.net_device** %7, align 8
  store %struct.net_device* %8, %struct.net_device** %4, align 8
  %9 = load %struct.emac_adapter*, %struct.emac_adapter** %3, align 8
  %10 = call i32 @emac_mac_rx_tx_ring_reset_all(%struct.emac_adapter* %9)
  %11 = load %struct.emac_adapter*, %struct.emac_adapter** %3, align 8
  %12 = call i32 @emac_mac_config(%struct.emac_adapter* %11)
  %13 = load %struct.emac_adapter*, %struct.emac_adapter** %3, align 8
  %14 = load %struct.emac_adapter*, %struct.emac_adapter** %3, align 8
  %15 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %14, i32 0, i32 0
  %16 = call i32 @emac_mac_rx_descs_refill(%struct.emac_adapter* %13, %struct.TYPE_8__* %15)
  %17 = load i32, i32* @PHY_POLL, align 4
  %18 = load %struct.emac_adapter*, %struct.emac_adapter** %3, align 8
  %19 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %18, i32 0, i32 1
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  store i32 %17, i32* %21, align 4
  %22 = load %struct.net_device*, %struct.net_device** %4, align 8
  %23 = load %struct.emac_adapter*, %struct.emac_adapter** %3, align 8
  %24 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %23, i32 0, i32 1
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %26 = load i32, i32* @emac_adjust_link, align 4
  %27 = load i32, i32* @PHY_INTERFACE_MODE_SGMII, align 4
  %28 = call i32 @phy_connect_direct(%struct.net_device* %22, %struct.TYPE_7__* %25, i32 %26, i32 %27)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %1
  %32 = load %struct.emac_adapter*, %struct.emac_adapter** %3, align 8
  %33 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %32, i32 0, i32 4
  %34 = load %struct.net_device*, %struct.net_device** %33, align 8
  %35 = call i32 @netdev_err(%struct.net_device* %34, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* %5, align 4
  store i32 %36, i32* %2, align 4
  br label %71

37:                                               ; preds = %1
  %38 = load %struct.emac_adapter*, %struct.emac_adapter** %3, align 8
  %39 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %38, i32 0, i32 1
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %39, align 8
  %41 = call i32 @phy_attached_print(%struct.TYPE_7__* %40, i32* null)
  %42 = load i64, i64* @DIS_INT, align 8
  %43 = xor i64 %42, -1
  %44 = trunc i64 %43 to i32
  %45 = load %struct.emac_adapter*, %struct.emac_adapter** %3, align 8
  %46 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @EMAC_INT_STATUS, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i32 @writel(i32 %44, i64 %49)
  %51 = load %struct.emac_adapter*, %struct.emac_adapter** %3, align 8
  %52 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %51, i32 0, i32 3
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.emac_adapter*, %struct.emac_adapter** %3, align 8
  %56 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @EMAC_INT_MASK, align 8
  %59 = add nsw i64 %57, %58
  %60 = call i32 @writel(i32 %54, i64 %59)
  %61 = load %struct.emac_adapter*, %struct.emac_adapter** %3, align 8
  %62 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %61, i32 0, i32 1
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %62, align 8
  %64 = call i32 @phy_start(%struct.TYPE_7__* %63)
  %65 = load %struct.emac_adapter*, %struct.emac_adapter** %3, align 8
  %66 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = call i32 @napi_enable(i32* %67)
  %69 = load %struct.net_device*, %struct.net_device** %4, align 8
  %70 = call i32 @netif_start_queue(%struct.net_device* %69)
  store i32 0, i32* %2, align 4
  br label %71

71:                                               ; preds = %37, %31
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local i32 @emac_mac_rx_tx_ring_reset_all(%struct.emac_adapter*) #1

declare dso_local i32 @emac_mac_config(%struct.emac_adapter*) #1

declare dso_local i32 @emac_mac_rx_descs_refill(%struct.emac_adapter*, %struct.TYPE_8__*) #1

declare dso_local i32 @phy_connect_direct(%struct.net_device*, %struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i32 @phy_attached_print(%struct.TYPE_7__*, i32*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @phy_start(%struct.TYPE_7__*) #1

declare dso_local i32 @napi_enable(i32*) #1

declare dso_local i32 @netif_start_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
