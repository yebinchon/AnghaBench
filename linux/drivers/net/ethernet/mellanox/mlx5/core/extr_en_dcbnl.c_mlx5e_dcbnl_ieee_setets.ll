; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_dcbnl.c_mlx5e_dcbnl_ieee_setets.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_dcbnl.c_mlx5e_dcbnl_ieee_setets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ieee_ets = type { i32 }
%struct.mlx5e_priv = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ieee_ets*)* @mlx5e_dcbnl_ieee_setets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5e_dcbnl_ieee_setets(%struct.net_device* %0, %struct.ieee_ets* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ieee_ets*, align 8
  %6 = alloca %struct.mlx5e_priv*, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ieee_ets* %1, %struct.ieee_ets** %5, align 8
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call %struct.mlx5e_priv* @netdev_priv(%struct.net_device* %8)
  store %struct.mlx5e_priv* %9, %struct.mlx5e_priv** %6, align 8
  %10 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %6, align 8
  %11 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.ieee_ets*, %struct.ieee_ets** %5, align 8
  %14 = call i32 @MLX5_CAP_GEN(i32 %12, %struct.ieee_ets* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @EOPNOTSUPP, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %36

19:                                               ; preds = %2
  %20 = load %struct.net_device*, %struct.net_device** %4, align 8
  %21 = load %struct.ieee_ets*, %struct.ieee_ets** %5, align 8
  %22 = call i32 @mlx5e_dbcnl_validate_ets(%struct.net_device* %20, %struct.ieee_ets* %21, i32 0)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = load i32, i32* %7, align 4
  store i32 %26, i32* %3, align 4
  br label %36

27:                                               ; preds = %19
  %28 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %6, align 8
  %29 = load %struct.ieee_ets*, %struct.ieee_ets** %5, align 8
  %30 = call i32 @mlx5e_dcbnl_ieee_setets_core(%struct.mlx5e_priv* %28, %struct.ieee_ets* %29)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load i32, i32* %7, align 4
  store i32 %34, i32* %3, align 4
  br label %36

35:                                               ; preds = %27
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %35, %33, %25, %16
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local %struct.mlx5e_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @MLX5_CAP_GEN(i32, %struct.ieee_ets*) #1

declare dso_local i32 @mlx5e_dbcnl_validate_ets(%struct.net_device*, %struct.ieee_ets*, i32) #1

declare dso_local i32 @mlx5e_dcbnl_ieee_setets_core(%struct.mlx5e_priv*, %struct.ieee_ets*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
