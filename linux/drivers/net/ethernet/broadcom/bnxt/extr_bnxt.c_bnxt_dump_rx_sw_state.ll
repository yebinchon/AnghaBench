; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_dump_rx_sw_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_dump_rx_sw_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt_napi = type { i32, %struct.TYPE_4__*, %struct.bnxt_rx_ring_info* }
%struct.TYPE_4__ = type { i32 }
%struct.bnxt_rx_ring_info = type { i32, i32, %struct.TYPE_6__, i32, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [81 x i8] c"[%d]: rx{fw_ring: %d prod: %x} rx_agg{fw_ring: %d agg_prod: %x sw_agg_prod: %x}\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnxt_napi*)* @bnxt_dump_rx_sw_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnxt_dump_rx_sw_state(%struct.bnxt_napi* %0) #0 {
  %2 = alloca %struct.bnxt_napi*, align 8
  %3 = alloca %struct.bnxt_rx_ring_info*, align 8
  %4 = alloca i32, align 4
  store %struct.bnxt_napi* %0, %struct.bnxt_napi** %2, align 8
  %5 = load %struct.bnxt_napi*, %struct.bnxt_napi** %2, align 8
  %6 = getelementptr inbounds %struct.bnxt_napi, %struct.bnxt_napi* %5, i32 0, i32 2
  %7 = load %struct.bnxt_rx_ring_info*, %struct.bnxt_rx_ring_info** %6, align 8
  store %struct.bnxt_rx_ring_info* %7, %struct.bnxt_rx_ring_info** %3, align 8
  %8 = load %struct.bnxt_napi*, %struct.bnxt_napi** %2, align 8
  %9 = getelementptr inbounds %struct.bnxt_napi, %struct.bnxt_napi* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %4, align 4
  %11 = load %struct.bnxt_rx_ring_info*, %struct.bnxt_rx_ring_info** %3, align 8
  %12 = icmp ne %struct.bnxt_rx_ring_info* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %39

14:                                               ; preds = %1
  %15 = load %struct.bnxt_napi*, %struct.bnxt_napi** %2, align 8
  %16 = getelementptr inbounds %struct.bnxt_napi, %struct.bnxt_napi* %15, i32 0, i32 1
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %4, align 4
  %21 = load %struct.bnxt_rx_ring_info*, %struct.bnxt_rx_ring_info** %3, align 8
  %22 = getelementptr inbounds %struct.bnxt_rx_ring_info, %struct.bnxt_rx_ring_info* %21, i32 0, i32 4
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.bnxt_rx_ring_info*, %struct.bnxt_rx_ring_info** %3, align 8
  %26 = getelementptr inbounds %struct.bnxt_rx_ring_info, %struct.bnxt_rx_ring_info* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.bnxt_rx_ring_info*, %struct.bnxt_rx_ring_info** %3, align 8
  %29 = getelementptr inbounds %struct.bnxt_rx_ring_info, %struct.bnxt_rx_ring_info* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.bnxt_rx_ring_info*, %struct.bnxt_rx_ring_info** %3, align 8
  %33 = getelementptr inbounds %struct.bnxt_rx_ring_info, %struct.bnxt_rx_ring_info* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.bnxt_rx_ring_info*, %struct.bnxt_rx_ring_info** %3, align 8
  %36 = getelementptr inbounds %struct.bnxt_rx_ring_info, %struct.bnxt_rx_ring_info* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @netdev_info(i32 %19, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %24, i32 %27, i32 %31, i32 %34, i32 %37)
  br label %39

39:                                               ; preds = %14, %13
  ret void
}

declare dso_local i32 @netdev_info(i32, i8*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
