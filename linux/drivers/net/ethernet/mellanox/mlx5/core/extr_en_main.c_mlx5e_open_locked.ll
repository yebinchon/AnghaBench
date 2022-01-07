; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_main.c_mlx5e_open_locked.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_main.c_mlx5e_open_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.mlx5e_priv = type { i32, %struct.TYPE_4__*, %struct.TYPE_6__ }
%struct.TYPE_4__ = type { i32 (%struct.mlx5e_priv*)*, i32 (%struct.mlx5e_priv*)* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@MLX5E_STATE_OPENED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5e_open_locked(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.mlx5e_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.mlx5e_priv* @netdev_priv(%struct.net_device* %7)
  store %struct.mlx5e_priv* %8, %struct.mlx5e_priv** %4, align 8
  %9 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %10 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* @MLX5E_STATE_OPENED, align 4
  %15 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %16 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %15, i32 0, i32 0
  %17 = call i32 @set_bit(i32 %14, i32* %16)
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %1
  %21 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %22 = call i32 @mlx5e_xdp_set_open(%struct.mlx5e_priv* %21)
  br label %23

23:                                               ; preds = %20, %1
  %24 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %25 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %26 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %25, i32 0, i32 2
  %27 = call i32 @mlx5e_open_channels(%struct.mlx5e_priv* %24, %struct.TYPE_6__* %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  br label %58

31:                                               ; preds = %23
  %32 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %33 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %32, i32 0, i32 1
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load i32 (%struct.mlx5e_priv*)*, i32 (%struct.mlx5e_priv*)** %35, align 8
  %37 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %38 = call i32 %36(%struct.mlx5e_priv* %37)
  %39 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %40 = call i32 @mlx5e_activate_priv_channels(%struct.mlx5e_priv* %39)
  %41 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %42 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %41, i32 0, i32 1
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32 (%struct.mlx5e_priv*)*, i32 (%struct.mlx5e_priv*)** %44, align 8
  %46 = icmp ne i32 (%struct.mlx5e_priv*)* %45, null
  br i1 %46, label %47, label %55

47:                                               ; preds = %31
  %48 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %49 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %48, i32 0, i32 1
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32 (%struct.mlx5e_priv*)*, i32 (%struct.mlx5e_priv*)** %51, align 8
  %53 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %54 = call i32 %52(%struct.mlx5e_priv* %53)
  br label %55

55:                                               ; preds = %47, %31
  %56 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %57 = call i32 @mlx5e_queue_update_stats(%struct.mlx5e_priv* %56)
  store i32 0, i32* %2, align 4
  br label %70

58:                                               ; preds = %30
  %59 = load i32, i32* %5, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %63 = call i32 @mlx5e_xdp_set_closed(%struct.mlx5e_priv* %62)
  br label %64

64:                                               ; preds = %61, %58
  %65 = load i32, i32* @MLX5E_STATE_OPENED, align 4
  %66 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %67 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %66, i32 0, i32 0
  %68 = call i32 @clear_bit(i32 %65, i32* %67)
  %69 = load i32, i32* %6, align 4
  store i32 %69, i32* %2, align 4
  br label %70

70:                                               ; preds = %64, %55
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local %struct.mlx5e_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @mlx5e_xdp_set_open(%struct.mlx5e_priv*) #1

declare dso_local i32 @mlx5e_open_channels(%struct.mlx5e_priv*, %struct.TYPE_6__*) #1

declare dso_local i32 @mlx5e_activate_priv_channels(%struct.mlx5e_priv*) #1

declare dso_local i32 @mlx5e_queue_update_stats(%struct.mlx5e_priv*) #1

declare dso_local i32 @mlx5e_xdp_set_closed(%struct.mlx5e_priv*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
