; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_get_agg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_get_agg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rx_agg_cmp = type { i32 }
%struct.bnxt = type { i32 }
%struct.bnxt_cp_ring_info = type { i32** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rx_agg_cmp* (%struct.bnxt*, %struct.bnxt_cp_ring_info*, i32, i32)* @bnxt_get_agg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rx_agg_cmp* @bnxt_get_agg(%struct.bnxt* %0, %struct.bnxt_cp_ring_info* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.bnxt*, align 8
  %6 = alloca %struct.bnxt_cp_ring_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.rx_agg_cmp*, align 8
  store %struct.bnxt* %0, %struct.bnxt** %5, align 8
  store %struct.bnxt_cp_ring_info* %1, %struct.bnxt_cp_ring_info** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* %8, align 4
  %12 = call i32 @ADV_RAW_CMP(i32 %10, i32 %11)
  %13 = call i32 @RING_CMP(i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load %struct.bnxt_cp_ring_info*, %struct.bnxt_cp_ring_info** %6, align 8
  %15 = getelementptr inbounds %struct.bnxt_cp_ring_info, %struct.bnxt_cp_ring_info* %14, i32 0, i32 0
  %16 = load i32**, i32*** %15, align 8
  %17 = load i32, i32* %7, align 4
  %18 = call i64 @CP_RING(i32 %17)
  %19 = getelementptr inbounds i32*, i32** %16, i64 %18
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* %7, align 4
  %22 = call i64 @CP_IDX(i32 %21)
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = bitcast i32* %23 to %struct.rx_agg_cmp*
  store %struct.rx_agg_cmp* %24, %struct.rx_agg_cmp** %9, align 8
  %25 = load %struct.rx_agg_cmp*, %struct.rx_agg_cmp** %9, align 8
  ret %struct.rx_agg_cmp* %25
}

declare dso_local i32 @RING_CMP(i32) #1

declare dso_local i32 @ADV_RAW_CMP(i32, i32) #1

declare dso_local i64 @CP_RING(i32) #1

declare dso_local i64 @CP_IDX(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
