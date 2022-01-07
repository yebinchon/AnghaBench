; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_lib.c_ixgbe_tx_ctxtdesc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_lib.c_ixgbe_tx_ctxtdesc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_ring = type { i64, i64 }
%struct.ixgbe_adv_tx_context_desc = type { i8*, i8*, i8*, i8* }

@IXGBE_TXD_CMD_DEXT = common dso_local global i32 0, align 4
@IXGBE_ADVTXD_DTYP_CTXT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ixgbe_tx_ctxtdesc(%struct.ixgbe_ring* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.ixgbe_ring*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ixgbe_adv_tx_context_desc*, align 8
  %12 = alloca i64, align 8
  store %struct.ixgbe_ring* %0, %struct.ixgbe_ring** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %6, align 8
  %14 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %12, align 8
  %16 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %6, align 8
  %17 = load i64, i64* %12, align 8
  %18 = call %struct.ixgbe_adv_tx_context_desc* @IXGBE_TX_CTXTDESC(%struct.ixgbe_ring* %16, i64 %17)
  store %struct.ixgbe_adv_tx_context_desc* %18, %struct.ixgbe_adv_tx_context_desc** %11, align 8
  %19 = load i64, i64* %12, align 8
  %20 = add nsw i64 %19, 1
  store i64 %20, i64* %12, align 8
  %21 = load i64, i64* %12, align 8
  %22 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %6, align 8
  %23 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp slt i64 %21, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %5
  %27 = load i64, i64* %12, align 8
  br label %29

28:                                               ; preds = %5
  br label %29

29:                                               ; preds = %28, %26
  %30 = phi i64 [ %27, %26 ], [ 0, %28 ]
  %31 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %6, align 8
  %32 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %31, i32 0, i32 0
  store i64 %30, i64* %32, align 8
  %33 = load i32, i32* @IXGBE_TXD_CMD_DEXT, align 4
  %34 = load i32, i32* @IXGBE_ADVTXD_DTYP_CTXT, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* %9, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %7, align 4
  %39 = call i8* @cpu_to_le32(i32 %38)
  %40 = load %struct.ixgbe_adv_tx_context_desc*, %struct.ixgbe_adv_tx_context_desc** %11, align 8
  %41 = getelementptr inbounds %struct.ixgbe_adv_tx_context_desc, %struct.ixgbe_adv_tx_context_desc* %40, i32 0, i32 3
  store i8* %39, i8** %41, align 8
  %42 = load i32, i32* %8, align 4
  %43 = call i8* @cpu_to_le32(i32 %42)
  %44 = load %struct.ixgbe_adv_tx_context_desc*, %struct.ixgbe_adv_tx_context_desc** %11, align 8
  %45 = getelementptr inbounds %struct.ixgbe_adv_tx_context_desc, %struct.ixgbe_adv_tx_context_desc* %44, i32 0, i32 2
  store i8* %43, i8** %45, align 8
  %46 = load i32, i32* %9, align 4
  %47 = call i8* @cpu_to_le32(i32 %46)
  %48 = load %struct.ixgbe_adv_tx_context_desc*, %struct.ixgbe_adv_tx_context_desc** %11, align 8
  %49 = getelementptr inbounds %struct.ixgbe_adv_tx_context_desc, %struct.ixgbe_adv_tx_context_desc* %48, i32 0, i32 1
  store i8* %47, i8** %49, align 8
  %50 = load i32, i32* %10, align 4
  %51 = call i8* @cpu_to_le32(i32 %50)
  %52 = load %struct.ixgbe_adv_tx_context_desc*, %struct.ixgbe_adv_tx_context_desc** %11, align 8
  %53 = getelementptr inbounds %struct.ixgbe_adv_tx_context_desc, %struct.ixgbe_adv_tx_context_desc* %52, i32 0, i32 0
  store i8* %51, i8** %53, align 8
  ret void
}

declare dso_local %struct.ixgbe_adv_tx_context_desc* @IXGBE_TX_CTXTDESC(%struct.ixgbe_ring*, i64) #1

declare dso_local i8* @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
