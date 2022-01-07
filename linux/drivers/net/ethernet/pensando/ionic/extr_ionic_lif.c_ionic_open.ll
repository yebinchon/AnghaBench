; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/pensando/ionic/extr_ionic_lif.c_ionic_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/pensando/ionic/extr_ionic_lif.c_ionic_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ionic_lif = type { i32, i32 }

@IONIC_LIF_UP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ionic_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ionic_lif*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.ionic_lif* @netdev_priv(%struct.net_device* %6)
  store %struct.ionic_lif* %7, %struct.ionic_lif** %4, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call i32 @netif_carrier_off(%struct.net_device* %8)
  %10 = load %struct.ionic_lif*, %struct.ionic_lif** %4, align 8
  %11 = call i32 @ionic_txrx_alloc(%struct.ionic_lif* %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* %5, align 4
  store i32 %15, i32* %2, align 4
  br label %60

16:                                               ; preds = %1
  %17 = load %struct.ionic_lif*, %struct.ionic_lif** %4, align 8
  %18 = call i32 @ionic_txrx_init(%struct.ionic_lif* %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  br label %56

22:                                               ; preds = %16
  %23 = load %struct.ionic_lif*, %struct.ionic_lif** %4, align 8
  %24 = call i32 @ionic_txrx_enable(%struct.ionic_lif* %23)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  br label %53

28:                                               ; preds = %22
  %29 = load %struct.net_device*, %struct.net_device** %3, align 8
  %30 = load %struct.ionic_lif*, %struct.ionic_lif** %4, align 8
  %31 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @netif_set_real_num_tx_queues(%struct.net_device* %29, i32 %32)
  %34 = load %struct.net_device*, %struct.net_device** %3, align 8
  %35 = load %struct.ionic_lif*, %struct.ionic_lif** %4, align 8
  %36 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @netif_set_real_num_rx_queues(%struct.net_device* %34, i32 %37)
  %39 = load i32, i32* @IONIC_LIF_UP, align 4
  %40 = load %struct.ionic_lif*, %struct.ionic_lif** %4, align 8
  %41 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @set_bit(i32 %39, i32 %42)
  %44 = load %struct.ionic_lif*, %struct.ionic_lif** %4, align 8
  %45 = call i32 @ionic_link_status_check_request(%struct.ionic_lif* %44)
  %46 = load %struct.net_device*, %struct.net_device** %3, align 8
  %47 = call i64 @netif_carrier_ok(%struct.net_device* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %28
  %50 = load %struct.net_device*, %struct.net_device** %3, align 8
  %51 = call i32 @netif_tx_wake_all_queues(%struct.net_device* %50)
  br label %52

52:                                               ; preds = %49, %28
  store i32 0, i32* %2, align 4
  br label %60

53:                                               ; preds = %27
  %54 = load %struct.ionic_lif*, %struct.ionic_lif** %4, align 8
  %55 = call i32 @ionic_txrx_deinit(%struct.ionic_lif* %54)
  br label %56

56:                                               ; preds = %53, %21
  %57 = load %struct.ionic_lif*, %struct.ionic_lif** %4, align 8
  %58 = call i32 @ionic_txrx_free(%struct.ionic_lif* %57)
  %59 = load i32, i32* %5, align 4
  store i32 %59, i32* %2, align 4
  br label %60

60:                                               ; preds = %56, %52, %14
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local %struct.ionic_lif* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @ionic_txrx_alloc(%struct.ionic_lif*) #1

declare dso_local i32 @ionic_txrx_init(%struct.ionic_lif*) #1

declare dso_local i32 @ionic_txrx_enable(%struct.ionic_lif*) #1

declare dso_local i32 @netif_set_real_num_tx_queues(%struct.net_device*, i32) #1

declare dso_local i32 @netif_set_real_num_rx_queues(%struct.net_device*, i32) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @ionic_link_status_check_request(%struct.ionic_lif*) #1

declare dso_local i64 @netif_carrier_ok(%struct.net_device*) #1

declare dso_local i32 @netif_tx_wake_all_queues(%struct.net_device*) #1

declare dso_local i32 @ionic_txrx_deinit(%struct.ionic_lif*) #1

declare dso_local i32 @ionic_txrx_free(%struct.ionic_lif*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
