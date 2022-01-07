; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_sunvnet_common.c_vnet_ack.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_sunvnet_common.c_vnet_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnet_port = type { i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, %struct.vio_dring_state* }
%struct.vio_dring_state = type { i32 }
%struct.vio_dring_data = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.net_device = type { i32 }
%struct.vio_net_desc = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.netdev_queue = type { i32 }

@VIO_DRIVER_TX_RING = common dso_local global i64 0, align 8
@VIO_DRING_DATA = common dso_local global i64 0, align 8
@VIO_DESC_READY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vnet_port*, i8*)* @vnet_ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vnet_ack(%struct.vnet_port* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vnet_port*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.vio_dring_state*, align 8
  %7 = alloca %struct.vio_dring_data*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.vio_net_desc*, align 8
  %11 = alloca %struct.netdev_queue*, align 8
  store %struct.vnet_port* %0, %struct.vnet_port** %4, align 8
  store i8* %1, i8** %5, align 8
  %12 = load %struct.vnet_port*, %struct.vnet_port** %4, align 8
  %13 = getelementptr inbounds %struct.vnet_port, %struct.vnet_port* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 2
  %15 = load %struct.vio_dring_state*, %struct.vio_dring_state** %14, align 8
  %16 = load i64, i64* @VIO_DRIVER_TX_RING, align 8
  %17 = getelementptr inbounds %struct.vio_dring_state, %struct.vio_dring_state* %15, i64 %16
  store %struct.vio_dring_state* %17, %struct.vio_dring_state** %6, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = bitcast i8* %18 to %struct.vio_dring_data*
  store %struct.vio_dring_data* %19, %struct.vio_dring_data** %7, align 8
  %20 = load %struct.vio_dring_data*, %struct.vio_dring_data** %7, align 8
  %21 = getelementptr inbounds %struct.vio_dring_data, %struct.vio_dring_data* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @VIO_DRING_DATA, align 8
  %25 = icmp ne i64 %23, %24
  %26 = zext i1 %25 to i32
  %27 = call i64 @unlikely(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %122

30:                                               ; preds = %2
  %31 = load %struct.vio_dring_data*, %struct.vio_dring_data** %7, align 8
  %32 = getelementptr inbounds %struct.vio_dring_data, %struct.vio_dring_data* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %9, align 4
  %34 = load %struct.vnet_port*, %struct.vnet_port** %4, align 8
  %35 = call %struct.net_device* @VNET_PORT_TO_NET_DEVICE(%struct.vnet_port* %34)
  store %struct.net_device* %35, %struct.net_device** %8, align 8
  %36 = load %struct.net_device*, %struct.net_device** %8, align 8
  %37 = call i32 @netif_tx_lock(%struct.net_device* %36)
  %38 = load %struct.vio_dring_state*, %struct.vio_dring_state** %6, align 8
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @idx_is_pending(%struct.vio_dring_state* %38, i32 %39)
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  %44 = call i64 @unlikely(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %30
  %47 = load %struct.net_device*, %struct.net_device** %8, align 8
  %48 = call i32 @netif_tx_unlock(%struct.net_device* %47)
  store i32 0, i32* %3, align 4
  br label %122

49:                                               ; preds = %30
  %50 = load %struct.vnet_port*, %struct.vnet_port** %4, align 8
  %51 = getelementptr inbounds %struct.vnet_port, %struct.vnet_port* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.vnet_port*, %struct.vnet_port** %4, align 8
  %55 = getelementptr inbounds %struct.vnet_port, %struct.vnet_port* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* %9, align 4
  %59 = call i32 @trace_vnet_rx_stopped_ack(i32 %53, i32 %57, i32 %58)
  %60 = load %struct.vio_dring_state*, %struct.vio_dring_state** %6, align 8
  %61 = load i32, i32* %9, align 4
  %62 = call i32 @vio_dring_next(%struct.vio_dring_state* %60, i32 %61)
  %63 = load %struct.vio_dring_state*, %struct.vio_dring_state** %6, align 8
  %64 = getelementptr inbounds %struct.vio_dring_state, %struct.vio_dring_state* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 4
  %65 = load %struct.vio_dring_state*, %struct.vio_dring_state** %6, align 8
  %66 = load %struct.vio_dring_state*, %struct.vio_dring_state** %6, align 8
  %67 = getelementptr inbounds %struct.vio_dring_state, %struct.vio_dring_state* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call %struct.vio_net_desc* @vio_dring_entry(%struct.vio_dring_state* %65, i32 %68)
  store %struct.vio_net_desc* %69, %struct.vio_net_desc** %10, align 8
  %70 = load %struct.vio_net_desc*, %struct.vio_net_desc** %10, align 8
  %71 = getelementptr inbounds %struct.vio_net_desc, %struct.vio_net_desc* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @VIO_DESC_READY, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %95

76:                                               ; preds = %49
  %77 = load %struct.vnet_port*, %struct.vnet_port** %4, align 8
  %78 = getelementptr inbounds %struct.vnet_port, %struct.vnet_port* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %95, label %81

81:                                               ; preds = %76
  %82 = load %struct.vnet_port*, %struct.vnet_port** %4, align 8
  %83 = load %struct.vio_dring_state*, %struct.vio_dring_state** %6, align 8
  %84 = getelementptr inbounds %struct.vio_dring_state, %struct.vio_dring_state* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i64 @__vnet_tx_trigger(%struct.vnet_port* %82, i32 %85)
  %87 = icmp sgt i64 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %81
  %89 = load %struct.vnet_port*, %struct.vnet_port** %4, align 8
  %90 = getelementptr inbounds %struct.vnet_port, %struct.vnet_port* %89, i32 0, i32 0
  store i32 0, i32* %90, align 8
  br label %94

91:                                               ; preds = %81
  %92 = load %struct.vnet_port*, %struct.vnet_port** %4, align 8
  %93 = getelementptr inbounds %struct.vnet_port, %struct.vnet_port* %92, i32 0, i32 0
  store i32 1, i32* %93, align 8
  br label %94

94:                                               ; preds = %91, %88
  br label %98

95:                                               ; preds = %76, %49
  %96 = load %struct.vnet_port*, %struct.vnet_port** %4, align 8
  %97 = getelementptr inbounds %struct.vnet_port, %struct.vnet_port* %96, i32 0, i32 0
  store i32 1, i32* %97, align 8
  br label %98

98:                                               ; preds = %95, %94
  %99 = load %struct.net_device*, %struct.net_device** %8, align 8
  %100 = call i32 @netif_tx_unlock(%struct.net_device* %99)
  %101 = load %struct.net_device*, %struct.net_device** %8, align 8
  %102 = load %struct.vnet_port*, %struct.vnet_port** %4, align 8
  %103 = getelementptr inbounds %struct.vnet_port, %struct.vnet_port* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = call %struct.netdev_queue* @netdev_get_tx_queue(%struct.net_device* %101, i32 %104)
  store %struct.netdev_queue* %105, %struct.netdev_queue** %11, align 8
  %106 = load %struct.netdev_queue*, %struct.netdev_queue** %11, align 8
  %107 = call i64 @netif_tx_queue_stopped(%struct.netdev_queue* %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %115

109:                                              ; preds = %98
  %110 = load %struct.vio_dring_state*, %struct.vio_dring_state** %6, align 8
  %111 = call i64 @vnet_tx_dring_avail(%struct.vio_dring_state* %110)
  %112 = load %struct.vio_dring_state*, %struct.vio_dring_state** %6, align 8
  %113 = call i64 @VNET_TX_WAKEUP_THRESH(%struct.vio_dring_state* %112)
  %114 = icmp sge i64 %111, %113
  br label %115

115:                                              ; preds = %109, %98
  %116 = phi i1 [ false, %98 ], [ %114, %109 ]
  %117 = zext i1 %116 to i32
  %118 = call i64 @unlikely(i32 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %115
  store i32 1, i32* %3, align 4
  br label %122

121:                                              ; preds = %115
  store i32 0, i32* %3, align 4
  br label %122

122:                                              ; preds = %121, %120, %46, %29
  %123 = load i32, i32* %3, align 4
  ret i32 %123
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.net_device* @VNET_PORT_TO_NET_DEVICE(%struct.vnet_port*) #1

declare dso_local i32 @netif_tx_lock(%struct.net_device*) #1

declare dso_local i32 @idx_is_pending(%struct.vio_dring_state*, i32) #1

declare dso_local i32 @netif_tx_unlock(%struct.net_device*) #1

declare dso_local i32 @trace_vnet_rx_stopped_ack(i32, i32, i32) #1

declare dso_local i32 @vio_dring_next(%struct.vio_dring_state*, i32) #1

declare dso_local %struct.vio_net_desc* @vio_dring_entry(%struct.vio_dring_state*, i32) #1

declare dso_local i64 @__vnet_tx_trigger(%struct.vnet_port*, i32) #1

declare dso_local %struct.netdev_queue* @netdev_get_tx_queue(%struct.net_device*, i32) #1

declare dso_local i64 @netif_tx_queue_stopped(%struct.netdev_queue*) #1

declare dso_local i64 @vnet_tx_dring_avail(%struct.vio_dring_state*) #1

declare dso_local i64 @VNET_TX_WAKEUP_THRESH(%struct.vio_dring_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
