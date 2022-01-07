; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_rep.c_mlx5e_rep_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_rep.c_mlx5e_rep_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.mlx5e_priv = type { i32, i32, %struct.mlx5e_rep_priv* }
%struct.mlx5e_rep_priv = type { %struct.mlx5_eswitch_rep* }
%struct.mlx5_eswitch_rep = type { i32 }

@MLX5_VPORT_STATE_OP_MOD_ESW_VPORT = common dso_local global i32 0, align 4
@MLX5_VPORT_ADMIN_STATE_UP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @mlx5e_rep_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5e_rep_open(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.mlx5e_priv*, align 8
  %4 = alloca %struct.mlx5e_rep_priv*, align 8
  %5 = alloca %struct.mlx5_eswitch_rep*, align 8
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = call %struct.mlx5e_priv* @netdev_priv(%struct.net_device* %7)
  store %struct.mlx5e_priv* %8, %struct.mlx5e_priv** %3, align 8
  %9 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %10 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %9, i32 0, i32 2
  %11 = load %struct.mlx5e_rep_priv*, %struct.mlx5e_rep_priv** %10, align 8
  store %struct.mlx5e_rep_priv* %11, %struct.mlx5e_rep_priv** %4, align 8
  %12 = load %struct.mlx5e_rep_priv*, %struct.mlx5e_rep_priv** %4, align 8
  %13 = getelementptr inbounds %struct.mlx5e_rep_priv, %struct.mlx5e_rep_priv* %12, i32 0, i32 0
  %14 = load %struct.mlx5_eswitch_rep*, %struct.mlx5_eswitch_rep** %13, align 8
  store %struct.mlx5_eswitch_rep* %14, %struct.mlx5_eswitch_rep** %5, align 8
  %15 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %16 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %15, i32 0, i32 0
  %17 = call i32 @mutex_lock(i32* %16)
  %18 = load %struct.net_device*, %struct.net_device** %2, align 8
  %19 = call i32 @mlx5e_open_locked(%struct.net_device* %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %1
  br label %38

23:                                               ; preds = %1
  %24 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %25 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @MLX5_VPORT_STATE_OP_MOD_ESW_VPORT, align 4
  %28 = load %struct.mlx5_eswitch_rep*, %struct.mlx5_eswitch_rep** %5, align 8
  %29 = getelementptr inbounds %struct.mlx5_eswitch_rep, %struct.mlx5_eswitch_rep* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @MLX5_VPORT_ADMIN_STATE_UP, align 4
  %32 = call i32 @mlx5_modify_vport_admin_state(i32 %26, i32 %27, i32 %30, i32 1, i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %23
  %35 = load %struct.net_device*, %struct.net_device** %2, align 8
  %36 = call i32 @netif_carrier_on(%struct.net_device* %35)
  br label %37

37:                                               ; preds = %34, %23
  br label %38

38:                                               ; preds = %37, %22
  %39 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %40 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %39, i32 0, i32 0
  %41 = call i32 @mutex_unlock(i32* %40)
  %42 = load i32, i32* %6, align 4
  ret i32 %42
}

declare dso_local %struct.mlx5e_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mlx5e_open_locked(%struct.net_device*) #1

declare dso_local i32 @mlx5_modify_vport_admin_state(i32, i32, i32, i32, i32) #1

declare dso_local i32 @netif_carrier_on(%struct.net_device*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
