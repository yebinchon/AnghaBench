; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_txrx.c_wil_vring_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_txrx.c_wil_vring_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wil6210_priv = type { %struct.wil_ring*, i32 }
%struct.wil_ring = type { i32, i64, i64, %struct.wil_ctx*, %struct.TYPE_8__*, i32, i32 }
%struct.wil_ctx = type { i64 }
%struct.TYPE_8__ = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { %struct.vring_rx_desc }
%struct.vring_rx_desc = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_5__ = type { %struct.vring_tx_desc }
%struct.vring_tx_desc = type { i32 }
%struct.device = type { i32 }
%union.wil_tx_desc = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"free Tx vring %d [%d] 0x%p:%pad 0x%p\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"free Rx vring [%d] 0x%p:%pad 0x%p\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"ctx(%d) was already completed\0A\00", align 1
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wil6210_priv*, %struct.wil_ring*)* @wil_vring_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wil_vring_free(%struct.wil6210_priv* %0, %struct.wil_ring* %1) #0 {
  %3 = alloca %struct.wil6210_priv*, align 8
  %4 = alloca %struct.wil_ring*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.wil_ctx*, align 8
  %11 = alloca %struct.vring_tx_desc, align 4
  %12 = alloca %struct.vring_tx_desc*, align 8
  %13 = alloca %struct.vring_tx_desc*, align 8
  %14 = alloca %struct.vring_rx_desc, align 4
  %15 = alloca %struct.vring_rx_desc*, align 8
  %16 = alloca %struct.vring_rx_desc*, align 8
  store %struct.wil6210_priv* %0, %struct.wil6210_priv** %3, align 8
  store %struct.wil_ring* %1, %struct.wil_ring** %4, align 8
  %17 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %18 = call %struct.device* @wil_to_dev(%struct.wil6210_priv* %17)
  store %struct.device* %18, %struct.device** %5, align 8
  %19 = load %struct.wil_ring*, %struct.wil_ring** %4, align 8
  %20 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = sext i32 %21 to i64
  %23 = mul i64 %22, 12
  store i64 %23, i64* %6, align 8
  %24 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %25 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %24, i32 0, i32 1
  %26 = call i32 @lockdep_assert_held(i32* %25)
  %27 = load %struct.wil_ring*, %struct.wil_ring** %4, align 8
  %28 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %27, i32 0, i32 6
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %55, label %31

31:                                               ; preds = %2
  %32 = load %struct.wil_ring*, %struct.wil_ring** %4, align 8
  %33 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %34 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %33, i32 0, i32 0
  %35 = load %struct.wil_ring*, %struct.wil_ring** %34, align 8
  %36 = ptrtoint %struct.wil_ring* %32 to i64
  %37 = ptrtoint %struct.wil_ring* %35 to i64
  %38 = sub i64 %36, %37
  %39 = sdiv exact i64 %38, 48
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %7, align 4
  %41 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %42 = load i32, i32* %7, align 4
  %43 = load %struct.wil_ring*, %struct.wil_ring** %4, align 8
  %44 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.wil_ring*, %struct.wil_ring** %4, align 8
  %47 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %46, i32 0, i32 4
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %47, align 8
  %49 = load %struct.wil_ring*, %struct.wil_ring** %4, align 8
  %50 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %49, i32 0, i32 5
  %51 = load %struct.wil_ring*, %struct.wil_ring** %4, align 8
  %52 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %51, i32 0, i32 3
  %53 = load %struct.wil_ctx*, %struct.wil_ctx** %52, align 8
  %54 = call i32 (%struct.wil6210_priv*, i8*, i32, ...) @wil_dbg_misc(%struct.wil6210_priv* %41, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %42, i32 %45, %struct.TYPE_8__* %48, i32* %50, %struct.wil_ctx* %53)
  br label %69

55:                                               ; preds = %2
  %56 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %57 = load %struct.wil_ring*, %struct.wil_ring** %4, align 8
  %58 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.wil_ring*, %struct.wil_ring** %4, align 8
  %61 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %60, i32 0, i32 4
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %61, align 8
  %63 = load %struct.wil_ring*, %struct.wil_ring** %4, align 8
  %64 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %63, i32 0, i32 5
  %65 = load %struct.wil_ring*, %struct.wil_ring** %4, align 8
  %66 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %65, i32 0, i32 3
  %67 = load %struct.wil_ctx*, %struct.wil_ctx** %66, align 8
  %68 = call i32 (%struct.wil6210_priv*, i8*, i32, ...) @wil_dbg_misc(%struct.wil6210_priv* %56, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %59, %struct.TYPE_8__* %62, i32* %64, %struct.wil_ctx* %67)
  br label %69

69:                                               ; preds = %55, %31
  br label %70

70:                                               ; preds = %176, %99, %69
  %71 = load %struct.wil_ring*, %struct.wil_ring** %4, align 8
  %72 = call i32 @wil_ring_is_empty(%struct.wil_ring* %71)
  %73 = icmp ne i32 %72, 0
  %74 = xor i1 %73, true
  br i1 %74, label %75, label %177

75:                                               ; preds = %70
  %76 = load %struct.wil_ring*, %struct.wil_ring** %4, align 8
  %77 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %76, i32 0, i32 6
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %135, label %80

80:                                               ; preds = %75
  store %struct.vring_tx_desc* %11, %struct.vring_tx_desc** %12, align 8
  %81 = load %struct.wil_ring*, %struct.wil_ring** %4, align 8
  %82 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %81, i32 0, i32 4
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %82, align 8
  %84 = load %struct.wil_ring*, %struct.wil_ring** %4, align 8
  %85 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  store %struct.vring_tx_desc* %89, %struct.vring_tx_desc** %13, align 8
  %90 = load %struct.wil_ring*, %struct.wil_ring** %4, align 8
  %91 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %90, i32 0, i32 3
  %92 = load %struct.wil_ctx*, %struct.wil_ctx** %91, align 8
  %93 = load %struct.wil_ring*, %struct.wil_ring** %4, align 8
  %94 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = getelementptr inbounds %struct.wil_ctx, %struct.wil_ctx* %92, i64 %95
  store %struct.wil_ctx* %96, %struct.wil_ctx** %10, align 8
  %97 = load %struct.wil_ctx*, %struct.wil_ctx** %10, align 8
  %98 = icmp ne %struct.wil_ctx* %97, null
  br i1 %98, label %110, label %99

99:                                               ; preds = %80
  %100 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %101 = load %struct.wil_ring*, %struct.wil_ring** %4, align 8
  %102 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = call i32 @wil_dbg_txrx(%struct.wil6210_priv* %100, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i64 %103)
  %105 = load %struct.wil_ring*, %struct.wil_ring** %4, align 8
  %106 = call i8* @wil_ring_next_tail(%struct.wil_ring* %105)
  %107 = ptrtoint i8* %106 to i64
  %108 = load %struct.wil_ring*, %struct.wil_ring** %4, align 8
  %109 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %108, i32 0, i32 1
  store i64 %107, i64* %109, align 8
  br label %70

110:                                              ; preds = %80
  %111 = load %struct.vring_tx_desc*, %struct.vring_tx_desc** %12, align 8
  %112 = load %struct.vring_tx_desc*, %struct.vring_tx_desc** %13, align 8
  %113 = bitcast %struct.vring_tx_desc* %111 to i8*
  %114 = bitcast %struct.vring_tx_desc* %112 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %113, i8* align 4 %114, i64 4, i1 true)
  %115 = load %struct.device*, %struct.device** %5, align 8
  %116 = load %struct.vring_tx_desc*, %struct.vring_tx_desc** %12, align 8
  %117 = bitcast %struct.vring_tx_desc* %116 to %union.wil_tx_desc*
  %118 = load %struct.wil_ctx*, %struct.wil_ctx** %10, align 8
  %119 = call i32 @wil_txdesc_unmap(%struct.device* %115, %union.wil_tx_desc* %117, %struct.wil_ctx* %118)
  %120 = load %struct.wil_ctx*, %struct.wil_ctx** %10, align 8
  %121 = getelementptr inbounds %struct.wil_ctx, %struct.wil_ctx* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %129

124:                                              ; preds = %110
  %125 = load %struct.wil_ctx*, %struct.wil_ctx** %10, align 8
  %126 = getelementptr inbounds %struct.wil_ctx, %struct.wil_ctx* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = call i32 @dev_kfree_skb_any(i64 %127)
  br label %129

129:                                              ; preds = %124, %110
  %130 = load %struct.wil_ring*, %struct.wil_ring** %4, align 8
  %131 = call i8* @wil_ring_next_tail(%struct.wil_ring* %130)
  %132 = ptrtoint i8* %131 to i64
  %133 = load %struct.wil_ring*, %struct.wil_ring** %4, align 8
  %134 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %133, i32 0, i32 1
  store i64 %132, i64* %134, align 8
  br label %176

135:                                              ; preds = %75
  store %struct.vring_rx_desc* %14, %struct.vring_rx_desc** %15, align 8
  %136 = load %struct.wil_ring*, %struct.wil_ring** %4, align 8
  %137 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %136, i32 0, i32 4
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** %137, align 8
  %139 = load %struct.wil_ring*, %struct.wil_ring** %4, align 8
  %140 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %139, i32 0, i32 2
  %141 = load i64, i64* %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 0
  store %struct.vring_rx_desc* %144, %struct.vring_rx_desc** %16, align 8
  %145 = load %struct.wil_ring*, %struct.wil_ring** %4, align 8
  %146 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %145, i32 0, i32 3
  %147 = load %struct.wil_ctx*, %struct.wil_ctx** %146, align 8
  %148 = load %struct.wil_ring*, %struct.wil_ring** %4, align 8
  %149 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %148, i32 0, i32 2
  %150 = load i64, i64* %149, align 8
  %151 = getelementptr inbounds %struct.wil_ctx, %struct.wil_ctx* %147, i64 %150
  store %struct.wil_ctx* %151, %struct.wil_ctx** %10, align 8
  %152 = load %struct.vring_rx_desc*, %struct.vring_rx_desc** %15, align 8
  %153 = load %struct.vring_rx_desc*, %struct.vring_rx_desc** %16, align 8
  %154 = bitcast %struct.vring_rx_desc* %152 to i8*
  %155 = bitcast %struct.vring_rx_desc* %153 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %154, i8* align 4 %155, i64 8, i1 true)
  %156 = load %struct.vring_rx_desc*, %struct.vring_rx_desc** %15, align 8
  %157 = getelementptr inbounds %struct.vring_rx_desc, %struct.vring_rx_desc* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %157, i32 0, i32 1
  %159 = call i32 @wil_desc_addr(i32* %158)
  store i32 %159, i32* %8, align 4
  %160 = load %struct.vring_rx_desc*, %struct.vring_rx_desc** %15, align 8
  %161 = getelementptr inbounds %struct.vring_rx_desc, %struct.vring_rx_desc* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = call i32 @le16_to_cpu(i32 %163)
  store i32 %164, i32* %9, align 4
  %165 = load %struct.device*, %struct.device** %5, align 8
  %166 = load i32, i32* %8, align 4
  %167 = load i32, i32* %9, align 4
  %168 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %169 = call i32 @dma_unmap_single(%struct.device* %165, i32 %166, i32 %167, i32 %168)
  %170 = load %struct.wil_ctx*, %struct.wil_ctx** %10, align 8
  %171 = getelementptr inbounds %struct.wil_ctx, %struct.wil_ctx* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = call i32 @kfree_skb(i64 %172)
  %174 = load %struct.wil_ring*, %struct.wil_ring** %4, align 8
  %175 = call i32 @wil_ring_advance_head(%struct.wil_ring* %174, i32 1)
  br label %176

176:                                              ; preds = %135, %129
  br label %70

177:                                              ; preds = %70
  %178 = load %struct.device*, %struct.device** %5, align 8
  %179 = load i64, i64* %6, align 8
  %180 = load %struct.wil_ring*, %struct.wil_ring** %4, align 8
  %181 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %180, i32 0, i32 4
  %182 = load %struct.TYPE_8__*, %struct.TYPE_8__** %181, align 8
  %183 = bitcast %struct.TYPE_8__* %182 to i8*
  %184 = load %struct.wil_ring*, %struct.wil_ring** %4, align 8
  %185 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %184, i32 0, i32 5
  %186 = load i32, i32* %185, align 8
  %187 = call i32 @dma_free_coherent(%struct.device* %178, i64 %179, i8* %183, i32 %186)
  %188 = load %struct.wil_ring*, %struct.wil_ring** %4, align 8
  %189 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %188, i32 0, i32 3
  %190 = load %struct.wil_ctx*, %struct.wil_ctx** %189, align 8
  %191 = call i32 @kfree(%struct.wil_ctx* %190)
  %192 = load %struct.wil_ring*, %struct.wil_ring** %4, align 8
  %193 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %192, i32 0, i32 5
  store i32 0, i32* %193, align 8
  %194 = load %struct.wil_ring*, %struct.wil_ring** %4, align 8
  %195 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %194, i32 0, i32 4
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %195, align 8
  %196 = load %struct.wil_ring*, %struct.wil_ring** %4, align 8
  %197 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %196, i32 0, i32 3
  store %struct.wil_ctx* null, %struct.wil_ctx** %197, align 8
  ret void
}

declare dso_local %struct.device* @wil_to_dev(%struct.wil6210_priv*) #1

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @wil_dbg_misc(%struct.wil6210_priv*, i8*, i32, ...) #1

declare dso_local i32 @wil_ring_is_empty(%struct.wil_ring*) #1

declare dso_local i32 @wil_dbg_txrx(%struct.wil6210_priv*, i8*, i64) #1

declare dso_local i8* @wil_ring_next_tail(%struct.wil_ring*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @wil_txdesc_unmap(%struct.device*, %union.wil_tx_desc*, %struct.wil_ctx*) #1

declare dso_local i32 @dev_kfree_skb_any(i64) #1

declare dso_local i32 @wil_desc_addr(i32*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @dma_unmap_single(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @kfree_skb(i64) #1

declare dso_local i32 @wil_ring_advance_head(%struct.wil_ring*, i32) #1

declare dso_local i32 @dma_free_coherent(%struct.device*, i64, i8*, i32) #1

declare dso_local i32 @kfree(%struct.wil_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
