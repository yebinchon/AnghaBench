; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt_ethtool.c_bnxt_poll_loopback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt_ethtool.c_bnxt_poll_loopback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt = type { i32 }
%struct.bnxt_cp_ring_info = type { i32, %struct.tx_cmp** }
%struct.tx_cmp = type { i32 }

@EIO = common dso_local global i32 0, align 4
@CMP_TYPE_RX_L2_CMP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnxt*, %struct.bnxt_cp_ring_info*, i32)* @bnxt_poll_loopback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnxt_poll_loopback(%struct.bnxt* %0, %struct.bnxt_cp_ring_info* %1, i32 %2) #0 {
  %4 = alloca %struct.bnxt*, align 8
  %5 = alloca %struct.bnxt_cp_ring_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.tx_cmp*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.bnxt* %0, %struct.bnxt** %4, align 8
  store %struct.bnxt_cp_ring_info* %1, %struct.bnxt_cp_ring_info** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load i32, i32* @EIO, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %8, align 4
  %14 = load %struct.bnxt_cp_ring_info*, %struct.bnxt_cp_ring_info** %5, align 8
  %15 = getelementptr inbounds %struct.bnxt_cp_ring_info, %struct.bnxt_cp_ring_info* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %9, align 4
  store i32 0, i32* %11, align 4
  br label %17

17:                                               ; preds = %58, %3
  %18 = load i32, i32* %11, align 4
  %19 = icmp slt i32 %18, 200
  br i1 %19, label %20, label %61

20:                                               ; preds = %17
  %21 = load i32, i32* %9, align 4
  %22 = call i32 @RING_CMP(i32 %21)
  store i32 %22, i32* %10, align 4
  %23 = load %struct.bnxt_cp_ring_info*, %struct.bnxt_cp_ring_info** %5, align 8
  %24 = getelementptr inbounds %struct.bnxt_cp_ring_info, %struct.bnxt_cp_ring_info* %23, i32 0, i32 1
  %25 = load %struct.tx_cmp**, %struct.tx_cmp*** %24, align 8
  %26 = load i32, i32* %10, align 4
  %27 = call i64 @CP_RING(i32 %26)
  %28 = getelementptr inbounds %struct.tx_cmp*, %struct.tx_cmp** %25, i64 %27
  %29 = load %struct.tx_cmp*, %struct.tx_cmp** %28, align 8
  %30 = load i32, i32* %10, align 4
  %31 = call i64 @CP_IDX(i32 %30)
  %32 = getelementptr inbounds %struct.tx_cmp, %struct.tx_cmp* %29, i64 %31
  store %struct.tx_cmp* %32, %struct.tx_cmp** %7, align 8
  %33 = load %struct.tx_cmp*, %struct.tx_cmp** %7, align 8
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @TX_CMP_VALID(%struct.tx_cmp* %33, i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %20
  %38 = call i32 @udelay(i32 5)
  br label %58

39:                                               ; preds = %20
  %40 = call i32 (...) @dma_rmb()
  %41 = load %struct.tx_cmp*, %struct.tx_cmp** %7, align 8
  %42 = call i64 @TX_CMP_TYPE(%struct.tx_cmp* %41)
  %43 = load i64, i64* @CMP_TYPE_RX_L2_CMP, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %55

45:                                               ; preds = %39
  %46 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %47 = load %struct.bnxt_cp_ring_info*, %struct.bnxt_cp_ring_info** %5, align 8
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @bnxt_rx_loopback(%struct.bnxt* %46, %struct.bnxt_cp_ring_info* %47, i32 %48, i32 %49)
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %9, align 4
  %52 = call i32 @NEXT_RAW_CMP(i32 %51)
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* %9, align 4
  %54 = call i32 @NEXT_RAW_CMP(i32 %53)
  store i32 %54, i32* %9, align 4
  br label %61

55:                                               ; preds = %39
  %56 = load i32, i32* %9, align 4
  %57 = call i32 @NEXT_RAW_CMP(i32 %56)
  store i32 %57, i32* %9, align 4
  br label %58

58:                                               ; preds = %55, %37
  %59 = load i32, i32* %11, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %11, align 4
  br label %17

61:                                               ; preds = %45, %17
  %62 = load i32, i32* %9, align 4
  %63 = load %struct.bnxt_cp_ring_info*, %struct.bnxt_cp_ring_info** %5, align 8
  %64 = getelementptr inbounds %struct.bnxt_cp_ring_info, %struct.bnxt_cp_ring_info* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  %65 = load i32, i32* %8, align 4
  ret i32 %65
}

declare dso_local i32 @RING_CMP(i32) #1

declare dso_local i64 @CP_RING(i32) #1

declare dso_local i64 @CP_IDX(i32) #1

declare dso_local i32 @TX_CMP_VALID(%struct.tx_cmp*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @dma_rmb(...) #1

declare dso_local i64 @TX_CMP_TYPE(%struct.tx_cmp*) #1

declare dso_local i32 @bnxt_rx_loopback(%struct.bnxt*, %struct.bnxt_cp_ring_info*, i32, i32) #1

declare dso_local i32 @NEXT_RAW_CMP(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
