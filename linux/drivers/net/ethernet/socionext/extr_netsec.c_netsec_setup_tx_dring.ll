; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/socionext/extr_netsec.c_netsec_setup_tx_dring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/socionext/extr_netsec.c_netsec_setup_tx_dring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netsec_priv = type { %struct.netsec_desc_ring* }
%struct.netsec_desc_ring = type { %struct.netsec_de* }
%struct.netsec_de = type { i32 }

@NETSEC_RING_TX = common dso_local global i64 0, align 8
@DESC_NUM = common dso_local global i32 0, align 4
@DESC_SZ = common dso_local global i32 0, align 4
@NETSEC_TX_SHIFT_OWN_FIELD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.netsec_priv*)* @netsec_setup_tx_dring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @netsec_setup_tx_dring(%struct.netsec_priv* %0) #0 {
  %2 = alloca %struct.netsec_priv*, align 8
  %3 = alloca %struct.netsec_desc_ring*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.netsec_de*, align 8
  store %struct.netsec_priv* %0, %struct.netsec_priv** %2, align 8
  %6 = load %struct.netsec_priv*, %struct.netsec_priv** %2, align 8
  %7 = getelementptr inbounds %struct.netsec_priv, %struct.netsec_priv* %6, i32 0, i32 0
  %8 = load %struct.netsec_desc_ring*, %struct.netsec_desc_ring** %7, align 8
  %9 = load i64, i64* @NETSEC_RING_TX, align 8
  %10 = getelementptr inbounds %struct.netsec_desc_ring, %struct.netsec_desc_ring* %8, i64 %9
  store %struct.netsec_desc_ring* %10, %struct.netsec_desc_ring** %3, align 8
  store i32 0, i32* %4, align 4
  br label %11

11:                                               ; preds = %28, %1
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @DESC_NUM, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %31

15:                                               ; preds = %11
  %16 = load %struct.netsec_desc_ring*, %struct.netsec_desc_ring** %3, align 8
  %17 = getelementptr inbounds %struct.netsec_desc_ring, %struct.netsec_desc_ring* %16, i32 0, i32 0
  %18 = load %struct.netsec_de*, %struct.netsec_de** %17, align 8
  %19 = load i32, i32* @DESC_SZ, align 4
  %20 = load i32, i32* %4, align 4
  %21 = mul nsw i32 %19, %20
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.netsec_de, %struct.netsec_de* %18, i64 %22
  store %struct.netsec_de* %23, %struct.netsec_de** %5, align 8
  %24 = load i32, i32* @NETSEC_TX_SHIFT_OWN_FIELD, align 4
  %25 = shl i32 1, %24
  %26 = load %struct.netsec_de*, %struct.netsec_de** %5, align 8
  %27 = getelementptr inbounds %struct.netsec_de, %struct.netsec_de* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  br label %28

28:                                               ; preds = %15
  %29 = load i32, i32* %4, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %4, align 4
  br label %11

31:                                               ; preds = %11
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
