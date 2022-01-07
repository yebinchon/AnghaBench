; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_main.c_mlx5e_set_mtu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_main.c_mlx5e_set_mtu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { i32 }
%struct.mlx5e_params = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_core_dev*, %struct.mlx5e_params*, i32)* @mlx5e_set_mtu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5e_set_mtu(%struct.mlx5_core_dev* %0, %struct.mlx5e_params* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx5_core_dev*, align 8
  %6 = alloca %struct.mlx5e_params*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %5, align 8
  store %struct.mlx5e_params* %1, %struct.mlx5e_params** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.mlx5e_params*, %struct.mlx5e_params** %6, align 8
  %11 = load i32, i32* %7, align 4
  %12 = call i32 @MLX5E_SW2HW_MTU(%struct.mlx5e_params* %10, i32 %11)
  store i32 %12, i32* %8, align 4
  %13 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %14 = load i32, i32* %8, align 4
  %15 = call i32 @mlx5_set_port_mtu(%struct.mlx5_core_dev* %13, i32 %14, i32 1)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* %9, align 4
  store i32 %19, i32* %4, align 4
  br label %24

20:                                               ; preds = %3
  %21 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @mlx5_modify_nic_vport_mtu(%struct.mlx5_core_dev* %21, i32 %22)
  store i32 0, i32* %4, align 4
  br label %24

24:                                               ; preds = %20, %18
  %25 = load i32, i32* %4, align 4
  ret i32 %25
}

declare dso_local i32 @MLX5E_SW2HW_MTU(%struct.mlx5e_params*, i32) #1

declare dso_local i32 @mlx5_set_port_mtu(%struct.mlx5_core_dev*, i32, i32) #1

declare dso_local i32 @mlx5_modify_nic_vport_mtu(%struct.mlx5_core_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
