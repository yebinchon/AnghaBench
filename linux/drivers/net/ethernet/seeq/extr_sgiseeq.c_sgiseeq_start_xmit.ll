; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/seeq/extr_sgiseeq.c_sgiseeq_start_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/seeq/extr_sgiseeq.c_sgiseeq_start_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32 }
%struct.net_device = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.sgiseeq_private = type { i32, i32, i32, %struct.sgiseeq_tx_desc*, %struct.hpc3_ethregs* }
%struct.sgiseeq_tx_desc = type { %struct.TYPE_6__, %struct.sk_buff* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.hpc3_ethregs = type { i32 }

@ETH_ZLEN = common dso_local global i32 0, align 4
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@HPCDMA_BCNT = common dso_local global i32 0, align 4
@HPCDMA_XIU = common dso_local global i32 0, align 4
@HPCDMA_EOXP = common dso_local global i32 0, align 4
@HPCDMA_XIE = common dso_local global i32 0, align 4
@HPCDMA_EOX = common dso_local global i32 0, align 4
@HPC3_ETXCTRL_ACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @sgiseeq_start_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sgiseeq_start_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.sgiseeq_private*, align 8
  %7 = alloca %struct.hpc3_ethregs*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.sgiseeq_tx_desc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.sgiseeq_tx_desc*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %13 = load %struct.net_device*, %struct.net_device** %5, align 8
  %14 = call %struct.sgiseeq_private* @netdev_priv(%struct.net_device* %13)
  store %struct.sgiseeq_private* %14, %struct.sgiseeq_private** %6, align 8
  %15 = load %struct.sgiseeq_private*, %struct.sgiseeq_private** %6, align 8
  %16 = getelementptr inbounds %struct.sgiseeq_private, %struct.sgiseeq_private* %15, i32 0, i32 4
  %17 = load %struct.hpc3_ethregs*, %struct.hpc3_ethregs** %16, align 8
  store %struct.hpc3_ethregs* %17, %struct.hpc3_ethregs** %7, align 8
  %18 = load %struct.sgiseeq_private*, %struct.sgiseeq_private** %6, align 8
  %19 = getelementptr inbounds %struct.sgiseeq_private, %struct.sgiseeq_private* %18, i32 0, i32 2
  %20 = load i64, i64* %8, align 8
  %21 = call i32 @spin_lock_irqsave(i32* %19, i64 %20)
  %22 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %23 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* @ETH_ZLEN, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %41

28:                                               ; preds = %2
  %29 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %30 = load i32, i32* @ETH_ZLEN, align 4
  %31 = call i64 @skb_padto(%struct.sk_buff* %29, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %28
  %34 = load %struct.sgiseeq_private*, %struct.sgiseeq_private** %6, align 8
  %35 = getelementptr inbounds %struct.sgiseeq_private, %struct.sgiseeq_private* %34, i32 0, i32 2
  %36 = load i64, i64* %8, align 8
  %37 = call i32 @spin_unlock_irqrestore(i32* %35, i64 %36)
  %38 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %38, i32* %3, align 4
  br label %153

39:                                               ; preds = %28
  %40 = load i32, i32* @ETH_ZLEN, align 4
  store i32 %40, i32* %10, align 4
  br label %41

41:                                               ; preds = %39, %2
  %42 = load i32, i32* %10, align 4
  %43 = load %struct.net_device*, %struct.net_device** %5, align 8
  %44 = getelementptr inbounds %struct.net_device, %struct.net_device* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %46, %42
  store i32 %47, i32* %45, align 4
  %48 = load %struct.sgiseeq_private*, %struct.sgiseeq_private** %6, align 8
  %49 = getelementptr inbounds %struct.sgiseeq_private, %struct.sgiseeq_private* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  store i32 %50, i32* %11, align 4
  %51 = load %struct.sgiseeq_private*, %struct.sgiseeq_private** %6, align 8
  %52 = getelementptr inbounds %struct.sgiseeq_private, %struct.sgiseeq_private* %51, i32 0, i32 3
  %53 = load %struct.sgiseeq_tx_desc*, %struct.sgiseeq_tx_desc** %52, align 8
  %54 = load i32, i32* %11, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.sgiseeq_tx_desc, %struct.sgiseeq_tx_desc* %53, i64 %55
  store %struct.sgiseeq_tx_desc* %56, %struct.sgiseeq_tx_desc** %9, align 8
  %57 = load %struct.net_device*, %struct.net_device** %5, align 8
  %58 = load %struct.sgiseeq_tx_desc*, %struct.sgiseeq_tx_desc** %9, align 8
  %59 = call i32 @dma_sync_desc_cpu(%struct.net_device* %57, %struct.sgiseeq_tx_desc* %58)
  %60 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %61 = load %struct.sgiseeq_tx_desc*, %struct.sgiseeq_tx_desc** %9, align 8
  %62 = getelementptr inbounds %struct.sgiseeq_tx_desc, %struct.sgiseeq_tx_desc* %61, i32 0, i32 1
  store %struct.sk_buff* %60, %struct.sk_buff** %62, align 8
  %63 = load %struct.net_device*, %struct.net_device** %5, align 8
  %64 = getelementptr inbounds %struct.net_device, %struct.net_device* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %68 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %10, align 4
  %71 = load i32, i32* @DMA_TO_DEVICE, align 4
  %72 = call i32 @dma_map_single(i32 %66, i32 %69, i32 %70, i32 %71)
  %73 = load %struct.sgiseeq_tx_desc*, %struct.sgiseeq_tx_desc** %9, align 8
  %74 = getelementptr inbounds %struct.sgiseeq_tx_desc, %struct.sgiseeq_tx_desc* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 1
  store i32 %72, i32* %75, align 4
  %76 = load i32, i32* %10, align 4
  %77 = load i32, i32* @HPCDMA_BCNT, align 4
  %78 = and i32 %76, %77
  %79 = load i32, i32* @HPCDMA_XIU, align 4
  %80 = or i32 %78, %79
  %81 = load i32, i32* @HPCDMA_EOXP, align 4
  %82 = or i32 %80, %81
  %83 = load i32, i32* @HPCDMA_XIE, align 4
  %84 = or i32 %82, %83
  %85 = load i32, i32* @HPCDMA_EOX, align 4
  %86 = or i32 %84, %85
  %87 = load %struct.sgiseeq_tx_desc*, %struct.sgiseeq_tx_desc** %9, align 8
  %88 = getelementptr inbounds %struct.sgiseeq_tx_desc, %struct.sgiseeq_tx_desc* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  store i32 %86, i32* %89, align 8
  %90 = load %struct.net_device*, %struct.net_device** %5, align 8
  %91 = load %struct.sgiseeq_tx_desc*, %struct.sgiseeq_tx_desc** %9, align 8
  %92 = call i32 @dma_sync_desc_dev(%struct.net_device* %90, %struct.sgiseeq_tx_desc* %91)
  %93 = load %struct.sgiseeq_private*, %struct.sgiseeq_private** %6, align 8
  %94 = getelementptr inbounds %struct.sgiseeq_private, %struct.sgiseeq_private* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.sgiseeq_private*, %struct.sgiseeq_private** %6, align 8
  %97 = getelementptr inbounds %struct.sgiseeq_private, %struct.sgiseeq_private* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = icmp ne i32 %95, %98
  br i1 %99, label %100, label %122

100:                                              ; preds = %41
  %101 = load %struct.sgiseeq_private*, %struct.sgiseeq_private** %6, align 8
  %102 = getelementptr inbounds %struct.sgiseeq_private, %struct.sgiseeq_private* %101, i32 0, i32 3
  %103 = load %struct.sgiseeq_tx_desc*, %struct.sgiseeq_tx_desc** %102, align 8
  %104 = load %struct.sgiseeq_private*, %struct.sgiseeq_private** %6, align 8
  %105 = getelementptr inbounds %struct.sgiseeq_private, %struct.sgiseeq_private* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = call i64 @PREV_TX(i32 %106)
  %108 = getelementptr inbounds %struct.sgiseeq_tx_desc, %struct.sgiseeq_tx_desc* %103, i64 %107
  store %struct.sgiseeq_tx_desc* %108, %struct.sgiseeq_tx_desc** %12, align 8
  %109 = load %struct.net_device*, %struct.net_device** %5, align 8
  %110 = load %struct.sgiseeq_tx_desc*, %struct.sgiseeq_tx_desc** %12, align 8
  %111 = call i32 @dma_sync_desc_cpu(%struct.net_device* %109, %struct.sgiseeq_tx_desc* %110)
  %112 = load i32, i32* @HPCDMA_EOX, align 4
  %113 = xor i32 %112, -1
  %114 = load %struct.sgiseeq_tx_desc*, %struct.sgiseeq_tx_desc** %12, align 8
  %115 = getelementptr inbounds %struct.sgiseeq_tx_desc, %struct.sgiseeq_tx_desc* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = and i32 %117, %113
  store i32 %118, i32* %116, align 8
  %119 = load %struct.net_device*, %struct.net_device** %5, align 8
  %120 = load %struct.sgiseeq_tx_desc*, %struct.sgiseeq_tx_desc** %12, align 8
  %121 = call i32 @dma_sync_desc_dev(%struct.net_device* %119, %struct.sgiseeq_tx_desc* %120)
  br label %122

122:                                              ; preds = %100, %41
  %123 = load %struct.sgiseeq_private*, %struct.sgiseeq_private** %6, align 8
  %124 = getelementptr inbounds %struct.sgiseeq_private, %struct.sgiseeq_private* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @NEXT_TX(i32 %125)
  %127 = load %struct.sgiseeq_private*, %struct.sgiseeq_private** %6, align 8
  %128 = getelementptr inbounds %struct.sgiseeq_private, %struct.sgiseeq_private* %127, i32 0, i32 0
  store i32 %126, i32* %128, align 8
  %129 = load %struct.hpc3_ethregs*, %struct.hpc3_ethregs** %7, align 8
  %130 = getelementptr inbounds %struct.hpc3_ethregs, %struct.hpc3_ethregs* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* @HPC3_ETXCTRL_ACTIVE, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %140, label %135

135:                                              ; preds = %122
  %136 = load %struct.net_device*, %struct.net_device** %5, align 8
  %137 = load %struct.sgiseeq_private*, %struct.sgiseeq_private** %6, align 8
  %138 = load %struct.hpc3_ethregs*, %struct.hpc3_ethregs** %7, align 8
  %139 = call i32 @kick_tx(%struct.net_device* %136, %struct.sgiseeq_private* %137, %struct.hpc3_ethregs* %138)
  br label %140

140:                                              ; preds = %135, %122
  %141 = load %struct.sgiseeq_private*, %struct.sgiseeq_private** %6, align 8
  %142 = call i32 @TX_BUFFS_AVAIL(%struct.sgiseeq_private* %141)
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %147, label %144

144:                                              ; preds = %140
  %145 = load %struct.net_device*, %struct.net_device** %5, align 8
  %146 = call i32 @netif_stop_queue(%struct.net_device* %145)
  br label %147

147:                                              ; preds = %144, %140
  %148 = load %struct.sgiseeq_private*, %struct.sgiseeq_private** %6, align 8
  %149 = getelementptr inbounds %struct.sgiseeq_private, %struct.sgiseeq_private* %148, i32 0, i32 2
  %150 = load i64, i64* %8, align 8
  %151 = call i32 @spin_unlock_irqrestore(i32* %149, i64 %150)
  %152 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %152, i32* %3, align 4
  br label %153

153:                                              ; preds = %147, %33
  %154 = load i32, i32* %3, align 4
  ret i32 %154
}

declare dso_local %struct.sgiseeq_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @skb_padto(%struct.sk_buff*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @dma_sync_desc_cpu(%struct.net_device*, %struct.sgiseeq_tx_desc*) #1

declare dso_local i32 @dma_map_single(i32, i32, i32, i32) #1

declare dso_local i32 @dma_sync_desc_dev(%struct.net_device*, %struct.sgiseeq_tx_desc*) #1

declare dso_local i64 @PREV_TX(i32) #1

declare dso_local i32 @NEXT_TX(i32) #1

declare dso_local i32 @kick_tx(%struct.net_device*, %struct.sgiseeq_private*, %struct.hpc3_ethregs*) #1

declare dso_local i32 @TX_BUFFS_AVAIL(%struct.sgiseeq_private*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
