; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/fpga/extr_ipsec.c_mlx5_fpga_ipsec_device_caps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/fpga/extr_ipsec.c_mlx5_fpga_ipsec_device_caps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { %struct.mlx5_fpga_device* }
%struct.mlx5_fpga_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@MLX5_ACCEL_IPSEC_CAP_DEVICE = common dso_local global i32 0, align 4
@MLX5_ACCEL_IPSEC_CAP_REQUIRED_METADATA = common dso_local global i32 0, align 4
@ipsec_extended_cap = common dso_local global i32 0, align 4
@esp = common dso_local global i32 0, align 4
@MLX5_ACCEL_IPSEC_CAP_ESP = common dso_local global i32 0, align 4
@ipv6 = common dso_local global i32 0, align 4
@MLX5_ACCEL_IPSEC_CAP_IPV6 = common dso_local global i32 0, align 4
@lso = common dso_local global i32 0, align 4
@MLX5_ACCEL_IPSEC_CAP_LSO = common dso_local global i32 0, align 4
@rx_no_trailer = common dso_local global i32 0, align 4
@MLX5_ACCEL_IPSEC_CAP_RX_NO_TRAILER = common dso_local global i32 0, align 4
@esn = common dso_local global i32 0, align 4
@MLX5_ACCEL_IPSEC_CAP_ESN = common dso_local global i32 0, align 4
@MLX5_ACCEL_IPSEC_CAP_TX_IV_IS_ESN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_fpga_ipsec_device_caps(%struct.mlx5_core_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx5_core_dev*, align 8
  %4 = alloca %struct.mlx5_fpga_device*, align 8
  %5 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %3, align 8
  %6 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %7 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %6, i32 0, i32 0
  %8 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %7, align 8
  store %struct.mlx5_fpga_device* %8, %struct.mlx5_fpga_device** %4, align 8
  store i32 0, i32* %5, align 4
  %9 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %10 = call i64 @mlx5_fpga_is_ipsec_device(%struct.mlx5_core_dev* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %1
  %13 = load i32, i32* @MLX5_ACCEL_IPSEC_CAP_DEVICE, align 4
  %14 = load i32, i32* %5, align 4
  %15 = or i32 %14, %13
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* @MLX5_ACCEL_IPSEC_CAP_REQUIRED_METADATA, align 4
  %17 = load i32, i32* %5, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %5, align 4
  br label %21

19:                                               ; preds = %1
  %20 = load i32, i32* %5, align 4
  store i32 %20, i32* %2, align 4
  br label %103

21:                                               ; preds = %12
  %22 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %4, align 8
  %23 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = icmp ne %struct.TYPE_2__* %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %21
  %27 = load i32, i32* %5, align 4
  store i32 %27, i32* %2, align 4
  br label %103

28:                                               ; preds = %21
  %29 = load i32, i32* @ipsec_extended_cap, align 4
  %30 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %4, align 8
  %31 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @esp, align 4
  %36 = call i64 @MLX5_GET(i32 %29, i32 %34, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %28
  %39 = load i32, i32* @MLX5_ACCEL_IPSEC_CAP_ESP, align 4
  %40 = load i32, i32* %5, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %5, align 4
  br label %42

42:                                               ; preds = %38, %28
  %43 = load i32, i32* @ipsec_extended_cap, align 4
  %44 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %4, align 8
  %45 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @ipv6, align 4
  %50 = call i64 @MLX5_GET(i32 %43, i32 %48, i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %42
  %53 = load i32, i32* @MLX5_ACCEL_IPSEC_CAP_IPV6, align 4
  %54 = load i32, i32* %5, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %5, align 4
  br label %56

56:                                               ; preds = %52, %42
  %57 = load i32, i32* @ipsec_extended_cap, align 4
  %58 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %4, align 8
  %59 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %58, i32 0, i32 0
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @lso, align 4
  %64 = call i64 @MLX5_GET(i32 %57, i32 %62, i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %56
  %67 = load i32, i32* @MLX5_ACCEL_IPSEC_CAP_LSO, align 4
  %68 = load i32, i32* %5, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %5, align 4
  br label %70

70:                                               ; preds = %66, %56
  %71 = load i32, i32* @ipsec_extended_cap, align 4
  %72 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %4, align 8
  %73 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %72, i32 0, i32 0
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @rx_no_trailer, align 4
  %78 = call i64 @MLX5_GET(i32 %71, i32 %76, i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %70
  %81 = load i32, i32* @MLX5_ACCEL_IPSEC_CAP_RX_NO_TRAILER, align 4
  %82 = load i32, i32* %5, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %5, align 4
  br label %84

84:                                               ; preds = %80, %70
  %85 = load i32, i32* @ipsec_extended_cap, align 4
  %86 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %4, align 8
  %87 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %86, i32 0, i32 0
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @esn, align 4
  %92 = call i64 @MLX5_GET(i32 %85, i32 %90, i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %101

94:                                               ; preds = %84
  %95 = load i32, i32* @MLX5_ACCEL_IPSEC_CAP_ESN, align 4
  %96 = load i32, i32* %5, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %5, align 4
  %98 = load i32, i32* @MLX5_ACCEL_IPSEC_CAP_TX_IV_IS_ESN, align 4
  %99 = load i32, i32* %5, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %5, align 4
  br label %101

101:                                              ; preds = %94, %84
  %102 = load i32, i32* %5, align 4
  store i32 %102, i32* %2, align 4
  br label %103

103:                                              ; preds = %101, %26, %19
  %104 = load i32, i32* %2, align 4
  ret i32 %104
}

declare dso_local i64 @mlx5_fpga_is_ipsec_device(%struct.mlx5_core_dev*) #1

declare dso_local i64 @MLX5_GET(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
