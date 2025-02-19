; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/fpga/extr_tls.c_mlx5_fpga_is_tls_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/fpga/extr_tls.c_mlx5_fpga_is_tls_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { i32 }

@fpga = common dso_local global i32 0, align 4
@ieee_vendor_id = common dso_local global i32 0, align 4
@MLX5_FPGA_CAP_SANDBOX_VENDOR_ID_MLNX = common dso_local global i64 0, align 8
@sandbox_product_id = common dso_local global i32 0, align 4
@MLX5_FPGA_CAP_SANDBOX_PRODUCT_ID_TLS = common dso_local global i64 0, align 8
@sandbox_product_version = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_fpga_is_tls_device(%struct.mlx5_core_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx5_core_dev*, align 8
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %3, align 8
  %4 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %5 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  %9 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %10 = load i32, i32* @fpga, align 4
  %11 = call i32 @MLX5_CAP_GEN(%struct.mlx5_core_dev* %9, i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %8, %1
  store i32 0, i32* %2, align 4
  br label %35

14:                                               ; preds = %8
  %15 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %16 = load i32, i32* @ieee_vendor_id, align 4
  %17 = call i64 @MLX5_CAP_FPGA(%struct.mlx5_core_dev* %15, i32 %16)
  %18 = load i64, i64* @MLX5_FPGA_CAP_SANDBOX_VENDOR_ID_MLNX, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  store i32 0, i32* %2, align 4
  br label %35

21:                                               ; preds = %14
  %22 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %23 = load i32, i32* @sandbox_product_id, align 4
  %24 = call i64 @MLX5_CAP_FPGA(%struct.mlx5_core_dev* %22, i32 %23)
  %25 = load i64, i64* @MLX5_FPGA_CAP_SANDBOX_PRODUCT_ID_TLS, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  store i32 0, i32* %2, align 4
  br label %35

28:                                               ; preds = %21
  %29 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %30 = load i32, i32* @sandbox_product_version, align 4
  %31 = call i64 @MLX5_CAP_FPGA(%struct.mlx5_core_dev* %29, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  store i32 0, i32* %2, align 4
  br label %35

34:                                               ; preds = %28
  store i32 1, i32* %2, align 4
  br label %35

35:                                               ; preds = %34, %33, %27, %20, %13
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i32 @MLX5_CAP_GEN(%struct.mlx5_core_dev*, i32) #1

declare dso_local i64 @MLX5_CAP_FPGA(%struct.mlx5_core_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
