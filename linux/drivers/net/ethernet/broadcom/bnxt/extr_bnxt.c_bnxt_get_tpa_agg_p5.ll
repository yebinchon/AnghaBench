; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_get_tpa_agg_p5.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_get_tpa_agg_p5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rx_agg_cmp = type { i32 }
%struct.bnxt = type { i32 }
%struct.bnxt_rx_ring_info = type { %struct.bnxt_tpa_info* }
%struct.bnxt_tpa_info = type { %struct.rx_agg_cmp* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rx_agg_cmp* (%struct.bnxt*, %struct.bnxt_rx_ring_info*, i64, i64)* @bnxt_get_tpa_agg_p5 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rx_agg_cmp* @bnxt_get_tpa_agg_p5(%struct.bnxt* %0, %struct.bnxt_rx_ring_info* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.bnxt*, align 8
  %6 = alloca %struct.bnxt_rx_ring_info*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.bnxt_tpa_info*, align 8
  store %struct.bnxt* %0, %struct.bnxt** %5, align 8
  store %struct.bnxt_rx_ring_info* %1, %struct.bnxt_rx_ring_info** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %10 = load %struct.bnxt_rx_ring_info*, %struct.bnxt_rx_ring_info** %6, align 8
  %11 = getelementptr inbounds %struct.bnxt_rx_ring_info, %struct.bnxt_rx_ring_info* %10, i32 0, i32 0
  %12 = load %struct.bnxt_tpa_info*, %struct.bnxt_tpa_info** %11, align 8
  %13 = load i64, i64* %7, align 8
  %14 = getelementptr inbounds %struct.bnxt_tpa_info, %struct.bnxt_tpa_info* %12, i64 %13
  store %struct.bnxt_tpa_info* %14, %struct.bnxt_tpa_info** %9, align 8
  %15 = load %struct.bnxt_tpa_info*, %struct.bnxt_tpa_info** %9, align 8
  %16 = getelementptr inbounds %struct.bnxt_tpa_info, %struct.bnxt_tpa_info* %15, i32 0, i32 0
  %17 = load %struct.rx_agg_cmp*, %struct.rx_agg_cmp** %16, align 8
  %18 = load i64, i64* %8, align 8
  %19 = getelementptr inbounds %struct.rx_agg_cmp, %struct.rx_agg_cmp* %17, i64 %18
  ret %struct.rx_agg_cmp* %19
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
