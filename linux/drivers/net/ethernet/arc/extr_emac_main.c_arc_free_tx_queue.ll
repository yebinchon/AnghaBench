; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/arc/extr_emac_main.c_arc_free_tx_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/arc/extr_emac_main.c_arc_free_tx_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.arc_emac_priv = type { %struct.buffer_state*, %struct.arc_emac_bd* }
%struct.buffer_state = type { i32* }
%struct.arc_emac_bd = type { i64, i64 }

@TX_BD_NUM = common dso_local global i32 0, align 4
@addr = common dso_local global i32 0, align 4
@len = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @arc_free_tx_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arc_free_tx_queue(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.arc_emac_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.arc_emac_bd*, align 8
  %6 = alloca %struct.buffer_state*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = call %struct.arc_emac_priv* @netdev_priv(%struct.net_device* %7)
  store %struct.arc_emac_priv* %8, %struct.arc_emac_priv** %3, align 8
  store i32 0, i32* %4, align 4
  br label %9

9:                                                ; preds = %52, %1
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @TX_BD_NUM, align 4
  %12 = icmp ult i32 %10, %11
  br i1 %12, label %13, label %55

13:                                               ; preds = %9
  %14 = load %struct.arc_emac_priv*, %struct.arc_emac_priv** %3, align 8
  %15 = getelementptr inbounds %struct.arc_emac_priv, %struct.arc_emac_priv* %14, i32 0, i32 1
  %16 = load %struct.arc_emac_bd*, %struct.arc_emac_bd** %15, align 8
  %17 = load i32, i32* %4, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.arc_emac_bd, %struct.arc_emac_bd* %16, i64 %18
  store %struct.arc_emac_bd* %19, %struct.arc_emac_bd** %5, align 8
  %20 = load %struct.arc_emac_priv*, %struct.arc_emac_priv** %3, align 8
  %21 = getelementptr inbounds %struct.arc_emac_priv, %struct.arc_emac_priv* %20, i32 0, i32 0
  %22 = load %struct.buffer_state*, %struct.buffer_state** %21, align 8
  %23 = load i32, i32* %4, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.buffer_state, %struct.buffer_state* %22, i64 %24
  store %struct.buffer_state* %25, %struct.buffer_state** %6, align 8
  %26 = load %struct.buffer_state*, %struct.buffer_state** %6, align 8
  %27 = getelementptr inbounds %struct.buffer_state, %struct.buffer_state* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %45

30:                                               ; preds = %13
  %31 = load %struct.net_device*, %struct.net_device** %2, align 8
  %32 = getelementptr inbounds %struct.net_device, %struct.net_device* %31, i32 0, i32 0
  %33 = load %struct.buffer_state*, %struct.buffer_state** %6, align 8
  %34 = load i32, i32* @addr, align 4
  %35 = call i32 @dma_unmap_addr(%struct.buffer_state* %33, i32 %34)
  %36 = load %struct.buffer_state*, %struct.buffer_state** %6, align 8
  %37 = load i32, i32* @len, align 4
  %38 = call i32 @dma_unmap_len(%struct.buffer_state* %36, i32 %37)
  %39 = load i32, i32* @DMA_TO_DEVICE, align 4
  %40 = call i32 @dma_unmap_single(i32* %32, i32 %35, i32 %38, i32 %39)
  %41 = load %struct.buffer_state*, %struct.buffer_state** %6, align 8
  %42 = getelementptr inbounds %struct.buffer_state, %struct.buffer_state* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = call i32 @dev_kfree_skb_irq(i32* %43)
  br label %45

45:                                               ; preds = %30, %13
  %46 = load %struct.arc_emac_bd*, %struct.arc_emac_bd** %5, align 8
  %47 = getelementptr inbounds %struct.arc_emac_bd, %struct.arc_emac_bd* %46, i32 0, i32 1
  store i64 0, i64* %47, align 8
  %48 = load %struct.arc_emac_bd*, %struct.arc_emac_bd** %5, align 8
  %49 = getelementptr inbounds %struct.arc_emac_bd, %struct.arc_emac_bd* %48, i32 0, i32 0
  store i64 0, i64* %49, align 8
  %50 = load %struct.buffer_state*, %struct.buffer_state** %6, align 8
  %51 = getelementptr inbounds %struct.buffer_state, %struct.buffer_state* %50, i32 0, i32 0
  store i32* null, i32** %51, align 8
  br label %52

52:                                               ; preds = %45
  %53 = load i32, i32* %4, align 4
  %54 = add i32 %53, 1
  store i32 %54, i32* %4, align 4
  br label %9

55:                                               ; preds = %9
  ret void
}

declare dso_local %struct.arc_emac_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @dma_unmap_single(i32*, i32, i32, i32) #1

declare dso_local i32 @dma_unmap_addr(%struct.buffer_state*, i32) #1

declare dso_local i32 @dma_unmap_len(%struct.buffer_state*, i32) #1

declare dso_local i32 @dev_kfree_skb_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
