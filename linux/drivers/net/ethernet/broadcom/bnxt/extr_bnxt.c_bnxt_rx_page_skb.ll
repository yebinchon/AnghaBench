; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_rx_page_skb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_rx_page_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32, i32 }
%struct.bnxt = type { i32, i32, %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.bnxt_rx_ring_info = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.page = type { i32 }
%struct.TYPE_6__ = type { i32* }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@DMA_ATTR_WEAK_ORDERING = common dso_local global i32 0, align 4
@NET_IP_ALIGN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.bnxt*, %struct.bnxt_rx_ring_info*, i32, i8*, i32*, i32, i32)* @bnxt_rx_page_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @bnxt_rx_page_skb(%struct.bnxt* %0, %struct.bnxt_rx_ring_info* %1, i32 %2, i8* %3, i32* %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.bnxt*, align 8
  %10 = alloca %struct.bnxt_rx_ring_info*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca %struct.page*, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.sk_buff*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.bnxt* %0, %struct.bnxt** %9, align 8
  store %struct.bnxt_rx_ring_info* %1, %struct.bnxt_rx_ring_info** %10, align 8
  store i32 %2, i32* %11, align 4
  store i8* %3, i8** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %24 = load i32, i32* %15, align 4
  %25 = lshr i32 %24, 16
  store i32 %25, i32* %16, align 4
  %26 = load i32, i32* %15, align 4
  %27 = and i32 %26, 65535
  store i32 %27, i32* %17, align 4
  %28 = load i8*, i8** %12, align 8
  %29 = bitcast i8* %28 to %struct.page*
  store %struct.page* %29, %struct.page** %19, align 8
  %30 = load %struct.bnxt_rx_ring_info*, %struct.bnxt_rx_ring_info** %10, align 8
  %31 = getelementptr inbounds %struct.bnxt_rx_ring_info, %struct.bnxt_rx_ring_info* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %20, align 4
  %33 = load %struct.bnxt*, %struct.bnxt** %9, align 8
  %34 = load %struct.bnxt_rx_ring_info*, %struct.bnxt_rx_ring_info** %10, align 8
  %35 = load i32, i32* %20, align 4
  %36 = load i32, i32* @GFP_ATOMIC, align 4
  %37 = call i32 @bnxt_alloc_rx_data(%struct.bnxt* %33, %struct.bnxt_rx_ring_info* %34, i32 %35, i32 %36)
  store i32 %37, i32* %23, align 4
  %38 = load i32, i32* %23, align 4
  %39 = call i64 @unlikely(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %7
  %42 = load %struct.bnxt_rx_ring_info*, %struct.bnxt_rx_ring_info** %10, align 8
  %43 = load i32, i32* %11, align 4
  %44 = load i8*, i8** %12, align 8
  %45 = call i32 @bnxt_reuse_rx_data(%struct.bnxt_rx_ring_info* %42, i32 %43, i8* %44)
  store %struct.sk_buff* null, %struct.sk_buff** %8, align 8
  br label %141

46:                                               ; preds = %7
  %47 = load %struct.bnxt*, %struct.bnxt** %9, align 8
  %48 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %47, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  %50 = load i32, i32* %14, align 4
  %51 = sext i32 %50 to i64
  %52 = sub nsw i64 %51, %49
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %14, align 4
  %54 = load %struct.bnxt*, %struct.bnxt** %9, align 8
  %55 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %54, i32 0, i32 2
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* %14, align 4
  %59 = load i32, i32* @PAGE_SIZE, align 4
  %60 = load %struct.bnxt*, %struct.bnxt** %9, align 8
  %61 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @DMA_ATTR_WEAK_ORDERING, align 4
  %64 = call i32 @dma_unmap_page_attrs(i32* %57, i32 %58, i32 %59, i32 %62, i32 %63)
  %65 = load i32, i32* %16, align 4
  %66 = icmp ne i32 %65, 0
  %67 = xor i1 %66, true
  %68 = zext i1 %67 to i32
  %69 = call i64 @unlikely(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %46
  %72 = load %struct.bnxt*, %struct.bnxt** %9, align 8
  %73 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32*, i32** %13, align 8
  %76 = load i32, i32* %17, align 4
  %77 = call i32 @eth_get_headlen(i32 %74, i32* %75, i32 %76)
  store i32 %77, i32* %16, align 4
  br label %78

78:                                               ; preds = %71, %46
  %79 = load %struct.bnxt_rx_ring_info*, %struct.bnxt_rx_ring_info** %10, align 8
  %80 = getelementptr inbounds %struct.bnxt_rx_ring_info, %struct.bnxt_rx_ring_info* %79, i32 0, i32 0
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  %83 = load i32, i32* %16, align 4
  %84 = call %struct.sk_buff* @napi_alloc_skb(i32* %82, i32 %83)
  store %struct.sk_buff* %84, %struct.sk_buff** %21, align 8
  %85 = load %struct.sk_buff*, %struct.sk_buff** %21, align 8
  %86 = icmp ne %struct.sk_buff* %85, null
  br i1 %86, label %90, label %87

87:                                               ; preds = %78
  %88 = load %struct.page*, %struct.page** %19, align 8
  %89 = call i32 @__free_page(%struct.page* %88)
  store %struct.sk_buff* null, %struct.sk_buff** %8, align 8
  br label %141

90:                                               ; preds = %78
  %91 = load i32*, i32** %13, align 8
  %92 = bitcast i32* %91 to i8*
  %93 = load %struct.page*, %struct.page** %19, align 8
  %94 = call i8* @page_address(%struct.page* %93)
  %95 = ptrtoint i8* %92 to i64
  %96 = ptrtoint i8* %94 to i64
  %97 = sub i64 %95, %96
  %98 = trunc i64 %97 to i32
  store i32 %98, i32* %22, align 4
  %99 = load %struct.sk_buff*, %struct.sk_buff** %21, align 8
  %100 = load %struct.page*, %struct.page** %19, align 8
  %101 = load i32, i32* %22, align 4
  %102 = load i32, i32* %17, align 4
  %103 = load i32, i32* @PAGE_SIZE, align 4
  %104 = call i32 @skb_add_rx_frag(%struct.sk_buff* %99, i32 0, %struct.page* %100, i32 %101, i32 %102, i32 %103)
  %105 = load %struct.sk_buff*, %struct.sk_buff** %21, align 8
  %106 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @NET_IP_ALIGN, align 4
  %109 = sub nsw i32 %107, %108
  %110 = load i32*, i32** %13, align 8
  %111 = load i32, i32* @NET_IP_ALIGN, align 4
  %112 = sext i32 %111 to i64
  %113 = sub i64 0, %112
  %114 = getelementptr inbounds i32, i32* %110, i64 %113
  %115 = load i32, i32* %16, align 4
  %116 = load i32, i32* @NET_IP_ALIGN, align 4
  %117 = add i32 %115, %116
  %118 = call i32 @memcpy(i32 %109, i32* %114, i32 %117)
  %119 = load %struct.sk_buff*, %struct.sk_buff** %21, align 8
  %120 = call %struct.TYPE_6__* @skb_shinfo(%struct.sk_buff* %119)
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 0
  %122 = load i32*, i32** %121, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 0
  store i32* %123, i32** %18, align 8
  %124 = load i32*, i32** %18, align 8
  %125 = load i32, i32* %16, align 4
  %126 = call i32 @skb_frag_size_sub(i32* %124, i32 %125)
  %127 = load i32*, i32** %18, align 8
  %128 = load i32, i32* %16, align 4
  %129 = call i32 @skb_frag_off_add(i32* %127, i32 %128)
  %130 = load i32, i32* %16, align 4
  %131 = load %struct.sk_buff*, %struct.sk_buff** %21, align 8
  %132 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = sub i32 %133, %130
  store i32 %134, i32* %132, align 4
  %135 = load i32, i32* %16, align 4
  %136 = load %struct.sk_buff*, %struct.sk_buff** %21, align 8
  %137 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 4
  %139 = add i32 %138, %135
  store i32 %139, i32* %137, align 4
  %140 = load %struct.sk_buff*, %struct.sk_buff** %21, align 8
  store %struct.sk_buff* %140, %struct.sk_buff** %8, align 8
  br label %141

141:                                              ; preds = %90, %87, %41
  %142 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  ret %struct.sk_buff* %142
}

declare dso_local i32 @bnxt_alloc_rx_data(%struct.bnxt*, %struct.bnxt_rx_ring_info*, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @bnxt_reuse_rx_data(%struct.bnxt_rx_ring_info*, i32, i8*) #1

declare dso_local i32 @dma_unmap_page_attrs(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @eth_get_headlen(i32, i32*, i32) #1

declare dso_local %struct.sk_buff* @napi_alloc_skb(i32*, i32) #1

declare dso_local i32 @__free_page(%struct.page*) #1

declare dso_local i8* @page_address(%struct.page*) #1

declare dso_local i32 @skb_add_rx_frag(%struct.sk_buff*, i32, %struct.page*, i32, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local %struct.TYPE_6__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @skb_frag_size_sub(i32*, i32) #1

declare dso_local i32 @skb_frag_off_add(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
