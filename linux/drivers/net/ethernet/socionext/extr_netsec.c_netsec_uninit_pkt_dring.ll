; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/socionext/extr_netsec.c_netsec_uninit_pkt_dring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/socionext/extr_netsec.c_netsec_uninit_pkt_dring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netsec_priv = type { i32, i32, %struct.netsec_desc_ring* }
%struct.netsec_desc_ring = type { i64, i64, %struct.netsec_desc*, %struct.netsec_desc*, i32, i32 }
%struct.netsec_desc = type { i32, i32, i32, i32 }
%struct.page = type { i32 }

@DESC_NUM = common dso_local global i64 0, align 8
@NETSEC_RING_RX = common dso_local global i32 0, align 4
@NETSEC_RING_TX = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@DESC_SZ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.netsec_priv*, i32)* @netsec_uninit_pkt_dring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @netsec_uninit_pkt_dring(%struct.netsec_priv* %0, i32 %1) #0 {
  %3 = alloca %struct.netsec_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.netsec_desc_ring*, align 8
  %6 = alloca %struct.netsec_desc*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.page*, align 8
  store %struct.netsec_priv* %0, %struct.netsec_priv** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.netsec_priv*, %struct.netsec_priv** %3, align 8
  %10 = getelementptr inbounds %struct.netsec_priv, %struct.netsec_priv* %9, i32 0, i32 2
  %11 = load %struct.netsec_desc_ring*, %struct.netsec_desc_ring** %10, align 8
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.netsec_desc_ring, %struct.netsec_desc_ring* %11, i64 %13
  store %struct.netsec_desc_ring* %14, %struct.netsec_desc_ring** %5, align 8
  %15 = load %struct.netsec_desc_ring*, %struct.netsec_desc_ring** %5, align 8
  %16 = getelementptr inbounds %struct.netsec_desc_ring, %struct.netsec_desc_ring* %15, i32 0, i32 2
  %17 = load %struct.netsec_desc*, %struct.netsec_desc** %16, align 8
  %18 = icmp ne %struct.netsec_desc* %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %2
  %20 = load %struct.netsec_desc_ring*, %struct.netsec_desc_ring** %5, align 8
  %21 = getelementptr inbounds %struct.netsec_desc_ring, %struct.netsec_desc_ring* %20, i32 0, i32 3
  %22 = load %struct.netsec_desc*, %struct.netsec_desc** %21, align 8
  %23 = icmp ne %struct.netsec_desc* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %19, %2
  br label %124

25:                                               ; preds = %19
  store i64 0, i64* %7, align 8
  br label %26

26:                                               ; preds = %77, %25
  %27 = load i64, i64* %7, align 8
  %28 = load i64, i64* @DESC_NUM, align 8
  %29 = icmp ult i64 %27, %28
  br i1 %29, label %30, label %80

30:                                               ; preds = %26
  %31 = load %struct.netsec_desc_ring*, %struct.netsec_desc_ring** %5, align 8
  %32 = getelementptr inbounds %struct.netsec_desc_ring, %struct.netsec_desc_ring* %31, i32 0, i32 3
  %33 = load %struct.netsec_desc*, %struct.netsec_desc** %32, align 8
  %34 = load i64, i64* %7, align 8
  %35 = getelementptr inbounds %struct.netsec_desc, %struct.netsec_desc* %33, i64 %34
  store %struct.netsec_desc* %35, %struct.netsec_desc** %6, align 8
  %36 = load %struct.netsec_desc*, %struct.netsec_desc** %6, align 8
  %37 = getelementptr inbounds %struct.netsec_desc, %struct.netsec_desc* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %30
  br label %77

41:                                               ; preds = %30
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* @NETSEC_RING_RX, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %55

45:                                               ; preds = %41
  %46 = load %struct.netsec_desc*, %struct.netsec_desc** %6, align 8
  %47 = getelementptr inbounds %struct.netsec_desc, %struct.netsec_desc* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = call %struct.page* @virt_to_page(i32 %48)
  store %struct.page* %49, %struct.page** %8, align 8
  %50 = load %struct.netsec_desc_ring*, %struct.netsec_desc_ring** %5, align 8
  %51 = getelementptr inbounds %struct.netsec_desc_ring, %struct.netsec_desc_ring* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.page*, %struct.page** %8, align 8
  %54 = call i32 @page_pool_put_page(i32 %52, %struct.page* %53, i32 0)
  br label %76

55:                                               ; preds = %41
  %56 = load i32, i32* %4, align 4
  %57 = load i32, i32* @NETSEC_RING_TX, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %75

59:                                               ; preds = %55
  %60 = load %struct.netsec_priv*, %struct.netsec_priv** %3, align 8
  %61 = getelementptr inbounds %struct.netsec_priv, %struct.netsec_priv* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.netsec_desc*, %struct.netsec_desc** %6, align 8
  %64 = getelementptr inbounds %struct.netsec_desc, %struct.netsec_desc* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.netsec_desc*, %struct.netsec_desc** %6, align 8
  %67 = getelementptr inbounds %struct.netsec_desc, %struct.netsec_desc* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @DMA_TO_DEVICE, align 4
  %70 = call i32 @dma_unmap_single(i32 %62, i32 %65, i32 %68, i32 %69)
  %71 = load %struct.netsec_desc*, %struct.netsec_desc** %6, align 8
  %72 = getelementptr inbounds %struct.netsec_desc, %struct.netsec_desc* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @dev_kfree_skb(i32 %73)
  br label %75

75:                                               ; preds = %59, %55
  br label %76

76:                                               ; preds = %75, %45
  br label %77

77:                                               ; preds = %76, %40
  %78 = load i64, i64* %7, align 8
  %79 = add i64 %78, 1
  store i64 %79, i64* %7, align 8
  br label %26

80:                                               ; preds = %26
  %81 = load i32, i32* %4, align 4
  %82 = load i32, i32* @NETSEC_RING_RX, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %98

84:                                               ; preds = %80
  %85 = load %struct.netsec_desc_ring*, %struct.netsec_desc_ring** %5, align 8
  %86 = getelementptr inbounds %struct.netsec_desc_ring, %struct.netsec_desc_ring* %85, i32 0, i32 5
  %87 = call i64 @xdp_rxq_info_is_reg(i32* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %84
  %90 = load %struct.netsec_desc_ring*, %struct.netsec_desc_ring** %5, align 8
  %91 = getelementptr inbounds %struct.netsec_desc_ring, %struct.netsec_desc_ring* %90, i32 0, i32 5
  %92 = call i32 @xdp_rxq_info_unreg(i32* %91)
  br label %93

93:                                               ; preds = %89, %84
  %94 = load %struct.netsec_desc_ring*, %struct.netsec_desc_ring** %5, align 8
  %95 = getelementptr inbounds %struct.netsec_desc_ring, %struct.netsec_desc_ring* %94, i32 0, i32 4
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @page_pool_destroy(i32 %96)
  br label %98

98:                                               ; preds = %93, %80
  %99 = load %struct.netsec_desc_ring*, %struct.netsec_desc_ring** %5, align 8
  %100 = getelementptr inbounds %struct.netsec_desc_ring, %struct.netsec_desc_ring* %99, i32 0, i32 3
  %101 = load %struct.netsec_desc*, %struct.netsec_desc** %100, align 8
  %102 = load i64, i64* @DESC_NUM, align 8
  %103 = mul i64 16, %102
  %104 = call i32 @memset(%struct.netsec_desc* %101, i32 0, i64 %103)
  %105 = load %struct.netsec_desc_ring*, %struct.netsec_desc_ring** %5, align 8
  %106 = getelementptr inbounds %struct.netsec_desc_ring, %struct.netsec_desc_ring* %105, i32 0, i32 2
  %107 = load %struct.netsec_desc*, %struct.netsec_desc** %106, align 8
  %108 = load i64, i64* @DESC_SZ, align 8
  %109 = load i64, i64* @DESC_NUM, align 8
  %110 = mul i64 %108, %109
  %111 = call i32 @memset(%struct.netsec_desc* %107, i32 0, i64 %110)
  %112 = load %struct.netsec_desc_ring*, %struct.netsec_desc_ring** %5, align 8
  %113 = getelementptr inbounds %struct.netsec_desc_ring, %struct.netsec_desc_ring* %112, i32 0, i32 1
  store i64 0, i64* %113, align 8
  %114 = load %struct.netsec_desc_ring*, %struct.netsec_desc_ring** %5, align 8
  %115 = getelementptr inbounds %struct.netsec_desc_ring, %struct.netsec_desc_ring* %114, i32 0, i32 0
  store i64 0, i64* %115, align 8
  %116 = load i32, i32* %4, align 4
  %117 = load i32, i32* @NETSEC_RING_TX, align 4
  %118 = icmp eq i32 %116, %117
  br i1 %118, label %119, label %124

119:                                              ; preds = %98
  %120 = load %struct.netsec_priv*, %struct.netsec_priv** %3, align 8
  %121 = getelementptr inbounds %struct.netsec_priv, %struct.netsec_priv* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @netdev_reset_queue(i32 %122)
  br label %124

124:                                              ; preds = %24, %119, %98
  ret void
}

declare dso_local %struct.page* @virt_to_page(i32) #1

declare dso_local i32 @page_pool_put_page(i32, %struct.page*, i32) #1

declare dso_local i32 @dma_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @dev_kfree_skb(i32) #1

declare dso_local i64 @xdp_rxq_info_is_reg(i32*) #1

declare dso_local i32 @xdp_rxq_info_unreg(i32*) #1

declare dso_local i32 @page_pool_destroy(i32) #1

declare dso_local i32 @memset(%struct.netsec_desc*, i32, i64) #1

declare dso_local i32 @netdev_reset_queue(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
