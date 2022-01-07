; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/calxeda/extr_xgmac.c_xgmac_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/calxeda/extr_xgmac.c_xgmac_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgmac_priv = type { i32, i32, i32, i64, i32, %struct.sk_buff**, %struct.xgmac_dma_desc*, i32 }
%struct.sk_buff = type { i32, i32 }
%struct.xgmac_dma_desc = type { i32 }

@DMA_RX_RING_SZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Inconsistent Rx descriptor chain\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"RX frame size %d, COE status: %d\0A\00", align 1
@NET_IP_ALIGN = common dso_local global i64 0, align 8
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@CHECKSUM_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xgmac_priv*, i32)* @xgmac_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xgmac_rx(%struct.xgmac_priv* %0, i32 %1) #0 {
  %3 = alloca %struct.xgmac_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.xgmac_dma_desc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i32, align 4
  store %struct.xgmac_priv* %0, %struct.xgmac_priv** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %126, %55, %2
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp ult i32 %12, %13
  br i1 %14, label %15, label %127

15:                                               ; preds = %11
  %16 = load %struct.xgmac_priv*, %struct.xgmac_priv** %3, align 8
  %17 = getelementptr inbounds %struct.xgmac_priv, %struct.xgmac_priv* %16, i32 0, i32 7
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.xgmac_priv*, %struct.xgmac_priv** %3, align 8
  %20 = getelementptr inbounds %struct.xgmac_priv, %struct.xgmac_priv* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @DMA_RX_RING_SZ, align 4
  %23 = call i32 @dma_ring_cnt(i32 %18, i32 %21, i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %15
  br label %127

26:                                               ; preds = %15
  %27 = load %struct.xgmac_priv*, %struct.xgmac_priv** %3, align 8
  %28 = getelementptr inbounds %struct.xgmac_priv, %struct.xgmac_priv* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %5, align 4
  %30 = load %struct.xgmac_priv*, %struct.xgmac_priv** %3, align 8
  %31 = getelementptr inbounds %struct.xgmac_priv, %struct.xgmac_priv* %30, i32 0, i32 6
  %32 = load %struct.xgmac_dma_desc*, %struct.xgmac_dma_desc** %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.xgmac_dma_desc, %struct.xgmac_dma_desc* %32, i64 %34
  store %struct.xgmac_dma_desc* %35, %struct.xgmac_dma_desc** %7, align 8
  %36 = load %struct.xgmac_dma_desc*, %struct.xgmac_dma_desc** %7, align 8
  %37 = call i64 @desc_get_owner(%struct.xgmac_dma_desc* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %26
  br label %127

40:                                               ; preds = %26
  %41 = load i32, i32* %6, align 4
  %42 = add i32 %41, 1
  store i32 %42, i32* %6, align 4
  %43 = load %struct.xgmac_priv*, %struct.xgmac_priv** %3, align 8
  %44 = getelementptr inbounds %struct.xgmac_priv, %struct.xgmac_priv* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @DMA_RX_RING_SZ, align 4
  %47 = call i32 @dma_ring_incr(i32 %45, i32 %46)
  %48 = load %struct.xgmac_priv*, %struct.xgmac_priv** %3, align 8
  %49 = getelementptr inbounds %struct.xgmac_priv, %struct.xgmac_priv* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  %50 = load %struct.xgmac_priv*, %struct.xgmac_priv** %3, align 8
  %51 = load %struct.xgmac_dma_desc*, %struct.xgmac_dma_desc** %7, align 8
  %52 = call i32 @desc_get_rx_status(%struct.xgmac_priv* %50, %struct.xgmac_dma_desc* %51)
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %8, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %40
  br label %11

56:                                               ; preds = %40
  %57 = load %struct.xgmac_priv*, %struct.xgmac_priv** %3, align 8
  %58 = getelementptr inbounds %struct.xgmac_priv, %struct.xgmac_priv* %57, i32 0, i32 5
  %59 = load %struct.sk_buff**, %struct.sk_buff*** %58, align 8
  %60 = load i32, i32* %5, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %59, i64 %61
  %63 = load %struct.sk_buff*, %struct.sk_buff** %62, align 8
  store %struct.sk_buff* %63, %struct.sk_buff** %9, align 8
  %64 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %65 = icmp ne %struct.sk_buff* %64, null
  %66 = xor i1 %65, true
  %67 = zext i1 %66 to i32
  %68 = call i64 @unlikely(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %56
  %71 = load %struct.xgmac_priv*, %struct.xgmac_priv** %3, align 8
  %72 = getelementptr inbounds %struct.xgmac_priv, %struct.xgmac_priv* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @netdev_err(i32 %73, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %127

75:                                               ; preds = %56
  %76 = load %struct.xgmac_priv*, %struct.xgmac_priv** %3, align 8
  %77 = getelementptr inbounds %struct.xgmac_priv, %struct.xgmac_priv* %76, i32 0, i32 5
  %78 = load %struct.sk_buff**, %struct.sk_buff*** %77, align 8
  %79 = load i32, i32* %5, align 4
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %78, i64 %80
  store %struct.sk_buff* null, %struct.sk_buff** %81, align 8
  %82 = load %struct.xgmac_dma_desc*, %struct.xgmac_dma_desc** %7, align 8
  %83 = call i32 @desc_get_rx_frame_len(%struct.xgmac_dma_desc* %82)
  store i32 %83, i32* %10, align 4
  %84 = load %struct.xgmac_priv*, %struct.xgmac_priv** %3, align 8
  %85 = getelementptr inbounds %struct.xgmac_priv, %struct.xgmac_priv* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* %10, align 4
  %88 = load i32, i32* %8, align 4
  %89 = call i32 @netdev_dbg(i32 %86, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %87, i32 %88)
  %90 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %91 = load i32, i32* %10, align 4
  %92 = call i32 @skb_put(%struct.sk_buff* %90, i32 %91)
  %93 = load %struct.xgmac_priv*, %struct.xgmac_priv** %3, align 8
  %94 = getelementptr inbounds %struct.xgmac_priv, %struct.xgmac_priv* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.xgmac_dma_desc*, %struct.xgmac_dma_desc** %7, align 8
  %97 = call i32 @desc_get_buf_addr(%struct.xgmac_dma_desc* %96)
  %98 = load %struct.xgmac_priv*, %struct.xgmac_priv** %3, align 8
  %99 = getelementptr inbounds %struct.xgmac_priv, %struct.xgmac_priv* %98, i32 0, i32 3
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @NET_IP_ALIGN, align 8
  %102 = sub nsw i64 %100, %101
  %103 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %104 = call i32 @dma_unmap_single(i32 %95, i32 %97, i64 %102, i32 %103)
  %105 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %106 = load %struct.xgmac_priv*, %struct.xgmac_priv** %3, align 8
  %107 = getelementptr inbounds %struct.xgmac_priv, %struct.xgmac_priv* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @eth_type_trans(%struct.sk_buff* %105, i32 %108)
  %110 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %111 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %110, i32 0, i32 1
  store i32 %109, i32* %111, align 4
  %112 = load i32, i32* %8, align 4
  %113 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %114 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %113, i32 0, i32 0
  store i32 %112, i32* %114, align 4
  %115 = load i32, i32* %8, align 4
  %116 = load i32, i32* @CHECKSUM_NONE, align 4
  %117 = icmp eq i32 %115, %116
  br i1 %117, label %118, label %121

118:                                              ; preds = %75
  %119 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %120 = call i32 @netif_receive_skb(%struct.sk_buff* %119)
  br label %126

121:                                              ; preds = %75
  %122 = load %struct.xgmac_priv*, %struct.xgmac_priv** %3, align 8
  %123 = getelementptr inbounds %struct.xgmac_priv, %struct.xgmac_priv* %122, i32 0, i32 1
  %124 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %125 = call i32 @napi_gro_receive(i32* %123, %struct.sk_buff* %124)
  br label %126

126:                                              ; preds = %121, %118
  br label %11

127:                                              ; preds = %70, %39, %25, %11
  %128 = load %struct.xgmac_priv*, %struct.xgmac_priv** %3, align 8
  %129 = call i32 @xgmac_rx_refill(%struct.xgmac_priv* %128)
  %130 = load i32, i32* %6, align 4
  ret i32 %130
}

declare dso_local i32 @dma_ring_cnt(i32, i32, i32) #1

declare dso_local i64 @desc_get_owner(%struct.xgmac_dma_desc*) #1

declare dso_local i32 @dma_ring_incr(i32, i32) #1

declare dso_local i32 @desc_get_rx_status(%struct.xgmac_priv*, %struct.xgmac_dma_desc*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @netdev_err(i32, i8*) #1

declare dso_local i32 @desc_get_rx_frame_len(%struct.xgmac_dma_desc*) #1

declare dso_local i32 @netdev_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @dma_unmap_single(i32, i32, i64, i32) #1

declare dso_local i32 @desc_get_buf_addr(%struct.xgmac_dma_desc*) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, i32) #1

declare dso_local i32 @netif_receive_skb(%struct.sk_buff*) #1

declare dso_local i32 @napi_gro_receive(i32*, %struct.sk_buff*) #1

declare dso_local i32 @xgmac_rx_refill(%struct.xgmac_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
