; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bnad.c_bnad_cq_setup_skb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bnad.c_bnad_cq_setup_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnad = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.sk_buff = type { i32, i32 }
%struct.bnad_rx_unmap = type { %struct.TYPE_4__, i32* }
%struct.TYPE_4__ = type { i64 }

@dma_addr = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnad*, %struct.sk_buff*, %struct.bnad_rx_unmap*, i32)* @bnad_cq_setup_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnad_cq_setup_skb(%struct.bnad* %0, %struct.sk_buff* %1, %struct.bnad_rx_unmap* %2, i32 %3) #0 {
  %5 = alloca %struct.bnad*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.bnad_rx_unmap*, align 8
  %8 = alloca i32, align 4
  store %struct.bnad* %0, %struct.bnad** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.bnad_rx_unmap* %2, %struct.bnad_rx_unmap** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %10 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @prefetch(i32 %11)
  %13 = load %struct.bnad*, %struct.bnad** %5, align 8
  %14 = getelementptr inbounds %struct.bnad, %struct.bnad* %13, i32 0, i32 1
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load %struct.bnad_rx_unmap*, %struct.bnad_rx_unmap** %7, align 8
  %18 = getelementptr inbounds %struct.bnad_rx_unmap, %struct.bnad_rx_unmap* %17, i32 0, i32 0
  %19 = load i32, i32* @dma_addr, align 4
  %20 = call i32 @dma_unmap_addr(%struct.TYPE_4__* %18, i32 %19)
  %21 = load %struct.bnad_rx_unmap*, %struct.bnad_rx_unmap** %7, align 8
  %22 = getelementptr inbounds %struct.bnad_rx_unmap, %struct.bnad_rx_unmap* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %26 = call i32 @dma_unmap_single(i32* %16, i32 %20, i64 %24, i32 %25)
  %27 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @skb_put(%struct.sk_buff* %27, i32 %28)
  %30 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %31 = load %struct.bnad*, %struct.bnad** %5, align 8
  %32 = getelementptr inbounds %struct.bnad, %struct.bnad* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @eth_type_trans(%struct.sk_buff* %30, i32 %33)
  %35 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %36 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  %37 = load %struct.bnad_rx_unmap*, %struct.bnad_rx_unmap** %7, align 8
  %38 = getelementptr inbounds %struct.bnad_rx_unmap, %struct.bnad_rx_unmap* %37, i32 0, i32 1
  store i32* null, i32** %38, align 8
  %39 = load %struct.bnad_rx_unmap*, %struct.bnad_rx_unmap** %7, align 8
  %40 = getelementptr inbounds %struct.bnad_rx_unmap, %struct.bnad_rx_unmap* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  store i64 0, i64* %41, align 8
  ret void
}

declare dso_local i32 @prefetch(i32) #1

declare dso_local i32 @dma_unmap_single(i32*, i32, i64, i32) #1

declare dso_local i32 @dma_unmap_addr(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
