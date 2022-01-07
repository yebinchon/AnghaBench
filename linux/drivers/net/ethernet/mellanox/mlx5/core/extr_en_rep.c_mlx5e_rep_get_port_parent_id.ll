; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_rep.c_mlx5e_rep_get_port_parent_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_rep.c_mlx5e_rep_get_port_parent_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.netdev_phys_item_id = type { i32, i32 }
%struct.mlx5e_priv = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.netdev_phys_item_id*)* @mlx5e_rep_get_port_parent_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5e_rep_get_port_parent_id(%struct.net_device* %0, %struct.netdev_phys_item_id* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.netdev_phys_item_id*, align 8
  %5 = alloca %struct.mlx5e_priv*, align 8
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.netdev_phys_item_id* %1, %struct.netdev_phys_item_id** %4, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.mlx5e_priv* @netdev_priv(%struct.net_device* %7)
  store %struct.mlx5e_priv* %8, %struct.mlx5e_priv** %5, align 8
  %9 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %5, align 8
  %10 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @mlx5_query_nic_system_image_guid(i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load %struct.netdev_phys_item_id*, %struct.netdev_phys_item_id** %4, align 8
  %14 = getelementptr inbounds %struct.netdev_phys_item_id, %struct.netdev_phys_item_id* %13, i32 0, i32 0
  store i32 4, i32* %14, align 4
  %15 = load %struct.netdev_phys_item_id*, %struct.netdev_phys_item_id** %4, align 8
  %16 = getelementptr inbounds %struct.netdev_phys_item_id, %struct.netdev_phys_item_id* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @memcpy(i32 %17, i32* %6, i32 4)
  ret void
}

declare dso_local %struct.mlx5e_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @mlx5_query_nic_system_image_guid(i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
