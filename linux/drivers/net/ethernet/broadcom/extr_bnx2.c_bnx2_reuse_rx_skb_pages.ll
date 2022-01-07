; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bnx2.c_bnx2_reuse_rx_skb_pages.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bnx2.c_bnx2_reuse_rx_skb_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2 = type { i32 }
%struct.bnx2_rx_ring_info = type { i64, i64, %struct.bnx2_rx_bd**, %struct.bnx2_sw_pg* }
%struct.bnx2_rx_bd = type { i32, i32 }
%struct.bnx2_sw_pg = type { %struct.page* }
%struct.page = type { i32 }
%struct.sk_buff = type { i32 }
%struct.skb_shared_info = type { i64, i32* }

@mapping = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2*, %struct.bnx2_rx_ring_info*, %struct.sk_buff*, i32)* @bnx2_reuse_rx_skb_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2_reuse_rx_skb_pages(%struct.bnx2* %0, %struct.bnx2_rx_ring_info* %1, %struct.sk_buff* %2, i32 %3) #0 {
  %5 = alloca %struct.bnx2*, align 8
  %6 = alloca %struct.bnx2_rx_ring_info*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.bnx2_sw_pg*, align 8
  %10 = alloca %struct.bnx2_sw_pg*, align 8
  %11 = alloca %struct.bnx2_rx_bd*, align 8
  %12 = alloca %struct.bnx2_rx_bd*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.page*, align 8
  %18 = alloca %struct.skb_shared_info*, align 8
  store %struct.bnx2* %0, %struct.bnx2** %5, align 8
  store %struct.bnx2_rx_ring_info* %1, %struct.bnx2_rx_ring_info** %6, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %7, align 8
  store i32 %3, i32* %8, align 4
  %19 = load %struct.bnx2_rx_ring_info*, %struct.bnx2_rx_ring_info** %6, align 8
  %20 = getelementptr inbounds %struct.bnx2_rx_ring_info, %struct.bnx2_rx_ring_info* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %16, align 8
  %22 = load %struct.bnx2_rx_ring_info*, %struct.bnx2_rx_ring_info** %6, align 8
  %23 = getelementptr inbounds %struct.bnx2_rx_ring_info, %struct.bnx2_rx_ring_info* %22, i32 0, i32 3
  %24 = load %struct.bnx2_sw_pg*, %struct.bnx2_sw_pg** %23, align 8
  %25 = load i64, i64* %16, align 8
  %26 = getelementptr inbounds %struct.bnx2_sw_pg, %struct.bnx2_sw_pg* %24, i64 %25
  store %struct.bnx2_sw_pg* %26, %struct.bnx2_sw_pg** %9, align 8
  %27 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %28 = icmp ne %struct.sk_buff* %27, null
  br i1 %28, label %29, label %57

29:                                               ; preds = %4
  %30 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %31 = call %struct.skb_shared_info* @skb_shinfo(%struct.sk_buff* %30)
  store %struct.skb_shared_info* %31, %struct.skb_shared_info** %18, align 8
  %32 = load %struct.skb_shared_info*, %struct.skb_shared_info** %18, align 8
  %33 = getelementptr inbounds %struct.skb_shared_info, %struct.skb_shared_info* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = add i64 %34, -1
  store i64 %35, i64* %33, align 8
  %36 = load %struct.skb_shared_info*, %struct.skb_shared_info** %18, align 8
  %37 = getelementptr inbounds %struct.skb_shared_info, %struct.skb_shared_info* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = load %struct.skb_shared_info*, %struct.skb_shared_info** %18, align 8
  %40 = getelementptr inbounds %struct.skb_shared_info, %struct.skb_shared_info* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds i32, i32* %38, i64 %41
  %43 = call %struct.page* @skb_frag_page(i32* %42)
  store %struct.page* %43, %struct.page** %17, align 8
  %44 = load %struct.skb_shared_info*, %struct.skb_shared_info** %18, align 8
  %45 = getelementptr inbounds %struct.skb_shared_info, %struct.skb_shared_info* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = load %struct.skb_shared_info*, %struct.skb_shared_info** %18, align 8
  %48 = getelementptr inbounds %struct.skb_shared_info, %struct.skb_shared_info* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds i32, i32* %46, i64 %49
  %51 = call i32 @__skb_frag_set_page(i32* %50, i32* null)
  %52 = load %struct.page*, %struct.page** %17, align 8
  %53 = load %struct.bnx2_sw_pg*, %struct.bnx2_sw_pg** %9, align 8
  %54 = getelementptr inbounds %struct.bnx2_sw_pg, %struct.bnx2_sw_pg* %53, i32 0, i32 0
  store %struct.page* %52, %struct.page** %54, align 8
  %55 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %56 = call i32 @dev_kfree_skb(%struct.sk_buff* %55)
  br label %57

57:                                               ; preds = %29, %4
  %58 = load %struct.bnx2_rx_ring_info*, %struct.bnx2_rx_ring_info** %6, align 8
  %59 = getelementptr inbounds %struct.bnx2_rx_ring_info, %struct.bnx2_rx_ring_info* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  store i64 %60, i64* %14, align 8
  store i32 0, i32* %13, align 4
  br label %61

61:                                               ; preds = %131, %57
  %62 = load i32, i32* %13, align 4
  %63 = load i32, i32* %8, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %134

65:                                               ; preds = %61
  %66 = load i64, i64* %14, align 8
  %67 = call i64 @BNX2_RX_PG_RING_IDX(i64 %66)
  store i64 %67, i64* %15, align 8
  %68 = load %struct.bnx2_rx_ring_info*, %struct.bnx2_rx_ring_info** %6, align 8
  %69 = getelementptr inbounds %struct.bnx2_rx_ring_info, %struct.bnx2_rx_ring_info* %68, i32 0, i32 3
  %70 = load %struct.bnx2_sw_pg*, %struct.bnx2_sw_pg** %69, align 8
  %71 = load i64, i64* %15, align 8
  %72 = getelementptr inbounds %struct.bnx2_sw_pg, %struct.bnx2_sw_pg* %70, i64 %71
  store %struct.bnx2_sw_pg* %72, %struct.bnx2_sw_pg** %10, align 8
  %73 = load %struct.bnx2_rx_ring_info*, %struct.bnx2_rx_ring_info** %6, align 8
  %74 = getelementptr inbounds %struct.bnx2_rx_ring_info, %struct.bnx2_rx_ring_info* %73, i32 0, i32 3
  %75 = load %struct.bnx2_sw_pg*, %struct.bnx2_sw_pg** %74, align 8
  %76 = load i64, i64* %16, align 8
  %77 = getelementptr inbounds %struct.bnx2_sw_pg, %struct.bnx2_sw_pg* %75, i64 %76
  store %struct.bnx2_sw_pg* %77, %struct.bnx2_sw_pg** %9, align 8
  %78 = load %struct.bnx2_rx_ring_info*, %struct.bnx2_rx_ring_info** %6, align 8
  %79 = getelementptr inbounds %struct.bnx2_rx_ring_info, %struct.bnx2_rx_ring_info* %78, i32 0, i32 2
  %80 = load %struct.bnx2_rx_bd**, %struct.bnx2_rx_bd*** %79, align 8
  %81 = load i64, i64* %16, align 8
  %82 = call i64 @BNX2_RX_RING(i64 %81)
  %83 = getelementptr inbounds %struct.bnx2_rx_bd*, %struct.bnx2_rx_bd** %80, i64 %82
  %84 = load %struct.bnx2_rx_bd*, %struct.bnx2_rx_bd** %83, align 8
  %85 = load i64, i64* %16, align 8
  %86 = call i64 @BNX2_RX_IDX(i64 %85)
  %87 = getelementptr inbounds %struct.bnx2_rx_bd, %struct.bnx2_rx_bd* %84, i64 %86
  store %struct.bnx2_rx_bd* %87, %struct.bnx2_rx_bd** %11, align 8
  %88 = load %struct.bnx2_rx_ring_info*, %struct.bnx2_rx_ring_info** %6, align 8
  %89 = getelementptr inbounds %struct.bnx2_rx_ring_info, %struct.bnx2_rx_ring_info* %88, i32 0, i32 2
  %90 = load %struct.bnx2_rx_bd**, %struct.bnx2_rx_bd*** %89, align 8
  %91 = load i64, i64* %15, align 8
  %92 = call i64 @BNX2_RX_RING(i64 %91)
  %93 = getelementptr inbounds %struct.bnx2_rx_bd*, %struct.bnx2_rx_bd** %90, i64 %92
  %94 = load %struct.bnx2_rx_bd*, %struct.bnx2_rx_bd** %93, align 8
  %95 = load i64, i64* %15, align 8
  %96 = call i64 @BNX2_RX_IDX(i64 %95)
  %97 = getelementptr inbounds %struct.bnx2_rx_bd, %struct.bnx2_rx_bd* %94, i64 %96
  store %struct.bnx2_rx_bd* %97, %struct.bnx2_rx_bd** %12, align 8
  %98 = load i64, i64* %15, align 8
  %99 = load i64, i64* %16, align 8
  %100 = icmp ne i64 %98, %99
  br i1 %100, label %101, label %125

101:                                              ; preds = %65
  %102 = load %struct.bnx2_sw_pg*, %struct.bnx2_sw_pg** %9, align 8
  %103 = getelementptr inbounds %struct.bnx2_sw_pg, %struct.bnx2_sw_pg* %102, i32 0, i32 0
  %104 = load %struct.page*, %struct.page** %103, align 8
  %105 = load %struct.bnx2_sw_pg*, %struct.bnx2_sw_pg** %10, align 8
  %106 = getelementptr inbounds %struct.bnx2_sw_pg, %struct.bnx2_sw_pg* %105, i32 0, i32 0
  store %struct.page* %104, %struct.page** %106, align 8
  %107 = load %struct.bnx2_sw_pg*, %struct.bnx2_sw_pg** %9, align 8
  %108 = getelementptr inbounds %struct.bnx2_sw_pg, %struct.bnx2_sw_pg* %107, i32 0, i32 0
  store %struct.page* null, %struct.page** %108, align 8
  %109 = load %struct.bnx2_sw_pg*, %struct.bnx2_sw_pg** %10, align 8
  %110 = load i32, i32* @mapping, align 4
  %111 = load %struct.bnx2_sw_pg*, %struct.bnx2_sw_pg** %9, align 8
  %112 = load i32, i32* @mapping, align 4
  %113 = call i32 @dma_unmap_addr(%struct.bnx2_sw_pg* %111, i32 %112)
  %114 = call i32 @dma_unmap_addr_set(%struct.bnx2_sw_pg* %109, i32 %110, i32 %113)
  %115 = load %struct.bnx2_rx_bd*, %struct.bnx2_rx_bd** %11, align 8
  %116 = getelementptr inbounds %struct.bnx2_rx_bd, %struct.bnx2_rx_bd* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.bnx2_rx_bd*, %struct.bnx2_rx_bd** %12, align 8
  %119 = getelementptr inbounds %struct.bnx2_rx_bd, %struct.bnx2_rx_bd* %118, i32 0, i32 1
  store i32 %117, i32* %119, align 4
  %120 = load %struct.bnx2_rx_bd*, %struct.bnx2_rx_bd** %11, align 8
  %121 = getelementptr inbounds %struct.bnx2_rx_bd, %struct.bnx2_rx_bd* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.bnx2_rx_bd*, %struct.bnx2_rx_bd** %12, align 8
  %124 = getelementptr inbounds %struct.bnx2_rx_bd, %struct.bnx2_rx_bd* %123, i32 0, i32 0
  store i32 %122, i32* %124, align 4
  br label %125

125:                                              ; preds = %101, %65
  %126 = load i64, i64* %16, align 8
  %127 = call i64 @BNX2_NEXT_RX_BD(i64 %126)
  %128 = call i64 @BNX2_RX_PG_RING_IDX(i64 %127)
  store i64 %128, i64* %16, align 8
  %129 = load i64, i64* %14, align 8
  %130 = call i64 @BNX2_NEXT_RX_BD(i64 %129)
  store i64 %130, i64* %14, align 8
  br label %131

131:                                              ; preds = %125
  %132 = load i32, i32* %13, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %13, align 4
  br label %61

134:                                              ; preds = %61
  %135 = load i64, i64* %14, align 8
  %136 = load %struct.bnx2_rx_ring_info*, %struct.bnx2_rx_ring_info** %6, align 8
  %137 = getelementptr inbounds %struct.bnx2_rx_ring_info, %struct.bnx2_rx_ring_info* %136, i32 0, i32 1
  store i64 %135, i64* %137, align 8
  %138 = load i64, i64* %16, align 8
  %139 = load %struct.bnx2_rx_ring_info*, %struct.bnx2_rx_ring_info** %6, align 8
  %140 = getelementptr inbounds %struct.bnx2_rx_ring_info, %struct.bnx2_rx_ring_info* %139, i32 0, i32 0
  store i64 %138, i64* %140, align 8
  ret void
}

declare dso_local %struct.skb_shared_info* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local %struct.page* @skb_frag_page(i32*) #1

declare dso_local i32 @__skb_frag_set_page(i32*, i32*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i64 @BNX2_RX_PG_RING_IDX(i64) #1

declare dso_local i64 @BNX2_RX_RING(i64) #1

declare dso_local i64 @BNX2_RX_IDX(i64) #1

declare dso_local i32 @dma_unmap_addr_set(%struct.bnx2_sw_pg*, i32, i32) #1

declare dso_local i32 @dma_unmap_addr(%struct.bnx2_sw_pg*, i32) #1

declare dso_local i64 @BNX2_NEXT_RX_BD(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
