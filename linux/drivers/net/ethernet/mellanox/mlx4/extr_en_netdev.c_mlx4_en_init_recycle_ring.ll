; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_netdev.c_mlx4_en_init_recycle_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_netdev.c_mlx4_en_init_recycle_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_en_priv = type { i32*, %struct.mlx4_en_tx_ring*** }
%struct.mlx4_en_tx_ring = type { i32, i32 }

@TX_XDP = common dso_local global i64 0, align 8
@mlx4_en_recycle_tx_desc = common dso_local global i32 0, align 4
@DRV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"Set tx_ring[%d][%d]->recycle_ring = rx_ring[%d]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx4_en_priv*, i32)* @mlx4_en_init_recycle_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx4_en_init_recycle_ring(%struct.mlx4_en_priv* %0, i32 %1) #0 {
  %3 = alloca %struct.mlx4_en_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx4_en_tx_ring*, align 8
  %6 = alloca i32, align 4
  store %struct.mlx4_en_priv* %0, %struct.mlx4_en_priv** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %8 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %7, i32 0, i32 1
  %9 = load %struct.mlx4_en_tx_ring***, %struct.mlx4_en_tx_ring**** %8, align 8
  %10 = load i64, i64* @TX_XDP, align 8
  %11 = getelementptr inbounds %struct.mlx4_en_tx_ring**, %struct.mlx4_en_tx_ring*** %9, i64 %10
  %12 = load %struct.mlx4_en_tx_ring**, %struct.mlx4_en_tx_ring*** %11, align 8
  %13 = load i32, i32* %4, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %12, i64 %14
  %16 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %15, align 8
  store %struct.mlx4_en_tx_ring* %16, %struct.mlx4_en_tx_ring** %5, align 8
  %17 = load i32, i32* %4, align 4
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* @mlx4_en_recycle_tx_desc, align 4
  %19 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %5, align 8
  %20 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 4
  %21 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %22 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %5, align 8
  %29 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* @DRV, align 4
  %31 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %32 = load i64, i64* @TX_XDP, align 8
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @en_dbg(i32 %30, %struct.mlx4_en_priv* %31, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i64 %32, i32 %33, i32 %34)
  ret void
}

declare dso_local i32 @en_dbg(i32, %struct.mlx4_en_priv*, i8*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
