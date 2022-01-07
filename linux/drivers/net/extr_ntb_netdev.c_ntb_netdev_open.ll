; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_ntb_netdev.c_ntb_netdev_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_ntb_netdev.c_ntb_netdev_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i64 }
%struct.ntb_netdev = type { i32, i32 }
%struct.sk_buff = type { i32 }

@NTB_RXQ_SIZE = common dso_local global i32 0, align 4
@ETH_HLEN = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@ntb_netdev_tx_timer = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @ntb_netdev_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ntb_netdev_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ntb_netdev*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = call %struct.ntb_netdev* @netdev_priv(%struct.net_device* %9)
  store %struct.ntb_netdev* %10, %struct.ntb_netdev** %4, align 8
  store i32 0, i32* %7, align 4
  br label %11

11:                                               ; preds = %48, %1
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @NTB_RXQ_SIZE, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %51

15:                                               ; preds = %11
  %16 = load %struct.net_device*, %struct.net_device** %3, align 8
  %17 = load %struct.net_device*, %struct.net_device** %3, align 8
  %18 = getelementptr inbounds %struct.net_device, %struct.net_device* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @ETH_HLEN, align 8
  %21 = add nsw i64 %19, %20
  %22 = call %struct.sk_buff* @netdev_alloc_skb(%struct.net_device* %16, i64 %21)
  store %struct.sk_buff* %22, %struct.sk_buff** %5, align 8
  %23 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %24 = icmp ne %struct.sk_buff* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %15
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %6, align 4
  br label %64

28:                                               ; preds = %15
  %29 = load %struct.ntb_netdev*, %struct.ntb_netdev** %4, align 8
  %30 = getelementptr inbounds %struct.ntb_netdev, %struct.ntb_netdev* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %33 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %34 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.net_device*, %struct.net_device** %3, align 8
  %37 = getelementptr inbounds %struct.net_device, %struct.net_device* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @ETH_HLEN, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i32 @ntb_transport_rx_enqueue(i32 %31, %struct.sk_buff* %32, i32 %35, i64 %40)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %28
  %45 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %46 = call i32 @dev_kfree_skb(%struct.sk_buff* %45)
  br label %64

47:                                               ; preds = %28
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %7, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %7, align 4
  br label %11

51:                                               ; preds = %11
  %52 = load %struct.ntb_netdev*, %struct.ntb_netdev** %4, align 8
  %53 = getelementptr inbounds %struct.ntb_netdev, %struct.ntb_netdev* %52, i32 0, i32 1
  %54 = load i32, i32* @ntb_netdev_tx_timer, align 4
  %55 = call i32 @timer_setup(i32* %53, i32 %54, i32 0)
  %56 = load %struct.net_device*, %struct.net_device** %3, align 8
  %57 = call i32 @netif_carrier_off(%struct.net_device* %56)
  %58 = load %struct.ntb_netdev*, %struct.ntb_netdev** %4, align 8
  %59 = getelementptr inbounds %struct.ntb_netdev, %struct.ntb_netdev* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @ntb_transport_link_up(i32 %60)
  %62 = load %struct.net_device*, %struct.net_device** %3, align 8
  %63 = call i32 @netif_start_queue(%struct.net_device* %62)
  store i32 0, i32* %2, align 4
  br label %76

64:                                               ; preds = %44, %25
  br label %65

65:                                               ; preds = %71, %64
  %66 = load %struct.ntb_netdev*, %struct.ntb_netdev** %4, align 8
  %67 = getelementptr inbounds %struct.ntb_netdev, %struct.ntb_netdev* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call %struct.sk_buff* @ntb_transport_rx_remove(i32 %68, i32* %8)
  store %struct.sk_buff* %69, %struct.sk_buff** %5, align 8
  %70 = icmp ne %struct.sk_buff* %69, null
  br i1 %70, label %71, label %74

71:                                               ; preds = %65
  %72 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %73 = call i32 @dev_kfree_skb(%struct.sk_buff* %72)
  br label %65

74:                                               ; preds = %65
  %75 = load i32, i32* %6, align 4
  store i32 %75, i32* %2, align 4
  br label %76

76:                                               ; preds = %74, %51
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local %struct.ntb_netdev* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.sk_buff* @netdev_alloc_skb(%struct.net_device*, i64) #1

declare dso_local i32 @ntb_transport_rx_enqueue(i32, %struct.sk_buff*, i32, i64) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @ntb_transport_link_up(i32) #1

declare dso_local i32 @netif_start_queue(%struct.net_device*) #1

declare dso_local %struct.sk_buff* @ntb_transport_rx_remove(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
