; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_kaweth.c_kaweth_start_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_kaweth.c_kaweth_start_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.kaweth_device = type { i32, i32, i64, i32, %struct.sk_buff*, i32 }

@NETDEV_TX_OK = common dso_local global i32 0, align 4
@kaweth_usb_transmit_complete = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"kaweth failed tx_urb %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @kaweth_start_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kaweth_start_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.kaweth_device*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %9 = load %struct.net_device*, %struct.net_device** %5, align 8
  %10 = call %struct.kaweth_device* @netdev_priv(%struct.net_device* %9)
  store %struct.kaweth_device* %10, %struct.kaweth_device** %6, align 8
  %11 = load %struct.kaweth_device*, %struct.kaweth_device** %6, align 8
  %12 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %11, i32 0, i32 0
  %13 = call i32 @spin_lock_irq(i32* %12)
  %14 = load %struct.kaweth_device*, %struct.kaweth_device** %6, align 8
  %15 = call i32 @kaweth_async_set_rx_mode(%struct.kaweth_device* %14)
  %16 = load %struct.net_device*, %struct.net_device** %5, align 8
  %17 = call i32 @netif_stop_queue(%struct.net_device* %16)
  %18 = load %struct.kaweth_device*, %struct.kaweth_device** %6, align 8
  %19 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 8
  %21 = call i64 @IS_BLOCKED(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  br label %84

24:                                               ; preds = %2
  %25 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %26 = call i64 @skb_cow_head(%struct.sk_buff* %25, i32 2)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %42

28:                                               ; preds = %24
  %29 = load %struct.net_device*, %struct.net_device** %5, align 8
  %30 = getelementptr inbounds %struct.net_device, %struct.net_device* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %31, align 4
  %34 = load %struct.net_device*, %struct.net_device** %5, align 8
  %35 = call i32 @netif_start_queue(%struct.net_device* %34)
  %36 = load %struct.kaweth_device*, %struct.kaweth_device** %6, align 8
  %37 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %36, i32 0, i32 0
  %38 = call i32 @spin_unlock_irq(i32* %37)
  %39 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %40 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %39)
  %41 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %41, i32* %3, align 4
  br label %113

42:                                               ; preds = %24
  %43 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %44 = call i32* @__skb_push(%struct.sk_buff* %43, i32 2)
  store i32* %44, i32** %7, align 8
  %45 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %46 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = sub nsw i32 %47, 2
  %49 = call i32 @cpu_to_le16(i32 %48)
  %50 = load i32*, i32** %7, align 8
  store i32 %49, i32* %50, align 4
  %51 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %52 = load %struct.kaweth_device*, %struct.kaweth_device** %6, align 8
  %53 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %52, i32 0, i32 4
  store %struct.sk_buff* %51, %struct.sk_buff** %53, align 8
  %54 = load %struct.kaweth_device*, %struct.kaweth_device** %6, align 8
  %55 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.kaweth_device*, %struct.kaweth_device** %6, align 8
  %58 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.kaweth_device*, %struct.kaweth_device** %6, align 8
  %61 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @usb_sndbulkpipe(i32 %62, i32 2)
  %64 = load i32*, i32** %7, align 8
  %65 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %66 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @kaweth_usb_transmit_complete, align 4
  %69 = load %struct.kaweth_device*, %struct.kaweth_device** %6, align 8
  %70 = call i32 @usb_fill_bulk_urb(i32 %56, i32 %59, i32 %63, i32* %64, i32 %67, i32 %68, %struct.kaweth_device* %69)
  %71 = load %struct.kaweth_device*, %struct.kaweth_device** %6, align 8
  %72 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %71, i32 0, i32 2
  store i64 0, i64* %72, align 8
  %73 = load %struct.kaweth_device*, %struct.kaweth_device** %6, align 8
  %74 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @GFP_ATOMIC, align 4
  %77 = call i32 @usb_submit_urb(i32 %75, i32 %76)
  store i32 %77, i32* %8, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %94

79:                                               ; preds = %42
  %80 = load %struct.net_device*, %struct.net_device** %5, align 8
  %81 = getelementptr inbounds %struct.net_device, %struct.net_device* %80, i32 0, i32 1
  %82 = load i32, i32* %8, align 4
  %83 = call i32 @dev_warn(i32* %81, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %82)
  br label %84

84:                                               ; preds = %79, %23
  %85 = load %struct.net_device*, %struct.net_device** %5, align 8
  %86 = getelementptr inbounds %struct.net_device, %struct.net_device* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %87, align 4
  %90 = load %struct.net_device*, %struct.net_device** %5, align 8
  %91 = call i32 @netif_start_queue(%struct.net_device* %90)
  %92 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %93 = call i32 @dev_kfree_skb_irq(%struct.sk_buff* %92)
  br label %108

94:                                               ; preds = %42
  %95 = load %struct.net_device*, %struct.net_device** %5, align 8
  %96 = getelementptr inbounds %struct.net_device, %struct.net_device* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %97, align 4
  %100 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %101 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.net_device*, %struct.net_device** %5, align 8
  %104 = getelementptr inbounds %struct.net_device, %struct.net_device* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = add nsw i32 %106, %102
  store i32 %107, i32* %105, align 4
  br label %108

108:                                              ; preds = %94, %84
  %109 = load %struct.kaweth_device*, %struct.kaweth_device** %6, align 8
  %110 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %109, i32 0, i32 0
  %111 = call i32 @spin_unlock_irq(i32* %110)
  %112 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %112, i32* %3, align 4
  br label %113

113:                                              ; preds = %108, %28
  %114 = load i32, i32* %3, align 4
  ret i32 %114
}

declare dso_local %struct.kaweth_device* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @kaweth_async_set_rx_mode(%struct.kaweth_device*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i64 @IS_BLOCKED(i32) #1

declare dso_local i64 @skb_cow_head(%struct.sk_buff*, i32) #1

declare dso_local i32 @netif_start_queue(%struct.net_device*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i32* @__skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @usb_fill_bulk_urb(i32, i32, i32, i32*, i32, i32, %struct.kaweth_device*) #1

declare dso_local i32 @usb_sndbulkpipe(i32, i32) #1

declare dso_local i32 @usb_submit_urb(i32, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

declare dso_local i32 @dev_kfree_skb_irq(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
