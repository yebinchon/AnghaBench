; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ni/extr_nixge.c_nixge_start_xmit_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ni/extr_nixge.c_nixge_start_xmit_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.nixge_priv = type { i64, %struct.nixge_tx_skb*, %struct.nixge_hw_dma_bd* }
%struct.nixge_tx_skb = type { i32 }
%struct.nixge_hw_dma_bd = type { i32 }

@XAXIDMA_BD_STS_COMPLETE_MASK = common dso_local global i32 0, align 4
@XAXIDMA_BD_STS_ACTUAL_LEN_MASK = common dso_local global i32 0, align 4
@TX_BD_NUM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @nixge_start_xmit_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nixge_start_xmit_done(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.nixge_priv*, align 8
  %4 = alloca %struct.nixge_hw_dma_bd*, align 8
  %5 = alloca %struct.nixge_tx_skb*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = call %struct.nixge_priv* @netdev_priv(%struct.net_device* %9)
  store %struct.nixge_priv* %10, %struct.nixge_priv** %3, align 8
  store i32 0, i32* %6, align 4
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  %11 = load %struct.nixge_priv*, %struct.nixge_priv** %3, align 8
  %12 = getelementptr inbounds %struct.nixge_priv, %struct.nixge_priv* %11, i32 0, i32 2
  %13 = load %struct.nixge_hw_dma_bd*, %struct.nixge_hw_dma_bd** %12, align 8
  %14 = load %struct.nixge_priv*, %struct.nixge_priv** %3, align 8
  %15 = getelementptr inbounds %struct.nixge_priv, %struct.nixge_priv* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds %struct.nixge_hw_dma_bd, %struct.nixge_hw_dma_bd* %13, i64 %16
  store %struct.nixge_hw_dma_bd* %17, %struct.nixge_hw_dma_bd** %4, align 8
  %18 = load %struct.nixge_priv*, %struct.nixge_priv** %3, align 8
  %19 = getelementptr inbounds %struct.nixge_priv, %struct.nixge_priv* %18, i32 0, i32 1
  %20 = load %struct.nixge_tx_skb*, %struct.nixge_tx_skb** %19, align 8
  %21 = load %struct.nixge_priv*, %struct.nixge_priv** %3, align 8
  %22 = getelementptr inbounds %struct.nixge_priv, %struct.nixge_priv* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds %struct.nixge_tx_skb, %struct.nixge_tx_skb* %20, i64 %23
  store %struct.nixge_tx_skb* %24, %struct.nixge_tx_skb** %5, align 8
  %25 = load %struct.nixge_hw_dma_bd*, %struct.nixge_hw_dma_bd** %4, align 8
  %26 = getelementptr inbounds %struct.nixge_hw_dma_bd, %struct.nixge_hw_dma_bd* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %6, align 4
  br label %28

28:                                               ; preds = %33, %1
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @XAXIDMA_BD_STS_COMPLETE_MASK, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %73

33:                                               ; preds = %28
  %34 = load %struct.nixge_priv*, %struct.nixge_priv** %3, align 8
  %35 = load %struct.nixge_tx_skb*, %struct.nixge_tx_skb** %5, align 8
  %36 = call i32 @nixge_tx_skb_unmap(%struct.nixge_priv* %34, %struct.nixge_tx_skb* %35)
  %37 = load %struct.nixge_hw_dma_bd*, %struct.nixge_hw_dma_bd** %4, align 8
  %38 = getelementptr inbounds %struct.nixge_hw_dma_bd, %struct.nixge_hw_dma_bd* %37, i32 0, i32 0
  store i32 0, i32* %38, align 4
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @XAXIDMA_BD_STS_ACTUAL_LEN_MASK, align 4
  %41 = and i32 %39, %40
  %42 = zext i32 %41 to i64
  %43 = load i64, i64* %8, align 8
  %44 = add nsw i64 %43, %42
  store i64 %44, i64* %8, align 8
  %45 = load i64, i64* %7, align 8
  %46 = add nsw i64 %45, 1
  store i64 %46, i64* %7, align 8
  %47 = load %struct.nixge_priv*, %struct.nixge_priv** %3, align 8
  %48 = getelementptr inbounds %struct.nixge_priv, %struct.nixge_priv* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = add i64 %49, 1
  store i64 %50, i64* %48, align 8
  %51 = load i64, i64* @TX_BD_NUM, align 8
  %52 = load %struct.nixge_priv*, %struct.nixge_priv** %3, align 8
  %53 = getelementptr inbounds %struct.nixge_priv, %struct.nixge_priv* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = urem i64 %54, %51
  store i64 %55, i64* %53, align 8
  %56 = load %struct.nixge_priv*, %struct.nixge_priv** %3, align 8
  %57 = getelementptr inbounds %struct.nixge_priv, %struct.nixge_priv* %56, i32 0, i32 2
  %58 = load %struct.nixge_hw_dma_bd*, %struct.nixge_hw_dma_bd** %57, align 8
  %59 = load %struct.nixge_priv*, %struct.nixge_priv** %3, align 8
  %60 = getelementptr inbounds %struct.nixge_priv, %struct.nixge_priv* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = getelementptr inbounds %struct.nixge_hw_dma_bd, %struct.nixge_hw_dma_bd* %58, i64 %61
  store %struct.nixge_hw_dma_bd* %62, %struct.nixge_hw_dma_bd** %4, align 8
  %63 = load %struct.nixge_priv*, %struct.nixge_priv** %3, align 8
  %64 = getelementptr inbounds %struct.nixge_priv, %struct.nixge_priv* %63, i32 0, i32 1
  %65 = load %struct.nixge_tx_skb*, %struct.nixge_tx_skb** %64, align 8
  %66 = load %struct.nixge_priv*, %struct.nixge_priv** %3, align 8
  %67 = getelementptr inbounds %struct.nixge_priv, %struct.nixge_priv* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = getelementptr inbounds %struct.nixge_tx_skb, %struct.nixge_tx_skb* %65, i64 %68
  store %struct.nixge_tx_skb* %69, %struct.nixge_tx_skb** %5, align 8
  %70 = load %struct.nixge_hw_dma_bd*, %struct.nixge_hw_dma_bd** %4, align 8
  %71 = getelementptr inbounds %struct.nixge_hw_dma_bd, %struct.nixge_hw_dma_bd* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %6, align 4
  br label %28

73:                                               ; preds = %28
  %74 = load i64, i64* %7, align 8
  %75 = load %struct.net_device*, %struct.net_device** %2, align 8
  %76 = getelementptr inbounds %struct.net_device, %struct.net_device* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = sext i32 %78 to i64
  %80 = add nsw i64 %79, %74
  %81 = trunc i64 %80 to i32
  store i32 %81, i32* %77, align 4
  %82 = load i64, i64* %8, align 8
  %83 = load %struct.net_device*, %struct.net_device** %2, align 8
  %84 = getelementptr inbounds %struct.net_device, %struct.net_device* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = sext i32 %86 to i64
  %88 = add nsw i64 %87, %82
  %89 = trunc i64 %88 to i32
  store i32 %89, i32* %85, align 4
  %90 = load i64, i64* %7, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %73
  %93 = load %struct.net_device*, %struct.net_device** %2, align 8
  %94 = call i32 @netif_wake_queue(%struct.net_device* %93)
  br label %95

95:                                               ; preds = %92, %73
  ret void
}

declare dso_local %struct.nixge_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @nixge_tx_skb_unmap(%struct.nixge_priv*, %struct.nixge_tx_skb*) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
