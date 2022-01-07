; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/toshiba/extr_ps3_gelic_net.c_gelic_card_get_ether_port_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/toshiba/extr_ps3_gelic_net.c_gelic_card_get_ether_port_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gelic_card = type { i32, %struct.net_device** }
%struct.net_device = type { i32 }

@GELIC_LV1_GET_ETH_PORT_STATUS = common dso_local global i32 0, align 4
@GELIC_LV1_VLAN_TX_ETHERNET_0 = common dso_local global i32 0, align 4
@GELIC_PORT_ETHERNET_0 = common dso_local global i64 0, align 8
@GELIC_LV1_ETHER_LINK_UP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gelic_card*, i32)* @gelic_card_get_ether_port_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gelic_card_get_ether_port_status(%struct.gelic_card* %0, i32 %1) #0 {
  %3 = alloca %struct.gelic_card*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  store %struct.gelic_card* %0, %struct.gelic_card** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.gelic_card*, %struct.gelic_card** %3, align 8
  %8 = call i32 @bus_id(%struct.gelic_card* %7)
  %9 = load %struct.gelic_card*, %struct.gelic_card** %3, align 8
  %10 = call i32 @dev_id(%struct.gelic_card* %9)
  %11 = load i32, i32* @GELIC_LV1_GET_ETH_PORT_STATUS, align 4
  %12 = load i32, i32* @GELIC_LV1_VLAN_TX_ETHERNET_0, align 4
  %13 = load %struct.gelic_card*, %struct.gelic_card** %3, align 8
  %14 = getelementptr inbounds %struct.gelic_card, %struct.gelic_card* %13, i32 0, i32 0
  %15 = call i32 @lv1_net_control(i32 %8, i32 %10, i32 %11, i32 %12, i32 0, i32 0, i32* %14, i32* %5)
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %38

18:                                               ; preds = %2
  %19 = load %struct.gelic_card*, %struct.gelic_card** %3, align 8
  %20 = getelementptr inbounds %struct.gelic_card, %struct.gelic_card* %19, i32 0, i32 1
  %21 = load %struct.net_device**, %struct.net_device*** %20, align 8
  %22 = load i64, i64* @GELIC_PORT_ETHERNET_0, align 8
  %23 = getelementptr inbounds %struct.net_device*, %struct.net_device** %21, i64 %22
  %24 = load %struct.net_device*, %struct.net_device** %23, align 8
  store %struct.net_device* %24, %struct.net_device** %6, align 8
  %25 = load %struct.gelic_card*, %struct.gelic_card** %3, align 8
  %26 = getelementptr inbounds %struct.gelic_card, %struct.gelic_card* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @GELIC_LV1_ETHER_LINK_UP, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %18
  %32 = load %struct.net_device*, %struct.net_device** %6, align 8
  %33 = call i32 @netif_carrier_on(%struct.net_device* %32)
  br label %37

34:                                               ; preds = %18
  %35 = load %struct.net_device*, %struct.net_device** %6, align 8
  %36 = call i32 @netif_carrier_off(%struct.net_device* %35)
  br label %37

37:                                               ; preds = %34, %31
  br label %38

38:                                               ; preds = %37, %2
  ret void
}

declare dso_local i32 @lv1_net_control(i32, i32, i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @bus_id(%struct.gelic_card*) #1

declare dso_local i32 @dev_id(%struct.gelic_card*) #1

declare dso_local i32 @netif_carrier_on(%struct.net_device*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
