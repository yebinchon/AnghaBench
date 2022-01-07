; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_cmn.c_bnx2x_free_tx_pkt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_cmn.c_bnx2x_free_tx_pkt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.bnx2x_fp_txdata = type { %struct.TYPE_3__*, i32, %struct.sw_tx_bd* }
%struct.TYPE_3__ = type { %struct.eth_tx_start_bd, %struct.eth_tx_start_bd }
%struct.eth_tx_start_bd = type { i32 }
%struct.sw_tx_bd = type { i64, i32, %struct.sk_buff* }
%struct.sk_buff = type { i64, i32 }
%struct.eth_tx_bd = type { i32 }

@NETIF_MSG_TX_DONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"fp[%d]: pkt_idx %d  buff @(%p)->skb %p\0A\00", align 1
@BNX2X_HAS_SECOND_PBD = common dso_local global i32 0, align 4
@BNX2X_TSO_SPLIT_BD = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@MAX_SKB_FRAGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.bnx2x*, %struct.bnx2x_fp_txdata*, i64, i32*, i32*)* @bnx2x_free_tx_pkt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @bnx2x_free_tx_pkt(%struct.bnx2x* %0, %struct.bnx2x_fp_txdata* %1, i64 %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.bnx2x*, align 8
  %7 = alloca %struct.bnx2x_fp_txdata*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.sw_tx_bd*, align 8
  %12 = alloca %struct.eth_tx_start_bd*, align 8
  %13 = alloca %struct.eth_tx_bd*, align 8
  %14 = alloca %struct.sk_buff*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  store %struct.bnx2x* %0, %struct.bnx2x** %6, align 8
  store %struct.bnx2x_fp_txdata* %1, %struct.bnx2x_fp_txdata** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %19 = load %struct.bnx2x_fp_txdata*, %struct.bnx2x_fp_txdata** %7, align 8
  %20 = getelementptr inbounds %struct.bnx2x_fp_txdata, %struct.bnx2x_fp_txdata* %19, i32 0, i32 2
  %21 = load %struct.sw_tx_bd*, %struct.sw_tx_bd** %20, align 8
  %22 = load i64, i64* %8, align 8
  %23 = getelementptr inbounds %struct.sw_tx_bd, %struct.sw_tx_bd* %21, i64 %22
  store %struct.sw_tx_bd* %23, %struct.sw_tx_bd** %11, align 8
  %24 = load %struct.sw_tx_bd*, %struct.sw_tx_bd** %11, align 8
  %25 = getelementptr inbounds %struct.sw_tx_bd, %struct.sw_tx_bd* %24, i32 0, i32 2
  %26 = load %struct.sk_buff*, %struct.sk_buff** %25, align 8
  store %struct.sk_buff* %26, %struct.sk_buff** %14, align 8
  %27 = load %struct.sw_tx_bd*, %struct.sw_tx_bd** %11, align 8
  %28 = getelementptr inbounds %struct.sw_tx_bd, %struct.sw_tx_bd* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i64 @TX_BD(i64 %29)
  store i64 %30, i64* %15, align 8
  store i64 0, i64* %18, align 8
  %31 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %32 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %31, i32 0, i32 1
  %33 = call i32 @prefetch(i32* %32)
  %34 = load i32, i32* @NETIF_MSG_TX_DONE, align 4
  %35 = load %struct.bnx2x_fp_txdata*, %struct.bnx2x_fp_txdata** %7, align 8
  %36 = getelementptr inbounds %struct.bnx2x_fp_txdata, %struct.bnx2x_fp_txdata* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load i64, i64* %8, align 8
  %39 = load %struct.sw_tx_bd*, %struct.sw_tx_bd** %11, align 8
  %40 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %41 = call i32 @DP(i32 %34, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %37, i64 %38, %struct.sw_tx_bd* %39, %struct.sk_buff* %40)
  %42 = load %struct.bnx2x_fp_txdata*, %struct.bnx2x_fp_txdata** %7, align 8
  %43 = getelementptr inbounds %struct.bnx2x_fp_txdata, %struct.bnx2x_fp_txdata* %42, i32 0, i32 0
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = load i64, i64* %15, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  store %struct.eth_tx_start_bd* %47, %struct.eth_tx_start_bd** %12, align 8
  %48 = load %struct.eth_tx_start_bd*, %struct.eth_tx_start_bd** %12, align 8
  %49 = getelementptr inbounds %struct.eth_tx_start_bd, %struct.eth_tx_start_bd* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @le16_to_cpu(i32 %50)
  %52 = sub nsw i32 %51, 1
  store i32 %52, i32* %17, align 4
  %53 = load i32, i32* %17, align 4
  %54 = sext i32 %53 to i64
  %55 = load %struct.sw_tx_bd*, %struct.sw_tx_bd** %11, align 8
  %56 = getelementptr inbounds %struct.sw_tx_bd, %struct.sw_tx_bd* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = add i64 %54, %57
  store i64 %58, i64* %16, align 8
  %59 = load i64, i64* %15, align 8
  %60 = call i64 @NEXT_TX_IDX(i64 %59)
  %61 = call i64 @TX_BD(i64 %60)
  store i64 %61, i64* %15, align 8
  %62 = load i32, i32* %17, align 4
  %63 = add nsw i32 %62, -1
  store i32 %63, i32* %17, align 4
  %64 = load i64, i64* %15, align 8
  %65 = call i64 @NEXT_TX_IDX(i64 %64)
  %66 = call i64 @TX_BD(i64 %65)
  store i64 %66, i64* %15, align 8
  %67 = load %struct.sw_tx_bd*, %struct.sw_tx_bd** %11, align 8
  %68 = getelementptr inbounds %struct.sw_tx_bd, %struct.sw_tx_bd* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @BNX2X_HAS_SECOND_PBD, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %5
  %74 = load i32, i32* %17, align 4
  %75 = add nsw i32 %74, -1
  store i32 %75, i32* %17, align 4
  %76 = load i64, i64* %15, align 8
  %77 = call i64 @NEXT_TX_IDX(i64 %76)
  %78 = call i64 @TX_BD(i64 %77)
  store i64 %78, i64* %15, align 8
  br label %79

79:                                               ; preds = %73, %5
  %80 = load %struct.sw_tx_bd*, %struct.sw_tx_bd** %11, align 8
  %81 = getelementptr inbounds %struct.sw_tx_bd, %struct.sw_tx_bd* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @BNX2X_TSO_SPLIT_BD, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %102

86:                                               ; preds = %79
  %87 = load %struct.bnx2x_fp_txdata*, %struct.bnx2x_fp_txdata** %7, align 8
  %88 = getelementptr inbounds %struct.bnx2x_fp_txdata, %struct.bnx2x_fp_txdata* %87, i32 0, i32 0
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %88, align 8
  %90 = load i64, i64* %15, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 0
  %93 = bitcast %struct.eth_tx_start_bd* %92 to %struct.eth_tx_bd*
  store %struct.eth_tx_bd* %93, %struct.eth_tx_bd** %13, align 8
  %94 = load %struct.eth_tx_bd*, %struct.eth_tx_bd** %13, align 8
  %95 = bitcast %struct.eth_tx_bd* %94 to %struct.eth_tx_start_bd*
  %96 = call i64 @BD_UNMAP_LEN(%struct.eth_tx_start_bd* %95)
  store i64 %96, i64* %18, align 8
  %97 = load i32, i32* %17, align 4
  %98 = add nsw i32 %97, -1
  store i32 %98, i32* %17, align 4
  %99 = load i64, i64* %15, align 8
  %100 = call i64 @NEXT_TX_IDX(i64 %99)
  %101 = call i64 @TX_BD(i64 %100)
  store i64 %101, i64* %15, align 8
  br label %102

102:                                              ; preds = %86, %79
  %103 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %104 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %103, i32 0, i32 0
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  %107 = load %struct.eth_tx_start_bd*, %struct.eth_tx_start_bd** %12, align 8
  %108 = call i32 @BD_UNMAP_ADDR(%struct.eth_tx_start_bd* %107)
  %109 = load %struct.eth_tx_start_bd*, %struct.eth_tx_start_bd** %12, align 8
  %110 = call i64 @BD_UNMAP_LEN(%struct.eth_tx_start_bd* %109)
  %111 = load i64, i64* %18, align 8
  %112 = add i64 %110, %111
  %113 = load i32, i32* @DMA_TO_DEVICE, align 4
  %114 = call i32 @dma_unmap_single(i32* %106, i32 %108, i64 %112, i32 %113)
  br label %115

115:                                              ; preds = %145, %102
  %116 = load i32, i32* %17, align 4
  %117 = icmp sgt i32 %116, 0
  br i1 %117, label %118, label %146

118:                                              ; preds = %115
  %119 = load %struct.bnx2x_fp_txdata*, %struct.bnx2x_fp_txdata** %7, align 8
  %120 = getelementptr inbounds %struct.bnx2x_fp_txdata, %struct.bnx2x_fp_txdata* %119, i32 0, i32 0
  %121 = load %struct.TYPE_3__*, %struct.TYPE_3__** %120, align 8
  %122 = load i64, i64* %15, align 8
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 0
  %125 = bitcast %struct.eth_tx_start_bd* %124 to %struct.eth_tx_bd*
  store %struct.eth_tx_bd* %125, %struct.eth_tx_bd** %13, align 8
  %126 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %127 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %126, i32 0, i32 0
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 0
  %130 = load %struct.eth_tx_bd*, %struct.eth_tx_bd** %13, align 8
  %131 = bitcast %struct.eth_tx_bd* %130 to %struct.eth_tx_start_bd*
  %132 = call i32 @BD_UNMAP_ADDR(%struct.eth_tx_start_bd* %131)
  %133 = load %struct.eth_tx_bd*, %struct.eth_tx_bd** %13, align 8
  %134 = bitcast %struct.eth_tx_bd* %133 to %struct.eth_tx_start_bd*
  %135 = call i64 @BD_UNMAP_LEN(%struct.eth_tx_start_bd* %134)
  %136 = load i32, i32* @DMA_TO_DEVICE, align 4
  %137 = call i32 @dma_unmap_page(i32* %129, i32 %132, i64 %135, i32 %136)
  %138 = load i32, i32* %17, align 4
  %139 = add nsw i32 %138, -1
  store i32 %139, i32* %17, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %145

141:                                              ; preds = %118
  %142 = load i64, i64* %15, align 8
  %143 = call i64 @NEXT_TX_IDX(i64 %142)
  %144 = call i64 @TX_BD(i64 %143)
  store i64 %144, i64* %15, align 8
  br label %145

145:                                              ; preds = %141, %118
  br label %115

146:                                              ; preds = %115
  %147 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %148 = icmp ne %struct.sk_buff* %147, null
  %149 = xor i1 %148, true
  %150 = zext i1 %149 to i32
  %151 = call i32 @WARN_ON(i32 %150)
  %152 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %153 = call i64 @likely(%struct.sk_buff* %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %169

155:                                              ; preds = %146
  %156 = load i32*, i32** %9, align 8
  %157 = load i32, i32* %156, align 4
  %158 = add i32 %157, 1
  store i32 %158, i32* %156, align 4
  %159 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %160 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = load i32*, i32** %10, align 8
  %163 = load i32, i32* %162, align 4
  %164 = zext i32 %163 to i64
  %165 = add nsw i64 %164, %161
  %166 = trunc i64 %165 to i32
  store i32 %166, i32* %162, align 4
  %167 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %168 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %167)
  br label %169

169:                                              ; preds = %155, %146
  %170 = load %struct.sw_tx_bd*, %struct.sw_tx_bd** %11, align 8
  %171 = getelementptr inbounds %struct.sw_tx_bd, %struct.sw_tx_bd* %170, i32 0, i32 0
  store i64 0, i64* %171, align 8
  %172 = load %struct.sw_tx_bd*, %struct.sw_tx_bd** %11, align 8
  %173 = getelementptr inbounds %struct.sw_tx_bd, %struct.sw_tx_bd* %172, i32 0, i32 2
  store %struct.sk_buff* null, %struct.sk_buff** %173, align 8
  %174 = load i64, i64* %16, align 8
  ret i64 %174
}

declare dso_local i64 @TX_BD(i64) #1

declare dso_local i32 @prefetch(i32*) #1

declare dso_local i32 @DP(i32, i8*, i32, i64, %struct.sw_tx_bd*, %struct.sk_buff*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i64 @NEXT_TX_IDX(i64) #1

declare dso_local i64 @BD_UNMAP_LEN(%struct.eth_tx_start_bd*) #1

declare dso_local i32 @dma_unmap_single(i32*, i32, i64, i32) #1

declare dso_local i32 @BD_UNMAP_ADDR(%struct.eth_tx_start_bd*) #1

declare dso_local i32 @dma_unmap_page(i32*, i32, i64, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @likely(%struct.sk_buff*) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
