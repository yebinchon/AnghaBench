; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/ipoib/extr_ipoib.c_mlx5i_change_mtu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/ipoib/extr_ipoib.c_mlx5i_change_mtu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.mlx5e_priv = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.mlx5e_params }
%struct.mlx5e_params = type { i32 }
%struct.mlx5e_channels = type { %struct.mlx5e_params }

@MLX5E_STATE_OPENED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @mlx5i_change_mtu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5i_change_mtu(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx5e_priv*, align 8
  %6 = alloca %struct.mlx5e_channels, align 4
  %7 = alloca %struct.mlx5e_params*, align 8
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = call %struct.mlx5e_priv* @mlx5i_epriv(%struct.net_device* %9)
  store %struct.mlx5e_priv* %10, %struct.mlx5e_priv** %5, align 8
  %11 = bitcast %struct.mlx5e_channels* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %11, i8 0, i64 4, i1 false)
  store i32 0, i32* %8, align 4
  %12 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %5, align 8
  %13 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %12, i32 0, i32 0
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %5, align 8
  %16 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store %struct.mlx5e_params* %17, %struct.mlx5e_params** %7, align 8
  %18 = load i32, i32* @MLX5E_STATE_OPENED, align 4
  %19 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %5, align 8
  %20 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %19, i32 0, i32 1
  %21 = call i32 @test_bit(i32 %18, i32* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %32, label %23

23:                                               ; preds = %2
  %24 = load i32, i32* %4, align 4
  %25 = load %struct.mlx5e_params*, %struct.mlx5e_params** %7, align 8
  %26 = getelementptr inbounds %struct.mlx5e_params, %struct.mlx5e_params* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = load %struct.mlx5e_params*, %struct.mlx5e_params** %7, align 8
  %28 = getelementptr inbounds %struct.mlx5e_params, %struct.mlx5e_params* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.net_device*, %struct.net_device** %3, align 8
  %31 = getelementptr inbounds %struct.net_device, %struct.net_device* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  br label %51

32:                                               ; preds = %2
  %33 = getelementptr inbounds %struct.mlx5e_channels, %struct.mlx5e_channels* %6, i32 0, i32 0
  %34 = load %struct.mlx5e_params*, %struct.mlx5e_params** %7, align 8
  %35 = bitcast %struct.mlx5e_params* %33 to i8*
  %36 = bitcast %struct.mlx5e_params* %34 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %35, i8* align 4 %36, i64 4, i1 false)
  %37 = load i32, i32* %4, align 4
  %38 = getelementptr inbounds %struct.mlx5e_channels, %struct.mlx5e_channels* %6, i32 0, i32 0
  %39 = getelementptr inbounds %struct.mlx5e_params, %struct.mlx5e_params* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  %40 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %5, align 8
  %41 = call i32 @mlx5e_safe_switch_channels(%struct.mlx5e_priv* %40, %struct.mlx5e_channels* %6, i32* null)
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %32
  br label %51

45:                                               ; preds = %32
  %46 = getelementptr inbounds %struct.mlx5e_channels, %struct.mlx5e_channels* %6, i32 0, i32 0
  %47 = getelementptr inbounds %struct.mlx5e_params, %struct.mlx5e_params* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.net_device*, %struct.net_device** %3, align 8
  %50 = getelementptr inbounds %struct.net_device, %struct.net_device* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 4
  br label %51

51:                                               ; preds = %45, %44, %23
  %52 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %5, align 8
  %53 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %52, i32 0, i32 0
  %54 = call i32 @mutex_unlock(i32* %53)
  %55 = load i32, i32* %8, align 4
  ret i32 %55
}

declare dso_local %struct.mlx5e_priv* @mlx5i_epriv(%struct.net_device*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @mlx5e_safe_switch_channels(%struct.mlx5e_priv*, %struct.mlx5e_channels*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
