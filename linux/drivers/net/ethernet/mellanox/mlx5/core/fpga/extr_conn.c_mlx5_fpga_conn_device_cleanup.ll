; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/fpga/extr_conn.c_mlx5_fpga_conn_device_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/fpga/extr_conn.c_mlx5_fpga_conn_device_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_fpga_device = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx5_fpga_conn_device_cleanup(%struct.mlx5_fpga_device* %0) #0 {
  %2 = alloca %struct.mlx5_fpga_device*, align 8
  store %struct.mlx5_fpga_device* %0, %struct.mlx5_fpga_device** %2, align 8
  %3 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %2, align 8
  %4 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %2, align 8
  %7 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 2
  %9 = call i32 @mlx5_core_destroy_mkey(i32 %5, i32* %8)
  %10 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %2, align 8
  %11 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %2, align 8
  %14 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @mlx5_core_dealloc_pd(i32 %12, i32 %16)
  %18 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %2, align 8
  %19 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %2, align 8
  %22 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @mlx5_put_uars_page(i32 %20, i32 %24)
  %26 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %2, align 8
  %27 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @mlx5_nic_vport_disable_roce(i32 %28)
  ret void
}

declare dso_local i32 @mlx5_core_destroy_mkey(i32, i32*) #1

declare dso_local i32 @mlx5_core_dealloc_pd(i32, i32) #1

declare dso_local i32 @mlx5_put_uars_page(i32, i32) #1

declare dso_local i32 @mlx5_nic_vport_disable_roce(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
