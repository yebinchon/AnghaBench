; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/fpga/extr_conn.c_mlx5_fpga_conn_create_wq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/fpga/extr_conn.c_mlx5_fpga_conn_create_wq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_fpga_conn = type { %struct.TYPE_3__, %struct.mlx5_fpga_device* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.mlx5_fpga_device = type { %struct.mlx5_core_dev* }
%struct.mlx5_core_dev = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.mlx5_wq_param = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_fpga_conn*, i8*)* @mlx5_fpga_conn_create_wq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5_fpga_conn_create_wq(%struct.mlx5_fpga_conn* %0, i8* %1) #0 {
  %3 = alloca %struct.mlx5_fpga_conn*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.mlx5_fpga_device*, align 8
  %6 = alloca %struct.mlx5_core_dev*, align 8
  %7 = alloca %struct.mlx5_wq_param, align 4
  store %struct.mlx5_fpga_conn* %0, %struct.mlx5_fpga_conn** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %3, align 8
  %9 = getelementptr inbounds %struct.mlx5_fpga_conn, %struct.mlx5_fpga_conn* %8, i32 0, i32 1
  %10 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %9, align 8
  store %struct.mlx5_fpga_device* %10, %struct.mlx5_fpga_device** %5, align 8
  %11 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %5, align 8
  %12 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %11, i32 0, i32 0
  %13 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %12, align 8
  store %struct.mlx5_core_dev* %13, %struct.mlx5_core_dev** %6, align 8
  %14 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  %15 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = getelementptr inbounds %struct.mlx5_wq_param, %struct.mlx5_wq_param* %7, i32 0, i32 1
  store i32 %17, i32* %18, align 4
  %19 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  %20 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = getelementptr inbounds %struct.mlx5_wq_param, %struct.mlx5_wq_param* %7, i32 0, i32 0
  store i32 %22, i32* %23, align 4
  %24 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  %25 = load i8*, i8** %4, align 8
  %26 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %3, align 8
  %27 = getelementptr inbounds %struct.mlx5_fpga_conn, %struct.mlx5_fpga_conn* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %3, align 8
  %30 = getelementptr inbounds %struct.mlx5_fpga_conn, %struct.mlx5_fpga_conn* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = call i32 @mlx5_wq_qp_create(%struct.mlx5_core_dev* %24, %struct.mlx5_wq_param* %7, i8* %25, i32* %28, i32* %31)
  ret i32 %32
}

declare dso_local i32 @mlx5_wq_qp_create(%struct.mlx5_core_dev*, %struct.mlx5_wq_param*, i8*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
