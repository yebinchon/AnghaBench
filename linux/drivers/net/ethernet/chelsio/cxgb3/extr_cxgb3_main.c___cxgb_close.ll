; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_cxgb3_main.c___cxgb_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_cxgb3_main.c___cxgb_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.port_info = type { i32, %struct.TYPE_5__, %struct.TYPE_6__, %struct.adapter* }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_6__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.TYPE_6__*, i32)* }
%struct.adapter = type { i32, i32, i32, i32 }

@A_XGM_INT_STATUS = common dso_local global i64 0, align 8
@MAC_DIRECTION_TX = common dso_local global i32 0, align 4
@MAC_DIRECTION_RX = common dso_local global i32 0, align 4
@PORT_MASK = common dso_local global i32 0, align 4
@OFFLOAD_PORT_DOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @__cxgb_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__cxgb_close(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.port_info*, align 8
  %7 = alloca %struct.adapter*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call %struct.port_info* @netdev_priv(%struct.net_device* %8)
  store %struct.port_info* %9, %struct.port_info** %6, align 8
  %10 = load %struct.port_info*, %struct.port_info** %6, align 8
  %11 = getelementptr inbounds %struct.port_info, %struct.port_info* %10, i32 0, i32 3
  %12 = load %struct.adapter*, %struct.adapter** %11, align 8
  store %struct.adapter* %12, %struct.adapter** %7, align 8
  %13 = load %struct.adapter*, %struct.adapter** %7, align 8
  %14 = getelementptr inbounds %struct.adapter, %struct.adapter* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %95

18:                                               ; preds = %2
  %19 = load %struct.adapter*, %struct.adapter** %7, align 8
  %20 = load %struct.port_info*, %struct.port_info** %6, align 8
  %21 = getelementptr inbounds %struct.port_info, %struct.port_info* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @t3_xgm_intr_disable(%struct.adapter* %19, i32 %22)
  %24 = load %struct.adapter*, %struct.adapter** %7, align 8
  %25 = load i64, i64* @A_XGM_INT_STATUS, align 8
  %26 = load %struct.port_info*, %struct.port_info** %6, align 8
  %27 = getelementptr inbounds %struct.port_info, %struct.port_info* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %25, %29
  %31 = call i32 @t3_read_reg(%struct.adapter* %24, i64 %30)
  %32 = load %struct.adapter*, %struct.adapter** %7, align 8
  %33 = load %struct.port_info*, %struct.port_info** %6, align 8
  %34 = getelementptr inbounds %struct.port_info, %struct.port_info* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @t3_port_intr_disable(%struct.adapter* %32, i32 %35)
  %37 = load %struct.net_device*, %struct.net_device** %4, align 8
  %38 = call i32 @netif_tx_stop_all_queues(%struct.net_device* %37)
  %39 = load %struct.port_info*, %struct.port_info** %6, align 8
  %40 = getelementptr inbounds %struct.port_info, %struct.port_info* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32 (%struct.TYPE_6__*, i32)*, i32 (%struct.TYPE_6__*, i32)** %43, align 8
  %45 = load %struct.port_info*, %struct.port_info** %6, align 8
  %46 = getelementptr inbounds %struct.port_info, %struct.port_info* %45, i32 0, i32 2
  %47 = call i32 %44(%struct.TYPE_6__* %46, i32 1)
  %48 = load %struct.net_device*, %struct.net_device** %4, align 8
  %49 = call i32 @netif_carrier_off(%struct.net_device* %48)
  %50 = load %struct.port_info*, %struct.port_info** %6, align 8
  %51 = getelementptr inbounds %struct.port_info, %struct.port_info* %50, i32 0, i32 1
  %52 = load i32, i32* @MAC_DIRECTION_TX, align 4
  %53 = load i32, i32* @MAC_DIRECTION_RX, align 4
  %54 = or i32 %52, %53
  %55 = call i32 @t3_mac_disable(%struct.TYPE_5__* %51, i32 %54)
  %56 = load %struct.adapter*, %struct.adapter** %7, align 8
  %57 = getelementptr inbounds %struct.adapter, %struct.adapter* %56, i32 0, i32 3
  %58 = call i32 @spin_lock_irq(i32* %57)
  %59 = load %struct.port_info*, %struct.port_info** %6, align 8
  %60 = getelementptr inbounds %struct.port_info, %struct.port_info* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.adapter*, %struct.adapter** %7, align 8
  %63 = getelementptr inbounds %struct.adapter, %struct.adapter* %62, i32 0, i32 0
  %64 = call i32 @clear_bit(i32 %61, i32* %63)
  %65 = load %struct.adapter*, %struct.adapter** %7, align 8
  %66 = getelementptr inbounds %struct.adapter, %struct.adapter* %65, i32 0, i32 3
  %67 = call i32 @spin_unlock_irq(i32* %66)
  %68 = load %struct.adapter*, %struct.adapter** %7, align 8
  %69 = getelementptr inbounds %struct.adapter, %struct.adapter* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @PORT_MASK, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %78, label %74

74:                                               ; preds = %18
  %75 = load %struct.adapter*, %struct.adapter** %7, align 8
  %76 = getelementptr inbounds %struct.adapter, %struct.adapter* %75, i32 0, i32 2
  %77 = call i32 @cancel_delayed_work_sync(i32* %76)
  br label %78

78:                                               ; preds = %74, %18
  %79 = load %struct.adapter*, %struct.adapter** %7, align 8
  %80 = getelementptr inbounds %struct.adapter, %struct.adapter* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %87, label %83

83:                                               ; preds = %78
  %84 = load %struct.adapter*, %struct.adapter** %7, align 8
  %85 = load i32, i32* %5, align 4
  %86 = call i32 @cxgb_down(%struct.adapter* %84, i32 %85)
  br label %87

87:                                               ; preds = %83, %78
  %88 = load %struct.adapter*, %struct.adapter** %7, align 8
  %89 = getelementptr inbounds %struct.adapter, %struct.adapter* %88, i32 0, i32 1
  %90 = load i32, i32* @OFFLOAD_PORT_DOWN, align 4
  %91 = load %struct.port_info*, %struct.port_info** %6, align 8
  %92 = getelementptr inbounds %struct.port_info, %struct.port_info* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @cxgb3_event_notify(i32* %89, i32 %90, i32 %93)
  store i32 0, i32* %3, align 4
  br label %95

95:                                               ; preds = %87, %17
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

declare dso_local %struct.port_info* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @t3_xgm_intr_disable(%struct.adapter*, i32) #1

declare dso_local i32 @t3_read_reg(%struct.adapter*, i64) #1

declare dso_local i32 @t3_port_intr_disable(%struct.adapter*, i32) #1

declare dso_local i32 @netif_tx_stop_all_queues(%struct.net_device*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @t3_mac_disable(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @cxgb_down(%struct.adapter*, i32) #1

declare dso_local i32 @cxgb3_event_notify(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
