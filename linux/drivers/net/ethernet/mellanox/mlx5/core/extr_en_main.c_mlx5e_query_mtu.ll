; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_main.c_mlx5e_query_mtu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_main.c_mlx5e_query_mtu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { i32 }
%struct.mlx5e_params = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5_core_dev*, %struct.mlx5e_params*, i64*)* @mlx5e_query_mtu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5e_query_mtu(%struct.mlx5_core_dev* %0, %struct.mlx5e_params* %1, i64* %2) #0 {
  %4 = alloca %struct.mlx5_core_dev*, align 8
  %5 = alloca %struct.mlx5e_params*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %4, align 8
  store %struct.mlx5e_params* %1, %struct.mlx5e_params** %5, align 8
  store i64* %2, i64** %6, align 8
  store i64 0, i64* %7, align 8
  %9 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %10 = call i32 @mlx5_query_nic_vport_mtu(%struct.mlx5_core_dev* %9, i64* %7)
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* %8, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %3
  %14 = load i64, i64* %7, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %13, %3
  %17 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %18 = call i32 @mlx5_query_port_oper_mtu(%struct.mlx5_core_dev* %17, i64* %7, i32 1)
  br label %19

19:                                               ; preds = %16, %13
  %20 = load %struct.mlx5e_params*, %struct.mlx5e_params** %5, align 8
  %21 = load i64, i64* %7, align 8
  %22 = call i64 @MLX5E_HW2SW_MTU(%struct.mlx5e_params* %20, i64 %21)
  %23 = load i64*, i64** %6, align 8
  store i64 %22, i64* %23, align 8
  ret void
}

declare dso_local i32 @mlx5_query_nic_vport_mtu(%struct.mlx5_core_dev*, i64*) #1

declare dso_local i32 @mlx5_query_port_oper_mtu(%struct.mlx5_core_dev*, i64*, i32) #1

declare dso_local i64 @MLX5E_HW2SW_MTU(%struct.mlx5e_params*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
