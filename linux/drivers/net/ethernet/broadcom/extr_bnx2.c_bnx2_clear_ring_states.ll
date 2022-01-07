; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bnx2.c_bnx2_clear_ring_states.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bnx2.c_bnx2_clear_ring_states.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2 = type { %struct.bnx2_napi* }
%struct.bnx2_napi = type { %struct.bnx2_rx_ring_info, %struct.bnx2_tx_ring_info }
%struct.bnx2_rx_ring_info = type { i64, i64, i64, i64, i64 }
%struct.bnx2_tx_ring_info = type { i64, i64 }

@BNX2_MAX_MSIX_VEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2*)* @bnx2_clear_ring_states to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2_clear_ring_states(%struct.bnx2* %0) #0 {
  %2 = alloca %struct.bnx2*, align 8
  %3 = alloca %struct.bnx2_napi*, align 8
  %4 = alloca %struct.bnx2_tx_ring_info*, align 8
  %5 = alloca %struct.bnx2_rx_ring_info*, align 8
  %6 = alloca i32, align 4
  store %struct.bnx2* %0, %struct.bnx2** %2, align 8
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %36, %1
  %8 = load i32, i32* %6, align 4
  %9 = load i32, i32* @BNX2_MAX_MSIX_VEC, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %39

11:                                               ; preds = %7
  %12 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %13 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %12, i32 0, i32 0
  %14 = load %struct.bnx2_napi*, %struct.bnx2_napi** %13, align 8
  %15 = load i32, i32* %6, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.bnx2_napi, %struct.bnx2_napi* %14, i64 %16
  store %struct.bnx2_napi* %17, %struct.bnx2_napi** %3, align 8
  %18 = load %struct.bnx2_napi*, %struct.bnx2_napi** %3, align 8
  %19 = getelementptr inbounds %struct.bnx2_napi, %struct.bnx2_napi* %18, i32 0, i32 1
  store %struct.bnx2_tx_ring_info* %19, %struct.bnx2_tx_ring_info** %4, align 8
  %20 = load %struct.bnx2_napi*, %struct.bnx2_napi** %3, align 8
  %21 = getelementptr inbounds %struct.bnx2_napi, %struct.bnx2_napi* %20, i32 0, i32 0
  store %struct.bnx2_rx_ring_info* %21, %struct.bnx2_rx_ring_info** %5, align 8
  %22 = load %struct.bnx2_tx_ring_info*, %struct.bnx2_tx_ring_info** %4, align 8
  %23 = getelementptr inbounds %struct.bnx2_tx_ring_info, %struct.bnx2_tx_ring_info* %22, i32 0, i32 1
  store i64 0, i64* %23, align 8
  %24 = load %struct.bnx2_tx_ring_info*, %struct.bnx2_tx_ring_info** %4, align 8
  %25 = getelementptr inbounds %struct.bnx2_tx_ring_info, %struct.bnx2_tx_ring_info* %24, i32 0, i32 0
  store i64 0, i64* %25, align 8
  %26 = load %struct.bnx2_rx_ring_info*, %struct.bnx2_rx_ring_info** %5, align 8
  %27 = getelementptr inbounds %struct.bnx2_rx_ring_info, %struct.bnx2_rx_ring_info* %26, i32 0, i32 4
  store i64 0, i64* %27, align 8
  %28 = load %struct.bnx2_rx_ring_info*, %struct.bnx2_rx_ring_info** %5, align 8
  %29 = getelementptr inbounds %struct.bnx2_rx_ring_info, %struct.bnx2_rx_ring_info* %28, i32 0, i32 3
  store i64 0, i64* %29, align 8
  %30 = load %struct.bnx2_rx_ring_info*, %struct.bnx2_rx_ring_info** %5, align 8
  %31 = getelementptr inbounds %struct.bnx2_rx_ring_info, %struct.bnx2_rx_ring_info* %30, i32 0, i32 2
  store i64 0, i64* %31, align 8
  %32 = load %struct.bnx2_rx_ring_info*, %struct.bnx2_rx_ring_info** %5, align 8
  %33 = getelementptr inbounds %struct.bnx2_rx_ring_info, %struct.bnx2_rx_ring_info* %32, i32 0, i32 1
  store i64 0, i64* %33, align 8
  %34 = load %struct.bnx2_rx_ring_info*, %struct.bnx2_rx_ring_info** %5, align 8
  %35 = getelementptr inbounds %struct.bnx2_rx_ring_info, %struct.bnx2_rx_ring_info* %34, i32 0, i32 0
  store i64 0, i64* %35, align 8
  br label %36

36:                                               ; preds = %11
  %37 = load i32, i32* %6, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %6, align 4
  br label %7

39:                                               ; preds = %7
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
