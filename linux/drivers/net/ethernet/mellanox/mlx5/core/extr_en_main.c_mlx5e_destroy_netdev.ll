; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_main.c_mlx5e_destroy_netdev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_main.c_mlx5e_destroy_netdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_priv = type { %struct.net_device*, %struct.mlx5e_profile* }
%struct.net_device = type { i32 }
%struct.mlx5e_profile = type { i32 (%struct.mlx5e_priv.0*)* }
%struct.mlx5e_priv.0 = type opaque

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx5e_destroy_netdev(%struct.mlx5e_priv* %0) #0 {
  %2 = alloca %struct.mlx5e_priv*, align 8
  %3 = alloca %struct.mlx5e_profile*, align 8
  %4 = alloca %struct.net_device*, align 8
  store %struct.mlx5e_priv* %0, %struct.mlx5e_priv** %2, align 8
  %5 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %6 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %5, i32 0, i32 1
  %7 = load %struct.mlx5e_profile*, %struct.mlx5e_profile** %6, align 8
  store %struct.mlx5e_profile* %7, %struct.mlx5e_profile** %3, align 8
  %8 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %9 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %8, i32 0, i32 0
  %10 = load %struct.net_device*, %struct.net_device** %9, align 8
  store %struct.net_device* %10, %struct.net_device** %4, align 8
  %11 = load %struct.mlx5e_profile*, %struct.mlx5e_profile** %3, align 8
  %12 = getelementptr inbounds %struct.mlx5e_profile, %struct.mlx5e_profile* %11, i32 0, i32 0
  %13 = load i32 (%struct.mlx5e_priv.0*)*, i32 (%struct.mlx5e_priv.0*)** %12, align 8
  %14 = icmp ne i32 (%struct.mlx5e_priv.0*)* %13, null
  br i1 %14, label %15, label %22

15:                                               ; preds = %1
  %16 = load %struct.mlx5e_profile*, %struct.mlx5e_profile** %3, align 8
  %17 = getelementptr inbounds %struct.mlx5e_profile, %struct.mlx5e_profile* %16, i32 0, i32 0
  %18 = load i32 (%struct.mlx5e_priv.0*)*, i32 (%struct.mlx5e_priv.0*)** %17, align 8
  %19 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %20 = bitcast %struct.mlx5e_priv* %19 to %struct.mlx5e_priv.0*
  %21 = call i32 %18(%struct.mlx5e_priv.0* %20)
  br label %22

22:                                               ; preds = %15, %1
  %23 = load %struct.net_device*, %struct.net_device** %4, align 8
  %24 = call i32 @free_netdev(%struct.net_device* %23)
  ret void
}

declare dso_local i32 @free_netdev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
