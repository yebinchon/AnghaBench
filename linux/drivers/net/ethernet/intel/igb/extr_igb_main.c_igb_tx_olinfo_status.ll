; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_igb_main.c_igb_tx_olinfo_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_igb_main.c_igb_tx_olinfo_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igb_ring = type { i32, i32 }
%union.e1000_adv_tx_desc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@E1000_ADVTXD_PAYLEN_SHIFT = common dso_local global i32 0, align 4
@IGB_RING_FLAG_TX_CTX_IDX = common dso_local global i32 0, align 4
@IGB_TX_FLAGS_CSUM = common dso_local global i32 0, align 4
@E1000_TXD_POPTS_TXSM = common dso_local global i32 0, align 4
@IGB_TX_FLAGS_IPV4 = common dso_local global i32 0, align 4
@E1000_TXD_POPTS_IXSM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.igb_ring*, %union.e1000_adv_tx_desc*, i32, i32)* @igb_tx_olinfo_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @igb_tx_olinfo_status(%struct.igb_ring* %0, %union.e1000_adv_tx_desc* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.igb_ring*, align 8
  %6 = alloca %union.e1000_adv_tx_desc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.igb_ring* %0, %struct.igb_ring** %5, align 8
  store %union.e1000_adv_tx_desc* %1, %union.e1000_adv_tx_desc** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %8, align 4
  %11 = load i32, i32* @E1000_ADVTXD_PAYLEN_SHIFT, align 4
  %12 = shl i32 %10, %11
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* @IGB_RING_FLAG_TX_CTX_IDX, align 4
  %14 = load %struct.igb_ring*, %struct.igb_ring** %5, align 8
  %15 = getelementptr inbounds %struct.igb_ring, %struct.igb_ring* %14, i32 0, i32 1
  %16 = call i64 @test_bit(i32 %13, i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %4
  %19 = load %struct.igb_ring*, %struct.igb_ring** %5, align 8
  %20 = getelementptr inbounds %struct.igb_ring, %struct.igb_ring* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = shl i32 %21, 4
  %23 = load i32, i32* %9, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %9, align 4
  br label %25

25:                                               ; preds = %18, %4
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @IGB_TX_FLAGS_CSUM, align 4
  %28 = load i32, i32* @E1000_TXD_POPTS_TXSM, align 4
  %29 = shl i32 %28, 8
  %30 = call i32 @IGB_SET_FLAG(i32 %26, i32 %27, i32 %29)
  %31 = load i32, i32* %9, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @IGB_TX_FLAGS_IPV4, align 4
  %35 = load i32, i32* @E1000_TXD_POPTS_IXSM, align 4
  %36 = shl i32 %35, 8
  %37 = call i32 @IGB_SET_FLAG(i32 %33, i32 %34, i32 %36)
  %38 = load i32, i32* %9, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @cpu_to_le32(i32 %40)
  %42 = load %union.e1000_adv_tx_desc*, %union.e1000_adv_tx_desc** %6, align 8
  %43 = bitcast %union.e1000_adv_tx_desc* %42 to %struct.TYPE_2__*
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  store i32 %41, i32* %44, align 4
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @IGB_SET_FLAG(i32, i32, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
