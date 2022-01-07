; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_main.c_mlx5e_set_tx_maxrate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_main.c_mlx5e_set_tx_maxrate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.mlx5e_priv = type { i32*, i32, i32, %struct.mlx5e_txqsq**, %struct.mlx5_core_dev* }
%struct.mlx5e_txqsq = type { i32 }
%struct.mlx5_core_dev = type { i32 }

@.str = private unnamed_addr constant [47 x i8] c"Rate limiting is not supported on this device\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"TX rate %u, is not in range\0A\00", align 1
@ERANGE = common dso_local global i32 0, align 4
@MLX5E_STATE_OPENED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32, i32)* @mlx5e_set_tx_maxrate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5e_set_tx_maxrate(%struct.net_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlx5e_priv*, align 8
  %9 = alloca %struct.mlx5_core_dev*, align 8
  %10 = alloca %struct.mlx5e_txqsq*, align 8
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.net_device*, %struct.net_device** %5, align 8
  %13 = call %struct.mlx5e_priv* @netdev_priv(%struct.net_device* %12)
  store %struct.mlx5e_priv* %13, %struct.mlx5e_priv** %8, align 8
  %14 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %8, align 8
  %15 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %14, i32 0, i32 4
  %16 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %15, align 8
  store %struct.mlx5_core_dev* %16, %struct.mlx5_core_dev** %9, align 8
  %17 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %8, align 8
  %18 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %17, i32 0, i32 3
  %19 = load %struct.mlx5e_txqsq**, %struct.mlx5e_txqsq*** %18, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %19, i64 %21
  %23 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %22, align 8
  store %struct.mlx5e_txqsq* %23, %struct.mlx5e_txqsq** %10, align 8
  store i32 0, i32* %11, align 4
  %24 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %9, align 8
  %25 = call i32 @mlx5_rl_is_supported(%struct.mlx5_core_dev* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %3
  %28 = load %struct.net_device*, %struct.net_device** %5, align 8
  %29 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %28, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %78

32:                                               ; preds = %3
  %33 = load i32, i32* %7, align 4
  %34 = shl i32 %33, 10
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %48

37:                                               ; preds = %32
  %38 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %9, align 8
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @mlx5_rl_is_in_range(%struct.mlx5_core_dev* %38, i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %48, label %42

42:                                               ; preds = %37
  %43 = load %struct.net_device*, %struct.net_device** %5, align 8
  %44 = load i32, i32* %7, align 4
  %45 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %43, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* @ERANGE, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %4, align 4
  br label %78

48:                                               ; preds = %37, %32
  %49 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %8, align 8
  %50 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %49, i32 0, i32 1
  %51 = call i32 @mutex_lock(i32* %50)
  %52 = load i32, i32* @MLX5E_STATE_OPENED, align 4
  %53 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %8, align 8
  %54 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %53, i32 0, i32 2
  %55 = call i64 @test_bit(i32 %52, i32* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %48
  %58 = load %struct.net_device*, %struct.net_device** %5, align 8
  %59 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %10, align 8
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @mlx5e_set_sq_maxrate(%struct.net_device* %58, %struct.mlx5e_txqsq* %59, i32 %60)
  store i32 %61, i32* %11, align 4
  br label %62

62:                                               ; preds = %57, %48
  %63 = load i32, i32* %11, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %73, label %65

65:                                               ; preds = %62
  %66 = load i32, i32* %7, align 4
  %67 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %8, align 8
  %68 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %6, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  store i32 %66, i32* %72, align 4
  br label %73

73:                                               ; preds = %65, %62
  %74 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %8, align 8
  %75 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %74, i32 0, i32 1
  %76 = call i32 @mutex_unlock(i32* %75)
  %77 = load i32, i32* %11, align 4
  store i32 %77, i32* %4, align 4
  br label %78

78:                                               ; preds = %73, %42, %27
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

declare dso_local %struct.mlx5e_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @mlx5_rl_is_supported(%struct.mlx5_core_dev*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, ...) #1

declare dso_local i32 @mlx5_rl_is_in_range(%struct.mlx5_core_dev*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @mlx5e_set_sq_maxrate(%struct.net_device*, %struct.mlx5e_txqsq*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
