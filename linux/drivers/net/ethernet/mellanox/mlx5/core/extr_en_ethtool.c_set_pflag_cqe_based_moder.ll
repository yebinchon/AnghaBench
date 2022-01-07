; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_ethtool.c_set_pflag_cqe_based_moder.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_ethtool.c_set_pflag_cqe_based_moder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.mlx5e_priv = type { %struct.TYPE_8__, i32, %struct.mlx5_core_dev* }
%struct.TYPE_8__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i64 }
%struct.mlx5_core_dev = type { i32 }
%struct.mlx5e_channels = type { %struct.TYPE_9__ }

@MLX5_CQ_PERIOD_MODE_START_FROM_CQE = common dso_local global i64 0, align 8
@MLX5_CQ_PERIOD_MODE_START_FROM_EQE = common dso_local global i64 0, align 8
@cq_period_start_from_cqe = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@MLX5E_STATE_OPENED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32, i32)* @set_pflag_cqe_based_moder to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_pflag_cqe_based_moder(%struct.net_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlx5e_priv*, align 8
  %9 = alloca %struct.mlx5_core_dev*, align 8
  %10 = alloca %struct.mlx5e_channels, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %14 = load %struct.net_device*, %struct.net_device** %5, align 8
  %15 = call %struct.mlx5e_priv* @netdev_priv(%struct.net_device* %14)
  store %struct.mlx5e_priv* %15, %struct.mlx5e_priv** %8, align 8
  %16 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %8, align 8
  %17 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %16, i32 0, i32 2
  %18 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %17, align 8
  store %struct.mlx5_core_dev* %18, %struct.mlx5_core_dev** %9, align 8
  %19 = bitcast %struct.mlx5e_channels* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %19, i8 0, i64 16, i1 false)
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load i64, i64* @MLX5_CQ_PERIOD_MODE_START_FROM_CQE, align 8
  br label %26

24:                                               ; preds = %3
  %25 = load i64, i64* @MLX5_CQ_PERIOD_MODE_START_FROM_EQE, align 8
  br label %26

26:                                               ; preds = %24, %22
  %27 = phi i64 [ %23, %22 ], [ %25, %24 ]
  store i64 %27, i64* %12, align 8
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %26
  %31 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %8, align 8
  %32 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  br label %44

37:                                               ; preds = %26
  %38 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %8, align 8
  %39 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  br label %44

44:                                               ; preds = %37, %30
  %45 = phi i64 [ %36, %30 ], [ %43, %37 ]
  store i64 %45, i64* %13, align 8
  %46 = load i64, i64* %12, align 8
  %47 = load i64, i64* %13, align 8
  %48 = icmp ne i64 %46, %47
  %49 = zext i1 %48 to i32
  store i32 %49, i32* %11, align 4
  %50 = load i64, i64* %12, align 8
  %51 = load i64, i64* @MLX5_CQ_PERIOD_MODE_START_FROM_CQE, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %61

53:                                               ; preds = %44
  %54 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %9, align 8
  %55 = load i32, i32* @cq_period_start_from_cqe, align 4
  %56 = call i32 @MLX5_CAP_GEN(%struct.mlx5_core_dev* %54, i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %53
  %59 = load i32, i32* @EOPNOTSUPP, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %4, align 4
  br label %98

61:                                               ; preds = %53, %44
  %62 = load i32, i32* %11, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %61
  store i32 0, i32* %4, align 4
  br label %98

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.mlx5e_channels, %struct.mlx5e_channels* %10, i32 0, i32 0
  %67 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %8, align 8
  %68 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = bitcast %struct.TYPE_9__* %66 to i8*
  %71 = bitcast %struct.TYPE_9__* %69 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %70, i8* align 8 %71, i64 16, i1 false)
  %72 = load i32, i32* %7, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %65
  %75 = getelementptr inbounds %struct.mlx5e_channels, %struct.mlx5e_channels* %10, i32 0, i32 0
  %76 = load i64, i64* %12, align 8
  %77 = call i32 @mlx5e_set_rx_cq_mode_params(%struct.TYPE_9__* %75, i64 %76)
  br label %82

78:                                               ; preds = %65
  %79 = getelementptr inbounds %struct.mlx5e_channels, %struct.mlx5e_channels* %10, i32 0, i32 0
  %80 = load i64, i64* %12, align 8
  %81 = call i32 @mlx5e_set_tx_cq_mode_params(%struct.TYPE_9__* %79, i64 %80)
  br label %82

82:                                               ; preds = %78, %74
  %83 = load i32, i32* @MLX5E_STATE_OPENED, align 4
  %84 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %8, align 8
  %85 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %84, i32 0, i32 1
  %86 = call i32 @test_bit(i32 %83, i32* %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %95, label %88

88:                                               ; preds = %82
  %89 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %8, align 8
  %90 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.mlx5e_channels, %struct.mlx5e_channels* %10, i32 0, i32 0
  %93 = bitcast %struct.TYPE_9__* %91 to i8*
  %94 = bitcast %struct.TYPE_9__* %92 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %93, i8* align 8 %94, i64 16, i1 false)
  store i32 0, i32* %4, align 4
  br label %98

95:                                               ; preds = %82
  %96 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %8, align 8
  %97 = call i32 @mlx5e_safe_switch_channels(%struct.mlx5e_priv* %96, %struct.mlx5e_channels* %10, i32* null)
  store i32 %97, i32* %4, align 4
  br label %98

98:                                               ; preds = %95, %88, %64, %58
  %99 = load i32, i32* %4, align 4
  ret i32 %99
}

declare dso_local %struct.mlx5e_priv* @netdev_priv(%struct.net_device*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @MLX5_CAP_GEN(%struct.mlx5_core_dev*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @mlx5e_set_rx_cq_mode_params(%struct.TYPE_9__*, i64) #1

declare dso_local i32 @mlx5e_set_tx_cq_mode_params(%struct.TYPE_9__*, i64) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @mlx5e_safe_switch_channels(%struct.mlx5e_priv*, %struct.mlx5e_channels*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
