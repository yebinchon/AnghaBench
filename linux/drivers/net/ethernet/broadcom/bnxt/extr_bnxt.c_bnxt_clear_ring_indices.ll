; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_clear_ring_indices.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_clear_ring_indices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt = type { i32, %struct.bnxt_napi** }
%struct.bnxt_napi = type { %struct.bnxt_rx_ring_info*, %struct.bnxt_tx_ring_info*, %struct.bnxt_cp_ring_info }
%struct.bnxt_rx_ring_info = type { i64, i64, i64, i64 }
%struct.bnxt_tx_ring_info = type { i64, i64 }
%struct.bnxt_cp_ring_info = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnxt*)* @bnxt_clear_ring_indices to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnxt_clear_ring_indices(%struct.bnxt* %0) #0 {
  %2 = alloca %struct.bnxt*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.bnxt_napi*, align 8
  %5 = alloca %struct.bnxt_cp_ring_info*, align 8
  %6 = alloca %struct.bnxt_rx_ring_info*, align 8
  %7 = alloca %struct.bnxt_tx_ring_info*, align 8
  store %struct.bnxt* %0, %struct.bnxt** %2, align 8
  %8 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %9 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %8, i32 0, i32 1
  %10 = load %struct.bnxt_napi**, %struct.bnxt_napi*** %9, align 8
  %11 = icmp ne %struct.bnxt_napi** %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %65

13:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %14

14:                                               ; preds = %62, %13
  %15 = load i32, i32* %3, align 4
  %16 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %17 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %65

20:                                               ; preds = %14
  %21 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %22 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %21, i32 0, i32 1
  %23 = load %struct.bnxt_napi**, %struct.bnxt_napi*** %22, align 8
  %24 = load i32, i32* %3, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.bnxt_napi*, %struct.bnxt_napi** %23, i64 %25
  %27 = load %struct.bnxt_napi*, %struct.bnxt_napi** %26, align 8
  store %struct.bnxt_napi* %27, %struct.bnxt_napi** %4, align 8
  %28 = load %struct.bnxt_napi*, %struct.bnxt_napi** %4, align 8
  %29 = icmp ne %struct.bnxt_napi* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %20
  br label %62

31:                                               ; preds = %20
  %32 = load %struct.bnxt_napi*, %struct.bnxt_napi** %4, align 8
  %33 = getelementptr inbounds %struct.bnxt_napi, %struct.bnxt_napi* %32, i32 0, i32 2
  store %struct.bnxt_cp_ring_info* %33, %struct.bnxt_cp_ring_info** %5, align 8
  %34 = load %struct.bnxt_cp_ring_info*, %struct.bnxt_cp_ring_info** %5, align 8
  %35 = getelementptr inbounds %struct.bnxt_cp_ring_info, %struct.bnxt_cp_ring_info* %34, i32 0, i32 0
  store i64 0, i64* %35, align 8
  %36 = load %struct.bnxt_napi*, %struct.bnxt_napi** %4, align 8
  %37 = getelementptr inbounds %struct.bnxt_napi, %struct.bnxt_napi* %36, i32 0, i32 1
  %38 = load %struct.bnxt_tx_ring_info*, %struct.bnxt_tx_ring_info** %37, align 8
  store %struct.bnxt_tx_ring_info* %38, %struct.bnxt_tx_ring_info** %7, align 8
  %39 = load %struct.bnxt_tx_ring_info*, %struct.bnxt_tx_ring_info** %7, align 8
  %40 = icmp ne %struct.bnxt_tx_ring_info* %39, null
  br i1 %40, label %41, label %46

41:                                               ; preds = %31
  %42 = load %struct.bnxt_tx_ring_info*, %struct.bnxt_tx_ring_info** %7, align 8
  %43 = getelementptr inbounds %struct.bnxt_tx_ring_info, %struct.bnxt_tx_ring_info* %42, i32 0, i32 1
  store i64 0, i64* %43, align 8
  %44 = load %struct.bnxt_tx_ring_info*, %struct.bnxt_tx_ring_info** %7, align 8
  %45 = getelementptr inbounds %struct.bnxt_tx_ring_info, %struct.bnxt_tx_ring_info* %44, i32 0, i32 0
  store i64 0, i64* %45, align 8
  br label %46

46:                                               ; preds = %41, %31
  %47 = load %struct.bnxt_napi*, %struct.bnxt_napi** %4, align 8
  %48 = getelementptr inbounds %struct.bnxt_napi, %struct.bnxt_napi* %47, i32 0, i32 0
  %49 = load %struct.bnxt_rx_ring_info*, %struct.bnxt_rx_ring_info** %48, align 8
  store %struct.bnxt_rx_ring_info* %49, %struct.bnxt_rx_ring_info** %6, align 8
  %50 = load %struct.bnxt_rx_ring_info*, %struct.bnxt_rx_ring_info** %6, align 8
  %51 = icmp ne %struct.bnxt_rx_ring_info* %50, null
  br i1 %51, label %52, label %61

52:                                               ; preds = %46
  %53 = load %struct.bnxt_rx_ring_info*, %struct.bnxt_rx_ring_info** %6, align 8
  %54 = getelementptr inbounds %struct.bnxt_rx_ring_info, %struct.bnxt_rx_ring_info* %53, i32 0, i32 3
  store i64 0, i64* %54, align 8
  %55 = load %struct.bnxt_rx_ring_info*, %struct.bnxt_rx_ring_info** %6, align 8
  %56 = getelementptr inbounds %struct.bnxt_rx_ring_info, %struct.bnxt_rx_ring_info* %55, i32 0, i32 2
  store i64 0, i64* %56, align 8
  %57 = load %struct.bnxt_rx_ring_info*, %struct.bnxt_rx_ring_info** %6, align 8
  %58 = getelementptr inbounds %struct.bnxt_rx_ring_info, %struct.bnxt_rx_ring_info* %57, i32 0, i32 1
  store i64 0, i64* %58, align 8
  %59 = load %struct.bnxt_rx_ring_info*, %struct.bnxt_rx_ring_info** %6, align 8
  %60 = getelementptr inbounds %struct.bnxt_rx_ring_info, %struct.bnxt_rx_ring_info* %59, i32 0, i32 0
  store i64 0, i64* %60, align 8
  br label %61

61:                                               ; preds = %52, %46
  br label %62

62:                                               ; preds = %61, %30
  %63 = load i32, i32* %3, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %3, align 4
  br label %14

65:                                               ; preds = %12, %14
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
