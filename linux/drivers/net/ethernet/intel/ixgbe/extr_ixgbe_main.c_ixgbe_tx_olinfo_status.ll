; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_tx_olinfo_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_tx_olinfo_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.ixgbe_adv_tx_desc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@IXGBE_ADVTXD_PAYLEN_SHIFT = common dso_local global i32 0, align 4
@IXGBE_TX_FLAGS_CSUM = common dso_local global i32 0, align 4
@IXGBE_ADVTXD_POPTS_TXSM = common dso_local global i32 0, align 4
@IXGBE_TX_FLAGS_IPV4 = common dso_local global i32 0, align 4
@IXGBE_ADVTXD_POPTS_IXSM = common dso_local global i32 0, align 4
@IXGBE_TX_FLAGS_IPSEC = common dso_local global i32 0, align 4
@IXGBE_ADVTXD_POPTS_IPSEC = common dso_local global i32 0, align 4
@IXGBE_TX_FLAGS_CC = common dso_local global i32 0, align 4
@IXGBE_ADVTXD_CC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%union.ixgbe_adv_tx_desc*, i32, i32)* @ixgbe_tx_olinfo_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbe_tx_olinfo_status(%union.ixgbe_adv_tx_desc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %union.ixgbe_adv_tx_desc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %union.ixgbe_adv_tx_desc* %0, %union.ixgbe_adv_tx_desc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = load i32, i32* @IXGBE_ADVTXD_PAYLEN_SHIFT, align 4
  %10 = shl i32 %8, %9
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @IXGBE_TX_FLAGS_CSUM, align 4
  %13 = load i32, i32* @IXGBE_ADVTXD_POPTS_TXSM, align 4
  %14 = call i32 @IXGBE_SET_FLAG(i32 %11, i32 %12, i32 %13)
  %15 = load i32, i32* %7, align 4
  %16 = or i32 %15, %14
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @IXGBE_TX_FLAGS_IPV4, align 4
  %19 = load i32, i32* @IXGBE_ADVTXD_POPTS_IXSM, align 4
  %20 = call i32 @IXGBE_SET_FLAG(i32 %17, i32 %18, i32 %19)
  %21 = load i32, i32* %7, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @IXGBE_TX_FLAGS_IPSEC, align 4
  %25 = load i32, i32* @IXGBE_ADVTXD_POPTS_IPSEC, align 4
  %26 = call i32 @IXGBE_SET_FLAG(i32 %23, i32 %24, i32 %25)
  %27 = load i32, i32* %7, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @IXGBE_TX_FLAGS_CC, align 4
  %31 = load i32, i32* @IXGBE_ADVTXD_CC, align 4
  %32 = call i32 @IXGBE_SET_FLAG(i32 %29, i32 %30, i32 %31)
  %33 = load i32, i32* %7, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @cpu_to_le32(i32 %35)
  %37 = load %union.ixgbe_adv_tx_desc*, %union.ixgbe_adv_tx_desc** %4, align 8
  %38 = bitcast %union.ixgbe_adv_tx_desc* %37 to %struct.TYPE_2__*
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  store i32 %36, i32* %39, align 4
  ret void
}

declare dso_local i32 @IXGBE_SET_FLAG(i32, i32, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
