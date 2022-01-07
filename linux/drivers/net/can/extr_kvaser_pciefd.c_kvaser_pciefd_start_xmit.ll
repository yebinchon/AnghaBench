; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/extr_kvaser_pciefd.c_kvaser_pciefd_start_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/extr_kvaser_pciefd.c_kvaser_pciefd_start_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { i32 }
%struct.kvaser_pciefd_can = type { i32, i32, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32, i64* }
%struct.kvaser_pciefd_tx_packet = type { i64, i32* }

@NETDEV_TX_OK = common dso_local global i32 0, align 4
@KVASER_PCIEFD_KCAN_FIFO_REG = common dso_local global i64 0, align 8
@KVASER_PCIEFD_KCAN_FIFO_LAST_REG = common dso_local global i64 0, align 8
@KVASER_PCIEFD_KCAN_TX_NPACKETS_REG = common dso_local global i64 0, align 8
@KVASER_PCIEFD_CAN_TX_MAX_COUNT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @kvaser_pciefd_start_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvaser_pciefd_start_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.kvaser_pciefd_can*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.kvaser_pciefd_tx_packet, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %12 = load %struct.net_device*, %struct.net_device** %5, align 8
  %13 = call %struct.kvaser_pciefd_can* @netdev_priv(%struct.net_device* %12)
  store %struct.kvaser_pciefd_can* %13, %struct.kvaser_pciefd_can** %6, align 8
  %14 = load %struct.net_device*, %struct.net_device** %5, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %16 = call i64 @can_dropped_invalid_skb(%struct.net_device* %14, %struct.sk_buff* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %19, i32* %3, align 4
  br label %131

20:                                               ; preds = %2
  %21 = load %struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_can** %6, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %23 = call i32 @kvaser_pciefd_prepare_tx_packet(%struct.kvaser_pciefd_tx_packet* %8, %struct.kvaser_pciefd_can* %21, %struct.sk_buff* %22)
  store i32 %23, i32* %9, align 4
  %24 = load %struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_can** %6, align 8
  %25 = getelementptr inbounds %struct.kvaser_pciefd_can, %struct.kvaser_pciefd_can* %24, i32 0, i32 1
  %26 = load i64, i64* %7, align 8
  %27 = call i32 @spin_lock_irqsave(i32* %25, i64 %26)
  %28 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %29 = load %struct.net_device*, %struct.net_device** %5, align 8
  %30 = load %struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_can** %6, align 8
  %31 = getelementptr inbounds %struct.kvaser_pciefd_can, %struct.kvaser_pciefd_can* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @can_put_echo_skb(%struct.sk_buff* %28, %struct.net_device* %29, i32 %32)
  %34 = load %struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_can** %6, align 8
  %35 = getelementptr inbounds %struct.kvaser_pciefd_can, %struct.kvaser_pciefd_can* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = add nsw i32 %36, 1
  %38 = load %struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_can** %6, align 8
  %39 = getelementptr inbounds %struct.kvaser_pciefd_can, %struct.kvaser_pciefd_can* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = srem i32 %37, %41
  %43 = load %struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_can** %6, align 8
  %44 = getelementptr inbounds %struct.kvaser_pciefd_can, %struct.kvaser_pciefd_can* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  %45 = getelementptr inbounds %struct.kvaser_pciefd_tx_packet, %struct.kvaser_pciefd_tx_packet* %8, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_can** %6, align 8
  %50 = getelementptr inbounds %struct.kvaser_pciefd_can, %struct.kvaser_pciefd_can* %49, i32 0, i32 3
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @KVASER_PCIEFD_KCAN_FIFO_REG, align 8
  %53 = add nsw i64 %51, %52
  %54 = call i32 @iowrite32(i32 %48, i64 %53)
  %55 = getelementptr inbounds %struct.kvaser_pciefd_tx_packet, %struct.kvaser_pciefd_tx_packet* %8, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_can** %6, align 8
  %60 = getelementptr inbounds %struct.kvaser_pciefd_can, %struct.kvaser_pciefd_can* %59, i32 0, i32 3
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @KVASER_PCIEFD_KCAN_FIFO_REG, align 8
  %63 = add nsw i64 %61, %62
  %64 = call i32 @iowrite32(i32 %58, i64 %63)
  %65 = load i32, i32* %9, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %93

67:                                               ; preds = %20
  %68 = getelementptr inbounds %struct.kvaser_pciefd_tx_packet, %struct.kvaser_pciefd_tx_packet* %8, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = inttoptr i64 %69 to i32*
  %71 = load i32, i32* %9, align 4
  %72 = sub nsw i32 %71, 1
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %70, i64 %73
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* %11, align 4
  %76 = load %struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_can** %6, align 8
  %77 = getelementptr inbounds %struct.kvaser_pciefd_can, %struct.kvaser_pciefd_can* %76, i32 0, i32 3
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @KVASER_PCIEFD_KCAN_FIFO_REG, align 8
  %80 = add nsw i64 %78, %79
  %81 = getelementptr inbounds %struct.kvaser_pciefd_tx_packet, %struct.kvaser_pciefd_tx_packet* %8, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i32, i32* %9, align 4
  %84 = sub nsw i32 %83, 1
  %85 = call i32 @iowrite32_rep(i64 %80, i64 %82, i32 %84)
  %86 = load i32, i32* %11, align 4
  %87 = load %struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_can** %6, align 8
  %88 = getelementptr inbounds %struct.kvaser_pciefd_can, %struct.kvaser_pciefd_can* %87, i32 0, i32 3
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @KVASER_PCIEFD_KCAN_FIFO_LAST_REG, align 8
  %91 = add nsw i64 %89, %90
  %92 = call i32 @__raw_writel(i32 %86, i64 %91)
  br label %100

93:                                               ; preds = %20
  %94 = load %struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_can** %6, align 8
  %95 = getelementptr inbounds %struct.kvaser_pciefd_can, %struct.kvaser_pciefd_can* %94, i32 0, i32 3
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @KVASER_PCIEFD_KCAN_FIFO_LAST_REG, align 8
  %98 = add nsw i64 %96, %97
  %99 = call i32 @__raw_writel(i32 0, i64 %98)
  br label %100

100:                                              ; preds = %93, %67
  %101 = load %struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_can** %6, align 8
  %102 = getelementptr inbounds %struct.kvaser_pciefd_can, %struct.kvaser_pciefd_can* %101, i32 0, i32 3
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @KVASER_PCIEFD_KCAN_TX_NPACKETS_REG, align 8
  %105 = add nsw i64 %103, %104
  %106 = call i64 @ioread32(i64 %105)
  store i64 %106, i64* %10, align 8
  %107 = load i64, i64* %10, align 8
  %108 = load i64, i64* @KVASER_PCIEFD_CAN_TX_MAX_COUNT, align 8
  %109 = icmp sge i64 %107, %108
  br i1 %109, label %122, label %110

110:                                              ; preds = %100
  %111 = load %struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_can** %6, align 8
  %112 = getelementptr inbounds %struct.kvaser_pciefd_can, %struct.kvaser_pciefd_can* %111, i32 0, i32 2
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 1
  %114 = load i64*, i64** %113, align 8
  %115 = load %struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_can** %6, align 8
  %116 = getelementptr inbounds %struct.kvaser_pciefd_can, %struct.kvaser_pciefd_can* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i64, i64* %114, i64 %118
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %110, %100
  %123 = load %struct.net_device*, %struct.net_device** %5, align 8
  %124 = call i32 @netif_stop_queue(%struct.net_device* %123)
  br label %125

125:                                              ; preds = %122, %110
  %126 = load %struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_can** %6, align 8
  %127 = getelementptr inbounds %struct.kvaser_pciefd_can, %struct.kvaser_pciefd_can* %126, i32 0, i32 1
  %128 = load i64, i64* %7, align 8
  %129 = call i32 @spin_unlock_irqrestore(i32* %127, i64 %128)
  %130 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %130, i32* %3, align 4
  br label %131

131:                                              ; preds = %125, %18
  %132 = load i32, i32* %3, align 4
  ret i32 %132
}

declare dso_local %struct.kvaser_pciefd_can* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @can_dropped_invalid_skb(%struct.net_device*, %struct.sk_buff*) #1

declare dso_local i32 @kvaser_pciefd_prepare_tx_packet(%struct.kvaser_pciefd_tx_packet*, %struct.kvaser_pciefd_can*, %struct.sk_buff*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @can_put_echo_skb(%struct.sk_buff*, %struct.net_device*, i32) #1

declare dso_local i32 @iowrite32(i32, i64) #1

declare dso_local i32 @iowrite32_rep(i64, i64, i32) #1

declare dso_local i32 @__raw_writel(i32, i64) #1

declare dso_local i64 @ioread32(i64) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
