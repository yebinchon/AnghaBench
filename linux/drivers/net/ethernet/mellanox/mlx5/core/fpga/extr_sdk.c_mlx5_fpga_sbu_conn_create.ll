; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/fpga/extr_sdk.c_mlx5_fpga_sbu_conn_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/fpga/extr_sdk.c_mlx5_fpga_sbu_conn_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_fpga_conn = type { i32 }
%struct.mlx5_fpga_device = type { i32 }
%struct.mlx5_fpga_conn_attr = type { i32 }

@MLX5_FPGA_QPC_QP_TYPE_SANDBOX_QP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mlx5_fpga_conn* @mlx5_fpga_sbu_conn_create(%struct.mlx5_fpga_device* %0, %struct.mlx5_fpga_conn_attr* %1) #0 {
  %3 = alloca %struct.mlx5_fpga_device*, align 8
  %4 = alloca %struct.mlx5_fpga_conn_attr*, align 8
  store %struct.mlx5_fpga_device* %0, %struct.mlx5_fpga_device** %3, align 8
  store %struct.mlx5_fpga_conn_attr* %1, %struct.mlx5_fpga_conn_attr** %4, align 8
  %5 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %3, align 8
  %6 = load %struct.mlx5_fpga_conn_attr*, %struct.mlx5_fpga_conn_attr** %4, align 8
  %7 = load i32, i32* @MLX5_FPGA_QPC_QP_TYPE_SANDBOX_QP, align 4
  %8 = call %struct.mlx5_fpga_conn* @mlx5_fpga_conn_create(%struct.mlx5_fpga_device* %5, %struct.mlx5_fpga_conn_attr* %6, i32 %7)
  ret %struct.mlx5_fpga_conn* %8
}

declare dso_local %struct.mlx5_fpga_conn* @mlx5_fpga_conn_create(%struct.mlx5_fpga_device*, %struct.mlx5_fpga_conn_attr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
