; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_main.c_mlx5e_switch_priv_channels.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_main.c_mlx5e_switch_priv_channels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_priv = type { %struct.TYPE_3__*, %struct.mlx5e_channels, %struct.net_device* }
%struct.TYPE_3__ = type { i32 (%struct.mlx5e_priv*)* }
%struct.mlx5e_channels = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.net_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5e_priv*, %struct.mlx5e_channels*, i32 (%struct.mlx5e_priv*)*)* @mlx5e_switch_priv_channels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5e_switch_priv_channels(%struct.mlx5e_priv* %0, %struct.mlx5e_channels* %1, i32 (%struct.mlx5e_priv*)* %2) #0 {
  %4 = alloca %struct.mlx5e_priv*, align 8
  %5 = alloca %struct.mlx5e_channels*, align 8
  %6 = alloca i32 (%struct.mlx5e_priv*)*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mlx5e_priv* %0, %struct.mlx5e_priv** %4, align 8
  store %struct.mlx5e_channels* %1, %struct.mlx5e_channels** %5, align 8
  store i32 (%struct.mlx5e_priv*)* %2, i32 (%struct.mlx5e_priv*)** %6, align 8
  %10 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %11 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %10, i32 0, i32 2
  %12 = load %struct.net_device*, %struct.net_device** %11, align 8
  store %struct.net_device* %12, %struct.net_device** %7, align 8
  %13 = load %struct.mlx5e_channels*, %struct.mlx5e_channels** %5, align 8
  %14 = getelementptr inbounds %struct.mlx5e_channels, %struct.mlx5e_channels* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.mlx5e_channels*, %struct.mlx5e_channels** %5, align 8
  %17 = getelementptr inbounds %struct.mlx5e_channels, %struct.mlx5e_channels* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = mul nsw i32 %15, %19
  store i32 %20, i32* %8, align 4
  %21 = load %struct.net_device*, %struct.net_device** %7, align 8
  %22 = call i32 @netif_carrier_ok(%struct.net_device* %21)
  store i32 %22, i32* %9, align 4
  %23 = load %struct.net_device*, %struct.net_device** %7, align 8
  %24 = call i32 @netif_carrier_off(%struct.net_device* %23)
  %25 = load i32, i32* %8, align 4
  %26 = load %struct.net_device*, %struct.net_device** %7, align 8
  %27 = getelementptr inbounds %struct.net_device, %struct.net_device* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %3
  %31 = load %struct.net_device*, %struct.net_device** %7, align 8
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @netif_set_real_num_tx_queues(%struct.net_device* %31, i32 %32)
  br label %34

34:                                               ; preds = %30, %3
  %35 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %36 = call i32 @mlx5e_deactivate_priv_channels(%struct.mlx5e_priv* %35)
  %37 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %38 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %37, i32 0, i32 1
  %39 = call i32 @mlx5e_close_channels(%struct.mlx5e_channels* %38)
  %40 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %41 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %40, i32 0, i32 1
  %42 = load %struct.mlx5e_channels*, %struct.mlx5e_channels** %5, align 8
  %43 = bitcast %struct.mlx5e_channels* %41 to i8*
  %44 = bitcast %struct.mlx5e_channels* %42 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %43, i8* align 4 %44, i64 8, i1 false)
  %45 = load i32 (%struct.mlx5e_priv*)*, i32 (%struct.mlx5e_priv*)** %6, align 8
  %46 = icmp ne i32 (%struct.mlx5e_priv*)* %45, null
  br i1 %46, label %47, label %51

47:                                               ; preds = %34
  %48 = load i32 (%struct.mlx5e_priv*)*, i32 (%struct.mlx5e_priv*)** %6, align 8
  %49 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %50 = call i32 %48(%struct.mlx5e_priv* %49)
  br label %51

51:                                               ; preds = %47, %34
  %52 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %53 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %52, i32 0, i32 0
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32 (%struct.mlx5e_priv*)*, i32 (%struct.mlx5e_priv*)** %55, align 8
  %57 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %58 = call i32 %56(%struct.mlx5e_priv* %57)
  %59 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %60 = call i32 @mlx5e_activate_priv_channels(%struct.mlx5e_priv* %59)
  %61 = load i32, i32* %9, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %51
  %64 = load %struct.net_device*, %struct.net_device** %7, align 8
  %65 = call i32 @netif_carrier_on(%struct.net_device* %64)
  br label %66

66:                                               ; preds = %63, %51
  ret void
}

declare dso_local i32 @netif_carrier_ok(%struct.net_device*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @netif_set_real_num_tx_queues(%struct.net_device*, i32) #1

declare dso_local i32 @mlx5e_deactivate_priv_channels(%struct.mlx5e_priv*) #1

declare dso_local i32 @mlx5e_close_channels(%struct.mlx5e_channels*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @mlx5e_activate_priv_channels(%struct.mlx5e_priv*) #1

declare dso_local i32 @netif_carrier_on(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
