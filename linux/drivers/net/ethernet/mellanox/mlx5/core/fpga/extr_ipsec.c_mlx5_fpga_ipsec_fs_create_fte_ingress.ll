; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/fpga/extr_ipsec.c_mlx5_fpga_ipsec_fs_create_fte_ingress.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/fpga/extr_ipsec.c_mlx5_fpga_ipsec_fs_create_fte_ingress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_flow_root_namespace = type { i32 }
%struct.mlx5_flow_table = type { i32 }
%struct.mlx5_flow_group = type { i32 }
%struct.fs_fte = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_table*, %struct.mlx5_flow_group*, %struct.fs_fte*)* @mlx5_fpga_ipsec_fs_create_fte_ingress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5_fpga_ipsec_fs_create_fte_ingress(%struct.mlx5_flow_root_namespace* %0, %struct.mlx5_flow_table* %1, %struct.mlx5_flow_group* %2, %struct.fs_fte* %3) #0 {
  %5 = alloca %struct.mlx5_flow_root_namespace*, align 8
  %6 = alloca %struct.mlx5_flow_table*, align 8
  %7 = alloca %struct.mlx5_flow_group*, align 8
  %8 = alloca %struct.fs_fte*, align 8
  store %struct.mlx5_flow_root_namespace* %0, %struct.mlx5_flow_root_namespace** %5, align 8
  store %struct.mlx5_flow_table* %1, %struct.mlx5_flow_table** %6, align 8
  store %struct.mlx5_flow_group* %2, %struct.mlx5_flow_group** %7, align 8
  store %struct.fs_fte* %3, %struct.fs_fte** %8, align 8
  %9 = load %struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_root_namespace** %5, align 8
  %10 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %6, align 8
  %11 = load %struct.mlx5_flow_group*, %struct.mlx5_flow_group** %7, align 8
  %12 = load %struct.fs_fte*, %struct.fs_fte** %8, align 8
  %13 = call i32 @fpga_ipsec_fs_create_fte(%struct.mlx5_flow_root_namespace* %9, %struct.mlx5_flow_table* %10, %struct.mlx5_flow_group* %11, %struct.fs_fte* %12, i32 0)
  ret i32 %13
}

declare dso_local i32 @fpga_ipsec_fs_create_fte(%struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_table*, %struct.mlx5_flow_group*, %struct.fs_fte*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
