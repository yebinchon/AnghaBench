; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_tpa_agg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_tpa_agg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt = type { i32 }
%struct.bnxt_rx_ring_info = type { %struct.bnxt_tpa_info* }
%struct.bnxt_tpa_info = type { i64, %struct.rx_agg_cmp* }
%struct.rx_agg_cmp = type { i32 }

@MAX_SKB_FRAGS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnxt*, %struct.bnxt_rx_ring_info*, %struct.rx_agg_cmp*)* @bnxt_tpa_agg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnxt_tpa_agg(%struct.bnxt* %0, %struct.bnxt_rx_ring_info* %1, %struct.rx_agg_cmp* %2) #0 {
  %4 = alloca %struct.bnxt*, align 8
  %5 = alloca %struct.bnxt_rx_ring_info*, align 8
  %6 = alloca %struct.rx_agg_cmp*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.bnxt_tpa_info*, align 8
  store %struct.bnxt* %0, %struct.bnxt** %4, align 8
  store %struct.bnxt_rx_ring_info* %1, %struct.bnxt_rx_ring_info** %5, align 8
  store %struct.rx_agg_cmp* %2, %struct.rx_agg_cmp** %6, align 8
  %9 = load %struct.rx_agg_cmp*, %struct.rx_agg_cmp** %6, align 8
  %10 = call i64 @TPA_AGG_AGG_ID(%struct.rx_agg_cmp* %9)
  store i64 %10, i64* %7, align 8
  %11 = load %struct.bnxt_rx_ring_info*, %struct.bnxt_rx_ring_info** %5, align 8
  %12 = load i64, i64* %7, align 8
  %13 = call i64 @bnxt_lookup_agg_idx(%struct.bnxt_rx_ring_info* %11, i64 %12)
  store i64 %13, i64* %7, align 8
  %14 = load %struct.bnxt_rx_ring_info*, %struct.bnxt_rx_ring_info** %5, align 8
  %15 = getelementptr inbounds %struct.bnxt_rx_ring_info, %struct.bnxt_rx_ring_info* %14, i32 0, i32 0
  %16 = load %struct.bnxt_tpa_info*, %struct.bnxt_tpa_info** %15, align 8
  %17 = load i64, i64* %7, align 8
  %18 = getelementptr inbounds %struct.bnxt_tpa_info, %struct.bnxt_tpa_info* %16, i64 %17
  store %struct.bnxt_tpa_info* %18, %struct.bnxt_tpa_info** %8, align 8
  %19 = load %struct.bnxt_tpa_info*, %struct.bnxt_tpa_info** %8, align 8
  %20 = getelementptr inbounds %struct.bnxt_tpa_info, %struct.bnxt_tpa_info* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @MAX_SKB_FRAGS, align 8
  %23 = icmp sge i64 %21, %22
  %24 = zext i1 %23 to i32
  %25 = call i32 @BUG_ON(i32 %24)
  %26 = load %struct.bnxt_tpa_info*, %struct.bnxt_tpa_info** %8, align 8
  %27 = getelementptr inbounds %struct.bnxt_tpa_info, %struct.bnxt_tpa_info* %26, i32 0, i32 1
  %28 = load %struct.rx_agg_cmp*, %struct.rx_agg_cmp** %27, align 8
  %29 = load %struct.bnxt_tpa_info*, %struct.bnxt_tpa_info** %8, align 8
  %30 = getelementptr inbounds %struct.bnxt_tpa_info, %struct.bnxt_tpa_info* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %31, 1
  store i64 %32, i64* %30, align 8
  %33 = getelementptr inbounds %struct.rx_agg_cmp, %struct.rx_agg_cmp* %28, i64 %31
  %34 = load %struct.rx_agg_cmp*, %struct.rx_agg_cmp** %6, align 8
  %35 = bitcast %struct.rx_agg_cmp* %33 to i8*
  %36 = bitcast %struct.rx_agg_cmp* %34 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %35, i8* align 4 %36, i64 4, i1 false)
  ret void
}

declare dso_local i64 @TPA_AGG_AGG_ID(%struct.rx_agg_cmp*) #1

declare dso_local i64 @bnxt_lookup_agg_idx(%struct.bnxt_rx_ring_info*, i64) #1

declare dso_local i32 @BUG_ON(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
