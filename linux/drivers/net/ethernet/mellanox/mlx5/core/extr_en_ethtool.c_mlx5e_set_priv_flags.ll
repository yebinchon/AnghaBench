; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_ethtool.c_mlx5e_set_priv_flags.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_ethtool.c_mlx5e_set_priv_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.mlx5e_priv = type { i32 }

@MLX5E_NUM_PFLAGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @mlx5e_set_priv_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5e_set_priv_flags(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx5e_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.mlx5e_priv* @netdev_priv(%struct.net_device* %8)
  store %struct.mlx5e_priv* %9, %struct.mlx5e_priv** %5, align 8
  %10 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %5, align 8
  %11 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %10, i32 0, i32 0
  %12 = call i32 @mutex_lock(i32* %11)
  store i32 0, i32* %6, align 4
  br label %13

13:                                               ; preds = %26, %2
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @MLX5E_NUM_PFLAGS, align 4
  %16 = icmp ult i32 %14, %15
  br i1 %16, label %17, label %29

17:                                               ; preds = %13
  %18 = load %struct.net_device*, %struct.net_device** %3, align 8
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @mlx5e_handle_pflag(%struct.net_device* %18, i32 %19, i32 %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  br label %29

25:                                               ; preds = %17
  br label %26

26:                                               ; preds = %25
  %27 = load i32, i32* %6, align 4
  %28 = add i32 %27, 1
  store i32 %28, i32* %6, align 4
  br label %13

29:                                               ; preds = %24, %13
  %30 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %5, align 8
  %31 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %30, i32 0, i32 0
  %32 = call i32 @mutex_unlock(i32* %31)
  %33 = load %struct.net_device*, %struct.net_device** %3, align 8
  %34 = call i32 @netdev_update_features(%struct.net_device* %33)
  %35 = load i32, i32* %7, align 4
  ret i32 %35
}

declare dso_local %struct.mlx5e_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mlx5e_handle_pflag(%struct.net_device*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @netdev_update_features(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
