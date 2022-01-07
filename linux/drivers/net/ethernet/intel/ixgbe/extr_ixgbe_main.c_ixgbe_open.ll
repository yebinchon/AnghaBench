; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ixgbe_adapter = type { i32, i32, %struct.ixgbe_hw, i32, i32 }
%struct.ixgbe_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.ixgbe_hw.0*, i32)* }
%struct.ixgbe_hw.0 = type opaque

@__IXGBE_TESTING = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@IXGBE_VXLANCTRL_ALL_UDPPORT_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixgbe_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ixgbe_adapter*, align 8
  %5 = alloca %struct.ixgbe_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.ixgbe_adapter* @netdev_priv(%struct.net_device* %8)
  store %struct.ixgbe_adapter* %9, %struct.ixgbe_adapter** %4, align 8
  %10 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %11 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %10, i32 0, i32 2
  store %struct.ixgbe_hw* %11, %struct.ixgbe_hw** %5, align 8
  %12 = load i32, i32* @__IXGBE_TESTING, align 4
  %13 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %14 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %13, i32 0, i32 4
  %15 = call i64 @test_bit(i32 %12, i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load i32, i32* @EBUSY, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %107

20:                                               ; preds = %1
  %21 = load %struct.net_device*, %struct.net_device** %3, align 8
  %22 = call i32 @netif_carrier_off(%struct.net_device* %21)
  %23 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %24 = call i32 @ixgbe_setup_all_tx_resources(%struct.ixgbe_adapter* %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  br label %103

28:                                               ; preds = %20
  %29 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %30 = call i32 @ixgbe_setup_all_rx_resources(%struct.ixgbe_adapter* %29)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  br label %100

34:                                               ; preds = %28
  %35 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %36 = call i32 @ixgbe_configure(%struct.ixgbe_adapter* %35)
  %37 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %38 = call i32 @ixgbe_request_irq(%struct.ixgbe_adapter* %37)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %34
  br label %75

42:                                               ; preds = %34
  %43 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %44 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  store i32 %45, i32* %7, align 4
  %46 = load %struct.net_device*, %struct.net_device** %3, align 8
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @netif_set_real_num_tx_queues(%struct.net_device* %46, i32 %47)
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %42
  br label %72

52:                                               ; preds = %42
  %53 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %54 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %7, align 4
  %56 = load %struct.net_device*, %struct.net_device** %3, align 8
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @netif_set_real_num_rx_queues(%struct.net_device* %56, i32 %57)
  store i32 %58, i32* %6, align 4
  %59 = load i32, i32* %6, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %52
  br label %72

62:                                               ; preds = %52
  %63 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %64 = call i32 @ixgbe_ptp_init(%struct.ixgbe_adapter* %63)
  %65 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %66 = call i32 @ixgbe_up_complete(%struct.ixgbe_adapter* %65)
  %67 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %68 = load i32, i32* @IXGBE_VXLANCTRL_ALL_UDPPORT_MASK, align 4
  %69 = call i32 @ixgbe_clear_udp_tunnel_port(%struct.ixgbe_adapter* %67, i32 %68)
  %70 = load %struct.net_device*, %struct.net_device** %3, align 8
  %71 = call i32 @udp_tunnel_get_rx_info(%struct.net_device* %70)
  store i32 0, i32* %2, align 4
  br label %107

72:                                               ; preds = %61, %51
  %73 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %74 = call i32 @ixgbe_free_irq(%struct.ixgbe_adapter* %73)
  br label %75

75:                                               ; preds = %72, %41
  %76 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %77 = call i32 @ixgbe_free_all_rx_resources(%struct.ixgbe_adapter* %76)
  %78 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %79 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 0
  %82 = load i32 (%struct.ixgbe_hw.0*, i32)*, i32 (%struct.ixgbe_hw.0*, i32)** %81, align 8
  %83 = icmp ne i32 (%struct.ixgbe_hw.0*, i32)* %82, null
  br i1 %83, label %84, label %99

84:                                               ; preds = %75
  %85 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %86 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 8
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %99, label %89

89:                                               ; preds = %84
  %90 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %91 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 0
  %94 = load i32 (%struct.ixgbe_hw.0*, i32)*, i32 (%struct.ixgbe_hw.0*, i32)** %93, align 8
  %95 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %96 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %95, i32 0, i32 2
  %97 = bitcast %struct.ixgbe_hw* %96 to %struct.ixgbe_hw.0*
  %98 = call i32 %94(%struct.ixgbe_hw.0* %97, i32 0)
  br label %99

99:                                               ; preds = %89, %84, %75
  br label %100

100:                                              ; preds = %99, %33
  %101 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %102 = call i32 @ixgbe_free_all_tx_resources(%struct.ixgbe_adapter* %101)
  br label %103

103:                                              ; preds = %100, %27
  %104 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %105 = call i32 @ixgbe_reset(%struct.ixgbe_adapter* %104)
  %106 = load i32, i32* %6, align 4
  store i32 %106, i32* %2, align 4
  br label %107

107:                                              ; preds = %103, %62, %17
  %108 = load i32, i32* %2, align 4
  ret i32 %108
}

declare dso_local %struct.ixgbe_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @ixgbe_setup_all_tx_resources(%struct.ixgbe_adapter*) #1

declare dso_local i32 @ixgbe_setup_all_rx_resources(%struct.ixgbe_adapter*) #1

declare dso_local i32 @ixgbe_configure(%struct.ixgbe_adapter*) #1

declare dso_local i32 @ixgbe_request_irq(%struct.ixgbe_adapter*) #1

declare dso_local i32 @netif_set_real_num_tx_queues(%struct.net_device*, i32) #1

declare dso_local i32 @netif_set_real_num_rx_queues(%struct.net_device*, i32) #1

declare dso_local i32 @ixgbe_ptp_init(%struct.ixgbe_adapter*) #1

declare dso_local i32 @ixgbe_up_complete(%struct.ixgbe_adapter*) #1

declare dso_local i32 @ixgbe_clear_udp_tunnel_port(%struct.ixgbe_adapter*, i32) #1

declare dso_local i32 @udp_tunnel_get_rx_info(%struct.net_device*) #1

declare dso_local i32 @ixgbe_free_irq(%struct.ixgbe_adapter*) #1

declare dso_local i32 @ixgbe_free_all_rx_resources(%struct.ixgbe_adapter*) #1

declare dso_local i32 @ixgbe_free_all_tx_resources(%struct.ixgbe_adapter*) #1

declare dso_local i32 @ixgbe_reset(%struct.ixgbe_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
