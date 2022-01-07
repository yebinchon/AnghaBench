; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/fpga/extr_ipsec.c_mlx5_fpga_ipsec_build_hw_sa.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/fpga/extr_ipsec.c_mlx5_fpga_ipsec_build_hw_sa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { i32 }
%struct.mlx5_accel_esp_xfrm_attrs = type { i32 }
%struct.mlx5_ifc_fpga_ipsec_sa = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@MLX5_FPGA_IPSEC_SA_IPV6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5_core_dev*, %struct.mlx5_accel_esp_xfrm_attrs*, i32*, i32*, i32, i32, %struct.mlx5_ifc_fpga_ipsec_sa*)* @mlx5_fpga_ipsec_build_hw_sa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5_fpga_ipsec_build_hw_sa(%struct.mlx5_core_dev* %0, %struct.mlx5_accel_esp_xfrm_attrs* %1, i32* %2, i32* %3, i32 %4, i32 %5, %struct.mlx5_ifc_fpga_ipsec_sa* %6) #0 {
  %8 = alloca %struct.mlx5_core_dev*, align 8
  %9 = alloca %struct.mlx5_accel_esp_xfrm_attrs*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.mlx5_ifc_fpga_ipsec_sa*, align 8
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %8, align 8
  store %struct.mlx5_accel_esp_xfrm_attrs* %1, %struct.mlx5_accel_esp_xfrm_attrs** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store %struct.mlx5_ifc_fpga_ipsec_sa* %6, %struct.mlx5_ifc_fpga_ipsec_sa** %14, align 8
  %15 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %8, align 8
  %16 = load %struct.mlx5_accel_esp_xfrm_attrs*, %struct.mlx5_accel_esp_xfrm_attrs** %9, align 8
  %17 = load %struct.mlx5_ifc_fpga_ipsec_sa*, %struct.mlx5_ifc_fpga_ipsec_sa** %14, align 8
  %18 = call i32 @mlx5_fpga_ipsec_build_hw_xfrm(%struct.mlx5_core_dev* %15, %struct.mlx5_accel_esp_xfrm_attrs* %16, %struct.mlx5_ifc_fpga_ipsec_sa* %17)
  %19 = load %struct.mlx5_ifc_fpga_ipsec_sa*, %struct.mlx5_ifc_fpga_ipsec_sa** %14, align 8
  %20 = getelementptr inbounds %struct.mlx5_ifc_fpga_ipsec_sa, %struct.mlx5_ifc_fpga_ipsec_sa* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = load i32*, i32** %10, align 8
  %24 = call i32 @memcpy(i32 %22, i32* %23, i32 4)
  %25 = load %struct.mlx5_ifc_fpga_ipsec_sa*, %struct.mlx5_ifc_fpga_ipsec_sa** %14, align 8
  %26 = getelementptr inbounds %struct.mlx5_ifc_fpga_ipsec_sa, %struct.mlx5_ifc_fpga_ipsec_sa* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load i32*, i32** %11, align 8
  %30 = call i32 @memcpy(i32 %28, i32* %29, i32 4)
  %31 = load i32, i32* %12, align 4
  %32 = load %struct.mlx5_ifc_fpga_ipsec_sa*, %struct.mlx5_ifc_fpga_ipsec_sa** %14, align 8
  %33 = getelementptr inbounds %struct.mlx5_ifc_fpga_ipsec_sa, %struct.mlx5_ifc_fpga_ipsec_sa* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  store i32 %31, i32* %34, align 4
  %35 = load i32, i32* %13, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %7
  %38 = load i32, i32* @MLX5_FPGA_IPSEC_SA_IPV6, align 4
  %39 = load %struct.mlx5_ifc_fpga_ipsec_sa*, %struct.mlx5_ifc_fpga_ipsec_sa** %14, align 8
  %40 = getelementptr inbounds %struct.mlx5_ifc_fpga_ipsec_sa, %struct.mlx5_ifc_fpga_ipsec_sa* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %42, %38
  store i32 %43, i32* %41, align 4
  br label %44

44:                                               ; preds = %37, %7
  ret void
}

declare dso_local i32 @mlx5_fpga_ipsec_build_hw_xfrm(%struct.mlx5_core_dev*, %struct.mlx5_accel_esp_xfrm_attrs*, %struct.mlx5_ifc_fpga_ipsec_sa*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
