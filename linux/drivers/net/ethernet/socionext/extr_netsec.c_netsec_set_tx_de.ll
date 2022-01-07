; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/socionext/extr_netsec.c_netsec_set_tx_de.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/socionext/extr_netsec.c_netsec_set_tx_de.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netsec_priv = type { i32 }
%struct.netsec_desc_ring = type { i32, %struct.netsec_desc*, %struct.netsec_de* }
%struct.netsec_de = type { i32, i32, i32, i32 }
%struct.netsec_tx_pkt_ctrl = type { i32, i32, i32 }
%struct.netsec_desc = type { i32, i64, i8*, i8*, i32 }

@DESC_SZ = common dso_local global i32 0, align 4
@NETSEC_TX_SHIFT_OWN_FIELD = common dso_local global i32 0, align 4
@NETSEC_TX_SHIFT_PT_FIELD = common dso_local global i32 0, align 4
@NETSEC_RING_GMAC = common dso_local global i32 0, align 4
@NETSEC_TX_SHIFT_TDRID_FIELD = common dso_local global i32 0, align 4
@NETSEC_TX_SHIFT_FS_FIELD = common dso_local global i32 0, align 4
@NETSEC_TX_LAST = common dso_local global i32 0, align 4
@NETSEC_TX_SHIFT_CO = common dso_local global i32 0, align 4
@NETSEC_TX_SHIFT_SO = common dso_local global i32 0, align 4
@NETSEC_TX_SHIFT_TRS_FIELD = common dso_local global i32 0, align 4
@DESC_NUM = common dso_local global i32 0, align 4
@NETSEC_TX_SHIFT_LD_FIELD = common dso_local global i32 0, align 4
@TYPE_NETSEC_SKB = common dso_local global i64 0, align 8
@TYPE_NETSEC_XDP_TX = common dso_local global i64 0, align 8
@TYPE_NETSEC_XDP_NDO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.netsec_priv*, %struct.netsec_desc_ring*, %struct.netsec_tx_pkt_ctrl*, %struct.netsec_desc*, i8*)* @netsec_set_tx_de to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @netsec_set_tx_de(%struct.netsec_priv* %0, %struct.netsec_desc_ring* %1, %struct.netsec_tx_pkt_ctrl* %2, %struct.netsec_desc* %3, i8* %4) #0 {
  %6 = alloca %struct.netsec_priv*, align 8
  %7 = alloca %struct.netsec_desc_ring*, align 8
  %8 = alloca %struct.netsec_tx_pkt_ctrl*, align 8
  %9 = alloca %struct.netsec_desc*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.netsec_de*, align 8
  %13 = alloca i32, align 4
  store %struct.netsec_priv* %0, %struct.netsec_priv** %6, align 8
  store %struct.netsec_desc_ring* %1, %struct.netsec_desc_ring** %7, align 8
  store %struct.netsec_tx_pkt_ctrl* %2, %struct.netsec_tx_pkt_ctrl** %8, align 8
  store %struct.netsec_desc* %3, %struct.netsec_desc** %9, align 8
  store i8* %4, i8** %10, align 8
  %14 = load %struct.netsec_desc_ring*, %struct.netsec_desc_ring** %7, align 8
  %15 = getelementptr inbounds %struct.netsec_desc_ring, %struct.netsec_desc_ring* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %11, align 4
  %17 = load %struct.netsec_desc_ring*, %struct.netsec_desc_ring** %7, align 8
  %18 = getelementptr inbounds %struct.netsec_desc_ring, %struct.netsec_desc_ring* %17, i32 0, i32 2
  %19 = load %struct.netsec_de*, %struct.netsec_de** %18, align 8
  %20 = load i32, i32* @DESC_SZ, align 4
  %21 = load i32, i32* %11, align 4
  %22 = mul nsw i32 %20, %21
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.netsec_de, %struct.netsec_de* %19, i64 %23
  store %struct.netsec_de* %24, %struct.netsec_de** %12, align 8
  %25 = load i32, i32* @NETSEC_TX_SHIFT_OWN_FIELD, align 4
  %26 = shl i32 1, %25
  %27 = load i32, i32* @NETSEC_TX_SHIFT_PT_FIELD, align 4
  %28 = shl i32 1, %27
  %29 = or i32 %26, %28
  %30 = load i32, i32* @NETSEC_RING_GMAC, align 4
  %31 = load i32, i32* @NETSEC_TX_SHIFT_TDRID_FIELD, align 4
  %32 = shl i32 %30, %31
  %33 = or i32 %29, %32
  %34 = load i32, i32* @NETSEC_TX_SHIFT_FS_FIELD, align 4
  %35 = shl i32 1, %34
  %36 = or i32 %33, %35
  %37 = load i32, i32* @NETSEC_TX_LAST, align 4
  %38 = shl i32 1, %37
  %39 = or i32 %36, %38
  %40 = load %struct.netsec_tx_pkt_ctrl*, %struct.netsec_tx_pkt_ctrl** %8, align 8
  %41 = getelementptr inbounds %struct.netsec_tx_pkt_ctrl, %struct.netsec_tx_pkt_ctrl* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @NETSEC_TX_SHIFT_CO, align 4
  %44 = shl i32 %42, %43
  %45 = or i32 %39, %44
  %46 = load %struct.netsec_tx_pkt_ctrl*, %struct.netsec_tx_pkt_ctrl** %8, align 8
  %47 = getelementptr inbounds %struct.netsec_tx_pkt_ctrl, %struct.netsec_tx_pkt_ctrl* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @NETSEC_TX_SHIFT_SO, align 4
  %50 = shl i32 %48, %49
  %51 = or i32 %45, %50
  %52 = load i32, i32* @NETSEC_TX_SHIFT_TRS_FIELD, align 4
  %53 = shl i32 1, %52
  %54 = or i32 %51, %53
  store i32 %54, i32* %13, align 4
  %55 = load i32, i32* %11, align 4
  %56 = load i32, i32* @DESC_NUM, align 4
  %57 = sub nsw i32 %56, 1
  %58 = icmp eq i32 %55, %57
  br i1 %58, label %59, label %64

59:                                               ; preds = %5
  %60 = load i32, i32* @NETSEC_TX_SHIFT_LD_FIELD, align 4
  %61 = shl i32 1, %60
  %62 = load i32, i32* %13, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %13, align 4
  br label %64

64:                                               ; preds = %59, %5
  %65 = load %struct.netsec_desc*, %struct.netsec_desc** %9, align 8
  %66 = getelementptr inbounds %struct.netsec_desc, %struct.netsec_desc* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @upper_32_bits(i32 %67)
  %69 = load %struct.netsec_de*, %struct.netsec_de** %12, align 8
  %70 = getelementptr inbounds %struct.netsec_de, %struct.netsec_de* %69, i32 0, i32 3
  store i32 %68, i32* %70, align 4
  %71 = load %struct.netsec_desc*, %struct.netsec_desc** %9, align 8
  %72 = getelementptr inbounds %struct.netsec_desc, %struct.netsec_desc* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @lower_32_bits(i32 %73)
  %75 = load %struct.netsec_de*, %struct.netsec_de** %12, align 8
  %76 = getelementptr inbounds %struct.netsec_de, %struct.netsec_de* %75, i32 0, i32 2
  store i32 %74, i32* %76, align 4
  %77 = load %struct.netsec_tx_pkt_ctrl*, %struct.netsec_tx_pkt_ctrl** %8, align 8
  %78 = getelementptr inbounds %struct.netsec_tx_pkt_ctrl, %struct.netsec_tx_pkt_ctrl* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = shl i32 %79, 16
  %81 = load %struct.netsec_desc*, %struct.netsec_desc** %9, align 8
  %82 = getelementptr inbounds %struct.netsec_desc, %struct.netsec_desc* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = or i32 %80, %83
  %85 = load %struct.netsec_de*, %struct.netsec_de** %12, align 8
  %86 = getelementptr inbounds %struct.netsec_de, %struct.netsec_de* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 4
  %87 = load i32, i32* %13, align 4
  %88 = load %struct.netsec_de*, %struct.netsec_de** %12, align 8
  %89 = getelementptr inbounds %struct.netsec_de, %struct.netsec_de* %88, i32 0, i32 1
  store i32 %87, i32* %89, align 4
  %90 = load %struct.netsec_desc_ring*, %struct.netsec_desc_ring** %7, align 8
  %91 = getelementptr inbounds %struct.netsec_desc_ring, %struct.netsec_desc_ring* %90, i32 0, i32 1
  %92 = load %struct.netsec_desc*, %struct.netsec_desc** %91, align 8
  %93 = load i32, i32* %11, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.netsec_desc, %struct.netsec_desc* %92, i64 %94
  %96 = load %struct.netsec_desc*, %struct.netsec_desc** %9, align 8
  %97 = bitcast %struct.netsec_desc* %95 to i8*
  %98 = bitcast %struct.netsec_desc* %96 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %97, i8* align 8 %98, i64 40, i1 false)
  %99 = load %struct.netsec_desc*, %struct.netsec_desc** %9, align 8
  %100 = getelementptr inbounds %struct.netsec_desc, %struct.netsec_desc* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @TYPE_NETSEC_SKB, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %113

104:                                              ; preds = %64
  %105 = load i8*, i8** %10, align 8
  %106 = load %struct.netsec_desc_ring*, %struct.netsec_desc_ring** %7, align 8
  %107 = getelementptr inbounds %struct.netsec_desc_ring, %struct.netsec_desc_ring* %106, i32 0, i32 1
  %108 = load %struct.netsec_desc*, %struct.netsec_desc** %107, align 8
  %109 = load i32, i32* %11, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.netsec_desc, %struct.netsec_desc* %108, i64 %110
  %112 = getelementptr inbounds %struct.netsec_desc, %struct.netsec_desc* %111, i32 0, i32 3
  store i8* %105, i8** %112, align 8
  br label %135

113:                                              ; preds = %64
  %114 = load %struct.netsec_desc*, %struct.netsec_desc** %9, align 8
  %115 = getelementptr inbounds %struct.netsec_desc, %struct.netsec_desc* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @TYPE_NETSEC_XDP_TX, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %125, label %119

119:                                              ; preds = %113
  %120 = load %struct.netsec_desc*, %struct.netsec_desc** %9, align 8
  %121 = getelementptr inbounds %struct.netsec_desc, %struct.netsec_desc* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @TYPE_NETSEC_XDP_NDO, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %125, label %134

125:                                              ; preds = %119, %113
  %126 = load i8*, i8** %10, align 8
  %127 = load %struct.netsec_desc_ring*, %struct.netsec_desc_ring** %7, align 8
  %128 = getelementptr inbounds %struct.netsec_desc_ring, %struct.netsec_desc_ring* %127, i32 0, i32 1
  %129 = load %struct.netsec_desc*, %struct.netsec_desc** %128, align 8
  %130 = load i32, i32* %11, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.netsec_desc, %struct.netsec_desc* %129, i64 %131
  %133 = getelementptr inbounds %struct.netsec_desc, %struct.netsec_desc* %132, i32 0, i32 2
  store i8* %126, i8** %133, align 8
  br label %134

134:                                              ; preds = %125, %119
  br label %135

135:                                              ; preds = %134, %104
  %136 = load %struct.netsec_desc_ring*, %struct.netsec_desc_ring** %7, align 8
  %137 = getelementptr inbounds %struct.netsec_desc_ring, %struct.netsec_desc_ring* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = add nsw i32 %138, 1
  %140 = load i32, i32* @DESC_NUM, align 4
  %141 = srem i32 %139, %140
  %142 = load %struct.netsec_desc_ring*, %struct.netsec_desc_ring** %7, align 8
  %143 = getelementptr inbounds %struct.netsec_desc_ring, %struct.netsec_desc_ring* %142, i32 0, i32 0
  store i32 %141, i32* %143, align 8
  ret void
}

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
