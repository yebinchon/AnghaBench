; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_cpmac.c_cpmac_rx_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_cpmac.c_cpmac_rx_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32 }
%struct.cpmac_priv = type { %struct.TYPE_9__*, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.cpmac_desc = type { i32, i32, i64, i64, %struct.sk_buff*, i64, i64 }

@.str = private unnamed_addr constant [24 x i8] c"rx: spurious interrupt\0A\00", align 1
@CPMAC_SKB_SIZE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"received packet:\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"low on skbs, dropping packet\0A\00", align 1
@CPMAC_OWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.cpmac_priv*, %struct.cpmac_desc*)* @cpmac_rx_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @cpmac_rx_one(%struct.cpmac_priv* %0, %struct.cpmac_desc* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.cpmac_priv*, align 8
  %5 = alloca %struct.cpmac_desc*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  store %struct.cpmac_priv* %0, %struct.cpmac_priv** %4, align 8
  store %struct.cpmac_desc* %1, %struct.cpmac_desc** %5, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %7, align 8
  %8 = load %struct.cpmac_priv*, %struct.cpmac_priv** %4, align 8
  %9 = call i32 @netif_msg_hw(%struct.cpmac_priv* %8)
  %10 = call i64 @unlikely(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %2
  %13 = load %struct.cpmac_priv*, %struct.cpmac_priv** %4, align 8
  %14 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %13, i32 0, i32 0
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %16 = load %struct.cpmac_desc*, %struct.cpmac_desc** %5, align 8
  %17 = call i32 @cpmac_dump_desc(%struct.TYPE_9__* %15, %struct.cpmac_desc* %16)
  br label %18

18:                                               ; preds = %12, %2
  %19 = load %struct.cpmac_priv*, %struct.cpmac_priv** %4, align 8
  %20 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @CPMAC_RX_ACK(i32 0)
  %23 = load %struct.cpmac_desc*, %struct.cpmac_desc** %5, align 8
  %24 = getelementptr inbounds %struct.cpmac_desc, %struct.cpmac_desc* %23, i32 0, i32 6
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @cpmac_write(i32 %21, i32 %22, i64 %25)
  %27 = load %struct.cpmac_desc*, %struct.cpmac_desc** %5, align 8
  %28 = getelementptr inbounds %struct.cpmac_desc, %struct.cpmac_desc* %27, i32 0, i32 5
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = call i64 @unlikely(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %48

35:                                               ; preds = %18
  %36 = load %struct.cpmac_priv*, %struct.cpmac_priv** %4, align 8
  %37 = call i64 @netif_msg_rx_err(%struct.cpmac_priv* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %35
  %40 = call i64 (...) @net_ratelimit()
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %39
  %43 = load %struct.cpmac_priv*, %struct.cpmac_priv** %4, align 8
  %44 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %43, i32 0, i32 0
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %44, align 8
  %46 = call i32 @netdev_warn(%struct.TYPE_9__* %45, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %47

47:                                               ; preds = %42, %39, %35
  store %struct.sk_buff* null, %struct.sk_buff** %3, align 8
  br label %175

48:                                               ; preds = %18
  %49 = load %struct.cpmac_priv*, %struct.cpmac_priv** %4, align 8
  %50 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %49, i32 0, i32 0
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %50, align 8
  %52 = load i32, i32* @CPMAC_SKB_SIZE, align 4
  %53 = call %struct.sk_buff* @netdev_alloc_skb_ip_align(%struct.TYPE_9__* %51, i32 %52)
  store %struct.sk_buff* %53, %struct.sk_buff** %6, align 8
  %54 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %55 = call i64 @likely(%struct.sk_buff* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %147

57:                                               ; preds = %48
  %58 = load %struct.cpmac_desc*, %struct.cpmac_desc** %5, align 8
  %59 = getelementptr inbounds %struct.cpmac_desc, %struct.cpmac_desc* %58, i32 0, i32 4
  %60 = load %struct.sk_buff*, %struct.sk_buff** %59, align 8
  %61 = load %struct.cpmac_desc*, %struct.cpmac_desc** %5, align 8
  %62 = getelementptr inbounds %struct.cpmac_desc, %struct.cpmac_desc* %61, i32 0, i32 5
  %63 = load i64, i64* %62, align 8
  %64 = call i32 @skb_put(%struct.sk_buff* %60, i64 %63)
  %65 = load %struct.cpmac_desc*, %struct.cpmac_desc** %5, align 8
  %66 = getelementptr inbounds %struct.cpmac_desc, %struct.cpmac_desc* %65, i32 0, i32 4
  %67 = load %struct.sk_buff*, %struct.sk_buff** %66, align 8
  %68 = load %struct.cpmac_priv*, %struct.cpmac_priv** %4, align 8
  %69 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %68, i32 0, i32 0
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %69, align 8
  %71 = call i32 @eth_type_trans(%struct.sk_buff* %67, %struct.TYPE_9__* %70)
  %72 = load %struct.cpmac_desc*, %struct.cpmac_desc** %5, align 8
  %73 = getelementptr inbounds %struct.cpmac_desc, %struct.cpmac_desc* %72, i32 0, i32 4
  %74 = load %struct.sk_buff*, %struct.sk_buff** %73, align 8
  %75 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %74, i32 0, i32 1
  store i32 %71, i32* %75, align 4
  %76 = load %struct.cpmac_desc*, %struct.cpmac_desc** %5, align 8
  %77 = getelementptr inbounds %struct.cpmac_desc, %struct.cpmac_desc* %76, i32 0, i32 4
  %78 = load %struct.sk_buff*, %struct.sk_buff** %77, align 8
  %79 = call i32 @skb_checksum_none_assert(%struct.sk_buff* %78)
  %80 = load %struct.cpmac_priv*, %struct.cpmac_priv** %4, align 8
  %81 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %80, i32 0, i32 0
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %84, align 4
  %87 = load %struct.cpmac_desc*, %struct.cpmac_desc** %5, align 8
  %88 = getelementptr inbounds %struct.cpmac_desc, %struct.cpmac_desc* %87, i32 0, i32 5
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.cpmac_priv*, %struct.cpmac_priv** %4, align 8
  %91 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %90, i32 0, i32 0
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = sext i32 %95 to i64
  %97 = add nsw i64 %96, %89
  %98 = trunc i64 %97 to i32
  store i32 %98, i32* %94, align 4
  %99 = load %struct.cpmac_desc*, %struct.cpmac_desc** %5, align 8
  %100 = getelementptr inbounds %struct.cpmac_desc, %struct.cpmac_desc* %99, i32 0, i32 4
  %101 = load %struct.sk_buff*, %struct.sk_buff** %100, align 8
  store %struct.sk_buff* %101, %struct.sk_buff** %7, align 8
  %102 = load %struct.cpmac_priv*, %struct.cpmac_priv** %4, align 8
  %103 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %102, i32 0, i32 0
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 1
  %106 = load %struct.cpmac_desc*, %struct.cpmac_desc** %5, align 8
  %107 = getelementptr inbounds %struct.cpmac_desc, %struct.cpmac_desc* %106, i32 0, i32 2
  %108 = load i64, i64* %107, align 8
  %109 = load i32, i32* @CPMAC_SKB_SIZE, align 4
  %110 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %111 = call i32 @dma_unmap_single(i32* %105, i64 %108, i32 %109, i32 %110)
  %112 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %113 = load %struct.cpmac_desc*, %struct.cpmac_desc** %5, align 8
  %114 = getelementptr inbounds %struct.cpmac_desc, %struct.cpmac_desc* %113, i32 0, i32 4
  store %struct.sk_buff* %112, %struct.sk_buff** %114, align 8
  %115 = load %struct.cpmac_priv*, %struct.cpmac_priv** %4, align 8
  %116 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %115, i32 0, i32 0
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 1
  %119 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %120 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @CPMAC_SKB_SIZE, align 4
  %123 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %124 = call i64 @dma_map_single(i32* %118, i32 %121, i32 %122, i32 %123)
  %125 = load %struct.cpmac_desc*, %struct.cpmac_desc** %5, align 8
  %126 = getelementptr inbounds %struct.cpmac_desc, %struct.cpmac_desc* %125, i32 0, i32 2
  store i64 %124, i64* %126, align 8
  %127 = load %struct.cpmac_desc*, %struct.cpmac_desc** %5, align 8
  %128 = getelementptr inbounds %struct.cpmac_desc, %struct.cpmac_desc* %127, i32 0, i32 2
  %129 = load i64, i64* %128, align 8
  %130 = load %struct.cpmac_desc*, %struct.cpmac_desc** %5, align 8
  %131 = getelementptr inbounds %struct.cpmac_desc, %struct.cpmac_desc* %130, i32 0, i32 3
  store i64 %129, i64* %131, align 8
  %132 = load %struct.cpmac_priv*, %struct.cpmac_priv** %4, align 8
  %133 = call i32 @netif_msg_pktdata(%struct.cpmac_priv* %132)
  %134 = call i64 @unlikely(i32 %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %146

136:                                              ; preds = %57
  %137 = load %struct.cpmac_priv*, %struct.cpmac_priv** %4, align 8
  %138 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %137, i32 0, i32 0
  %139 = load %struct.TYPE_9__*, %struct.TYPE_9__** %138, align 8
  %140 = call i32 @netdev_dbg(%struct.TYPE_9__* %139, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %141 = load %struct.cpmac_priv*, %struct.cpmac_priv** %4, align 8
  %142 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %141, i32 0, i32 0
  %143 = load %struct.TYPE_9__*, %struct.TYPE_9__** %142, align 8
  %144 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %145 = call i32 @cpmac_dump_skb(%struct.TYPE_9__* %143, %struct.sk_buff* %144)
  br label %146

146:                                              ; preds = %136, %57
  br label %167

147:                                              ; preds = %48
  %148 = load %struct.cpmac_priv*, %struct.cpmac_priv** %4, align 8
  %149 = call i64 @netif_msg_rx_err(%struct.cpmac_priv* %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %159

151:                                              ; preds = %147
  %152 = call i64 (...) @net_ratelimit()
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %159

154:                                              ; preds = %151
  %155 = load %struct.cpmac_priv*, %struct.cpmac_priv** %4, align 8
  %156 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %155, i32 0, i32 0
  %157 = load %struct.TYPE_9__*, %struct.TYPE_9__** %156, align 8
  %158 = call i32 @netdev_warn(%struct.TYPE_9__* %157, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  br label %159

159:                                              ; preds = %154, %151, %147
  %160 = load %struct.cpmac_priv*, %struct.cpmac_priv** %4, align 8
  %161 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %160, i32 0, i32 0
  %162 = load %struct.TYPE_9__*, %struct.TYPE_9__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %164, align 4
  br label %167

167:                                              ; preds = %159, %146
  %168 = load i32, i32* @CPMAC_SKB_SIZE, align 4
  %169 = load %struct.cpmac_desc*, %struct.cpmac_desc** %5, align 8
  %170 = getelementptr inbounds %struct.cpmac_desc, %struct.cpmac_desc* %169, i32 0, i32 1
  store i32 %168, i32* %170, align 4
  %171 = load i32, i32* @CPMAC_OWN, align 4
  %172 = load %struct.cpmac_desc*, %struct.cpmac_desc** %5, align 8
  %173 = getelementptr inbounds %struct.cpmac_desc, %struct.cpmac_desc* %172, i32 0, i32 0
  store i32 %171, i32* %173, align 8
  %174 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  store %struct.sk_buff* %174, %struct.sk_buff** %3, align 8
  br label %175

175:                                              ; preds = %167, %47
  %176 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  ret %struct.sk_buff* %176
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @netif_msg_hw(%struct.cpmac_priv*) #1

declare dso_local i32 @cpmac_dump_desc(%struct.TYPE_9__*, %struct.cpmac_desc*) #1

declare dso_local i32 @cpmac_write(i32, i32, i64) #1

declare dso_local i32 @CPMAC_RX_ACK(i32) #1

declare dso_local i64 @netif_msg_rx_err(%struct.cpmac_priv*) #1

declare dso_local i64 @net_ratelimit(...) #1

declare dso_local i32 @netdev_warn(%struct.TYPE_9__*, i8*) #1

declare dso_local %struct.sk_buff* @netdev_alloc_skb_ip_align(%struct.TYPE_9__*, i32) #1

declare dso_local i64 @likely(%struct.sk_buff*) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i64) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, %struct.TYPE_9__*) #1

declare dso_local i32 @skb_checksum_none_assert(%struct.sk_buff*) #1

declare dso_local i32 @dma_unmap_single(i32*, i64, i32, i32) #1

declare dso_local i64 @dma_map_single(i32*, i32, i32, i32) #1

declare dso_local i32 @netif_msg_pktdata(%struct.cpmac_priv*) #1

declare dso_local i32 @netdev_dbg(%struct.TYPE_9__*, i8*) #1

declare dso_local i32 @cpmac_dump_skb(%struct.TYPE_9__*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
