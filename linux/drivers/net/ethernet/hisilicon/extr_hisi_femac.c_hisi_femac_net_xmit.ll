; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/extr_hisi_femac.c_hisi_femac_net_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/extr_hisi_femac.c_hisi_femac_net_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, i32 }
%struct.net_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32, i32, i32 }
%struct.hisi_femac_priv = type { i32, i64, i32, %struct.hisi_femac_queue }
%struct.hisi_femac_queue = type { i64, i32, %struct.sk_buff**, i64*, i32 }

@ADDRQ_STAT = common dso_local global i64 0, align 8
@BIT_TX_READY = common dso_local global i32 0, align 4
@IRQ_INT_TX_PER_PACKET = common dso_local global i32 0, align 4
@NETDEV_TX_BUSY = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@EQ_ADDR = common dso_local global i64 0, align 8
@ETH_FCS_LEN = common dso_local global i64 0, align 8
@EQFRM_LEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @hisi_femac_net_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hisi_femac_net_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.hisi_femac_priv*, align 8
  %7 = alloca %struct.hisi_femac_queue*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %10 = load %struct.net_device*, %struct.net_device** %5, align 8
  %11 = call %struct.hisi_femac_priv* @netdev_priv(%struct.net_device* %10)
  store %struct.hisi_femac_priv* %11, %struct.hisi_femac_priv** %6, align 8
  %12 = load %struct.hisi_femac_priv*, %struct.hisi_femac_priv** %6, align 8
  %13 = getelementptr inbounds %struct.hisi_femac_priv, %struct.hisi_femac_priv* %12, i32 0, i32 3
  store %struct.hisi_femac_queue* %13, %struct.hisi_femac_queue** %7, align 8
  %14 = load %struct.hisi_femac_priv*, %struct.hisi_femac_priv** %6, align 8
  %15 = getelementptr inbounds %struct.hisi_femac_priv, %struct.hisi_femac_priv* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @ADDRQ_STAT, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @readl(i64 %18)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* @BIT_TX_READY, align 4
  %21 = load i32, i32* %9, align 4
  %22 = and i32 %21, %20
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %42, label %25

25:                                               ; preds = %2
  %26 = load %struct.hisi_femac_priv*, %struct.hisi_femac_priv** %6, align 8
  %27 = load i32, i32* @IRQ_INT_TX_PER_PACKET, align 4
  %28 = call i32 @hisi_femac_irq_enable(%struct.hisi_femac_priv* %26, i32 %27)
  %29 = load %struct.net_device*, %struct.net_device** %5, align 8
  %30 = getelementptr inbounds %struct.net_device, %struct.net_device* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %31, align 4
  %34 = load %struct.net_device*, %struct.net_device** %5, align 8
  %35 = getelementptr inbounds %struct.net_device, %struct.net_device* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 8
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %36, align 8
  %39 = load %struct.net_device*, %struct.net_device** %5, align 8
  %40 = call i32 @netif_stop_queue(%struct.net_device* %39)
  %41 = load i32, i32* @NETDEV_TX_BUSY, align 4
  store i32 %41, i32* %3, align 4
  br label %172

42:                                               ; preds = %2
  %43 = load %struct.hisi_femac_queue*, %struct.hisi_femac_queue** %7, align 8
  %44 = getelementptr inbounds %struct.hisi_femac_queue, %struct.hisi_femac_queue* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.hisi_femac_queue*, %struct.hisi_femac_queue** %7, align 8
  %47 = getelementptr inbounds %struct.hisi_femac_queue, %struct.hisi_femac_queue* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.hisi_femac_queue*, %struct.hisi_femac_queue** %7, align 8
  %50 = getelementptr inbounds %struct.hisi_femac_queue, %struct.hisi_femac_queue* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @CIRC_SPACE(i64 %45, i32 %48, i32 %51)
  %53 = icmp ne i32 %52, 0
  %54 = xor i1 %53, true
  %55 = zext i1 %54 to i32
  %56 = call i64 @unlikely(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %75

58:                                               ; preds = %42
  %59 = load %struct.hisi_femac_priv*, %struct.hisi_femac_priv** %6, align 8
  %60 = load i32, i32* @IRQ_INT_TX_PER_PACKET, align 4
  %61 = call i32 @hisi_femac_irq_enable(%struct.hisi_femac_priv* %59, i32 %60)
  %62 = load %struct.net_device*, %struct.net_device** %5, align 8
  %63 = getelementptr inbounds %struct.net_device, %struct.net_device* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %64, align 4
  %67 = load %struct.net_device*, %struct.net_device** %5, align 8
  %68 = getelementptr inbounds %struct.net_device, %struct.net_device* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 8
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %69, align 8
  %72 = load %struct.net_device*, %struct.net_device** %5, align 8
  %73 = call i32 @netif_stop_queue(%struct.net_device* %72)
  %74 = load i32, i32* @NETDEV_TX_BUSY, align 4
  store i32 %74, i32* %3, align 4
  br label %172

75:                                               ; preds = %42
  %76 = load %struct.hisi_femac_priv*, %struct.hisi_femac_priv** %6, align 8
  %77 = getelementptr inbounds %struct.hisi_femac_priv, %struct.hisi_femac_priv* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %80 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %83 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i32, i32* @DMA_TO_DEVICE, align 4
  %86 = call i64 @dma_map_single(i32 %78, i32 %81, i64 %84, i32 %85)
  store i64 %86, i64* %8, align 8
  %87 = load %struct.hisi_femac_priv*, %struct.hisi_femac_priv** %6, align 8
  %88 = getelementptr inbounds %struct.hisi_femac_priv, %struct.hisi_femac_priv* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = load i64, i64* %8, align 8
  %91 = call i32 @dma_mapping_error(i32 %89, i64 %90)
  %92 = call i64 @unlikely(i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %103

94:                                               ; preds = %75
  %95 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %96 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %95)
  %97 = load %struct.net_device*, %struct.net_device** %5, align 8
  %98 = getelementptr inbounds %struct.net_device, %struct.net_device* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %99, align 4
  %102 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %102, i32* %3, align 4
  br label %172

103:                                              ; preds = %75
  %104 = load i64, i64* %8, align 8
  %105 = load %struct.hisi_femac_queue*, %struct.hisi_femac_queue** %7, align 8
  %106 = getelementptr inbounds %struct.hisi_femac_queue, %struct.hisi_femac_queue* %105, i32 0, i32 3
  %107 = load i64*, i64** %106, align 8
  %108 = load %struct.hisi_femac_queue*, %struct.hisi_femac_queue** %7, align 8
  %109 = getelementptr inbounds %struct.hisi_femac_queue, %struct.hisi_femac_queue* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = getelementptr inbounds i64, i64* %107, i64 %110
  store i64 %104, i64* %111, align 8
  %112 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %113 = load %struct.hisi_femac_queue*, %struct.hisi_femac_queue** %7, align 8
  %114 = getelementptr inbounds %struct.hisi_femac_queue, %struct.hisi_femac_queue* %113, i32 0, i32 2
  %115 = load %struct.sk_buff**, %struct.sk_buff*** %114, align 8
  %116 = load %struct.hisi_femac_queue*, %struct.hisi_femac_queue** %7, align 8
  %117 = getelementptr inbounds %struct.hisi_femac_queue, %struct.hisi_femac_queue* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %115, i64 %118
  store %struct.sk_buff* %112, %struct.sk_buff** %119, align 8
  %120 = load %struct.hisi_femac_queue*, %struct.hisi_femac_queue** %7, align 8
  %121 = getelementptr inbounds %struct.hisi_femac_queue, %struct.hisi_femac_queue* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = add i64 %122, 1
  %124 = load %struct.hisi_femac_queue*, %struct.hisi_femac_queue** %7, align 8
  %125 = getelementptr inbounds %struct.hisi_femac_queue, %struct.hisi_femac_queue* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = sext i32 %126 to i64
  %128 = urem i64 %123, %127
  %129 = load %struct.hisi_femac_queue*, %struct.hisi_femac_queue** %7, align 8
  %130 = getelementptr inbounds %struct.hisi_femac_queue, %struct.hisi_femac_queue* %129, i32 0, i32 0
  store i64 %128, i64* %130, align 8
  %131 = load i64, i64* %8, align 8
  %132 = load %struct.hisi_femac_priv*, %struct.hisi_femac_priv** %6, align 8
  %133 = getelementptr inbounds %struct.hisi_femac_priv, %struct.hisi_femac_priv* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* @EQ_ADDR, align 8
  %136 = add nsw i64 %134, %135
  %137 = call i32 @writel(i64 %131, i64 %136)
  %138 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %139 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* @ETH_FCS_LEN, align 8
  %142 = add nsw i64 %140, %141
  %143 = load %struct.hisi_femac_priv*, %struct.hisi_femac_priv** %6, align 8
  %144 = getelementptr inbounds %struct.hisi_femac_priv, %struct.hisi_femac_priv* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* @EQFRM_LEN, align 8
  %147 = add nsw i64 %145, %146
  %148 = call i32 @writel(i64 %142, i64 %147)
  %149 = load %struct.hisi_femac_priv*, %struct.hisi_femac_priv** %6, align 8
  %150 = getelementptr inbounds %struct.hisi_femac_priv, %struct.hisi_femac_priv* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %150, align 8
  %153 = load %struct.net_device*, %struct.net_device** %5, align 8
  %154 = getelementptr inbounds %struct.net_device, %struct.net_device* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 8
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %155, align 8
  %158 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %159 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = load %struct.net_device*, %struct.net_device** %5, align 8
  %162 = getelementptr inbounds %struct.net_device, %struct.net_device* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = add nsw i64 %164, %160
  store i64 %165, i64* %163, align 8
  %166 = load %struct.net_device*, %struct.net_device** %5, align 8
  %167 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %168 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = call i32 @netdev_sent_queue(%struct.net_device* %166, i64 %169)
  %171 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %171, i32* %3, align 4
  br label %172

172:                                              ; preds = %103, %94, %58, %25
  %173 = load i32, i32* %3, align 4
  ret i32 %173
}

declare dso_local %struct.hisi_femac_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @hisi_femac_irq_enable(%struct.hisi_femac_priv*, i32) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @CIRC_SPACE(i64, i32, i32) #1

declare dso_local i64 @dma_map_single(i32, i32, i64, i32) #1

declare dso_local i32 @dma_mapping_error(i32, i64) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @writel(i64, i64) #1

declare dso_local i32 @netdev_sent_queue(%struct.net_device*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
