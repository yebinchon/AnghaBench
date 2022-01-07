; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/fpga/extr_ipsec.c_mlx5_is_fpga_ipsec_rule.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/fpga/extr_ipsec.c_mlx5_is_fpga_ipsec_rule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { i32 }

@MLX5_MATCH_OUTER_HEADERS = common dso_local global i32 0, align 4
@MLX5_ACCEL_IPSEC_CAP_DEVICE = common dso_local global i32 0, align 4
@MLX5_ACCEL_IPSEC_CAP_ESP = common dso_local global i32 0, align 4
@MLX5_ACCEL_IPSEC_CAP_IPV6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_core_dev*, i32, i32*, i32*)* @mlx5_is_fpga_ipsec_rule to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5_is_fpga_ipsec_rule(%struct.mlx5_core_dev* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx5_core_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  %13 = call i32 @mlx5_accel_ipsec_device_caps(%struct.mlx5_core_dev* %12)
  store i32 %13, i32* %10, align 4
  %14 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  %15 = load i32*, i32** %8, align 8
  %16 = load i32*, i32** %9, align 8
  %17 = call i32 @mlx5_fs_is_outer_ipv6_flow(%struct.mlx5_core_dev* %14, i32* %15, i32* %16)
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @MLX5_MATCH_OUTER_HEADERS, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %45

22:                                               ; preds = %4
  %23 = load i32*, i32** %8, align 8
  %24 = load i32*, i32** %9, align 8
  %25 = call i64 @mlx5_fs_is_outer_udp_flow(i32* %23, i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %45, label %27

27:                                               ; preds = %22
  %28 = load i32*, i32** %8, align 8
  %29 = load i32*, i32** %9, align 8
  %30 = call i64 @mlx5_fs_is_outer_tcp_flow(i32* %28, i32* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %45, label %32

32:                                               ; preds = %27
  %33 = load i32*, i32** %8, align 8
  %34 = call i64 @mlx5_fs_is_vxlan_flow(i32* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %45, label %36

36:                                               ; preds = %32
  %37 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  %38 = load i32*, i32** %8, align 8
  %39 = load i32*, i32** %9, align 8
  %40 = call i64 @mlx5_fs_is_outer_ipv4_flow(%struct.mlx5_core_dev* %37, i32* %38, i32* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %36
  %43 = load i32, i32* %11, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %42, %32, %27, %22, %4
  store i32 0, i32* %5, align 4
  br label %79

46:                                               ; preds = %42, %36
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* @MLX5_ACCEL_IPSEC_CAP_DEVICE, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %46
  store i32 0, i32* %5, align 4
  br label %79

52:                                               ; preds = %46
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* @MLX5_ACCEL_IPSEC_CAP_ESP, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %62, label %57

57:                                               ; preds = %52
  %58 = load i32*, i32** %8, align 8
  %59 = call i64 @mlx5_fs_is_outer_ipsec_flow(i32* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %57
  store i32 0, i32* %5, align 4
  br label %79

62:                                               ; preds = %57, %52
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* @MLX5_ACCEL_IPSEC_CAP_IPV6, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %71, label %67

67:                                               ; preds = %62
  %68 = load i32, i32* %11, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %67
  store i32 0, i32* %5, align 4
  br label %79

71:                                               ; preds = %67, %62
  %72 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  %73 = load i32*, i32** %8, align 8
  %74 = load i32*, i32** %9, align 8
  %75 = call i32 @validate_fpga_full_mask(%struct.mlx5_core_dev* %72, i32* %73, i32* %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %71
  store i32 0, i32* %5, align 4
  br label %79

78:                                               ; preds = %71
  store i32 1, i32* %5, align 4
  br label %79

79:                                               ; preds = %78, %77, %70, %61, %51, %45
  %80 = load i32, i32* %5, align 4
  ret i32 %80
}

declare dso_local i32 @mlx5_accel_ipsec_device_caps(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mlx5_fs_is_outer_ipv6_flow(%struct.mlx5_core_dev*, i32*, i32*) #1

declare dso_local i64 @mlx5_fs_is_outer_udp_flow(i32*, i32*) #1

declare dso_local i64 @mlx5_fs_is_outer_tcp_flow(i32*, i32*) #1

declare dso_local i64 @mlx5_fs_is_vxlan_flow(i32*) #1

declare dso_local i64 @mlx5_fs_is_outer_ipv4_flow(%struct.mlx5_core_dev*, i32*, i32*) #1

declare dso_local i64 @mlx5_fs_is_outer_ipsec_flow(i32*) #1

declare dso_local i32 @validate_fpga_full_mask(%struct.mlx5_core_dev*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
