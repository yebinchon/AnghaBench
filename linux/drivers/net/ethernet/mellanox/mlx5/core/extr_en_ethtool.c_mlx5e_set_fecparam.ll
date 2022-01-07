; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_ethtool.c_mlx5e_set_fecparam.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_ethtool.c_mlx5e_set_fecparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_fecparam = type { i32 }
%struct.mlx5e_priv = type { %struct.mlx5_core_dev* }
%struct.mlx5_core_dev = type { i32 }

@pplm_fec_2_ethtool = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_fecparam*)* @mlx5e_set_fecparam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5e_set_fecparam(%struct.net_device* %0, %struct.ethtool_fecparam* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_fecparam*, align 8
  %6 = alloca %struct.mlx5e_priv*, align 8
  %7 = alloca %struct.mlx5_core_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_fecparam* %1, %struct.ethtool_fecparam** %5, align 8
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = call %struct.mlx5e_priv* @netdev_priv(%struct.net_device* %11)
  store %struct.mlx5e_priv* %12, %struct.mlx5e_priv** %6, align 8
  %13 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %6, align 8
  %14 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %13, i32 0, i32 0
  %15 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %14, align 8
  store %struct.mlx5_core_dev* %15, %struct.mlx5_core_dev** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %16

16:                                               ; preds = %38, %2
  %17 = load i32, i32* %9, align 4
  %18 = load i32*, i32** @pplm_fec_2_ethtool, align 8
  %19 = call i32 @ARRAY_SIZE(i32* %18)
  %20 = icmp slt i32 %17, %19
  br i1 %20, label %21, label %41

21:                                               ; preds = %16
  %22 = load i32*, i32** @pplm_fec_2_ethtool, align 8
  %23 = load i32, i32* %9, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.ethtool_fecparam*, %struct.ethtool_fecparam** %5, align 8
  %28 = getelementptr inbounds %struct.ethtool_fecparam, %struct.ethtool_fecparam* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = and i32 %26, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %21
  br label %38

33:                                               ; preds = %21
  %34 = load i32, i32* %9, align 4
  %35 = shl i32 1, %34
  %36 = load i32, i32* %8, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %8, align 4
  br label %41

38:                                               ; preds = %32
  %39 = load i32, i32* %9, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %9, align 4
  br label %16

41:                                               ; preds = %33, %16
  %42 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %7, align 8
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @mlx5e_set_fec_mode(%struct.mlx5_core_dev* %42, i32 %43)
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %41
  %48 = load i32, i32* %10, align 4
  store i32 %48, i32* %3, align 4
  br label %52

49:                                               ; preds = %41
  %50 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %7, align 8
  %51 = call i32 @mlx5_toggle_port_link(%struct.mlx5_core_dev* %50)
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %49, %47
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local %struct.mlx5e_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @mlx5e_set_fec_mode(%struct.mlx5_core_dev*, i32) #1

declare dso_local i32 @mlx5_toggle_port_link(%struct.mlx5_core_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
