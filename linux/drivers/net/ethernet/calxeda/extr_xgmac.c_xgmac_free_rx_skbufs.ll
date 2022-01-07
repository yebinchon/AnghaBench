; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/calxeda/extr_xgmac.c_xgmac_free_rx_skbufs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/calxeda/extr_xgmac.c_xgmac_free_rx_skbufs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgmac_priv = type { %struct.sk_buff**, i64, i32, %struct.xgmac_dma_desc* }
%struct.sk_buff = type { i32 }
%struct.xgmac_dma_desc = type { i32 }

@DMA_RX_RING_SZ = common dso_local global i32 0, align 4
@NET_IP_ALIGN = common dso_local global i64 0, align 8
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xgmac_priv*)* @xgmac_free_rx_skbufs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xgmac_free_rx_skbufs(%struct.xgmac_priv* %0) #0 {
  %2 = alloca %struct.xgmac_priv*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.xgmac_dma_desc*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  store %struct.xgmac_priv* %0, %struct.xgmac_priv** %2, align 8
  %6 = load %struct.xgmac_priv*, %struct.xgmac_priv** %2, align 8
  %7 = getelementptr inbounds %struct.xgmac_priv, %struct.xgmac_priv* %6, i32 0, i32 0
  %8 = load %struct.sk_buff**, %struct.sk_buff*** %7, align 8
  %9 = icmp ne %struct.sk_buff** %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %57

11:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %12

12:                                               ; preds = %54, %11
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @DMA_RX_RING_SZ, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %57

16:                                               ; preds = %12
  %17 = load %struct.xgmac_priv*, %struct.xgmac_priv** %2, align 8
  %18 = getelementptr inbounds %struct.xgmac_priv, %struct.xgmac_priv* %17, i32 0, i32 0
  %19 = load %struct.sk_buff**, %struct.sk_buff*** %18, align 8
  %20 = load i32, i32* %3, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %19, i64 %21
  %23 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  store %struct.sk_buff* %23, %struct.sk_buff** %5, align 8
  %24 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %25 = icmp eq %struct.sk_buff* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %16
  br label %54

27:                                               ; preds = %16
  %28 = load %struct.xgmac_priv*, %struct.xgmac_priv** %2, align 8
  %29 = getelementptr inbounds %struct.xgmac_priv, %struct.xgmac_priv* %28, i32 0, i32 3
  %30 = load %struct.xgmac_dma_desc*, %struct.xgmac_dma_desc** %29, align 8
  %31 = load i32, i32* %3, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.xgmac_dma_desc, %struct.xgmac_dma_desc* %30, i64 %32
  store %struct.xgmac_dma_desc* %33, %struct.xgmac_dma_desc** %4, align 8
  %34 = load %struct.xgmac_priv*, %struct.xgmac_priv** %2, align 8
  %35 = getelementptr inbounds %struct.xgmac_priv, %struct.xgmac_priv* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.xgmac_dma_desc*, %struct.xgmac_dma_desc** %4, align 8
  %38 = call i32 @desc_get_buf_addr(%struct.xgmac_dma_desc* %37)
  %39 = load %struct.xgmac_priv*, %struct.xgmac_priv** %2, align 8
  %40 = getelementptr inbounds %struct.xgmac_priv, %struct.xgmac_priv* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @NET_IP_ALIGN, align 8
  %43 = sub nsw i64 %41, %42
  %44 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %45 = call i32 @dma_unmap_single(i32 %36, i32 %38, i64 %43, i32 %44)
  %46 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %47 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %46)
  %48 = load %struct.xgmac_priv*, %struct.xgmac_priv** %2, align 8
  %49 = getelementptr inbounds %struct.xgmac_priv, %struct.xgmac_priv* %48, i32 0, i32 0
  %50 = load %struct.sk_buff**, %struct.sk_buff*** %49, align 8
  %51 = load i32, i32* %3, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %50, i64 %52
  store %struct.sk_buff* null, %struct.sk_buff** %53, align 8
  br label %54

54:                                               ; preds = %27, %26
  %55 = load i32, i32* %3, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %3, align 4
  br label %12

57:                                               ; preds = %10, %12
  ret void
}

declare dso_local i32 @dma_unmap_single(i32, i32, i64, i32) #1

declare dso_local i32 @desc_get_buf_addr(%struct.xgmac_dma_desc*) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
