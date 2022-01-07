; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/faraday/extr_ftgmac100.c_ftgmac100_free_tx_packet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/faraday/extr_ftgmac100.c_ftgmac100_free_tx_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ftgmac100 = type { i32**, i32 }
%struct.sk_buff = type { i32 }
%struct.ftgmac100_txdes = type { i32 }

@FTGMAC100_TXDES0_FTS = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@FTGMAC100_TXDES0_LTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ftgmac100*, i32, %struct.sk_buff*, %struct.ftgmac100_txdes*, i32)* @ftgmac100_free_tx_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ftgmac100_free_tx_packet(%struct.ftgmac100* %0, i32 %1, %struct.sk_buff* %2, %struct.ftgmac100_txdes* %3, i32 %4) #0 {
  %6 = alloca %struct.ftgmac100*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.ftgmac100_txdes*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.ftgmac100* %0, %struct.ftgmac100** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.sk_buff* %2, %struct.sk_buff** %8, align 8
  store %struct.ftgmac100_txdes* %3, %struct.ftgmac100_txdes** %9, align 8
  store i32 %4, i32* %10, align 4
  %13 = load %struct.ftgmac100_txdes*, %struct.ftgmac100_txdes** %9, align 8
  %14 = getelementptr inbounds %struct.ftgmac100_txdes, %struct.ftgmac100_txdes* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @le32_to_cpu(i32 %15)
  store i32 %16, i32* %11, align 4
  %17 = load i32, i32* %10, align 4
  %18 = load i32, i32* @FTGMAC100_TXDES0_FTS, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %5
  %22 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %23 = call i64 @skb_headlen(%struct.sk_buff* %22)
  store i64 %23, i64* %12, align 8
  %24 = load %struct.ftgmac100*, %struct.ftgmac100** %6, align 8
  %25 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* %11, align 4
  %28 = load i64, i64* %12, align 8
  %29 = load i32, i32* @DMA_TO_DEVICE, align 4
  %30 = call i32 @dma_unmap_single(i32 %26, i32 %27, i64 %28, i32 %29)
  br label %41

31:                                               ; preds = %5
  %32 = load i32, i32* %10, align 4
  %33 = call i64 @FTGMAC100_TXDES0_TXBUF_SIZE(i32 %32)
  store i64 %33, i64* %12, align 8
  %34 = load %struct.ftgmac100*, %struct.ftgmac100** %6, align 8
  %35 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* %11, align 4
  %38 = load i64, i64* %12, align 8
  %39 = load i32, i32* @DMA_TO_DEVICE, align 4
  %40 = call i32 @dma_unmap_page(i32 %36, i32 %37, i64 %38, i32 %39)
  br label %41

41:                                               ; preds = %31, %21
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* @FTGMAC100_TXDES0_LTS, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %48 = call i32 @dev_kfree_skb(%struct.sk_buff* %47)
  br label %49

49:                                               ; preds = %46, %41
  %50 = load %struct.ftgmac100*, %struct.ftgmac100** %6, align 8
  %51 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %50, i32 0, i32 0
  %52 = load i32**, i32*** %51, align 8
  %53 = load i32, i32* %7, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds i32*, i32** %52, i64 %54
  store i32* null, i32** %55, align 8
  ret void
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i64 @skb_headlen(%struct.sk_buff*) #1

declare dso_local i32 @dma_unmap_single(i32, i32, i64, i32) #1

declare dso_local i64 @FTGMAC100_TXDES0_TXBUF_SIZE(i32) #1

declare dso_local i32 @dma_unmap_page(i32, i32, i64, i32) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
