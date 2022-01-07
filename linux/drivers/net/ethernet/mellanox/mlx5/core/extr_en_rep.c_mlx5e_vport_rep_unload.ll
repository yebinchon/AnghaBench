; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_rep.c_mlx5e_vport_rep_unload.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_rep.c_mlx5e_vport_rep_unload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_eswitch_rep = type { i64 }
%struct.mlx5e_rep_priv = type { i32, %struct.net_device* }
%struct.net_device = type { i32 }
%struct.mlx5e_priv = type { %struct.mlx5_core_dev*, i8* }
%struct.mlx5_core_dev = type { i32 }

@MLX5_VPORT_UPLINK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5_eswitch_rep*)* @mlx5e_vport_rep_unload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5e_vport_rep_unload(%struct.mlx5_eswitch_rep* %0) #0 {
  %2 = alloca %struct.mlx5_eswitch_rep*, align 8
  %3 = alloca %struct.mlx5e_rep_priv*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.mlx5e_priv*, align 8
  %6 = alloca %struct.mlx5_core_dev*, align 8
  %7 = alloca i8*, align 8
  store %struct.mlx5_eswitch_rep* %0, %struct.mlx5_eswitch_rep** %2, align 8
  %8 = load %struct.mlx5_eswitch_rep*, %struct.mlx5_eswitch_rep** %2, align 8
  %9 = call %struct.mlx5e_rep_priv* @mlx5e_rep_to_rep_priv(%struct.mlx5_eswitch_rep* %8)
  store %struct.mlx5e_rep_priv* %9, %struct.mlx5e_rep_priv** %3, align 8
  %10 = load %struct.mlx5e_rep_priv*, %struct.mlx5e_rep_priv** %3, align 8
  %11 = getelementptr inbounds %struct.mlx5e_rep_priv, %struct.mlx5e_rep_priv* %10, i32 0, i32 1
  %12 = load %struct.net_device*, %struct.net_device** %11, align 8
  store %struct.net_device* %12, %struct.net_device** %4, align 8
  %13 = load %struct.net_device*, %struct.net_device** %4, align 8
  %14 = call %struct.mlx5e_priv* @netdev_priv(%struct.net_device* %13)
  store %struct.mlx5e_priv* %14, %struct.mlx5e_priv** %5, align 8
  %15 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %5, align 8
  %16 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %15, i32 0, i32 0
  %17 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %16, align 8
  store %struct.mlx5_core_dev* %17, %struct.mlx5_core_dev** %6, align 8
  %18 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %5, align 8
  %19 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %18, i32 0, i32 1
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** %7, align 8
  %21 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  %22 = load %struct.mlx5e_rep_priv*, %struct.mlx5e_rep_priv** %3, align 8
  %23 = call i64 @is_devlink_port_supported(%struct.mlx5_core_dev* %21, %struct.mlx5e_rep_priv* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %1
  %26 = load %struct.mlx5e_rep_priv*, %struct.mlx5e_rep_priv** %3, align 8
  %27 = getelementptr inbounds %struct.mlx5e_rep_priv, %struct.mlx5e_rep_priv* %26, i32 0, i32 0
  %28 = call i32 @devlink_port_type_clear(i32* %27)
  br label %29

29:                                               ; preds = %25, %1
  %30 = load %struct.net_device*, %struct.net_device** %4, align 8
  %31 = call i32 @unregister_netdev(%struct.net_device* %30)
  %32 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  %33 = load %struct.mlx5e_rep_priv*, %struct.mlx5e_rep_priv** %3, align 8
  %34 = call i32 @unregister_devlink_port(%struct.mlx5_core_dev* %32, %struct.mlx5e_rep_priv* %33)
  %35 = load %struct.mlx5e_rep_priv*, %struct.mlx5e_rep_priv** %3, align 8
  %36 = call i32 @mlx5e_rep_neigh_cleanup(%struct.mlx5e_rep_priv* %35)
  %37 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %5, align 8
  %38 = call i32 @mlx5e_detach_netdev(%struct.mlx5e_priv* %37)
  %39 = load %struct.mlx5_eswitch_rep*, %struct.mlx5_eswitch_rep** %2, align 8
  %40 = getelementptr inbounds %struct.mlx5_eswitch_rep, %struct.mlx5_eswitch_rep* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @MLX5_VPORT_UPLINK, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %29
  %45 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %5, align 8
  %46 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %45, i32 0, i32 0
  %47 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %46, align 8
  %48 = call i32 @mlx5e_destroy_mdev_resources(%struct.mlx5_core_dev* %47)
  br label %49

49:                                               ; preds = %44, %29
  %50 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %5, align 8
  %51 = call i32 @mlx5e_destroy_netdev(%struct.mlx5e_priv* %50)
  %52 = load i8*, i8** %7, align 8
  %53 = call i32 @kfree(i8* %52)
  ret void
}

declare dso_local %struct.mlx5e_rep_priv* @mlx5e_rep_to_rep_priv(%struct.mlx5_eswitch_rep*) #1

declare dso_local %struct.mlx5e_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @is_devlink_port_supported(%struct.mlx5_core_dev*, %struct.mlx5e_rep_priv*) #1

declare dso_local i32 @devlink_port_type_clear(i32*) #1

declare dso_local i32 @unregister_netdev(%struct.net_device*) #1

declare dso_local i32 @unregister_devlink_port(%struct.mlx5_core_dev*, %struct.mlx5e_rep_priv*) #1

declare dso_local i32 @mlx5e_rep_neigh_cleanup(%struct.mlx5e_rep_priv*) #1

declare dso_local i32 @mlx5e_detach_netdev(%struct.mlx5e_priv*) #1

declare dso_local i32 @mlx5e_destroy_mdev_resources(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mlx5e_destroy_netdev(%struct.mlx5e_priv*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
