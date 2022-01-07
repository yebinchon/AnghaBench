; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_gianfar.c_gfar_get_next_rxbuff.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_gianfar.c_gfar_get_next_rxbuff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfar_priv_rx_q = type { i64, i32, %struct.gfar_rx_buff* }
%struct.gfar_rx_buff = type { i32, %struct.page*, i32 }
%struct.page = type { i32 }
%struct.sk_buff = type { i32 }

@GFAR_SKBFRAG_SIZE = common dso_local global i32 0, align 4
@RXBUF_ALIGNMENT = common dso_local global i32 0, align 4
@GFAR_RXB_TRUESIZE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.gfar_priv_rx_q*, i32, %struct.sk_buff*)* @gfar_get_next_rxbuff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @gfar_get_next_rxbuff(%struct.gfar_priv_rx_q* %0, i32 %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.gfar_priv_rx_q*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.gfar_rx_buff*, align 8
  %9 = alloca %struct.page*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store %struct.gfar_priv_rx_q* %0, %struct.gfar_priv_rx_q** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.sk_buff* %2, %struct.sk_buff** %7, align 8
  %12 = load %struct.gfar_priv_rx_q*, %struct.gfar_priv_rx_q** %5, align 8
  %13 = getelementptr inbounds %struct.gfar_priv_rx_q, %struct.gfar_priv_rx_q* %12, i32 0, i32 2
  %14 = load %struct.gfar_rx_buff*, %struct.gfar_rx_buff** %13, align 8
  %15 = load %struct.gfar_priv_rx_q*, %struct.gfar_priv_rx_q** %5, align 8
  %16 = getelementptr inbounds %struct.gfar_priv_rx_q, %struct.gfar_priv_rx_q* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds %struct.gfar_rx_buff, %struct.gfar_rx_buff* %14, i64 %17
  store %struct.gfar_rx_buff* %18, %struct.gfar_rx_buff** %8, align 8
  %19 = load %struct.gfar_rx_buff*, %struct.gfar_rx_buff** %8, align 8
  %20 = getelementptr inbounds %struct.gfar_rx_buff, %struct.gfar_rx_buff* %19, i32 0, i32 1
  %21 = load %struct.page*, %struct.page** %20, align 8
  store %struct.page* %21, %struct.page** %9, align 8
  store i32 0, i32* %10, align 4
  %22 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %23 = icmp ne %struct.sk_buff* %22, null
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i64 @likely(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %52

28:                                               ; preds = %3
  %29 = load %struct.page*, %struct.page** %9, align 8
  %30 = call i8* @page_address(%struct.page* %29)
  %31 = load %struct.gfar_rx_buff*, %struct.gfar_rx_buff** %8, align 8
  %32 = getelementptr inbounds %struct.gfar_rx_buff, %struct.gfar_rx_buff* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = sext i32 %33 to i64
  %35 = getelementptr i8, i8* %30, i64 %34
  store i8* %35, i8** %11, align 8
  %36 = load i8*, i8** %11, align 8
  %37 = load i32, i32* @GFAR_SKBFRAG_SIZE, align 4
  %38 = call %struct.sk_buff* @build_skb(i8* %36, i32 %37)
  store %struct.sk_buff* %38, %struct.sk_buff** %7, align 8
  %39 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %40 = icmp ne %struct.sk_buff* %39, null
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  %43 = call i64 @unlikely(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %28
  %46 = load %struct.gfar_priv_rx_q*, %struct.gfar_priv_rx_q** %5, align 8
  %47 = call i32 @gfar_rx_alloc_err(%struct.gfar_priv_rx_q* %46)
  store %struct.sk_buff* null, %struct.sk_buff** %4, align 8
  br label %89

48:                                               ; preds = %28
  %49 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %50 = load i32, i32* @RXBUF_ALIGNMENT, align 4
  %51 = call i32 @skb_reserve(%struct.sk_buff* %49, i32 %50)
  store i32 1, i32* %10, align 4
  br label %52

52:                                               ; preds = %48, %3
  %53 = load %struct.gfar_priv_rx_q*, %struct.gfar_priv_rx_q** %5, align 8
  %54 = getelementptr inbounds %struct.gfar_priv_rx_q, %struct.gfar_priv_rx_q* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.gfar_rx_buff*, %struct.gfar_rx_buff** %8, align 8
  %57 = getelementptr inbounds %struct.gfar_rx_buff, %struct.gfar_rx_buff* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.gfar_rx_buff*, %struct.gfar_rx_buff** %8, align 8
  %60 = getelementptr inbounds %struct.gfar_rx_buff, %struct.gfar_rx_buff* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @GFAR_RXB_TRUESIZE, align 4
  %63 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %64 = call i32 @dma_sync_single_range_for_cpu(i32 %55, i32 %58, i32 %61, i32 %62, i32 %63)
  %65 = load %struct.gfar_rx_buff*, %struct.gfar_rx_buff** %8, align 8
  %66 = load i32, i32* %6, align 4
  %67 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %68 = load i32, i32* %10, align 4
  %69 = call i64 @gfar_add_rx_frag(%struct.gfar_rx_buff* %65, i32 %66, %struct.sk_buff* %67, i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %52
  %72 = load %struct.gfar_priv_rx_q*, %struct.gfar_priv_rx_q** %5, align 8
  %73 = load %struct.gfar_rx_buff*, %struct.gfar_rx_buff** %8, align 8
  %74 = call i32 @gfar_reuse_rx_page(%struct.gfar_priv_rx_q* %72, %struct.gfar_rx_buff* %73)
  br label %85

75:                                               ; preds = %52
  %76 = load %struct.gfar_priv_rx_q*, %struct.gfar_priv_rx_q** %5, align 8
  %77 = getelementptr inbounds %struct.gfar_priv_rx_q, %struct.gfar_priv_rx_q* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.gfar_rx_buff*, %struct.gfar_rx_buff** %8, align 8
  %80 = getelementptr inbounds %struct.gfar_rx_buff, %struct.gfar_rx_buff* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @PAGE_SIZE, align 4
  %83 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %84 = call i32 @dma_unmap_page(i32 %78, i32 %81, i32 %82, i32 %83)
  br label %85

85:                                               ; preds = %75, %71
  %86 = load %struct.gfar_rx_buff*, %struct.gfar_rx_buff** %8, align 8
  %87 = getelementptr inbounds %struct.gfar_rx_buff, %struct.gfar_rx_buff* %86, i32 0, i32 1
  store %struct.page* null, %struct.page** %87, align 8
  %88 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  store %struct.sk_buff* %88, %struct.sk_buff** %4, align 8
  br label %89

89:                                               ; preds = %85, %45
  %90 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  ret %struct.sk_buff* %90
}

declare dso_local i64 @likely(i32) #1

declare dso_local i8* @page_address(%struct.page*) #1

declare dso_local %struct.sk_buff* @build_skb(i8*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @gfar_rx_alloc_err(%struct.gfar_priv_rx_q*) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i32 @dma_sync_single_range_for_cpu(i32, i32, i32, i32, i32) #1

declare dso_local i64 @gfar_add_rx_frag(%struct.gfar_rx_buff*, i32, %struct.sk_buff*, i32) #1

declare dso_local i32 @gfar_reuse_rx_page(%struct.gfar_priv_rx_q*, %struct.gfar_rx_buff*) #1

declare dso_local i32 @dma_unmap_page(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
