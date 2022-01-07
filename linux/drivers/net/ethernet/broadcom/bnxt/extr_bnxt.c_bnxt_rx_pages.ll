; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_rx_pages.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_rx_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt = type { i32, %struct.pci_dev* }
%struct.pci_dev = type { i32 }
%struct.bnxt_cp_ring_info = type { %struct.bnxt_napi* }
%struct.bnxt_napi = type { %struct.bnxt_rx_ring_info* }
%struct.bnxt_rx_ring_info = type { i64, i32, %struct.bnxt_sw_rx_agg_bd* }
%struct.bnxt_sw_rx_agg_bd = type { %struct.page*, i32, i32 }
%struct.page = type { i32 }
%struct.sk_buff = type { i64, i64, i32 }
%struct.rx_agg_cmp = type { i64, i32 }
%struct.skb_shared_info = type { i32, i32* }

@BNXT_FLAG_CHIP_P5 = common dso_local global i32 0, align 4
@RX_AGG_CMP_LEN = common dso_local global i64 0, align 8
@RX_AGG_CMP_LEN_SHIFT = common dso_local global i64 0, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@BNXT_RX_PAGE_SIZE = common dso_local global i32 0, align 4
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@DMA_ATTR_WEAK_ORDERING = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.bnxt*, %struct.bnxt_cp_ring_info*, %struct.sk_buff*, i64, i64, i32)* @bnxt_rx_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @bnxt_rx_pages(%struct.bnxt* %0, %struct.bnxt_cp_ring_info* %1, %struct.sk_buff* %2, i64 %3, i64 %4, i32 %5) #0 {
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.bnxt*, align 8
  %9 = alloca %struct.bnxt_cp_ring_info*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.bnxt_napi*, align 8
  %15 = alloca %struct.pci_dev*, align 8
  %16 = alloca %struct.bnxt_rx_ring_info*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca %struct.rx_agg_cmp*, align 8
  %23 = alloca %struct.bnxt_sw_rx_agg_bd*, align 8
  %24 = alloca %struct.page*, align 8
  %25 = alloca i32, align 4
  %26 = alloca %struct.skb_shared_info*, align 8
  %27 = alloca i32, align 4
  store %struct.bnxt* %0, %struct.bnxt** %8, align 8
  store %struct.bnxt_cp_ring_info* %1, %struct.bnxt_cp_ring_info** %9, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  %28 = load %struct.bnxt_cp_ring_info*, %struct.bnxt_cp_ring_info** %9, align 8
  %29 = getelementptr inbounds %struct.bnxt_cp_ring_info, %struct.bnxt_cp_ring_info* %28, i32 0, i32 0
  %30 = load %struct.bnxt_napi*, %struct.bnxt_napi** %29, align 8
  store %struct.bnxt_napi* %30, %struct.bnxt_napi** %14, align 8
  %31 = load %struct.bnxt*, %struct.bnxt** %8, align 8
  %32 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %31, i32 0, i32 1
  %33 = load %struct.pci_dev*, %struct.pci_dev** %32, align 8
  store %struct.pci_dev* %33, %struct.pci_dev** %15, align 8
  %34 = load %struct.bnxt_napi*, %struct.bnxt_napi** %14, align 8
  %35 = getelementptr inbounds %struct.bnxt_napi, %struct.bnxt_napi* %34, i32 0, i32 0
  %36 = load %struct.bnxt_rx_ring_info*, %struct.bnxt_rx_ring_info** %35, align 8
  store %struct.bnxt_rx_ring_info* %36, %struct.bnxt_rx_ring_info** %16, align 8
  %37 = load %struct.bnxt_rx_ring_info*, %struct.bnxt_rx_ring_info** %16, align 8
  %38 = getelementptr inbounds %struct.bnxt_rx_ring_info, %struct.bnxt_rx_ring_info* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %17, align 8
  store i32 0, i32* %18, align 4
  %40 = load %struct.bnxt*, %struct.bnxt** %8, align 8
  %41 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @BNXT_FLAG_CHIP_P5, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %6
  %47 = load i32, i32* %13, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %46
  store i32 1, i32* %18, align 4
  br label %50

50:                                               ; preds = %49, %46, %6
  store i64 0, i64* %19, align 8
  br label %51

51:                                               ; preds = %173, %50
  %52 = load i64, i64* %19, align 8
  %53 = load i64, i64* %12, align 8
  %54 = icmp slt i64 %52, %53
  br i1 %54, label %55, label %176

55:                                               ; preds = %51
  %56 = load i32, i32* %18, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %55
  %59 = load %struct.bnxt*, %struct.bnxt** %8, align 8
  %60 = load %struct.bnxt_rx_ring_info*, %struct.bnxt_rx_ring_info** %16, align 8
  %61 = load i64, i64* %11, align 8
  %62 = load i64, i64* %19, align 8
  %63 = call %struct.rx_agg_cmp* @bnxt_get_tpa_agg_p5(%struct.bnxt* %59, %struct.bnxt_rx_ring_info* %60, i64 %61, i64 %62)
  store %struct.rx_agg_cmp* %63, %struct.rx_agg_cmp** %22, align 8
  br label %70

64:                                               ; preds = %55
  %65 = load %struct.bnxt*, %struct.bnxt** %8, align 8
  %66 = load %struct.bnxt_cp_ring_info*, %struct.bnxt_cp_ring_info** %9, align 8
  %67 = load i64, i64* %11, align 8
  %68 = load i64, i64* %19, align 8
  %69 = call %struct.rx_agg_cmp* @bnxt_get_agg(%struct.bnxt* %65, %struct.bnxt_cp_ring_info* %66, i64 %67, i64 %68)
  store %struct.rx_agg_cmp* %69, %struct.rx_agg_cmp** %22, align 8
  br label %70

70:                                               ; preds = %64, %58
  %71 = load %struct.rx_agg_cmp*, %struct.rx_agg_cmp** %22, align 8
  %72 = getelementptr inbounds %struct.rx_agg_cmp, %struct.rx_agg_cmp* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  store i64 %73, i64* %20, align 8
  %74 = load %struct.rx_agg_cmp*, %struct.rx_agg_cmp** %22, align 8
  %75 = getelementptr inbounds %struct.rx_agg_cmp, %struct.rx_agg_cmp* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = call i64 @le32_to_cpu(i32 %76)
  %78 = load i64, i64* @RX_AGG_CMP_LEN, align 8
  %79 = and i64 %77, %78
  %80 = load i64, i64* @RX_AGG_CMP_LEN_SHIFT, align 8
  %81 = lshr i64 %79, %80
  store i64 %81, i64* %21, align 8
  %82 = load %struct.bnxt_rx_ring_info*, %struct.bnxt_rx_ring_info** %16, align 8
  %83 = getelementptr inbounds %struct.bnxt_rx_ring_info, %struct.bnxt_rx_ring_info* %82, i32 0, i32 2
  %84 = load %struct.bnxt_sw_rx_agg_bd*, %struct.bnxt_sw_rx_agg_bd** %83, align 8
  %85 = load i64, i64* %20, align 8
  %86 = getelementptr inbounds %struct.bnxt_sw_rx_agg_bd, %struct.bnxt_sw_rx_agg_bd* %84, i64 %85
  store %struct.bnxt_sw_rx_agg_bd* %86, %struct.bnxt_sw_rx_agg_bd** %23, align 8
  %87 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %88 = load i64, i64* %19, align 8
  %89 = load %struct.bnxt_sw_rx_agg_bd*, %struct.bnxt_sw_rx_agg_bd** %23, align 8
  %90 = getelementptr inbounds %struct.bnxt_sw_rx_agg_bd, %struct.bnxt_sw_rx_agg_bd* %89, i32 0, i32 0
  %91 = load %struct.page*, %struct.page** %90, align 8
  %92 = load %struct.bnxt_sw_rx_agg_bd*, %struct.bnxt_sw_rx_agg_bd** %23, align 8
  %93 = getelementptr inbounds %struct.bnxt_sw_rx_agg_bd, %struct.bnxt_sw_rx_agg_bd* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = load i64, i64* %21, align 8
  %96 = call i32 @skb_fill_page_desc(%struct.sk_buff* %87, i64 %88, %struct.page* %91, i32 %94, i64 %95)
  %97 = load i64, i64* %20, align 8
  %98 = load %struct.bnxt_rx_ring_info*, %struct.bnxt_rx_ring_info** %16, align 8
  %99 = getelementptr inbounds %struct.bnxt_rx_ring_info, %struct.bnxt_rx_ring_info* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @__clear_bit(i64 %97, i32 %100)
  %102 = load %struct.bnxt_sw_rx_agg_bd*, %struct.bnxt_sw_rx_agg_bd** %23, align 8
  %103 = getelementptr inbounds %struct.bnxt_sw_rx_agg_bd, %struct.bnxt_sw_rx_agg_bd* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  store i32 %104, i32* %25, align 4
  %105 = load %struct.bnxt_sw_rx_agg_bd*, %struct.bnxt_sw_rx_agg_bd** %23, align 8
  %106 = getelementptr inbounds %struct.bnxt_sw_rx_agg_bd, %struct.bnxt_sw_rx_agg_bd* %105, i32 0, i32 0
  %107 = load %struct.page*, %struct.page** %106, align 8
  store %struct.page* %107, %struct.page** %24, align 8
  %108 = load %struct.bnxt_sw_rx_agg_bd*, %struct.bnxt_sw_rx_agg_bd** %23, align 8
  %109 = getelementptr inbounds %struct.bnxt_sw_rx_agg_bd, %struct.bnxt_sw_rx_agg_bd* %108, i32 0, i32 0
  store %struct.page* null, %struct.page** %109, align 8
  %110 = load %struct.bnxt*, %struct.bnxt** %8, align 8
  %111 = load %struct.bnxt_rx_ring_info*, %struct.bnxt_rx_ring_info** %16, align 8
  %112 = load i64, i64* %17, align 8
  %113 = load i32, i32* @GFP_ATOMIC, align 4
  %114 = call i64 @bnxt_alloc_rx_page(%struct.bnxt* %110, %struct.bnxt_rx_ring_info* %111, i64 %112, i32 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %146

116:                                              ; preds = %70
  %117 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %118 = call %struct.skb_shared_info* @skb_shinfo(%struct.sk_buff* %117)
  store %struct.skb_shared_info* %118, %struct.skb_shared_info** %26, align 8
  %119 = load %struct.skb_shared_info*, %struct.skb_shared_info** %26, align 8
  %120 = getelementptr inbounds %struct.skb_shared_info, %struct.skb_shared_info* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = add i32 %121, -1
  store i32 %122, i32* %120, align 8
  store i32 %122, i32* %27, align 4
  %123 = load %struct.skb_shared_info*, %struct.skb_shared_info** %26, align 8
  %124 = getelementptr inbounds %struct.skb_shared_info, %struct.skb_shared_info* %123, i32 0, i32 1
  %125 = load i32*, i32** %124, align 8
  %126 = load i32, i32* %27, align 4
  %127 = zext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %125, i64 %127
  %129 = call i32 @__skb_frag_set_page(i32* %128, i32* null)
  %130 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %131 = call i32 @dev_kfree_skb(%struct.sk_buff* %130)
  %132 = load %struct.page*, %struct.page** %24, align 8
  %133 = load %struct.bnxt_sw_rx_agg_bd*, %struct.bnxt_sw_rx_agg_bd** %23, align 8
  %134 = getelementptr inbounds %struct.bnxt_sw_rx_agg_bd, %struct.bnxt_sw_rx_agg_bd* %133, i32 0, i32 0
  store %struct.page* %132, %struct.page** %134, align 8
  %135 = load i64, i64* %17, align 8
  %136 = load %struct.bnxt_rx_ring_info*, %struct.bnxt_rx_ring_info** %16, align 8
  %137 = getelementptr inbounds %struct.bnxt_rx_ring_info, %struct.bnxt_rx_ring_info* %136, i32 0, i32 0
  store i64 %135, i64* %137, align 8
  %138 = load %struct.bnxt_cp_ring_info*, %struct.bnxt_cp_ring_info** %9, align 8
  %139 = load i64, i64* %11, align 8
  %140 = load i64, i64* %19, align 8
  %141 = load i64, i64* %12, align 8
  %142 = load i64, i64* %19, align 8
  %143 = sub nsw i64 %141, %142
  %144 = load i32, i32* %13, align 4
  %145 = call i32 @bnxt_reuse_rx_agg_bufs(%struct.bnxt_cp_ring_info* %138, i64 %139, i64 %140, i64 %143, i32 %144)
  store %struct.sk_buff* null, %struct.sk_buff** %7, align 8
  br label %181

146:                                              ; preds = %70
  %147 = load %struct.pci_dev*, %struct.pci_dev** %15, align 8
  %148 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %147, i32 0, i32 0
  %149 = load i32, i32* %25, align 4
  %150 = load i32, i32* @BNXT_RX_PAGE_SIZE, align 4
  %151 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %152 = load i32, i32* @DMA_ATTR_WEAK_ORDERING, align 4
  %153 = call i32 @dma_unmap_page_attrs(i32* %148, i32 %149, i32 %150, i32 %151, i32 %152)
  %154 = load i64, i64* %21, align 8
  %155 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %156 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = add i64 %157, %154
  store i64 %158, i64* %156, align 8
  %159 = load i64, i64* %21, align 8
  %160 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %161 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %160, i32 0, i32 1
  %162 = load i64, i64* %161, align 8
  %163 = add i64 %162, %159
  store i64 %163, i64* %161, align 8
  %164 = load i64, i64* @PAGE_SIZE, align 8
  %165 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %166 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 8
  %168 = sext i32 %167 to i64
  %169 = add nsw i64 %168, %164
  %170 = trunc i64 %169 to i32
  store i32 %170, i32* %166, align 8
  %171 = load i64, i64* %17, align 8
  %172 = call i64 @NEXT_RX_AGG(i64 %171)
  store i64 %172, i64* %17, align 8
  br label %173

173:                                              ; preds = %146
  %174 = load i64, i64* %19, align 8
  %175 = add nsw i64 %174, 1
  store i64 %175, i64* %19, align 8
  br label %51

176:                                              ; preds = %51
  %177 = load i64, i64* %17, align 8
  %178 = load %struct.bnxt_rx_ring_info*, %struct.bnxt_rx_ring_info** %16, align 8
  %179 = getelementptr inbounds %struct.bnxt_rx_ring_info, %struct.bnxt_rx_ring_info* %178, i32 0, i32 0
  store i64 %177, i64* %179, align 8
  %180 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  store %struct.sk_buff* %180, %struct.sk_buff** %7, align 8
  br label %181

181:                                              ; preds = %176, %116
  %182 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  ret %struct.sk_buff* %182
}

declare dso_local %struct.rx_agg_cmp* @bnxt_get_tpa_agg_p5(%struct.bnxt*, %struct.bnxt_rx_ring_info*, i64, i64) #1

declare dso_local %struct.rx_agg_cmp* @bnxt_get_agg(%struct.bnxt*, %struct.bnxt_cp_ring_info*, i64, i64) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @skb_fill_page_desc(%struct.sk_buff*, i64, %struct.page*, i32, i64) #1

declare dso_local i32 @__clear_bit(i64, i32) #1

declare dso_local i64 @bnxt_alloc_rx_page(%struct.bnxt*, %struct.bnxt_rx_ring_info*, i64, i32) #1

declare dso_local %struct.skb_shared_info* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @__skb_frag_set_page(i32*, i32*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @bnxt_reuse_rx_agg_bufs(%struct.bnxt_cp_ring_info*, i64, i64, i64, i32) #1

declare dso_local i32 @dma_unmap_page_attrs(i32*, i32, i32, i32, i32) #1

declare dso_local i64 @NEXT_RX_AGG(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
