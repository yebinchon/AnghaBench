; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/fpga/extr_tls.c_mlx5_fpga_tls_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/fpga/extr_tls.c_mlx5_fpga_tls_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { %struct.mlx5_fpga_device* }
%struct.mlx5_fpga_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx5_fpga_tls_cleanup(%struct.mlx5_core_dev* %0) #0 {
  %2 = alloca %struct.mlx5_core_dev*, align 8
  %3 = alloca %struct.mlx5_fpga_device*, align 8
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %2, align 8
  %4 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %5 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %4, i32 0, i32 0
  %6 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %5, align 8
  store %struct.mlx5_fpga_device* %6, %struct.mlx5_fpga_device** %3, align 8
  %7 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %3, align 8
  %8 = icmp ne %struct.mlx5_fpga_device* %7, null
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %3, align 8
  %11 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = icmp ne %struct.TYPE_2__* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %9, %1
  br label %28

15:                                               ; preds = %9
  %16 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %3, align 8
  %17 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @mlx5_fpga_sbu_conn_destroy(i32 %20)
  %22 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %3, align 8
  %23 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = call i32 @kfree(%struct.TYPE_2__* %24)
  %26 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %3, align 8
  %27 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %26, i32 0, i32 0
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %27, align 8
  br label %28

28:                                               ; preds = %15, %14
  ret void
}

declare dso_local i32 @mlx5_fpga_sbu_conn_destroy(i32) #1

declare dso_local i32 @kfree(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
