; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_main.c_set_feature_lro.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_main.c_set_feature_lro.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.mlx5e_priv = type { i32, i32, %struct.TYPE_4__, %struct.TYPE_3__, %struct.mlx5_core_dev* }
%struct.TYPE_4__ = type { %struct.mlx5e_params }
%struct.mlx5e_params = type { i32, i64 }
%struct.TYPE_3__ = type { i64 }
%struct.mlx5_core_dev = type { i32 }
%struct.mlx5e_channels = type { %struct.mlx5e_params }

@.str = private unnamed_addr constant [55 x i8] c"LRO is incompatible with AF_XDP (%hu XSKs are active)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@MLX5E_PFLAG_RX_STRIDING_RQ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"can't set LRO with legacy RQ\0A\00", align 1
@MLX5E_STATE_OPENED = common dso_local global i32 0, align 4
@MLX5_WQ_TYPE_CYCLIC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @set_feature_lro to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_feature_lro(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx5e_priv*, align 8
  %6 = alloca %struct.mlx5_core_dev*, align 8
  %7 = alloca %struct.mlx5e_channels, align 8
  %8 = alloca %struct.mlx5e_params*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.net_device*, %struct.net_device** %3, align 8
  %12 = call %struct.mlx5e_priv* @netdev_priv(%struct.net_device* %11)
  store %struct.mlx5e_priv* %12, %struct.mlx5e_priv** %5, align 8
  %13 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %5, align 8
  %14 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %13, i32 0, i32 4
  %15 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %14, align 8
  store %struct.mlx5_core_dev* %15, %struct.mlx5_core_dev** %6, align 8
  %16 = bitcast %struct.mlx5e_channels* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %16, i8 0, i64 16, i1 false)
  store i32 0, i32* %9, align 4
  %17 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %5, align 8
  %18 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %17, i32 0, i32 0
  %19 = call i32 @mutex_lock(i32* %18)
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %37

22:                                               ; preds = %2
  %23 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %5, align 8
  %24 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %22
  %29 = load %struct.net_device*, %struct.net_device** %3, align 8
  %30 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %5, align 8
  %31 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i32 (%struct.net_device*, i8*, ...) @netdev_warn(%struct.net_device* %29, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i64 %33)
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %9, align 4
  br label %93

37:                                               ; preds = %22, %2
  %38 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %5, align 8
  %39 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  store %struct.mlx5e_params* %40, %struct.mlx5e_params** %8, align 8
  %41 = load i32, i32* %4, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %53

43:                                               ; preds = %37
  %44 = load %struct.mlx5e_params*, %struct.mlx5e_params** %8, align 8
  %45 = load i32, i32* @MLX5E_PFLAG_RX_STRIDING_RQ, align 4
  %46 = call i32 @MLX5E_GET_PFLAG(%struct.mlx5e_params* %44, i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %43
  %49 = load %struct.net_device*, %struct.net_device** %3, align 8
  %50 = call i32 (%struct.net_device*, i8*, ...) @netdev_warn(%struct.net_device* %49, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %9, align 4
  br label %93

53:                                               ; preds = %43, %37
  %54 = load i32, i32* @MLX5E_STATE_OPENED, align 4
  %55 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %5, align 8
  %56 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %55, i32 0, i32 1
  %57 = call i32 @test_bit(i32 %54, i32* %56)
  store i32 %57, i32* %10, align 4
  %58 = getelementptr inbounds %struct.mlx5e_channels, %struct.mlx5e_channels* %7, i32 0, i32 0
  %59 = load %struct.mlx5e_params*, %struct.mlx5e_params** %8, align 8
  %60 = bitcast %struct.mlx5e_params* %58 to i8*
  %61 = bitcast %struct.mlx5e_params* %59 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %60, i8* align 8 %61, i64 16, i1 false)
  %62 = load i32, i32* %4, align 4
  %63 = getelementptr inbounds %struct.mlx5e_channels, %struct.mlx5e_channels* %7, i32 0, i32 0
  %64 = getelementptr inbounds %struct.mlx5e_params, %struct.mlx5e_params* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  %65 = load %struct.mlx5e_params*, %struct.mlx5e_params** %8, align 8
  %66 = getelementptr inbounds %struct.mlx5e_params, %struct.mlx5e_params* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @MLX5_WQ_TYPE_CYCLIC, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %80

70:                                               ; preds = %53
  %71 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  %72 = load %struct.mlx5e_params*, %struct.mlx5e_params** %8, align 8
  %73 = call i64 @mlx5e_rx_mpwqe_is_linear_skb(%struct.mlx5_core_dev* %71, %struct.mlx5e_params* %72, i32* null)
  %74 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  %75 = getelementptr inbounds %struct.mlx5e_channels, %struct.mlx5e_channels* %7, i32 0, i32 0
  %76 = call i64 @mlx5e_rx_mpwqe_is_linear_skb(%struct.mlx5_core_dev* %74, %struct.mlx5e_params* %75, i32* null)
  %77 = icmp eq i64 %73, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %70
  store i32 0, i32* %10, align 4
  br label %79

79:                                               ; preds = %78, %70
  br label %80

80:                                               ; preds = %79, %53
  %81 = load i32, i32* %10, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %90, label %83

83:                                               ; preds = %80
  %84 = load %struct.mlx5e_params*, %struct.mlx5e_params** %8, align 8
  %85 = getelementptr inbounds %struct.mlx5e_channels, %struct.mlx5e_channels* %7, i32 0, i32 0
  %86 = bitcast %struct.mlx5e_params* %84 to i8*
  %87 = bitcast %struct.mlx5e_params* %85 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %86, i8* align 8 %87, i64 16, i1 false)
  %88 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %5, align 8
  %89 = call i32 @mlx5e_modify_tirs_lro(%struct.mlx5e_priv* %88)
  store i32 %89, i32* %9, align 4
  br label %93

90:                                               ; preds = %80
  %91 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %5, align 8
  %92 = call i32 @mlx5e_safe_switch_channels(%struct.mlx5e_priv* %91, %struct.mlx5e_channels* %7, i32 (%struct.mlx5e_priv*)* @mlx5e_modify_tirs_lro)
  store i32 %92, i32* %9, align 4
  br label %93

93:                                               ; preds = %90, %83, %48, %28
  %94 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %5, align 8
  %95 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %94, i32 0, i32 0
  %96 = call i32 @mutex_unlock(i32* %95)
  %97 = load i32, i32* %9, align 4
  ret i32 %97
}

declare dso_local %struct.mlx5e_priv* @netdev_priv(%struct.net_device*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @netdev_warn(%struct.net_device*, i8*, ...) #1

declare dso_local i32 @MLX5E_GET_PFLAG(%struct.mlx5e_params*, i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @mlx5e_rx_mpwqe_is_linear_skb(%struct.mlx5_core_dev*, %struct.mlx5e_params*, i32*) #1

declare dso_local i32 @mlx5e_modify_tirs_lro(%struct.mlx5e_priv*) #1

declare dso_local i32 @mlx5e_safe_switch_channels(%struct.mlx5e_priv*, %struct.mlx5e_channels*, i32 (%struct.mlx5e_priv*)*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
