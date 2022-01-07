; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_ethtool.c_set_pflag_rx_no_csum_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_ethtool.c_set_pflag_rx_no_csum_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.mlx5e_priv = type { %struct.mlx5e_channels, i32 }
%struct.mlx5e_channels = type { i32, %struct.mlx5e_channel**, %struct.TYPE_3__ }
%struct.mlx5e_channel = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }

@MLX5E_STATE_OPENED = common dso_local global i32 0, align 4
@MLX5E_RQ_STATE_NO_CSUM_COMPLETE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @set_pflag_rx_no_csum_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_pflag_rx_no_csum_complete(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx5e_priv*, align 8
  %7 = alloca %struct.mlx5e_channels*, align 8
  %8 = alloca %struct.mlx5e_channel*, align 8
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = call %struct.mlx5e_priv* @netdev_priv(%struct.net_device* %10)
  store %struct.mlx5e_priv* %11, %struct.mlx5e_priv** %6, align 8
  %12 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %6, align 8
  %13 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %12, i32 0, i32 0
  store %struct.mlx5e_channels* %13, %struct.mlx5e_channels** %7, align 8
  %14 = load i32, i32* @MLX5E_STATE_OPENED, align 4
  %15 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %6, align 8
  %16 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %15, i32 0, i32 1
  %17 = call i32 @test_bit(i32 %14, i32* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %2
  %20 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %6, align 8
  %21 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.mlx5e_channels, %struct.mlx5e_channels* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %19, %2
  store i32 0, i32* %3, align 4
  br label %61

27:                                               ; preds = %19
  store i32 0, i32* %9, align 4
  br label %28

28:                                               ; preds = %57, %27
  %29 = load i32, i32* %9, align 4
  %30 = load %struct.mlx5e_channels*, %struct.mlx5e_channels** %7, align 8
  %31 = getelementptr inbounds %struct.mlx5e_channels, %struct.mlx5e_channels* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %60

34:                                               ; preds = %28
  %35 = load %struct.mlx5e_channels*, %struct.mlx5e_channels** %7, align 8
  %36 = getelementptr inbounds %struct.mlx5e_channels, %struct.mlx5e_channels* %35, i32 0, i32 1
  %37 = load %struct.mlx5e_channel**, %struct.mlx5e_channel*** %36, align 8
  %38 = load i32, i32* %9, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.mlx5e_channel*, %struct.mlx5e_channel** %37, i64 %39
  %41 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %40, align 8
  store %struct.mlx5e_channel* %41, %struct.mlx5e_channel** %8, align 8
  %42 = load i32, i32* %5, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %34
  %45 = load i32, i32* @MLX5E_RQ_STATE_NO_CSUM_COMPLETE, align 4
  %46 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %8, align 8
  %47 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = call i32 @__set_bit(i32 %45, i32* %48)
  br label %56

50:                                               ; preds = %34
  %51 = load i32, i32* @MLX5E_RQ_STATE_NO_CSUM_COMPLETE, align 4
  %52 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %8, align 8
  %53 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = call i32 @__clear_bit(i32 %51, i32* %54)
  br label %56

56:                                               ; preds = %50, %44
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %9, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %9, align 4
  br label %28

60:                                               ; preds = %28
  store i32 0, i32* %3, align 4
  br label %61

61:                                               ; preds = %60, %26
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local %struct.mlx5e_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @__set_bit(i32, i32*) #1

declare dso_local i32 @__clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
