; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_gianfar.c_free_skb_rx_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_gianfar.c_free_skb_rx_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfar_priv_rx_q = type { i32, %struct.gfar_rx_buff*, i32, i32, %struct.rxbd8* }
%struct.gfar_rx_buff = type { i32*, i32 }
%struct.rxbd8 = type { i64, i64 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gfar_priv_rx_q*)* @free_skb_rx_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_skb_rx_queue(%struct.gfar_priv_rx_q* %0) #0 {
  %2 = alloca %struct.gfar_priv_rx_q*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.rxbd8*, align 8
  %5 = alloca %struct.gfar_rx_buff*, align 8
  store %struct.gfar_priv_rx_q* %0, %struct.gfar_priv_rx_q** %2, align 8
  %6 = load %struct.gfar_priv_rx_q*, %struct.gfar_priv_rx_q** %2, align 8
  %7 = getelementptr inbounds %struct.gfar_priv_rx_q, %struct.gfar_priv_rx_q* %6, i32 0, i32 4
  %8 = load %struct.rxbd8*, %struct.rxbd8** %7, align 8
  store %struct.rxbd8* %8, %struct.rxbd8** %4, align 8
  %9 = load %struct.gfar_priv_rx_q*, %struct.gfar_priv_rx_q** %2, align 8
  %10 = getelementptr inbounds %struct.gfar_priv_rx_q, %struct.gfar_priv_rx_q* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @dev_kfree_skb(i32 %11)
  store i32 0, i32* %3, align 4
  br label %13

13:                                               ; preds = %53, %1
  %14 = load i32, i32* %3, align 4
  %15 = load %struct.gfar_priv_rx_q*, %struct.gfar_priv_rx_q** %2, align 8
  %16 = getelementptr inbounds %struct.gfar_priv_rx_q, %struct.gfar_priv_rx_q* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %56

19:                                               ; preds = %13
  %20 = load %struct.gfar_priv_rx_q*, %struct.gfar_priv_rx_q** %2, align 8
  %21 = getelementptr inbounds %struct.gfar_priv_rx_q, %struct.gfar_priv_rx_q* %20, i32 0, i32 1
  %22 = load %struct.gfar_rx_buff*, %struct.gfar_rx_buff** %21, align 8
  %23 = load i32, i32* %3, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.gfar_rx_buff, %struct.gfar_rx_buff* %22, i64 %24
  store %struct.gfar_rx_buff* %25, %struct.gfar_rx_buff** %5, align 8
  %26 = load %struct.rxbd8*, %struct.rxbd8** %4, align 8
  %27 = getelementptr inbounds %struct.rxbd8, %struct.rxbd8* %26, i32 0, i32 1
  store i64 0, i64* %27, align 8
  %28 = load %struct.rxbd8*, %struct.rxbd8** %4, align 8
  %29 = getelementptr inbounds %struct.rxbd8, %struct.rxbd8* %28, i32 0, i32 0
  store i64 0, i64* %29, align 8
  %30 = load %struct.rxbd8*, %struct.rxbd8** %4, align 8
  %31 = getelementptr inbounds %struct.rxbd8, %struct.rxbd8* %30, i32 1
  store %struct.rxbd8* %31, %struct.rxbd8** %4, align 8
  %32 = load %struct.gfar_rx_buff*, %struct.gfar_rx_buff** %5, align 8
  %33 = getelementptr inbounds %struct.gfar_rx_buff, %struct.gfar_rx_buff* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %19
  br label %53

37:                                               ; preds = %19
  %38 = load %struct.gfar_priv_rx_q*, %struct.gfar_priv_rx_q** %2, align 8
  %39 = getelementptr inbounds %struct.gfar_priv_rx_q, %struct.gfar_priv_rx_q* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.gfar_rx_buff*, %struct.gfar_rx_buff** %5, align 8
  %42 = getelementptr inbounds %struct.gfar_rx_buff, %struct.gfar_rx_buff* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @PAGE_SIZE, align 4
  %45 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %46 = call i32 @dma_unmap_page(i32 %40, i32 %43, i32 %44, i32 %45)
  %47 = load %struct.gfar_rx_buff*, %struct.gfar_rx_buff** %5, align 8
  %48 = getelementptr inbounds %struct.gfar_rx_buff, %struct.gfar_rx_buff* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = call i32 @__free_page(i32* %49)
  %51 = load %struct.gfar_rx_buff*, %struct.gfar_rx_buff** %5, align 8
  %52 = getelementptr inbounds %struct.gfar_rx_buff, %struct.gfar_rx_buff* %51, i32 0, i32 0
  store i32* null, i32** %52, align 8
  br label %53

53:                                               ; preds = %37, %36
  %54 = load i32, i32* %3, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %3, align 4
  br label %13

56:                                               ; preds = %13
  %57 = load %struct.gfar_priv_rx_q*, %struct.gfar_priv_rx_q** %2, align 8
  %58 = getelementptr inbounds %struct.gfar_priv_rx_q, %struct.gfar_priv_rx_q* %57, i32 0, i32 1
  %59 = load %struct.gfar_rx_buff*, %struct.gfar_rx_buff** %58, align 8
  %60 = call i32 @kfree(%struct.gfar_rx_buff* %59)
  %61 = load %struct.gfar_priv_rx_q*, %struct.gfar_priv_rx_q** %2, align 8
  %62 = getelementptr inbounds %struct.gfar_priv_rx_q, %struct.gfar_priv_rx_q* %61, i32 0, i32 1
  store %struct.gfar_rx_buff* null, %struct.gfar_rx_buff** %62, align 8
  ret void
}

declare dso_local i32 @dev_kfree_skb(i32) #1

declare dso_local i32 @dma_unmap_page(i32, i32, i32, i32) #1

declare dso_local i32 @__free_page(i32*) #1

declare dso_local i32 @kfree(%struct.gfar_rx_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
