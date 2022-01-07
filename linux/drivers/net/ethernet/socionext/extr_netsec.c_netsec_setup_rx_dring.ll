; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/socionext/extr_netsec.c_netsec_setup_rx_dring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/socionext/extr_netsec.c_netsec_setup_rx_dring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netsec_priv = type { i32, i32, i32, %struct.netsec_desc_ring* }
%struct.netsec_desc_ring = type { %struct.netsec_desc*, i32*, i32 }
%struct.netsec_desc = type { i32, i8*, i32 }
%struct.bpf_prog = type { i32 }
%struct.page_pool_params = type { i32, i32, i32, i32, i32, i64, i32 }

@NETSEC_RING_RX = common dso_local global i64 0, align 8
@PP_FLAG_DMA_MAP = common dso_local global i32 0, align 4
@DESC_NUM = common dso_local global i32 0, align 4
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@MEM_TYPE_PAGE_POOL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.netsec_priv*)* @netsec_setup_rx_dring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netsec_setup_rx_dring(%struct.netsec_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.netsec_priv*, align 8
  %4 = alloca %struct.netsec_desc_ring*, align 8
  %5 = alloca %struct.bpf_prog*, align 8
  %6 = alloca %struct.page_pool_params, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.netsec_desc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.netsec_priv* %0, %struct.netsec_priv** %3, align 8
  %13 = load %struct.netsec_priv*, %struct.netsec_priv** %3, align 8
  %14 = getelementptr inbounds %struct.netsec_priv, %struct.netsec_priv* %13, i32 0, i32 3
  %15 = load %struct.netsec_desc_ring*, %struct.netsec_desc_ring** %14, align 8
  %16 = load i64, i64* @NETSEC_RING_RX, align 8
  %17 = getelementptr inbounds %struct.netsec_desc_ring, %struct.netsec_desc_ring* %15, i64 %16
  store %struct.netsec_desc_ring* %17, %struct.netsec_desc_ring** %4, align 8
  %18 = load %struct.netsec_priv*, %struct.netsec_priv** %3, align 8
  %19 = getelementptr inbounds %struct.netsec_priv, %struct.netsec_priv* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = call %struct.bpf_prog* @READ_ONCE(i32 %20)
  store %struct.bpf_prog* %21, %struct.bpf_prog** %5, align 8
  %22 = bitcast %struct.page_pool_params* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %22, i8 0, i64 40, i1 false)
  %23 = getelementptr inbounds %struct.page_pool_params, %struct.page_pool_params* %6, i32 0, i32 5
  store i64 0, i64* %23, align 8
  %24 = load i32, i32* @PP_FLAG_DMA_MAP, align 4
  %25 = getelementptr inbounds %struct.page_pool_params, %struct.page_pool_params* %6, i32 0, i32 4
  store i32 %24, i32* %25, align 8
  %26 = load i32, i32* @DESC_NUM, align 4
  %27 = getelementptr inbounds %struct.page_pool_params, %struct.page_pool_params* %6, i32 0, i32 0
  store i32 %26, i32* %27, align 8
  %28 = call i32 @cpu_to_node(i32 0)
  %29 = getelementptr inbounds %struct.page_pool_params, %struct.page_pool_params* %6, i32 0, i32 3
  store i32 %28, i32* %29, align 4
  %30 = load %struct.netsec_priv*, %struct.netsec_priv** %3, align 8
  %31 = getelementptr inbounds %struct.netsec_priv, %struct.netsec_priv* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.page_pool_params, %struct.page_pool_params* %6, i32 0, i32 2
  store i32 %32, i32* %33, align 8
  %34 = load %struct.bpf_prog*, %struct.bpf_prog** %5, align 8
  %35 = icmp ne %struct.bpf_prog* %34, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %1
  %37 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  br label %40

38:                                               ; preds = %1
  %39 = load i32, i32* @DMA_FROM_DEVICE, align 4
  br label %40

40:                                               ; preds = %38, %36
  %41 = phi i32 [ %37, %36 ], [ %39, %38 ]
  %42 = getelementptr inbounds %struct.page_pool_params, %struct.page_pool_params* %6, i32 0, i32 1
  store i32 %41, i32* %42, align 4
  %43 = call i32* @page_pool_create(%struct.page_pool_params* %6)
  %44 = load %struct.netsec_desc_ring*, %struct.netsec_desc_ring** %4, align 8
  %45 = getelementptr inbounds %struct.netsec_desc_ring, %struct.netsec_desc_ring* %44, i32 0, i32 1
  store i32* %43, i32** %45, align 8
  %46 = load %struct.netsec_desc_ring*, %struct.netsec_desc_ring** %4, align 8
  %47 = getelementptr inbounds %struct.netsec_desc_ring, %struct.netsec_desc_ring* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = call i64 @IS_ERR(i32* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %40
  %52 = load %struct.netsec_desc_ring*, %struct.netsec_desc_ring** %4, align 8
  %53 = getelementptr inbounds %struct.netsec_desc_ring, %struct.netsec_desc_ring* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = call i32 @PTR_ERR(i32* %54)
  store i32 %55, i32* %8, align 4
  %56 = load %struct.netsec_desc_ring*, %struct.netsec_desc_ring** %4, align 8
  %57 = getelementptr inbounds %struct.netsec_desc_ring, %struct.netsec_desc_ring* %56, i32 0, i32 1
  store i32* null, i32** %57, align 8
  br label %115

58:                                               ; preds = %40
  %59 = load %struct.netsec_desc_ring*, %struct.netsec_desc_ring** %4, align 8
  %60 = getelementptr inbounds %struct.netsec_desc_ring, %struct.netsec_desc_ring* %59, i32 0, i32 2
  %61 = load %struct.netsec_priv*, %struct.netsec_priv** %3, align 8
  %62 = getelementptr inbounds %struct.netsec_priv, %struct.netsec_priv* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @xdp_rxq_info_reg(i32* %60, i32 %63, i32 0)
  store i32 %64, i32* %8, align 4
  %65 = load i32, i32* %8, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %58
  br label %115

68:                                               ; preds = %58
  %69 = load %struct.netsec_desc_ring*, %struct.netsec_desc_ring** %4, align 8
  %70 = getelementptr inbounds %struct.netsec_desc_ring, %struct.netsec_desc_ring* %69, i32 0, i32 2
  %71 = load i32, i32* @MEM_TYPE_PAGE_POOL, align 4
  %72 = load %struct.netsec_desc_ring*, %struct.netsec_desc_ring** %4, align 8
  %73 = getelementptr inbounds %struct.netsec_desc_ring, %struct.netsec_desc_ring* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = call i32 @xdp_rxq_info_reg_mem_model(i32* %70, i32 %71, i32* %74)
  store i32 %75, i32* %8, align 4
  %76 = load i32, i32* %8, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %68
  br label %115

79:                                               ; preds = %68
  store i32 0, i32* %7, align 4
  br label %80

80:                                               ; preds = %108, %79
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* @DESC_NUM, align 4
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %84, label %111

84:                                               ; preds = %80
  %85 = load %struct.netsec_desc_ring*, %struct.netsec_desc_ring** %4, align 8
  %86 = getelementptr inbounds %struct.netsec_desc_ring, %struct.netsec_desc_ring* %85, i32 0, i32 0
  %87 = load %struct.netsec_desc*, %struct.netsec_desc** %86, align 8
  %88 = load i32, i32* %7, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.netsec_desc, %struct.netsec_desc* %87, i64 %89
  store %struct.netsec_desc* %90, %struct.netsec_desc** %9, align 8
  %91 = load %struct.netsec_priv*, %struct.netsec_priv** %3, align 8
  %92 = call i8* @netsec_alloc_rx_data(%struct.netsec_priv* %91, i32* %10, i32* %12)
  store i8* %92, i8** %11, align 8
  %93 = load i8*, i8** %11, align 8
  %94 = icmp ne i8* %93, null
  br i1 %94, label %98, label %95

95:                                               ; preds = %84
  %96 = load i32, i32* @ENOMEM, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %8, align 4
  br label %115

98:                                               ; preds = %84
  %99 = load i32, i32* %10, align 4
  %100 = load %struct.netsec_desc*, %struct.netsec_desc** %9, align 8
  %101 = getelementptr inbounds %struct.netsec_desc, %struct.netsec_desc* %100, i32 0, i32 2
  store i32 %99, i32* %101, align 8
  %102 = load i8*, i8** %11, align 8
  %103 = load %struct.netsec_desc*, %struct.netsec_desc** %9, align 8
  %104 = getelementptr inbounds %struct.netsec_desc, %struct.netsec_desc* %103, i32 0, i32 1
  store i8* %102, i8** %104, align 8
  %105 = load i32, i32* %12, align 4
  %106 = load %struct.netsec_desc*, %struct.netsec_desc** %9, align 8
  %107 = getelementptr inbounds %struct.netsec_desc, %struct.netsec_desc* %106, i32 0, i32 0
  store i32 %105, i32* %107, align 8
  br label %108

108:                                              ; preds = %98
  %109 = load i32, i32* %7, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %7, align 4
  br label %80

111:                                              ; preds = %80
  %112 = load %struct.netsec_priv*, %struct.netsec_priv** %3, align 8
  %113 = load i32, i32* @DESC_NUM, align 4
  %114 = call i32 @netsec_rx_fill(%struct.netsec_priv* %112, i32 0, i32 %113)
  store i32 0, i32* %2, align 4
  br label %120

115:                                              ; preds = %95, %78, %67, %51
  %116 = load %struct.netsec_priv*, %struct.netsec_priv** %3, align 8
  %117 = load i64, i64* @NETSEC_RING_RX, align 8
  %118 = call i32 @netsec_uninit_pkt_dring(%struct.netsec_priv* %116, i64 %117)
  %119 = load i32, i32* %8, align 4
  store i32 %119, i32* %2, align 4
  br label %120

120:                                              ; preds = %115, %111
  %121 = load i32, i32* %2, align 4
  ret i32 %121
}

declare dso_local %struct.bpf_prog* @READ_ONCE(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @cpu_to_node(i32) #1

declare dso_local i32* @page_pool_create(%struct.page_pool_params*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @xdp_rxq_info_reg(i32*, i32, i32) #1

declare dso_local i32 @xdp_rxq_info_reg_mem_model(i32*, i32, i32*) #1

declare dso_local i8* @netsec_alloc_rx_data(%struct.netsec_priv*, i32*, i32*) #1

declare dso_local i32 @netsec_rx_fill(%struct.netsec_priv*, i32, i32) #1

declare dso_local i32 @netsec_uninit_pkt_dring(%struct.netsec_priv*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
