; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_txrx_edma.c_wil_ring_free_edma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_txrx_edma.c_wil_ring_free_edma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wil6210_priv = type { %struct.wil_ring*, i32 }
%struct.wil_ring = type { i32, i64, %struct.wil_ctx*, %struct.TYPE_6__*, i32, %struct.TYPE_4__, i64 }
%struct.wil_ctx = type { i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i8*, i32 }
%struct.device = type { i32 }
%struct.wil_tx_enhanced_desc = type { i32 }
%union.wil_tx_desc = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"free Rx ring [%d] 0x%p:%pad 0x%p\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"free Tx ring %d [%d] 0x%p:%pad 0x%p\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"ctx(%d) was already completed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wil6210_priv*, %struct.wil_ring*)* @wil_ring_free_edma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wil_ring_free_edma(%struct.wil6210_priv* %0, %struct.wil_ring* %1) #0 {
  %3 = alloca %struct.wil6210_priv*, align 8
  %4 = alloca %struct.wil_ring*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.wil_ctx*, align 8
  %9 = alloca %struct.wil_tx_enhanced_desc, align 4
  %10 = alloca %struct.wil_tx_enhanced_desc*, align 8
  %11 = alloca %struct.wil_tx_enhanced_desc*, align 8
  store %struct.wil6210_priv* %0, %struct.wil6210_priv** %3, align 8
  store %struct.wil_ring* %1, %struct.wil_ring** %4, align 8
  %12 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %13 = call %struct.device* @wil_to_dev(%struct.wil6210_priv* %12)
  store %struct.device* %13, %struct.device** %5, align 8
  store i32 0, i32* %7, align 4
  %14 = load %struct.wil_ring*, %struct.wil_ring** %4, align 8
  %15 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %14, i32 0, i32 3
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = icmp ne %struct.TYPE_6__* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  br label %166

19:                                               ; preds = %2
  %20 = load %struct.wil_ring*, %struct.wil_ring** %4, align 8
  %21 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = sext i32 %22 to i64
  %24 = mul i64 %23, 4
  store i64 %24, i64* %6, align 8
  %25 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %26 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %25, i32 0, i32 1
  %27 = call i32 @lockdep_assert_held(i32* %26)
  %28 = load %struct.wil_ring*, %struct.wil_ring** %4, align 8
  %29 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %28, i32 0, i32 6
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %59

32:                                               ; preds = %19
  %33 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %34 = load %struct.wil_ring*, %struct.wil_ring** %4, align 8
  %35 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.wil_ring*, %struct.wil_ring** %4, align 8
  %38 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %37, i32 0, i32 3
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = load %struct.wil_ring*, %struct.wil_ring** %4, align 8
  %41 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %40, i32 0, i32 4
  %42 = load %struct.wil_ring*, %struct.wil_ring** %4, align 8
  %43 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %42, i32 0, i32 2
  %44 = load %struct.wil_ctx*, %struct.wil_ctx** %43, align 8
  %45 = call i32 (%struct.wil6210_priv*, i8*, i32, ...) @wil_dbg_misc(%struct.wil6210_priv* %33, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %36, %struct.TYPE_6__* %39, i32* %41, %struct.wil_ctx* %44)
  %46 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %47 = load %struct.wil_ring*, %struct.wil_ring** %4, align 8
  %48 = call i32 @wil_move_all_rx_buff_to_free_list(%struct.wil6210_priv* %46, %struct.wil_ring* %47)
  %49 = load %struct.device*, %struct.device** %5, align 8
  %50 = load %struct.wil_ring*, %struct.wil_ring** %4, align 8
  %51 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %50, i32 0, i32 5
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = load %struct.wil_ring*, %struct.wil_ring** %4, align 8
  %55 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %54, i32 0, i32 5
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @dma_free_coherent(%struct.device* %49, i64 1, i8* %53, i32 %57)
  br label %145

59:                                               ; preds = %19
  %60 = load %struct.wil_ring*, %struct.wil_ring** %4, align 8
  %61 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %62 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %61, i32 0, i32 0
  %63 = load %struct.wil_ring*, %struct.wil_ring** %62, align 8
  %64 = ptrtoint %struct.wil_ring* %60 to i64
  %65 = ptrtoint %struct.wil_ring* %63 to i64
  %66 = sub i64 %64, %65
  %67 = sdiv exact i64 %66, 64
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %7, align 4
  %69 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %70 = load i32, i32* %7, align 4
  %71 = load %struct.wil_ring*, %struct.wil_ring** %4, align 8
  %72 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.wil_ring*, %struct.wil_ring** %4, align 8
  %75 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %74, i32 0, i32 3
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %75, align 8
  %77 = load %struct.wil_ring*, %struct.wil_ring** %4, align 8
  %78 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %77, i32 0, i32 4
  %79 = load %struct.wil_ring*, %struct.wil_ring** %4, align 8
  %80 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %79, i32 0, i32 2
  %81 = load %struct.wil_ctx*, %struct.wil_ctx** %80, align 8
  %82 = call i32 (%struct.wil6210_priv*, i8*, i32, ...) @wil_dbg_misc(%struct.wil6210_priv* %69, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %70, i32 %73, %struct.TYPE_6__* %76, i32* %78, %struct.wil_ctx* %81)
  br label %83

83:                                               ; preds = %138, %108, %59
  %84 = load %struct.wil_ring*, %struct.wil_ring** %4, align 8
  %85 = call i32 @wil_ring_is_empty(%struct.wil_ring* %84)
  %86 = icmp ne i32 %85, 0
  %87 = xor i1 %86, true
  br i1 %87, label %88, label %144

88:                                               ; preds = %83
  store %struct.wil_tx_enhanced_desc* %9, %struct.wil_tx_enhanced_desc** %10, align 8
  %89 = load %struct.wil_ring*, %struct.wil_ring** %4, align 8
  %90 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %89, i32 0, i32 3
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %90, align 8
  %92 = load %struct.wil_ring*, %struct.wil_ring** %4, align 8
  %93 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 0
  %98 = bitcast i32* %97 to %struct.wil_tx_enhanced_desc*
  store %struct.wil_tx_enhanced_desc* %98, %struct.wil_tx_enhanced_desc** %11, align 8
  %99 = load %struct.wil_ring*, %struct.wil_ring** %4, align 8
  %100 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %99, i32 0, i32 2
  %101 = load %struct.wil_ctx*, %struct.wil_ctx** %100, align 8
  %102 = load %struct.wil_ring*, %struct.wil_ring** %4, align 8
  %103 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = getelementptr inbounds %struct.wil_ctx, %struct.wil_ctx* %101, i64 %104
  store %struct.wil_ctx* %105, %struct.wil_ctx** %8, align 8
  %106 = load %struct.wil_ctx*, %struct.wil_ctx** %8, align 8
  %107 = icmp ne %struct.wil_ctx* %106, null
  br i1 %107, label %119, label %108

108:                                              ; preds = %88
  %109 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %110 = load %struct.wil_ring*, %struct.wil_ring** %4, align 8
  %111 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = call i32 @wil_dbg_txrx(%struct.wil6210_priv* %109, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i64 %112)
  %114 = load %struct.wil_ring*, %struct.wil_ring** %4, align 8
  %115 = call i8* @wil_ring_next_tail(%struct.wil_ring* %114)
  %116 = ptrtoint i8* %115 to i64
  %117 = load %struct.wil_ring*, %struct.wil_ring** %4, align 8
  %118 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %117, i32 0, i32 1
  store i64 %116, i64* %118, align 8
  br label %83

119:                                              ; preds = %88
  %120 = load %struct.wil_tx_enhanced_desc*, %struct.wil_tx_enhanced_desc** %10, align 8
  %121 = load %struct.wil_tx_enhanced_desc*, %struct.wil_tx_enhanced_desc** %11, align 8
  %122 = bitcast %struct.wil_tx_enhanced_desc* %120 to i8*
  %123 = bitcast %struct.wil_tx_enhanced_desc* %121 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %122, i8* align 4 %123, i64 4, i1 false)
  %124 = load %struct.device*, %struct.device** %5, align 8
  %125 = load %struct.wil_tx_enhanced_desc*, %struct.wil_tx_enhanced_desc** %10, align 8
  %126 = bitcast %struct.wil_tx_enhanced_desc* %125 to %union.wil_tx_desc*
  %127 = load %struct.wil_ctx*, %struct.wil_ctx** %8, align 8
  %128 = call i32 @wil_tx_desc_unmap_edma(%struct.device* %124, %union.wil_tx_desc* %126, %struct.wil_ctx* %127)
  %129 = load %struct.wil_ctx*, %struct.wil_ctx** %8, align 8
  %130 = getelementptr inbounds %struct.wil_ctx, %struct.wil_ctx* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %138

133:                                              ; preds = %119
  %134 = load %struct.wil_ctx*, %struct.wil_ctx** %8, align 8
  %135 = getelementptr inbounds %struct.wil_ctx, %struct.wil_ctx* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = call i32 @dev_kfree_skb_any(i64 %136)
  br label %138

138:                                              ; preds = %133, %119
  %139 = load %struct.wil_ring*, %struct.wil_ring** %4, align 8
  %140 = call i8* @wil_ring_next_tail(%struct.wil_ring* %139)
  %141 = ptrtoint i8* %140 to i64
  %142 = load %struct.wil_ring*, %struct.wil_ring** %4, align 8
  %143 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %142, i32 0, i32 1
  store i64 %141, i64* %143, align 8
  br label %83

144:                                              ; preds = %83
  br label %145

145:                                              ; preds = %144, %32
  %146 = load %struct.device*, %struct.device** %5, align 8
  %147 = load i64, i64* %6, align 8
  %148 = load %struct.wil_ring*, %struct.wil_ring** %4, align 8
  %149 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %148, i32 0, i32 3
  %150 = load %struct.TYPE_6__*, %struct.TYPE_6__** %149, align 8
  %151 = bitcast %struct.TYPE_6__* %150 to i8*
  %152 = load %struct.wil_ring*, %struct.wil_ring** %4, align 8
  %153 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %152, i32 0, i32 4
  %154 = load i32, i32* %153, align 8
  %155 = call i32 @dma_free_coherent(%struct.device* %146, i64 %147, i8* %151, i32 %154)
  %156 = load %struct.wil_ring*, %struct.wil_ring** %4, align 8
  %157 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %156, i32 0, i32 2
  %158 = load %struct.wil_ctx*, %struct.wil_ctx** %157, align 8
  %159 = call i32 @kfree(%struct.wil_ctx* %158)
  %160 = load %struct.wil_ring*, %struct.wil_ring** %4, align 8
  %161 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %160, i32 0, i32 4
  store i32 0, i32* %161, align 8
  %162 = load %struct.wil_ring*, %struct.wil_ring** %4, align 8
  %163 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %162, i32 0, i32 3
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %163, align 8
  %164 = load %struct.wil_ring*, %struct.wil_ring** %4, align 8
  %165 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %164, i32 0, i32 2
  store %struct.wil_ctx* null, %struct.wil_ctx** %165, align 8
  br label %166

166:                                              ; preds = %145, %18
  ret void
}

declare dso_local %struct.device* @wil_to_dev(%struct.wil6210_priv*) #1

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @wil_dbg_misc(%struct.wil6210_priv*, i8*, i32, ...) #1

declare dso_local i32 @wil_move_all_rx_buff_to_free_list(%struct.wil6210_priv*, %struct.wil_ring*) #1

declare dso_local i32 @dma_free_coherent(%struct.device*, i64, i8*, i32) #1

declare dso_local i32 @wil_ring_is_empty(%struct.wil_ring*) #1

declare dso_local i32 @wil_dbg_txrx(%struct.wil6210_priv*, i8*, i64) #1

declare dso_local i8* @wil_ring_next_tail(%struct.wil_ring*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @wil_tx_desc_unmap_edma(%struct.device*, %union.wil_tx_desc*, %struct.wil_ctx*) #1

declare dso_local i32 @dev_kfree_skb_any(i64) #1

declare dso_local i32 @kfree(%struct.wil_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
