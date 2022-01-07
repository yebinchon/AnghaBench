; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa2/extr_dpaa2-eth.c_build_frag_skb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa2/extr_dpaa2-eth.c_build_frag_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.dpaa2_eth_priv = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.dpaa2_eth_channel = type { i32 }
%struct.dpaa2_sg_entry = type { i32 }
%struct.page = type { i32 }

@DPAA2_ETH_MAX_SG_ENTRIES = common dso_local global i32 0, align 4
@DPAA2_ETH_RX_BUF_SIZE = common dso_local global i32 0, align 4
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@DPAA2_ETH_RX_BUF_RAW_SIZE = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Final bit not set in SGT\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.dpaa2_eth_priv*, %struct.dpaa2_eth_channel*, %struct.dpaa2_sg_entry*)* @build_frag_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @build_frag_skb(%struct.dpaa2_eth_priv* %0, %struct.dpaa2_eth_channel* %1, %struct.dpaa2_sg_entry* %2) #0 {
  %4 = alloca %struct.dpaa2_eth_priv*, align 8
  %5 = alloca %struct.dpaa2_eth_channel*, align 8
  %6 = alloca %struct.dpaa2_sg_entry*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.page*, align 8
  %14 = alloca %struct.page*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.dpaa2_sg_entry*, align 8
  store %struct.dpaa2_eth_priv* %0, %struct.dpaa2_eth_priv** %4, align 8
  store %struct.dpaa2_eth_channel* %1, %struct.dpaa2_eth_channel** %5, align 8
  store %struct.dpaa2_sg_entry* %2, %struct.dpaa2_sg_entry** %6, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %7, align 8
  %18 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %4, align 8
  %19 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %18, i32 0, i32 1
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load %struct.device*, %struct.device** %22, align 8
  store %struct.device* %23, %struct.device** %8, align 8
  store i32 0, i32* %16, align 4
  br label %24

24:                                               ; preds = %121, %3
  %25 = load i32, i32* %16, align 4
  %26 = load i32, i32* @DPAA2_ETH_MAX_SG_ENTRIES, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %124

28:                                               ; preds = %24
  %29 = load %struct.dpaa2_sg_entry*, %struct.dpaa2_sg_entry** %6, align 8
  %30 = load i32, i32* %16, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.dpaa2_sg_entry, %struct.dpaa2_sg_entry* %29, i64 %31
  store %struct.dpaa2_sg_entry* %32, %struct.dpaa2_sg_entry** %17, align 8
  %33 = load %struct.dpaa2_sg_entry*, %struct.dpaa2_sg_entry** %17, align 8
  %34 = call i32 @dpaa2_sg_get_addr(%struct.dpaa2_sg_entry* %33)
  store i32 %34, i32* %10, align 4
  %35 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %4, align 8
  %36 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %10, align 4
  %39 = call i8* @dpaa2_iova_to_virt(i32 %37, i32 %38)
  store i8* %39, i8** %9, align 8
  %40 = load %struct.device*, %struct.device** %8, align 8
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* @DPAA2_ETH_RX_BUF_SIZE, align 4
  %43 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %44 = call i32 @dma_unmap_page(%struct.device* %40, i32 %41, i32 %42, i32 %43)
  %45 = load %struct.dpaa2_sg_entry*, %struct.dpaa2_sg_entry** %17, align 8
  %46 = call i32 @dpaa2_sg_get_len(%struct.dpaa2_sg_entry* %45)
  store i32 %46, i32* %12, align 4
  %47 = load i32, i32* %16, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %89

49:                                               ; preds = %28
  %50 = load i8*, i8** %9, align 8
  %51 = load i32, i32* @DPAA2_ETH_RX_BUF_RAW_SIZE, align 4
  %52 = call %struct.sk_buff* @build_skb(i8* %50, i32 %51)
  store %struct.sk_buff* %52, %struct.sk_buff** %7, align 8
  %53 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %54 = icmp ne %struct.sk_buff* %53, null
  %55 = xor i1 %54, true
  %56 = zext i1 %55 to i32
  %57 = call i64 @unlikely(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %80

59:                                               ; preds = %49
  %60 = load i8*, i8** %9, align 8
  %61 = ptrtoint i8* %60 to i64
  %62 = call i32 @free_pages(i64 %61, i32 0)
  br label %63

63:                                               ; preds = %76, %59
  %64 = load %struct.dpaa2_sg_entry*, %struct.dpaa2_sg_entry** %6, align 8
  %65 = load i32, i32* %16, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.dpaa2_sg_entry, %struct.dpaa2_sg_entry* %64, i64 %66
  %68 = call i64 @dpaa2_sg_is_final(%struct.dpaa2_sg_entry* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %74, label %70

70:                                               ; preds = %63
  %71 = load i32, i32* %16, align 4
  %72 = load i32, i32* @DPAA2_ETH_MAX_SG_ENTRIES, align 4
  %73 = icmp slt i32 %71, %72
  br label %74

74:                                               ; preds = %70, %63
  %75 = phi i1 [ false, %63 ], [ %73, %70 ]
  br i1 %75, label %76, label %79

76:                                               ; preds = %74
  %77 = load i32, i32* %16, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %16, align 4
  br label %63

79:                                               ; preds = %74
  br label %124

80:                                               ; preds = %49
  %81 = load %struct.dpaa2_sg_entry*, %struct.dpaa2_sg_entry** %17, align 8
  %82 = call i32 @dpaa2_sg_get_offset(%struct.dpaa2_sg_entry* %81)
  store i32 %82, i32* %11, align 4
  %83 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %84 = load i32, i32* %11, align 4
  %85 = call i32 @skb_reserve(%struct.sk_buff* %83, i32 %84)
  %86 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %87 = load i32, i32* %12, align 4
  %88 = call i32 @skb_put(%struct.sk_buff* %86, i32 %87)
  br label %115

89:                                               ; preds = %28
  %90 = load i8*, i8** %9, align 8
  %91 = call %struct.page* @virt_to_page(i8* %90)
  store %struct.page* %91, %struct.page** %13, align 8
  %92 = load i8*, i8** %9, align 8
  %93 = call %struct.page* @virt_to_head_page(i8* %92)
  store %struct.page* %93, %struct.page** %14, align 8
  %94 = load i8*, i8** %9, align 8
  %95 = ptrtoint i8* %94 to i64
  %96 = load i32, i32* @PAGE_SIZE, align 4
  %97 = sub nsw i32 %96, 1
  %98 = sext i32 %97 to i64
  %99 = and i64 %95, %98
  %100 = load %struct.page*, %struct.page** %13, align 8
  %101 = call i64 @page_address(%struct.page* %100)
  %102 = load %struct.page*, %struct.page** %14, align 8
  %103 = call i64 @page_address(%struct.page* %102)
  %104 = sub i64 %101, %103
  %105 = add i64 %99, %104
  %106 = trunc i64 %105 to i32
  store i32 %106, i32* %15, align 4
  %107 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %108 = load i32, i32* %16, align 4
  %109 = sub nsw i32 %108, 1
  %110 = load %struct.page*, %struct.page** %14, align 8
  %111 = load i32, i32* %15, align 4
  %112 = load i32, i32* %12, align 4
  %113 = load i32, i32* @DPAA2_ETH_RX_BUF_SIZE, align 4
  %114 = call i32 @skb_add_rx_frag(%struct.sk_buff* %107, i32 %109, %struct.page* %110, i32 %111, i32 %112, i32 %113)
  br label %115

115:                                              ; preds = %89, %80
  %116 = load %struct.dpaa2_sg_entry*, %struct.dpaa2_sg_entry** %17, align 8
  %117 = call i64 @dpaa2_sg_is_final(%struct.dpaa2_sg_entry* %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %115
  br label %124

120:                                              ; preds = %115
  br label %121

121:                                              ; preds = %120
  %122 = load i32, i32* %16, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %16, align 4
  br label %24

124:                                              ; preds = %119, %79, %24
  %125 = load i32, i32* %16, align 4
  %126 = load i32, i32* @DPAA2_ETH_MAX_SG_ENTRIES, align 4
  %127 = icmp eq i32 %125, %126
  %128 = zext i1 %127 to i32
  %129 = call i32 @WARN_ONCE(i32 %128, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %130 = load i32, i32* %16, align 4
  %131 = add nsw i32 %130, 2
  %132 = load %struct.dpaa2_eth_channel*, %struct.dpaa2_eth_channel** %5, align 8
  %133 = getelementptr inbounds %struct.dpaa2_eth_channel, %struct.dpaa2_eth_channel* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = sub nsw i32 %134, %131
  store i32 %135, i32* %133, align 4
  %136 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  ret %struct.sk_buff* %136
}

declare dso_local i32 @dpaa2_sg_get_addr(%struct.dpaa2_sg_entry*) #1

declare dso_local i8* @dpaa2_iova_to_virt(i32, i32) #1

declare dso_local i32 @dma_unmap_page(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @dpaa2_sg_get_len(%struct.dpaa2_sg_entry*) #1

declare dso_local %struct.sk_buff* @build_skb(i8*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @free_pages(i64, i32) #1

declare dso_local i64 @dpaa2_sg_is_final(%struct.dpaa2_sg_entry*) #1

declare dso_local i32 @dpaa2_sg_get_offset(%struct.dpaa2_sg_entry*) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local %struct.page* @virt_to_page(i8*) #1

declare dso_local %struct.page* @virt_to_head_page(i8*) #1

declare dso_local i64 @page_address(%struct.page*) #1

declare dso_local i32 @skb_add_rx_frag(%struct.sk_buff*, i32, %struct.page*, i32, i32, i32) #1

declare dso_local i32 @WARN_ONCE(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
