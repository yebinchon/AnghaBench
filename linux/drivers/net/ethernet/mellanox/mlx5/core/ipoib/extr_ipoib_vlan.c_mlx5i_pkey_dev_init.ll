; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/ipoib/extr_ipoib_vlan.c_mlx5i_pkey_dev_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/ipoib/extr_ipoib_vlan.c_mlx5i_pkey_dev_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }
%struct.mlx5e_priv = type { i32, %struct.mlx5i_priv* }
%struct.mlx5i_priv = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"failed to get parent device\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @mlx5i_pkey_dev_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5i_pkey_dev_init(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.mlx5e_priv*, align 8
  %5 = alloca %struct.mlx5i_priv*, align 8
  %6 = alloca %struct.mlx5i_priv*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = call %struct.mlx5e_priv* @mlx5i_epriv(%struct.net_device* %9)
  store %struct.mlx5e_priv* %10, %struct.mlx5e_priv** %4, align 8
  %11 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %12 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %11, i32 0, i32 1
  %13 = load %struct.mlx5i_priv*, %struct.mlx5i_priv** %12, align 8
  store %struct.mlx5i_priv* %13, %struct.mlx5i_priv** %5, align 8
  %14 = load %struct.net_device*, %struct.net_device** %3, align 8
  %15 = getelementptr inbounds %struct.net_device, %struct.net_device* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = bitcast {}** %17 to i32 (%struct.net_device*)**
  %19 = load i32 (%struct.net_device*)*, i32 (%struct.net_device*)** %18, align 8
  %20 = load %struct.net_device*, %struct.net_device** %3, align 8
  %21 = call i32 %19(%struct.net_device* %20)
  store i32 %21, i32* %8, align 4
  %22 = load %struct.net_device*, %struct.net_device** %3, align 8
  %23 = call i32 @dev_net(%struct.net_device* %22)
  %24 = load i32, i32* %8, align 4
  %25 = call %struct.net_device* @dev_get_by_index(i32 %23, i32 %24)
  store %struct.net_device* %25, %struct.net_device** %7, align 8
  %26 = load %struct.net_device*, %struct.net_device** %7, align 8
  %27 = icmp ne %struct.net_device* %26, null
  br i1 %27, label %35, label %28

28:                                               ; preds = %1
  %29 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %30 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @mlx5_core_warn(i32 %31, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %47

35:                                               ; preds = %1
  %36 = load %struct.net_device*, %struct.net_device** %7, align 8
  %37 = call %struct.mlx5i_priv* @netdev_priv(%struct.net_device* %36)
  store %struct.mlx5i_priv* %37, %struct.mlx5i_priv** %6, align 8
  %38 = load %struct.mlx5i_priv*, %struct.mlx5i_priv** %6, align 8
  %39 = getelementptr inbounds %struct.mlx5i_priv, %struct.mlx5i_priv* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.mlx5i_priv*, %struct.mlx5i_priv** %5, align 8
  %42 = getelementptr inbounds %struct.mlx5i_priv, %struct.mlx5i_priv* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  %43 = load %struct.net_device*, %struct.net_device** %7, align 8
  %44 = call i32 @dev_put(%struct.net_device* %43)
  %45 = load %struct.net_device*, %struct.net_device** %3, align 8
  %46 = call i32 @mlx5i_dev_init(%struct.net_device* %45)
  store i32 %46, i32* %2, align 4
  br label %47

47:                                               ; preds = %35, %28
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local %struct.mlx5e_priv* @mlx5i_epriv(%struct.net_device*) #1

declare dso_local %struct.net_device* @dev_get_by_index(i32, i32) #1

declare dso_local i32 @dev_net(%struct.net_device*) #1

declare dso_local i32 @mlx5_core_warn(i32, i8*) #1

declare dso_local %struct.mlx5i_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @dev_put(%struct.net_device*) #1

declare dso_local i32 @mlx5i_dev_init(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
