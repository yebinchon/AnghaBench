; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_rx_skb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_rx_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.bnxt = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.bnxt_rx_ring_info = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@DMA_ATTR_WEAK_ORDERING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.bnxt*, %struct.bnxt_rx_ring_info*, i32, i8*, i32*, i32, i32)* @bnxt_rx_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @bnxt_rx_skb(%struct.bnxt* %0, %struct.bnxt_rx_ring_info* %1, i32 %2, i8* %3, i32* %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.bnxt*, align 8
  %10 = alloca %struct.bnxt_rx_ring_info*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.sk_buff*, align 8
  %18 = alloca i32, align 4
  store %struct.bnxt* %0, %struct.bnxt** %9, align 8
  store %struct.bnxt_rx_ring_info* %1, %struct.bnxt_rx_ring_info** %10, align 8
  store i32 %2, i32* %11, align 4
  store i8* %3, i8** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %19 = load %struct.bnxt_rx_ring_info*, %struct.bnxt_rx_ring_info** %10, align 8
  %20 = getelementptr inbounds %struct.bnxt_rx_ring_info, %struct.bnxt_rx_ring_info* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %16, align 4
  %22 = load %struct.bnxt*, %struct.bnxt** %9, align 8
  %23 = load %struct.bnxt_rx_ring_info*, %struct.bnxt_rx_ring_info** %10, align 8
  %24 = load i32, i32* %16, align 4
  %25 = load i32, i32* @GFP_ATOMIC, align 4
  %26 = call i32 @bnxt_alloc_rx_data(%struct.bnxt* %22, %struct.bnxt_rx_ring_info* %23, i32 %24, i32 %25)
  store i32 %26, i32* %18, align 4
  %27 = load i32, i32* %18, align 4
  %28 = call i64 @unlikely(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %7
  %31 = load %struct.bnxt_rx_ring_info*, %struct.bnxt_rx_ring_info** %10, align 8
  %32 = load i32, i32* %11, align 4
  %33 = load i8*, i8** %12, align 8
  %34 = call i32 @bnxt_reuse_rx_data(%struct.bnxt_rx_ring_info* %31, i32 %32, i8* %33)
  store %struct.sk_buff* null, %struct.sk_buff** %8, align 8
  br label %67

35:                                               ; preds = %7
  %36 = load i8*, i8** %12, align 8
  %37 = call %struct.sk_buff* @build_skb(i8* %36, i32 0)
  store %struct.sk_buff* %37, %struct.sk_buff** %17, align 8
  %38 = load %struct.bnxt*, %struct.bnxt** %9, align 8
  %39 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %38, i32 0, i32 3
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %14, align 4
  %43 = load %struct.bnxt*, %struct.bnxt** %9, align 8
  %44 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.bnxt*, %struct.bnxt** %9, align 8
  %47 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @DMA_ATTR_WEAK_ORDERING, align 4
  %50 = call i32 @dma_unmap_single_attrs(i32* %41, i32 %42, i32 %45, i32 %48, i32 %49)
  %51 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %52 = icmp ne %struct.sk_buff* %51, null
  br i1 %52, label %56, label %53

53:                                               ; preds = %35
  %54 = load i8*, i8** %12, align 8
  %55 = call i32 @kfree(i8* %54)
  store %struct.sk_buff* null, %struct.sk_buff** %8, align 8
  br label %67

56:                                               ; preds = %35
  %57 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %58 = load %struct.bnxt*, %struct.bnxt** %9, align 8
  %59 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @skb_reserve(%struct.sk_buff* %57, i32 %60)
  %62 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %63 = load i32, i32* %15, align 4
  %64 = and i32 %63, 65535
  %65 = call i32 @skb_put(%struct.sk_buff* %62, i32 %64)
  %66 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  store %struct.sk_buff* %66, %struct.sk_buff** %8, align 8
  br label %67

67:                                               ; preds = %56, %53, %30
  %68 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  ret %struct.sk_buff* %68
}

declare dso_local i32 @bnxt_alloc_rx_data(%struct.bnxt*, %struct.bnxt_rx_ring_info*, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @bnxt_reuse_rx_data(%struct.bnxt_rx_ring_info*, i32, i8*) #1

declare dso_local %struct.sk_buff* @build_skb(i8*, i32) #1

declare dso_local i32 @dma_unmap_single_attrs(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
