; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_main.c_mlx5e_xsk_validate_mtu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_main.c_mlx5e_xsk_validate_mtu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.mlx5e_channels = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }
%struct.mlx5e_params = type { i32 }
%struct.mlx5_core_dev = type { i32 }
%struct.xdp_umem = type { i32 }
%struct.mlx5e_xsk_param = type { i64 }

@.str = private unnamed_addr constant [68 x i8] c"MTU %d is too big for an XSK running on channel %hu. Try MTU <= %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.mlx5e_channels*, %struct.mlx5e_params*, %struct.mlx5_core_dev*)* @mlx5e_xsk_validate_mtu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5e_xsk_validate_mtu(%struct.net_device* %0, %struct.mlx5e_channels* %1, %struct.mlx5e_params* %2, %struct.mlx5_core_dev* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.mlx5e_channels*, align 8
  %8 = alloca %struct.mlx5e_params*, align 8
  %9 = alloca %struct.mlx5_core_dev*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.xdp_umem*, align 8
  %12 = alloca %struct.mlx5e_xsk_param, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.mlx5e_channels* %1, %struct.mlx5e_channels** %7, align 8
  store %struct.mlx5e_params* %2, %struct.mlx5e_params** %8, align 8
  store %struct.mlx5_core_dev* %3, %struct.mlx5_core_dev** %9, align 8
  store i64 0, i64* %10, align 8
  br label %17

17:                                               ; preds = %65, %4
  %18 = load i64, i64* %10, align 8
  %19 = load %struct.mlx5e_channels*, %struct.mlx5e_channels** %7, align 8
  %20 = getelementptr inbounds %struct.mlx5e_channels, %struct.mlx5e_channels* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp slt i64 %18, %22
  br i1 %23, label %24, label %68

24:                                               ; preds = %17
  %25 = load %struct.mlx5e_channels*, %struct.mlx5e_channels** %7, align 8
  %26 = getelementptr inbounds %struct.mlx5e_channels, %struct.mlx5e_channels* %25, i32 0, i32 0
  %27 = load %struct.mlx5e_channels*, %struct.mlx5e_channels** %7, align 8
  %28 = getelementptr inbounds %struct.mlx5e_channels, %struct.mlx5e_channels* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load i64, i64* %10, align 8
  %32 = call %struct.xdp_umem* @mlx5e_xsk_get_umem(%struct.TYPE_2__* %26, i32 %30, i64 %31)
  store %struct.xdp_umem* %32, %struct.xdp_umem** %11, align 8
  %33 = load %struct.xdp_umem*, %struct.xdp_umem** %11, align 8
  %34 = icmp ne %struct.xdp_umem* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %24
  br label %65

36:                                               ; preds = %24
  %37 = load %struct.xdp_umem*, %struct.xdp_umem** %11, align 8
  %38 = call i32 @mlx5e_build_xsk_param(%struct.xdp_umem* %37, %struct.mlx5e_xsk_param* %12)
  %39 = load %struct.mlx5e_params*, %struct.mlx5e_params** %8, align 8
  %40 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %9, align 8
  %41 = call i32 @mlx5e_validate_xsk_param(%struct.mlx5e_params* %39, %struct.mlx5e_xsk_param* %12, %struct.mlx5_core_dev* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %64, label %43

43:                                               ; preds = %36
  %44 = load %struct.mlx5e_params*, %struct.mlx5e_params** %8, align 8
  %45 = call i64 @mlx5e_get_linear_rq_headroom(%struct.mlx5e_params* %44, %struct.mlx5e_xsk_param* %12)
  store i64 %45, i64* %13, align 8
  %46 = load %struct.mlx5e_params*, %struct.mlx5e_params** %8, align 8
  %47 = getelementptr inbounds %struct.mlx5e_xsk_param, %struct.mlx5e_xsk_param* %12, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* %13, align 8
  %50 = sub nsw i64 %48, %49
  %51 = call i32 @MLX5E_HW2SW_MTU(%struct.mlx5e_params* %46, i64 %50)
  store i32 %51, i32* %14, align 4
  %52 = load %struct.mlx5e_params*, %struct.mlx5e_params** %8, align 8
  %53 = call i32 @mlx5e_xdp_max_mtu(%struct.mlx5e_params* %52, %struct.mlx5e_xsk_param* %12)
  store i32 %53, i32* %15, align 4
  %54 = load i32, i32* %14, align 4
  %55 = load i32, i32* %15, align 4
  %56 = call i32 @min(i32 %54, i32 %55)
  store i32 %56, i32* %16, align 4
  %57 = load %struct.net_device*, %struct.net_device** %6, align 8
  %58 = load %struct.mlx5e_params*, %struct.mlx5e_params** %8, align 8
  %59 = getelementptr inbounds %struct.mlx5e_params, %struct.mlx5e_params* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i64, i64* %10, align 8
  %62 = load i32, i32* %16, align 4
  %63 = call i32 @netdev_err(%struct.net_device* %57, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), i32 %60, i64 %61, i32 %62)
  store i32 0, i32* %5, align 4
  br label %69

64:                                               ; preds = %36
  br label %65

65:                                               ; preds = %64, %35
  %66 = load i64, i64* %10, align 8
  %67 = add nsw i64 %66, 1
  store i64 %67, i64* %10, align 8
  br label %17

68:                                               ; preds = %17
  store i32 1, i32* %5, align 4
  br label %69

69:                                               ; preds = %68, %43
  %70 = load i32, i32* %5, align 4
  ret i32 %70
}

declare dso_local %struct.xdp_umem* @mlx5e_xsk_get_umem(%struct.TYPE_2__*, i32, i64) #1

declare dso_local i32 @mlx5e_build_xsk_param(%struct.xdp_umem*, %struct.mlx5e_xsk_param*) #1

declare dso_local i32 @mlx5e_validate_xsk_param(%struct.mlx5e_params*, %struct.mlx5e_xsk_param*, %struct.mlx5_core_dev*) #1

declare dso_local i64 @mlx5e_get_linear_rq_headroom(%struct.mlx5e_params*, %struct.mlx5e_xsk_param*) #1

declare dso_local i32 @MLX5E_HW2SW_MTU(%struct.mlx5e_params*, i64) #1

declare dso_local i32 @mlx5e_xdp_max_mtu(%struct.mlx5e_params*, %struct.mlx5e_xsk_param*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
