; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/apm/xgene/extr_xgene_enet_main.c_xgene_enet_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/apm/xgene/extr_xgene_enet_main.c_xgene_enet_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i64 }
%struct.xgene_enet_pdata = type { i32, i32, i32, %struct.xgene_mac_ops* }
%struct.xgene_mac_ops = type { i32 (%struct.xgene_enet_pdata.0*)*, i32 (%struct.xgene_enet_pdata.1*)* }
%struct.xgene_enet_pdata.0 = type opaque
%struct.xgene_enet_pdata.1 = type opaque

@PHY_POLL_LINK_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @xgene_enet_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xgene_enet_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.xgene_enet_pdata*, align 8
  %5 = alloca %struct.xgene_mac_ops*, align 8
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.xgene_enet_pdata* @netdev_priv(%struct.net_device* %7)
  store %struct.xgene_enet_pdata* %8, %struct.xgene_enet_pdata** %4, align 8
  %9 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %4, align 8
  %10 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %9, i32 0, i32 3
  %11 = load %struct.xgene_mac_ops*, %struct.xgene_mac_ops** %10, align 8
  store %struct.xgene_mac_ops* %11, %struct.xgene_mac_ops** %5, align 8
  %12 = load %struct.net_device*, %struct.net_device** %3, align 8
  %13 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %4, align 8
  %14 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @netif_set_real_num_tx_queues(%struct.net_device* %12, i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load i32, i32* %6, align 4
  store i32 %20, i32* %2, align 4
  br label %73

21:                                               ; preds = %1
  %22 = load %struct.net_device*, %struct.net_device** %3, align 8
  %23 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %4, align 8
  %24 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @netif_set_real_num_rx_queues(%struct.net_device* %22, i32 %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %21
  %30 = load i32, i32* %6, align 4
  store i32 %30, i32* %2, align 4
  br label %73

31:                                               ; preds = %21
  %32 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %4, align 8
  %33 = call i32 @xgene_enet_napi_enable(%struct.xgene_enet_pdata* %32)
  %34 = load %struct.net_device*, %struct.net_device** %3, align 8
  %35 = call i32 @xgene_enet_register_irq(%struct.net_device* %34)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %31
  %39 = load i32, i32* %6, align 4
  store i32 %39, i32* %2, align 4
  br label %73

40:                                               ; preds = %31
  %41 = load %struct.net_device*, %struct.net_device** %3, align 8
  %42 = getelementptr inbounds %struct.net_device, %struct.net_device* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %40
  %46 = load %struct.net_device*, %struct.net_device** %3, align 8
  %47 = getelementptr inbounds %struct.net_device, %struct.net_device* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @phy_start(i64 %48)
  br label %57

50:                                               ; preds = %40
  %51 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %4, align 8
  %52 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %51, i32 0, i32 0
  %53 = load i32, i32* @PHY_POLL_LINK_OFF, align 4
  %54 = call i32 @schedule_delayed_work(i32* %52, i32 %53)
  %55 = load %struct.net_device*, %struct.net_device** %3, align 8
  %56 = call i32 @netif_carrier_off(%struct.net_device* %55)
  br label %57

57:                                               ; preds = %50, %45
  %58 = load %struct.xgene_mac_ops*, %struct.xgene_mac_ops** %5, align 8
  %59 = getelementptr inbounds %struct.xgene_mac_ops, %struct.xgene_mac_ops* %58, i32 0, i32 1
  %60 = load i32 (%struct.xgene_enet_pdata.1*)*, i32 (%struct.xgene_enet_pdata.1*)** %59, align 8
  %61 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %4, align 8
  %62 = bitcast %struct.xgene_enet_pdata* %61 to %struct.xgene_enet_pdata.1*
  %63 = call i32 %60(%struct.xgene_enet_pdata.1* %62)
  %64 = load %struct.xgene_mac_ops*, %struct.xgene_mac_ops** %5, align 8
  %65 = getelementptr inbounds %struct.xgene_mac_ops, %struct.xgene_mac_ops* %64, i32 0, i32 0
  %66 = load i32 (%struct.xgene_enet_pdata.0*)*, i32 (%struct.xgene_enet_pdata.0*)** %65, align 8
  %67 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %4, align 8
  %68 = bitcast %struct.xgene_enet_pdata* %67 to %struct.xgene_enet_pdata.0*
  %69 = call i32 %66(%struct.xgene_enet_pdata.0* %68)
  %70 = load %struct.net_device*, %struct.net_device** %3, align 8
  %71 = call i32 @netif_tx_start_all_queues(%struct.net_device* %70)
  %72 = load i32, i32* %6, align 4
  store i32 %72, i32* %2, align 4
  br label %73

73:                                               ; preds = %57, %38, %29, %19
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local %struct.xgene_enet_pdata* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_set_real_num_tx_queues(%struct.net_device*, i32) #1

declare dso_local i32 @netif_set_real_num_rx_queues(%struct.net_device*, i32) #1

declare dso_local i32 @xgene_enet_napi_enable(%struct.xgene_enet_pdata*) #1

declare dso_local i32 @xgene_enet_register_irq(%struct.net_device*) #1

declare dso_local i32 @phy_start(i64) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @netif_tx_start_all_queues(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
