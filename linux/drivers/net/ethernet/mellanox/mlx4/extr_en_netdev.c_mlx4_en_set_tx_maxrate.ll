; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_netdev.c_mlx4_en_set_tx_maxrate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_netdev.c_mlx4_en_set_tx_maxrate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.mlx4_en_priv = type { %struct.TYPE_5__*, %struct.mlx4_en_tx_ring*** }
%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.mlx4_en_tx_ring = type { i32 }
%struct.mlx4_update_qp_params = type { i32, i64 }

@TX = common dso_local global i64 0, align 8
@MLX4_DEV_CAP_FLAG2_QP_RATE_LIMIT = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@MLX4_QP_RATE_LIMIT_GBS = common dso_local global i64 0, align 8
@MLX4_QP_RATE_LIMIT_MBS = common dso_local global i64 0, align 8
@MLX4_UPDATE_QP_RATE_LIMIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32, i32)* @mlx4_en_set_tx_maxrate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_en_set_tx_maxrate(%struct.net_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlx4_en_priv*, align 8
  %9 = alloca %struct.mlx4_en_tx_ring*, align 8
  %10 = alloca %struct.mlx4_update_qp_params, align 8
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.net_device*, %struct.net_device** %5, align 8
  %13 = call %struct.mlx4_en_priv* @netdev_priv(%struct.net_device* %12)
  store %struct.mlx4_en_priv* %13, %struct.mlx4_en_priv** %8, align 8
  %14 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %8, align 8
  %15 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %14, i32 0, i32 1
  %16 = load %struct.mlx4_en_tx_ring***, %struct.mlx4_en_tx_ring**** %15, align 8
  %17 = load i64, i64* @TX, align 8
  %18 = getelementptr inbounds %struct.mlx4_en_tx_ring**, %struct.mlx4_en_tx_ring*** %16, i64 %17
  %19 = load %struct.mlx4_en_tx_ring**, %struct.mlx4_en_tx_ring*** %18, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %19, i64 %21
  %23 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %22, align 8
  store %struct.mlx4_en_tx_ring* %23, %struct.mlx4_en_tx_ring** %9, align 8
  %24 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %8, align 8
  %25 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %24, i32 0, i32 0
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @MLX4_DEV_CAP_FLAG2_QP_RATE_LIMIT, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %3
  %36 = load i32, i32* @EOPNOTSUPP, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %72

38:                                               ; preds = %3
  %39 = load i32, i32* %7, align 4
  %40 = ashr i32 %39, 12
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %38
  %43 = load i64, i64* @MLX4_QP_RATE_LIMIT_GBS, align 8
  %44 = getelementptr inbounds %struct.mlx4_update_qp_params, %struct.mlx4_update_qp_params* %10, i32 0, i32 1
  store i64 %43, i64* %44, align 8
  %45 = load i32, i32* %7, align 4
  %46 = sdiv i32 %45, 1000
  %47 = getelementptr inbounds %struct.mlx4_update_qp_params, %struct.mlx4_update_qp_params* %10, i32 0, i32 0
  store i32 %46, i32* %47, align 8
  br label %60

48:                                               ; preds = %38
  %49 = load i32, i32* %7, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %48
  %52 = load i64, i64* @MLX4_QP_RATE_LIMIT_MBS, align 8
  %53 = getelementptr inbounds %struct.mlx4_update_qp_params, %struct.mlx4_update_qp_params* %10, i32 0, i32 1
  store i64 %52, i64* %53, align 8
  %54 = load i32, i32* %7, align 4
  %55 = getelementptr inbounds %struct.mlx4_update_qp_params, %struct.mlx4_update_qp_params* %10, i32 0, i32 0
  store i32 %54, i32* %55, align 8
  br label %59

56:                                               ; preds = %48
  %57 = getelementptr inbounds %struct.mlx4_update_qp_params, %struct.mlx4_update_qp_params* %10, i32 0, i32 1
  store i64 0, i64* %57, align 8
  %58 = getelementptr inbounds %struct.mlx4_update_qp_params, %struct.mlx4_update_qp_params* %10, i32 0, i32 0
  store i32 0, i32* %58, align 8
  br label %59

59:                                               ; preds = %56, %51
  br label %60

60:                                               ; preds = %59, %42
  %61 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %8, align 8
  %62 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %61, i32 0, i32 0
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %64, align 8
  %66 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %9, align 8
  %67 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @MLX4_UPDATE_QP_RATE_LIMIT, align 4
  %70 = call i32 @mlx4_update_qp(%struct.TYPE_6__* %65, i32 %68, i32 %69, %struct.mlx4_update_qp_params* %10)
  store i32 %70, i32* %11, align 4
  %71 = load i32, i32* %11, align 4
  store i32 %71, i32* %4, align 4
  br label %72

72:                                               ; preds = %60, %35
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

declare dso_local %struct.mlx4_en_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @mlx4_update_qp(%struct.TYPE_6__*, i32, i32, %struct.mlx4_update_qp_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
