; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_stmmac_main.c_stmmac_vlan_insert.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_stmmac_main.c_stmmac_vlan_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stmmac_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.sk_buff = type { i64 }
%struct.stmmac_tx_queue = type { i32, %struct.dma_desc* }
%struct.dma_desc = type { i32 }

@ETH_P_8021AD = common dso_local global i32 0, align 4
@STMMAC_VLAN_INSERT = common dso_local global i32 0, align 4
@DMA_TX_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stmmac_priv*, %struct.sk_buff*, %struct.stmmac_tx_queue*)* @stmmac_vlan_insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stmmac_vlan_insert(%struct.stmmac_priv* %0, %struct.sk_buff* %1, %struct.stmmac_tx_queue* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.stmmac_priv*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.stmmac_tx_queue*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.dma_desc*, align 8
  store %struct.stmmac_priv* %0, %struct.stmmac_priv** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.stmmac_tx_queue* %2, %struct.stmmac_tx_queue** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %12 = load %struct.stmmac_priv*, %struct.stmmac_priv** %5, align 8
  %13 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %64

18:                                               ; preds = %3
  %19 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %20 = call i32 @skb_vlan_tag_present(%struct.sk_buff* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %18
  store i32 0, i32* %4, align 4
  br label %64

23:                                               ; preds = %18
  %24 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %25 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i32, i32* @ETH_P_8021AD, align 4
  %28 = call i64 @htons(i32 %27)
  %29 = icmp eq i64 %26, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %23
  %31 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %32 = call i32 @skb_vlan_tag_get(%struct.sk_buff* %31)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* @STMMAC_VLAN_INSERT, align 4
  store i32 %33, i32* %10, align 4
  br label %34

34:                                               ; preds = %30, %23
  %35 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %36 = call i32 @skb_vlan_tag_get(%struct.sk_buff* %35)
  store i32 %36, i32* %8, align 4
  %37 = load %struct.stmmac_tx_queue*, %struct.stmmac_tx_queue** %7, align 8
  %38 = getelementptr inbounds %struct.stmmac_tx_queue, %struct.stmmac_tx_queue* %37, i32 0, i32 1
  %39 = load %struct.dma_desc*, %struct.dma_desc** %38, align 8
  %40 = load %struct.stmmac_tx_queue*, %struct.stmmac_tx_queue** %7, align 8
  %41 = getelementptr inbounds %struct.stmmac_tx_queue, %struct.stmmac_tx_queue* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %39, i64 %43
  store %struct.dma_desc* %44, %struct.dma_desc** %11, align 8
  %45 = load %struct.stmmac_priv*, %struct.stmmac_priv** %5, align 8
  %46 = load %struct.dma_desc*, %struct.dma_desc** %11, align 8
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* %10, align 4
  %50 = call i64 @stmmac_set_desc_vlan_tag(%struct.stmmac_priv* %45, %struct.dma_desc* %46, i32 %47, i32 %48, i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %34
  store i32 0, i32* %4, align 4
  br label %64

53:                                               ; preds = %34
  %54 = load %struct.stmmac_priv*, %struct.stmmac_priv** %5, align 8
  %55 = load %struct.dma_desc*, %struct.dma_desc** %11, align 8
  %56 = call i32 @stmmac_set_tx_owner(%struct.stmmac_priv* %54, %struct.dma_desc* %55)
  %57 = load %struct.stmmac_tx_queue*, %struct.stmmac_tx_queue** %7, align 8
  %58 = getelementptr inbounds %struct.stmmac_tx_queue, %struct.stmmac_tx_queue* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @DMA_TX_SIZE, align 4
  %61 = call i32 @STMMAC_GET_ENTRY(i32 %59, i32 %60)
  %62 = load %struct.stmmac_tx_queue*, %struct.stmmac_tx_queue** %7, align 8
  %63 = getelementptr inbounds %struct.stmmac_tx_queue, %struct.stmmac_tx_queue* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  store i32 1, i32* %4, align 4
  br label %64

64:                                               ; preds = %53, %52, %22, %17
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local i32 @skb_vlan_tag_present(%struct.sk_buff*) #1

declare dso_local i64 @htons(i32) #1

declare dso_local i32 @skb_vlan_tag_get(%struct.sk_buff*) #1

declare dso_local i64 @stmmac_set_desc_vlan_tag(%struct.stmmac_priv*, %struct.dma_desc*, i32, i32, i32) #1

declare dso_local i32 @stmmac_set_tx_owner(%struct.stmmac_priv*, %struct.dma_desc*) #1

declare dso_local i32 @STMMAC_GET_ENTRY(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
