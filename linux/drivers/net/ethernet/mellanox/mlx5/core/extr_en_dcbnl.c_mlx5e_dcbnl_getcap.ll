; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_dcbnl.c_mlx5e_dcbnl_getcap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_dcbnl.c_mlx5e_dcbnl_getcap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.mlx5e_priv = type { %struct.TYPE_2__, %struct.mlx5_core_dev* }
%struct.TYPE_2__ = type { i32 }
%struct.mlx5_core_dev = type { i32 }

@DCB_CAP_DCBX_VER_CEE = common dso_local global i32 0, align 4
@DCB_CAP_DCBX_VER_IEEE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32, i32*)* @mlx5e_dcbnl_getcap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5e_dcbnl_getcap(%struct.net_device* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.mlx5e_priv*, align 8
  %8 = alloca %struct.mlx5_core_dev*, align 8
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = call %struct.mlx5e_priv* @netdev_priv(%struct.net_device* %10)
  store %struct.mlx5e_priv* %11, %struct.mlx5e_priv** %7, align 8
  %12 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %7, align 8
  %13 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %12, i32 0, i32 1
  %14 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %13, align 8
  store %struct.mlx5_core_dev* %14, %struct.mlx5_core_dev** %8, align 8
  store i32 0, i32* %9, align 4
  %15 = load i32, i32* %5, align 4
  switch i32 %15, label %46 [
    i32 130, label %16
    i32 132, label %18
    i32 128, label %20
    i32 129, label %22
    i32 131, label %27
    i32 133, label %32
    i32 135, label %34
    i32 134, label %36
  ]

16:                                               ; preds = %3
  %17 = load i32*, i32** %6, align 8
  store i32 1, i32* %17, align 4
  br label %48

18:                                               ; preds = %3
  %19 = load i32*, i32** %6, align 8
  store i32 1, i32* %19, align 4
  br label %48

20:                                               ; preds = %3
  %21 = load i32*, i32** %6, align 8
  store i32 0, i32* %21, align 4
  br label %48

22:                                               ; preds = %3
  %23 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %8, align 8
  %24 = call i32 @mlx5_max_tc(%struct.mlx5_core_dev* %23)
  %25 = shl i32 1, %24
  %26 = load i32*, i32** %6, align 8
  store i32 %25, i32* %26, align 4
  br label %48

27:                                               ; preds = %3
  %28 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %8, align 8
  %29 = call i32 @mlx5_max_tc(%struct.mlx5_core_dev* %28)
  %30 = shl i32 1, %29
  %31 = load i32*, i32** %6, align 8
  store i32 %30, i32* %31, align 4
  br label %48

32:                                               ; preds = %3
  %33 = load i32*, i32** %6, align 8
  store i32 0, i32* %33, align 4
  br label %48

34:                                               ; preds = %3
  %35 = load i32*, i32** %6, align 8
  store i32 0, i32* %35, align 4
  br label %48

36:                                               ; preds = %3
  %37 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %7, align 8
  %38 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @DCB_CAP_DCBX_VER_CEE, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @DCB_CAP_DCBX_VER_IEEE, align 4
  %44 = or i32 %42, %43
  %45 = load i32*, i32** %6, align 8
  store i32 %44, i32* %45, align 4
  br label %48

46:                                               ; preds = %3
  %47 = load i32*, i32** %6, align 8
  store i32 0, i32* %47, align 4
  store i32 1, i32* %9, align 4
  br label %48

48:                                               ; preds = %46, %36, %34, %32, %27, %22, %20, %18, %16
  %49 = load i32, i32* %9, align 4
  ret i32 %49
}

declare dso_local %struct.mlx5e_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @mlx5_max_tc(%struct.mlx5_core_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
