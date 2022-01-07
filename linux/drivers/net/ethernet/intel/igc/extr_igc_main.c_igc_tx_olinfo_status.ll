; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igc/extr_igc_main.c_igc_tx_olinfo_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igc/extr_igc_main.c_igc_tx_olinfo_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igc_ring = type { i32 }
%union.igc_adv_tx_desc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@IGC_ADVTXD_PAYLEN_SHIFT = common dso_local global i32 0, align 4
@IGC_TX_FLAGS_CSUM = common dso_local global i32 0, align 4
@IGC_TXD_POPTS_TXSM = common dso_local global i32 0, align 4
@IGC_TX_FLAGS_IPV4 = common dso_local global i32 0, align 4
@IGC_TXD_POPTS_IXSM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.igc_ring*, %union.igc_adv_tx_desc*, i32, i32)* @igc_tx_olinfo_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @igc_tx_olinfo_status(%struct.igc_ring* %0, %union.igc_adv_tx_desc* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.igc_ring*, align 8
  %6 = alloca %union.igc_adv_tx_desc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.igc_ring* %0, %struct.igc_ring** %5, align 8
  store %union.igc_adv_tx_desc* %1, %union.igc_adv_tx_desc** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %8, align 4
  %11 = load i32, i32* @IGC_ADVTXD_PAYLEN_SHIFT, align 4
  %12 = shl i32 %10, %11
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @IGC_TX_FLAGS_CSUM, align 4
  %15 = and i32 %13, %14
  %16 = load i32, i32* @IGC_TXD_POPTS_TXSM, align 4
  %17 = shl i32 %16, 8
  %18 = load i32, i32* @IGC_TX_FLAGS_CSUM, align 4
  %19 = sdiv i32 %17, %18
  %20 = mul nsw i32 %15, %19
  %21 = load i32, i32* %9, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @IGC_TX_FLAGS_IPV4, align 4
  %25 = and i32 %23, %24
  %26 = load i32, i32* @IGC_TXD_POPTS_IXSM, align 4
  %27 = shl i32 %26, 8
  %28 = load i32, i32* @IGC_TX_FLAGS_IPV4, align 4
  %29 = sdiv i32 %27, %28
  %30 = mul nsw i32 %25, %29
  %31 = load i32, i32* %9, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = call i32 @cpu_to_le32(i32 %33)
  %35 = load %union.igc_adv_tx_desc*, %union.igc_adv_tx_desc** %6, align 8
  %36 = bitcast %union.igc_adv_tx_desc* %35 to %struct.TYPE_2__*
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  store i32 %34, i32* %37, align 4
  ret void
}

declare dso_local i32 @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
