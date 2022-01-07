; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_ethtool.c_set_pflag_rx_striding_rq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_ethtool.c_set_pflag_rx_striding_rq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.mlx5e_priv = type { %struct.TYPE_5__, i32, %struct.mlx5_core_dev* }
%struct.TYPE_5__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.mlx5_core_dev = type { i32 }
%struct.mlx5e_channels = type { %struct.TYPE_6__ }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"Can't set legacy RQ with LRO, disable LRO first\0A\00", align 1
@MLX5E_PFLAG_RX_STRIDING_RQ = common dso_local global i32 0, align 4
@MLX5E_STATE_OPENED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @set_pflag_rx_striding_rq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_pflag_rx_striding_rq(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx5e_priv*, align 8
  %7 = alloca %struct.mlx5_core_dev*, align 8
  %8 = alloca %struct.mlx5e_channels, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.mlx5e_priv* @netdev_priv(%struct.net_device* %9)
  store %struct.mlx5e_priv* %10, %struct.mlx5e_priv** %6, align 8
  %11 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %6, align 8
  %12 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %11, i32 0, i32 2
  %13 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %12, align 8
  store %struct.mlx5_core_dev* %13, %struct.mlx5_core_dev** %7, align 8
  %14 = bitcast %struct.mlx5e_channels* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %14, i8 0, i64 8, i1 false)
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %35

17:                                               ; preds = %2
  %18 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %7, align 8
  %19 = call i32 @mlx5e_check_fragmented_striding_rq_cap(%struct.mlx5_core_dev* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %17
  %22 = load i32, i32* @EOPNOTSUPP, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %77

24:                                               ; preds = %17
  %25 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %7, align 8
  %26 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %6, align 8
  %27 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = call i32 @mlx5e_striding_rq_possible(%struct.mlx5_core_dev* %25, %struct.TYPE_6__* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %24
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %77

34:                                               ; preds = %24
  br label %48

35:                                               ; preds = %2
  %36 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %6, align 8
  %37 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %35
  %43 = load %struct.net_device*, %struct.net_device** %4, align 8
  %44 = call i32 @netdev_warn(%struct.net_device* %43, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %77

47:                                               ; preds = %35
  br label %48

48:                                               ; preds = %47, %34
  %49 = getelementptr inbounds %struct.mlx5e_channels, %struct.mlx5e_channels* %8, i32 0, i32 0
  %50 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %6, align 8
  %51 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = bitcast %struct.TYPE_6__* %49 to i8*
  %54 = bitcast %struct.TYPE_6__* %52 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %53, i8* align 8 %54, i64 8, i1 false)
  %55 = getelementptr inbounds %struct.mlx5e_channels, %struct.mlx5e_channels* %8, i32 0, i32 0
  %56 = load i32, i32* @MLX5E_PFLAG_RX_STRIDING_RQ, align 4
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @MLX5E_SET_PFLAG(%struct.TYPE_6__* %55, i32 %56, i32 %57)
  %59 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %7, align 8
  %60 = getelementptr inbounds %struct.mlx5e_channels, %struct.mlx5e_channels* %8, i32 0, i32 0
  %61 = call i32 @mlx5e_set_rq_type(%struct.mlx5_core_dev* %59, %struct.TYPE_6__* %60)
  %62 = load i32, i32* @MLX5E_STATE_OPENED, align 4
  %63 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %6, align 8
  %64 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %63, i32 0, i32 1
  %65 = call i32 @test_bit(i32 %62, i32* %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %74, label %67

67:                                               ; preds = %48
  %68 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %6, align 8
  %69 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.mlx5e_channels, %struct.mlx5e_channels* %8, i32 0, i32 0
  %72 = bitcast %struct.TYPE_6__* %70 to i8*
  %73 = bitcast %struct.TYPE_6__* %71 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %72, i8* align 8 %73, i64 8, i1 false)
  store i32 0, i32* %3, align 4
  br label %77

74:                                               ; preds = %48
  %75 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %6, align 8
  %76 = call i32 @mlx5e_safe_switch_channels(%struct.mlx5e_priv* %75, %struct.mlx5e_channels* %8, i32* null)
  store i32 %76, i32* %3, align 4
  br label %77

77:                                               ; preds = %74, %67, %42, %31, %21
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local %struct.mlx5e_priv* @netdev_priv(%struct.net_device*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @mlx5e_check_fragmented_striding_rq_cap(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mlx5e_striding_rq_possible(%struct.mlx5_core_dev*, %struct.TYPE_6__*) #1

declare dso_local i32 @netdev_warn(%struct.net_device*, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @MLX5E_SET_PFLAG(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @mlx5e_set_rq_type(%struct.mlx5_core_dev*, %struct.TYPE_6__*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @mlx5e_safe_switch_channels(%struct.mlx5e_priv*, %struct.mlx5e_channels*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
