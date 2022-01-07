; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbevf/extr_ixgbevf_main.c_ixgbevf_tx_olinfo_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbevf/extr_ixgbevf_main.c_ixgbevf_tx_olinfo_status.c"
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
@IXGBE_TX_FLAGS_TSO = common dso_local global i32 0, align 4
@IXGBE_ADVTXD_IDX_SHIFT = common dso_local global i32 0, align 4
@IXGBE_ADVTXD_CC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%union.ixgbe_adv_tx_desc*, i32, i32)* @ixgbevf_tx_olinfo_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbevf_tx_olinfo_status(%union.ixgbe_adv_tx_desc* %0, i32 %1, i32 %2) #0 {
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
  %11 = call i32 @cpu_to_le32(i32 %10)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @IXGBE_TX_FLAGS_CSUM, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %3
  %17 = load i32, i32* @IXGBE_ADVTXD_POPTS_TXSM, align 4
  %18 = call i32 @cpu_to_le32(i32 %17)
  %19 = load i32, i32* %7, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %7, align 4
  br label %21

21:                                               ; preds = %16, %3
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @IXGBE_TX_FLAGS_IPV4, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = load i32, i32* @IXGBE_ADVTXD_POPTS_IXSM, align 4
  %28 = call i32 @cpu_to_le32(i32 %27)
  %29 = load i32, i32* %7, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %7, align 4
  br label %31

31:                                               ; preds = %26, %21
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @IXGBE_TX_FLAGS_IPSEC, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %31
  %37 = load i32, i32* @IXGBE_ADVTXD_POPTS_IPSEC, align 4
  %38 = call i32 @cpu_to_le32(i32 %37)
  %39 = load i32, i32* %7, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %7, align 4
  br label %41

41:                                               ; preds = %36, %31
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @IXGBE_TX_FLAGS_TSO, align 4
  %44 = load i32, i32* @IXGBE_TX_FLAGS_IPSEC, align 4
  %45 = or i32 %43, %44
  %46 = and i32 %42, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %41
  %49 = load i32, i32* @IXGBE_ADVTXD_IDX_SHIFT, align 4
  %50 = shl i32 1, %49
  %51 = call i32 @cpu_to_le32(i32 %50)
  %52 = load i32, i32* %7, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %7, align 4
  br label %54

54:                                               ; preds = %48, %41
  %55 = load i32, i32* @IXGBE_ADVTXD_CC, align 4
  %56 = call i32 @cpu_to_le32(i32 %55)
  %57 = load i32, i32* %7, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %7, align 4
  %59 = load i32, i32* %7, align 4
  %60 = load %union.ixgbe_adv_tx_desc*, %union.ixgbe_adv_tx_desc** %4, align 8
  %61 = bitcast %union.ixgbe_adv_tx_desc* %60 to %struct.TYPE_2__*
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  store i32 %59, i32* %62, align 4
  ret void
}

declare dso_local i32 @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
