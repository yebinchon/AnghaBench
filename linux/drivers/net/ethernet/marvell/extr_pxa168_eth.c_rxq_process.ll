; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_pxa168_eth.c_rxq_process.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_pxa168_eth.c_rxq_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.net_device_stats }
%struct.net_device_stats = type { i32, i32, i32, i32 }
%struct.pxa168_eth_private = type { i32, i32, i32, i32, %struct.TYPE_2__*, i32, %struct.sk_buff**, %struct.rx_desc* }
%struct.TYPE_2__ = type { i32 }
%struct.sk_buff = type { i32 }
%struct.rx_desc = type { i32, i64, i32, i32 }

@BUF_OWNED_BY_DMA = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@RX_FIRST_DESC = common dso_local global i32 0, align 4
@RX_LAST_DESC = common dso_local global i32 0, align 4
@RX_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Rx pkt on multiple desc\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @rxq_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rxq_process(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pxa168_eth_private*, align 8
  %6 = alloca %struct.net_device_stats*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.rx_desc*, align 8
  %13 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %14 = load %struct.net_device*, %struct.net_device** %3, align 8
  %15 = call %struct.pxa168_eth_private* @netdev_priv(%struct.net_device* %14)
  store %struct.pxa168_eth_private* %15, %struct.pxa168_eth_private** %5, align 8
  %16 = load %struct.net_device*, %struct.net_device** %3, align 8
  %17 = getelementptr inbounds %struct.net_device, %struct.net_device* %16, i32 0, i32 0
  store %struct.net_device_stats* %17, %struct.net_device_stats** %6, align 8
  store i32 0, i32* %7, align 4
  br label %18

18:                                               ; preds = %173, %2
  %19 = load i32, i32* %4, align 4
  %20 = add nsw i32 %19, -1
  store i32 %20, i32* %4, align 4
  %21 = icmp sgt i32 %19, 0
  br i1 %21, label %22, label %174

22:                                               ; preds = %18
  %23 = load %struct.pxa168_eth_private*, %struct.pxa168_eth_private** %5, align 8
  %24 = getelementptr inbounds %struct.pxa168_eth_private, %struct.pxa168_eth_private* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  br label %174

28:                                               ; preds = %22
  %29 = load %struct.pxa168_eth_private*, %struct.pxa168_eth_private** %5, align 8
  %30 = getelementptr inbounds %struct.pxa168_eth_private, %struct.pxa168_eth_private* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %10, align 4
  %32 = load %struct.pxa168_eth_private*, %struct.pxa168_eth_private** %5, align 8
  %33 = getelementptr inbounds %struct.pxa168_eth_private, %struct.pxa168_eth_private* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %11, align 4
  %35 = load %struct.pxa168_eth_private*, %struct.pxa168_eth_private** %5, align 8
  %36 = getelementptr inbounds %struct.pxa168_eth_private, %struct.pxa168_eth_private* %35, i32 0, i32 7
  %37 = load %struct.rx_desc*, %struct.rx_desc** %36, align 8
  %38 = load i32, i32* %10, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.rx_desc, %struct.rx_desc* %37, i64 %39
  store %struct.rx_desc* %40, %struct.rx_desc** %12, align 8
  %41 = load %struct.rx_desc*, %struct.rx_desc** %12, align 8
  %42 = getelementptr inbounds %struct.rx_desc, %struct.rx_desc* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  store i32 %43, i32* %13, align 4
  %44 = call i32 (...) @dma_rmb()
  %45 = load i32, i32* %13, align 4
  %46 = load i32, i32* @BUF_OWNED_BY_DMA, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %28
  br label %174

50:                                               ; preds = %28
  %51 = load %struct.pxa168_eth_private*, %struct.pxa168_eth_private** %5, align 8
  %52 = getelementptr inbounds %struct.pxa168_eth_private, %struct.pxa168_eth_private* %51, i32 0, i32 6
  %53 = load %struct.sk_buff**, %struct.sk_buff*** %52, align 8
  %54 = load i32, i32* %10, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %53, i64 %55
  %57 = load %struct.sk_buff*, %struct.sk_buff** %56, align 8
  store %struct.sk_buff* %57, %struct.sk_buff** %8, align 8
  %58 = load %struct.pxa168_eth_private*, %struct.pxa168_eth_private** %5, align 8
  %59 = getelementptr inbounds %struct.pxa168_eth_private, %struct.pxa168_eth_private* %58, i32 0, i32 6
  %60 = load %struct.sk_buff**, %struct.sk_buff*** %59, align 8
  %61 = load i32, i32* %10, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %60, i64 %62
  store %struct.sk_buff* null, %struct.sk_buff** %63, align 8
  %64 = load i32, i32* %10, align 4
  %65 = add nsw i32 %64, 1
  %66 = load %struct.pxa168_eth_private*, %struct.pxa168_eth_private** %5, align 8
  %67 = getelementptr inbounds %struct.pxa168_eth_private, %struct.pxa168_eth_private* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = srem i32 %65, %68
  store i32 %69, i32* %9, align 4
  %70 = load i32, i32* %9, align 4
  %71 = load %struct.pxa168_eth_private*, %struct.pxa168_eth_private** %5, align 8
  %72 = getelementptr inbounds %struct.pxa168_eth_private, %struct.pxa168_eth_private* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 4
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* %11, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %50
  %77 = load %struct.pxa168_eth_private*, %struct.pxa168_eth_private** %5, align 8
  %78 = getelementptr inbounds %struct.pxa168_eth_private, %struct.pxa168_eth_private* %77, i32 0, i32 0
  store i32 1, i32* %78, align 8
  br label %79

79:                                               ; preds = %76, %50
  %80 = load %struct.pxa168_eth_private*, %struct.pxa168_eth_private** %5, align 8
  %81 = getelementptr inbounds %struct.pxa168_eth_private, %struct.pxa168_eth_private* %80, i32 0, i32 5
  %82 = load i32, i32* %81, align 8
  %83 = add nsw i32 %82, -1
  store i32 %83, i32* %81, align 8
  %84 = load %struct.pxa168_eth_private*, %struct.pxa168_eth_private** %5, align 8
  %85 = getelementptr inbounds %struct.pxa168_eth_private, %struct.pxa168_eth_private* %84, i32 0, i32 4
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load %struct.rx_desc*, %struct.rx_desc** %12, align 8
  %89 = getelementptr inbounds %struct.rx_desc, %struct.rx_desc* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.rx_desc*, %struct.rx_desc** %12, align 8
  %92 = getelementptr inbounds %struct.rx_desc, %struct.rx_desc* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %95 = call i32 @dma_unmap_single(i32* %87, i32 %90, i32 %93, i32 %94)
  %96 = load i32, i32* %7, align 4
  %97 = add i32 %96, 1
  store i32 %97, i32* %7, align 4
  %98 = load %struct.net_device_stats*, %struct.net_device_stats** %6, align 8
  %99 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %99, align 4
  %102 = load %struct.rx_desc*, %struct.rx_desc** %12, align 8
  %103 = getelementptr inbounds %struct.rx_desc, %struct.rx_desc* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.net_device_stats*, %struct.net_device_stats** %6, align 8
  %106 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = sext i32 %107 to i64
  %109 = add nsw i64 %108, %104
  %110 = trunc i64 %109 to i32
  store i32 %110, i32* %106, align 4
  %111 = load i32, i32* %13, align 4
  %112 = load i32, i32* @RX_FIRST_DESC, align 4
  %113 = load i32, i32* @RX_LAST_DESC, align 4
  %114 = or i32 %112, %113
  %115 = and i32 %111, %114
  %116 = load i32, i32* @RX_FIRST_DESC, align 4
  %117 = load i32, i32* @RX_LAST_DESC, align 4
  %118 = or i32 %116, %117
  %119 = icmp ne i32 %115, %118
  br i1 %119, label %125, label %120

120:                                              ; preds = %79
  %121 = load i32, i32* %13, align 4
  %122 = load i32, i32* @RX_ERROR, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %159

125:                                              ; preds = %120, %79
  %126 = load %struct.net_device_stats*, %struct.net_device_stats** %6, align 8
  %127 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %127, align 4
  %130 = load i32, i32* %13, align 4
  %131 = load i32, i32* @RX_FIRST_DESC, align 4
  %132 = load i32, i32* @RX_LAST_DESC, align 4
  %133 = or i32 %131, %132
  %134 = and i32 %130, %133
  %135 = load i32, i32* @RX_FIRST_DESC, align 4
  %136 = load i32, i32* @RX_LAST_DESC, align 4
  %137 = or i32 %135, %136
  %138 = icmp ne i32 %134, %137
  br i1 %138, label %139, label %146

139:                                              ; preds = %125
  %140 = call i64 (...) @net_ratelimit()
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %145

142:                                              ; preds = %139
  %143 = load %struct.net_device*, %struct.net_device** %3, align 8
  %144 = call i32 @netdev_err(%struct.net_device* %143, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %145

145:                                              ; preds = %142, %139
  br label %146

146:                                              ; preds = %145, %125
  %147 = load i32, i32* %13, align 4
  %148 = load i32, i32* @RX_ERROR, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %156

151:                                              ; preds = %146
  %152 = load %struct.net_device_stats*, %struct.net_device_stats** %6, align 8
  %153 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %153, align 4
  br label %156

156:                                              ; preds = %151, %146
  %157 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %158 = call i32 @dev_kfree_skb_irq(%struct.sk_buff* %157)
  br label %173

159:                                              ; preds = %120
  %160 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %161 = load %struct.rx_desc*, %struct.rx_desc** %12, align 8
  %162 = getelementptr inbounds %struct.rx_desc, %struct.rx_desc* %161, i32 0, i32 1
  %163 = load i64, i64* %162, align 8
  %164 = sub nsw i64 %163, 4
  %165 = call i32 @skb_put(%struct.sk_buff* %160, i64 %164)
  %166 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %167 = load %struct.net_device*, %struct.net_device** %3, align 8
  %168 = call i32 @eth_type_trans(%struct.sk_buff* %166, %struct.net_device* %167)
  %169 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %170 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %169, i32 0, i32 0
  store i32 %168, i32* %170, align 4
  %171 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %172 = call i32 @netif_receive_skb(%struct.sk_buff* %171)
  br label %173

173:                                              ; preds = %159, %156
  br label %18

174:                                              ; preds = %49, %27, %18
  %175 = load %struct.net_device*, %struct.net_device** %3, align 8
  %176 = call i32 @rxq_refill(%struct.net_device* %175)
  %177 = load i32, i32* %7, align 4
  ret i32 %177
}

declare dso_local %struct.pxa168_eth_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @dma_rmb(...) #1

declare dso_local i32 @dma_unmap_single(i32*, i32, i32, i32) #1

declare dso_local i64 @net_ratelimit(...) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i32 @dev_kfree_skb_irq(%struct.sk_buff*) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i64) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i32 @netif_receive_skb(%struct.sk_buff*) #1

declare dso_local i32 @rxq_refill(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
