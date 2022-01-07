; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_netdev.c_fm10k_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_netdev.c_fm10k_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.fm10k_intfc = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fm10k_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.fm10k_intfc*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.fm10k_intfc* @netdev_priv(%struct.net_device* %6)
  store %struct.fm10k_intfc* %7, %struct.fm10k_intfc** %4, align 8
  %8 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %4, align 8
  %9 = call i32 @fm10k_setup_all_tx_resources(%struct.fm10k_intfc* %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %59

13:                                               ; preds = %1
  %14 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %4, align 8
  %15 = call i32 @fm10k_setup_all_rx_resources(%struct.fm10k_intfc* %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  br label %56

19:                                               ; preds = %13
  %20 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %4, align 8
  %21 = call i32 @fm10k_qv_request_irq(%struct.fm10k_intfc* %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  br label %53

25:                                               ; preds = %19
  %26 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %4, align 8
  %27 = call i32 @fm10k_request_glort_range(%struct.fm10k_intfc* %26)
  %28 = load %struct.net_device*, %struct.net_device** %3, align 8
  %29 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %4, align 8
  %30 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @netif_set_real_num_tx_queues(%struct.net_device* %28, i32 %31)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %25
  br label %50

36:                                               ; preds = %25
  %37 = load %struct.net_device*, %struct.net_device** %3, align 8
  %38 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %4, align 8
  %39 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @netif_set_real_num_rx_queues(%struct.net_device* %37, i32 %40)
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %36
  br label %50

45:                                               ; preds = %36
  %46 = load %struct.net_device*, %struct.net_device** %3, align 8
  %47 = call i32 @udp_tunnel_get_rx_info(%struct.net_device* %46)
  %48 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %4, align 8
  %49 = call i32 @fm10k_up(%struct.fm10k_intfc* %48)
  store i32 0, i32* %2, align 4
  br label %61

50:                                               ; preds = %44, %35
  %51 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %4, align 8
  %52 = call i32 @fm10k_qv_free_irq(%struct.fm10k_intfc* %51)
  br label %53

53:                                               ; preds = %50, %24
  %54 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %4, align 8
  %55 = call i32 @fm10k_free_all_rx_resources(%struct.fm10k_intfc* %54)
  br label %56

56:                                               ; preds = %53, %18
  %57 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %4, align 8
  %58 = call i32 @fm10k_free_all_tx_resources(%struct.fm10k_intfc* %57)
  br label %59

59:                                               ; preds = %56, %12
  %60 = load i32, i32* %5, align 4
  store i32 %60, i32* %2, align 4
  br label %61

61:                                               ; preds = %59, %45
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local %struct.fm10k_intfc* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @fm10k_setup_all_tx_resources(%struct.fm10k_intfc*) #1

declare dso_local i32 @fm10k_setup_all_rx_resources(%struct.fm10k_intfc*) #1

declare dso_local i32 @fm10k_qv_request_irq(%struct.fm10k_intfc*) #1

declare dso_local i32 @fm10k_request_glort_range(%struct.fm10k_intfc*) #1

declare dso_local i32 @netif_set_real_num_tx_queues(%struct.net_device*, i32) #1

declare dso_local i32 @netif_set_real_num_rx_queues(%struct.net_device*, i32) #1

declare dso_local i32 @udp_tunnel_get_rx_info(%struct.net_device*) #1

declare dso_local i32 @fm10k_up(%struct.fm10k_intfc*) #1

declare dso_local i32 @fm10k_qv_free_irq(%struct.fm10k_intfc*) #1

declare dso_local i32 @fm10k_free_all_rx_resources(%struct.fm10k_intfc*) #1

declare dso_local i32 @fm10k_free_all_tx_resources(%struct.fm10k_intfc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
