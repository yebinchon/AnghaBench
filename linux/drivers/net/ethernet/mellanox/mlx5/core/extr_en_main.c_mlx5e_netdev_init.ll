; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_main.c_mlx5e_netdev_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_main.c_mlx5e_netdev_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32 }
%struct.mlx5e_priv = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, %struct.mlx5e_profile*, %struct.net_device*, %struct.mlx5_core_dev* }
%struct.mlx5_core_dev = type { i32 }
%struct.mlx5e_profile = type { i32 }

@MLX5E_MSG_LEVEL = common dso_local global i32 0, align 4
@u8 = common dso_local global i32 0, align 4
@mlx5e_update_carrier_work = common dso_local global i32 0, align 4
@mlx5e_set_rx_mode_work = common dso_local global i32 0, align 4
@mlx5e_tx_timeout_work = common dso_local global i32 0, align 4
@mlx5e_update_stats_work = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"mlx5e\00", align 1
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5e_netdev_init(%struct.net_device* %0, %struct.mlx5e_priv* %1, %struct.mlx5_core_dev* %2, %struct.mlx5e_profile* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.mlx5e_priv*, align 8
  %9 = alloca %struct.mlx5_core_dev*, align 8
  %10 = alloca %struct.mlx5e_profile*, align 8
  %11 = alloca i8*, align 8
  store %struct.net_device* %0, %struct.net_device** %7, align 8
  store %struct.mlx5e_priv* %1, %struct.mlx5e_priv** %8, align 8
  store %struct.mlx5_core_dev* %2, %struct.mlx5_core_dev** %9, align 8
  store %struct.mlx5e_profile* %3, %struct.mlx5e_profile** %10, align 8
  store i8* %4, i8** %11, align 8
  %12 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %9, align 8
  %13 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %8, align 8
  %14 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %13, i32 0, i32 12
  store %struct.mlx5_core_dev* %12, %struct.mlx5_core_dev** %14, align 8
  %15 = load %struct.net_device*, %struct.net_device** %7, align 8
  %16 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %8, align 8
  %17 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %16, i32 0, i32 11
  store %struct.net_device* %15, %struct.net_device** %17, align 8
  %18 = load %struct.mlx5e_profile*, %struct.mlx5e_profile** %10, align 8
  %19 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %8, align 8
  %20 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %19, i32 0, i32 10
  store %struct.mlx5e_profile* %18, %struct.mlx5e_profile** %20, align 8
  %21 = load i8*, i8** %11, align 8
  %22 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %8, align 8
  %23 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %22, i32 0, i32 9
  store i8* %21, i8** %23, align 8
  %24 = load i32, i32* @MLX5E_MSG_LEVEL, align 4
  %25 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %8, align 8
  %26 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %25, i32 0, i32 8
  store i32 %24, i32* %26, align 8
  %27 = load %struct.net_device*, %struct.net_device** %7, align 8
  %28 = getelementptr inbounds %struct.net_device, %struct.net_device* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @u8, align 4
  %31 = load %struct.mlx5e_profile*, %struct.mlx5e_profile** %10, align 8
  %32 = getelementptr inbounds %struct.mlx5e_profile, %struct.mlx5e_profile* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @max_t(i32 %30, i32 %33, i32 1)
  %35 = sdiv i32 %29, %34
  %36 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %8, align 8
  %37 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %8, align 8
  %39 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %38, i32 0, i32 1
  store i32 1, i32* %39, align 4
  %40 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %8, align 8
  %41 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %40, i32 0, i32 7
  %42 = call i32 @mutex_init(i32* %41)
  %43 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %8, align 8
  %44 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %43, i32 0, i32 6
  %45 = load i32, i32* @mlx5e_update_carrier_work, align 4
  %46 = call i32 @INIT_WORK(i32* %44, i32 %45)
  %47 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %8, align 8
  %48 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %47, i32 0, i32 5
  %49 = load i32, i32* @mlx5e_set_rx_mode_work, align 4
  %50 = call i32 @INIT_WORK(i32* %48, i32 %49)
  %51 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %8, align 8
  %52 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %51, i32 0, i32 4
  %53 = load i32, i32* @mlx5e_tx_timeout_work, align 4
  %54 = call i32 @INIT_WORK(i32* %52, i32 %53)
  %55 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %8, align 8
  %56 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %55, i32 0, i32 3
  %57 = load i32, i32* @mlx5e_update_stats_work, align 4
  %58 = call i32 @INIT_WORK(i32* %56, i32 %57)
  %59 = call i32 @create_singlethread_workqueue(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %60 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %8, align 8
  %61 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %60, i32 0, i32 2
  store i32 %59, i32* %61, align 8
  %62 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %8, align 8
  %63 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %5
  %67 = load i32, i32* @ENOMEM, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %6, align 4
  br label %72

69:                                               ; preds = %5
  %70 = load %struct.net_device*, %struct.net_device** %7, align 8
  %71 = call i32 @netif_carrier_off(%struct.net_device* %70)
  store i32 0, i32* %6, align 4
  br label %72

72:                                               ; preds = %69, %66
  %73 = load i32, i32* %6, align 4
  ret i32 %73
}

declare dso_local i32 @max_t(i32, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @create_singlethread_workqueue(i8*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
