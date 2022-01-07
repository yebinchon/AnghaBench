; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_txrx_edma.c_wil_tx_tso_gen_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_txrx_edma.c_wil_tx_tso_gen_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wil6210_priv = type { %struct.TYPE_7__, %struct.wil_ring* }
%struct.TYPE_7__ = type { i32 (%union.wil_tx_desc*, i32, i32, i32)* }
%union.wil_tx_desc = type { i32 }
%struct.wil_ring = type { %struct.TYPE_8__*, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.sk_buff = type { i32 }
%struct.device = type { i32 }
%struct.wil_tx_enhanced_desc = type { i32 }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@wil_mapped_as_single = common dso_local global i32 0, align 4
@wil_mapped_as_page = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"TSO: Skb DMA map error\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@wil_tso_type_lst = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"TxD \00", align 1
@DUMP_PREFIX_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wil6210_priv*, i8*, i32, i64, i32, i32*, %struct.wil_ring*, %struct.sk_buff*, i32, i32, i32, i32, i32*)* @wil_tx_tso_gen_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wil_tx_tso_gen_desc(%struct.wil6210_priv* %0, i8* %1, i32 %2, i64 %3, i32 %4, i32* %5, %struct.wil_ring* %6, %struct.sk_buff* %7, i32 %8, i32 %9, i32 %10, i32 %11, i32* %12) #0 {
  %14 = alloca i32, align 4
  %15 = alloca %struct.wil6210_priv*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca %struct.wil_ring*, align 8
  %22 = alloca %struct.sk_buff*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32*, align 8
  %28 = alloca %struct.device*, align 8
  %29 = alloca %struct.wil_tx_enhanced_desc*, align 8
  %30 = alloca %struct.wil_tx_enhanced_desc, align 4
  %31 = alloca %struct.wil_tx_enhanced_desc*, align 8
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  store %struct.wil6210_priv* %0, %struct.wil6210_priv** %15, align 8
  store i8* %1, i8** %16, align 8
  store i32 %2, i32* %17, align 4
  store i64 %3, i64* %18, align 8
  store i32 %4, i32* %19, align 4
  store i32* %5, i32** %20, align 8
  store %struct.wil_ring* %6, %struct.wil_ring** %21, align 8
  store %struct.sk_buff* %7, %struct.sk_buff** %22, align 8
  store i32 %8, i32* %23, align 4
  store i32 %9, i32* %24, align 4
  store i32 %10, i32* %25, align 4
  store i32 %11, i32* %26, align 4
  store i32* %12, i32** %27, align 8
  %34 = load %struct.wil6210_priv*, %struct.wil6210_priv** %15, align 8
  %35 = call %struct.device* @wil_to_dev(%struct.wil6210_priv* %34)
  store %struct.device* %35, %struct.device** %28, align 8
  %36 = load %struct.wil_ring*, %struct.wil_ring** %21, align 8
  %37 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %36, i32 0, i32 1
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = load i64, i64* %18, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = bitcast i32* %42 to %struct.wil_tx_enhanced_desc*
  store %struct.wil_tx_enhanced_desc* %43, %struct.wil_tx_enhanced_desc** %29, align 8
  store %struct.wil_tx_enhanced_desc* %30, %struct.wil_tx_enhanced_desc** %31, align 8
  %44 = load %struct.wil_ring*, %struct.wil_ring** %21, align 8
  %45 = load %struct.wil6210_priv*, %struct.wil6210_priv** %15, align 8
  %46 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %45, i32 0, i32 1
  %47 = load %struct.wil_ring*, %struct.wil_ring** %46, align 8
  %48 = ptrtoint %struct.wil_ring* %44 to i64
  %49 = ptrtoint %struct.wil_ring* %47 to i64
  %50 = sub i64 %48, %49
  %51 = sdiv exact i64 %50, 16
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %32, align 4
  %53 = load i32, i32* %17, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %13
  store i32 0, i32* %14, align 4
  br label %138

56:                                               ; preds = %13
  %57 = load i32*, i32** %20, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %72, label %59

59:                                               ; preds = %56
  %60 = load %struct.device*, %struct.device** %28, align 8
  %61 = load i8*, i8** %16, align 8
  %62 = load i32, i32* %17, align 4
  %63 = load i32, i32* @DMA_TO_DEVICE, align 4
  %64 = call i32 @dma_map_single(%struct.device* %60, i8* %61, i32 %62, i32 %63)
  store i32 %64, i32* %33, align 4
  %65 = load i32, i32* @wil_mapped_as_single, align 4
  %66 = load %struct.wil_ring*, %struct.wil_ring** %21, align 8
  %67 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %66, i32 0, i32 0
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %67, align 8
  %69 = load i64, i64* %18, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 1
  store i32 %65, i32* %71, align 4
  br label %85

72:                                               ; preds = %56
  %73 = load %struct.device*, %struct.device** %28, align 8
  %74 = load i32*, i32** %20, align 8
  %75 = load i32, i32* %17, align 4
  %76 = load i32, i32* @DMA_TO_DEVICE, align 4
  %77 = call i32 @skb_frag_dma_map(%struct.device* %73, i32* %74, i32 0, i32 %75, i32 %76)
  store i32 %77, i32* %33, align 4
  %78 = load i32, i32* @wil_mapped_as_page, align 4
  %79 = load %struct.wil_ring*, %struct.wil_ring** %21, align 8
  %80 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %79, i32 0, i32 0
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %80, align 8
  %82 = load i64, i64* %18, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 1
  store i32 %78, i32* %84, align 4
  br label %85

85:                                               ; preds = %72, %59
  %86 = load %struct.device*, %struct.device** %28, align 8
  %87 = load i32, i32* %33, align 4
  %88 = call i32 @dma_mapping_error(%struct.device* %86, i32 %87)
  %89 = call i64 @unlikely(i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %85
  %92 = load %struct.wil6210_priv*, %struct.wil6210_priv** %15, align 8
  %93 = call i32 @wil_err(%struct.wil6210_priv* %92, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %94 = load i32, i32* @EINVAL, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %14, align 4
  br label %138

96:                                               ; preds = %85
  %97 = load %struct.wil6210_priv*, %struct.wil6210_priv** %15, align 8
  %98 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 0
  %100 = load i32 (%union.wil_tx_desc*, i32, i32, i32)*, i32 (%union.wil_tx_desc*, i32, i32, i32)** %99, align 8
  %101 = load %struct.wil_tx_enhanced_desc*, %struct.wil_tx_enhanced_desc** %31, align 8
  %102 = bitcast %struct.wil_tx_enhanced_desc* %101 to %union.wil_tx_desc*
  %103 = load i32, i32* %33, align 4
  %104 = load i32, i32* %17, align 4
  %105 = load i32, i32* %32, align 4
  %106 = call i32 %100(%union.wil_tx_desc* %102, i32 %103, i32 %104, i32 %105)
  %107 = load %struct.wil_tx_enhanced_desc*, %struct.wil_tx_enhanced_desc** %31, align 8
  %108 = load i32, i32* %19, align 4
  %109 = load i32, i32* %23, align 4
  %110 = load i32, i32* %24, align 4
  %111 = load i32, i32* %25, align 4
  %112 = load i32, i32* %26, align 4
  %113 = call i32 @wil_tx_desc_offload_setup_tso_edma(%struct.wil_tx_enhanced_desc* %107, i32 %108, i32 %109, i32 %110, i32 %111, i32 %112)
  %114 = load i32, i32* %19, align 4
  %115 = load i32, i32* @wil_tso_type_lst, align 4
  %116 = icmp eq i32 %114, %115
  br i1 %116, label %117, label %126

117:                                              ; preds = %96
  %118 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  %119 = call i32 @skb_get(%struct.sk_buff* %118)
  %120 = load %struct.wil_ring*, %struct.wil_ring** %21, align 8
  %121 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %120, i32 0, i32 0
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %121, align 8
  %123 = load i64, i64* %18, align 8
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 0
  store i32 %119, i32* %125, align 4
  br label %126

126:                                              ; preds = %117, %96
  %127 = load i32, i32* @DUMP_PREFIX_NONE, align 4
  %128 = load %struct.wil_tx_enhanced_desc*, %struct.wil_tx_enhanced_desc** %31, align 8
  %129 = bitcast %struct.wil_tx_enhanced_desc* %128 to i8*
  %130 = call i32 @wil_hex_dump_txrx(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %127, i32 32, i32 4, i8* %129, i32 4, i32 0)
  %131 = load %struct.wil_tx_enhanced_desc*, %struct.wil_tx_enhanced_desc** %29, align 8
  %132 = load %struct.wil_tx_enhanced_desc*, %struct.wil_tx_enhanced_desc** %31, align 8
  %133 = bitcast %struct.wil_tx_enhanced_desc* %131 to i8*
  %134 = bitcast %struct.wil_tx_enhanced_desc* %132 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %133, i8* align 4 %134, i64 4, i1 false)
  %135 = load i32*, i32** %27, align 8
  %136 = load i32, i32* %135, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %135, align 4
  store i32 0, i32* %14, align 4
  br label %138

138:                                              ; preds = %126, %91, %55
  %139 = load i32, i32* %14, align 4
  ret i32 %139
}

declare dso_local %struct.device* @wil_to_dev(%struct.wil6210_priv*) #1

declare dso_local i32 @dma_map_single(%struct.device*, i8*, i32, i32) #1

declare dso_local i32 @skb_frag_dma_map(%struct.device*, i32*, i32, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dma_mapping_error(%struct.device*, i32) #1

declare dso_local i32 @wil_err(%struct.wil6210_priv*, i8*) #1

declare dso_local i32 @wil_tx_desc_offload_setup_tso_edma(%struct.wil_tx_enhanced_desc*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @skb_get(%struct.sk_buff*) #1

declare dso_local i32 @wil_hex_dump_txrx(i8*, i32, i32, i32, i8*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
