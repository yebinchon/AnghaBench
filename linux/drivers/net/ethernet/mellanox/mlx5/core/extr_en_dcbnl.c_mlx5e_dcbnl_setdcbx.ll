; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_dcbnl.c_mlx5e_dcbnl_setdcbx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_dcbnl.c_mlx5e_dcbnl_setdcbx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.mlx5e_priv = type { i32, %struct.mlx5e_dcbx }
%struct.mlx5e_dcbx = type { i64, i32 }

@DCB_CAP_DCBX_LLD_MANAGED = common dso_local global i32 0, align 4
@MLX5E_DCBX_PARAM_VER_OPER_AUTO = common dso_local global i64 0, align 8
@DCB_CAP_DCBX_HOST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @mlx5e_dcbnl_setdcbx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5e_dcbnl_setdcbx(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx5e_priv*, align 8
  %7 = alloca %struct.mlx5e_dcbx*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call %struct.mlx5e_priv* @netdev_priv(%struct.net_device* %8)
  store %struct.mlx5e_priv* %9, %struct.mlx5e_priv** %6, align 8
  %10 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %6, align 8
  %11 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %10, i32 0, i32 1
  store %struct.mlx5e_dcbx* %11, %struct.mlx5e_dcbx** %7, align 8
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @DCB_CAP_DCBX_LLD_MANAGED, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %66

17:                                               ; preds = %2
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %50, label %20

20:                                               ; preds = %17
  %21 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %6, align 8
  %22 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.mlx5e_dcbx*, %struct.mlx5e_dcbx** %7, align 8
  %25 = call i64 @MLX5_CAP_GEN(i32 %23, %struct.mlx5e_dcbx* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %50

27:                                               ; preds = %20
  %28 = load %struct.mlx5e_dcbx*, %struct.mlx5e_dcbx** %7, align 8
  %29 = getelementptr inbounds %struct.mlx5e_dcbx, %struct.mlx5e_dcbx* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @MLX5E_DCBX_PARAM_VER_OPER_AUTO, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  store i32 0, i32* %3, align 4
  br label %66

34:                                               ; preds = %27
  %35 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %6, align 8
  %36 = load i64, i64* @MLX5E_DCBX_PARAM_VER_OPER_AUTO, align 8
  %37 = call i32 @mlx5e_dcbnl_set_dcbx_mode(%struct.mlx5e_priv* %35, i64 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %49, label %39

39:                                               ; preds = %34
  %40 = load i64, i64* @MLX5E_DCBX_PARAM_VER_OPER_AUTO, align 8
  %41 = load %struct.mlx5e_dcbx*, %struct.mlx5e_dcbx** %7, align 8
  %42 = getelementptr inbounds %struct.mlx5e_dcbx, %struct.mlx5e_dcbx* %41, i32 0, i32 0
  store i64 %40, i64* %42, align 8
  %43 = load i32, i32* @DCB_CAP_DCBX_HOST, align 4
  %44 = xor i32 %43, -1
  %45 = load %struct.mlx5e_dcbx*, %struct.mlx5e_dcbx** %7, align 8
  %46 = getelementptr inbounds %struct.mlx5e_dcbx, %struct.mlx5e_dcbx* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = and i32 %47, %44
  store i32 %48, i32* %46, align 8
  store i32 0, i32* %3, align 4
  br label %66

49:                                               ; preds = %34
  store i32 1, i32* %3, align 4
  br label %66

50:                                               ; preds = %20, %17
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* @DCB_CAP_DCBX_HOST, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %50
  store i32 1, i32* %3, align 4
  br label %66

56:                                               ; preds = %50
  %57 = load %struct.net_device*, %struct.net_device** %4, align 8
  %58 = call %struct.mlx5e_priv* @netdev_priv(%struct.net_device* %57)
  %59 = call i64 @mlx5e_dcbnl_switch_to_host_mode(%struct.mlx5e_priv* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %56
  store i32 1, i32* %3, align 4
  br label %66

62:                                               ; preds = %56
  %63 = load i32, i32* %5, align 4
  %64 = load %struct.mlx5e_dcbx*, %struct.mlx5e_dcbx** %7, align 8
  %65 = getelementptr inbounds %struct.mlx5e_dcbx, %struct.mlx5e_dcbx* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 8
  store i32 0, i32* %3, align 4
  br label %66

66:                                               ; preds = %62, %61, %55, %49, %39, %33, %16
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local %struct.mlx5e_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @MLX5_CAP_GEN(i32, %struct.mlx5e_dcbx*) #1

declare dso_local i32 @mlx5e_dcbnl_set_dcbx_mode(%struct.mlx5e_priv*, i64) #1

declare dso_local i64 @mlx5e_dcbnl_switch_to_host_mode(%struct.mlx5e_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
