; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_main.c_mlx5e_detach_netdev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_main.c_mlx5e_detach_netdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_priv = type { i32, i32, i32, %struct.mlx5e_profile* }
%struct.mlx5e_profile = type { i32 (%struct.mlx5e_priv.0*)*, i32 (%struct.mlx5e_priv.1*)*, i32 (%struct.mlx5e_priv.2*)* }
%struct.mlx5e_priv.0 = type opaque
%struct.mlx5e_priv.1 = type opaque
%struct.mlx5e_priv.2 = type opaque

@MLX5E_STATE_DESTROYING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx5e_detach_netdev(%struct.mlx5e_priv* %0) #0 {
  %2 = alloca %struct.mlx5e_priv*, align 8
  %3 = alloca %struct.mlx5e_profile*, align 8
  store %struct.mlx5e_priv* %0, %struct.mlx5e_priv** %2, align 8
  %4 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %5 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %4, i32 0, i32 3
  %6 = load %struct.mlx5e_profile*, %struct.mlx5e_profile** %5, align 8
  store %struct.mlx5e_profile* %6, %struct.mlx5e_profile** %3, align 8
  %7 = load i32, i32* @MLX5E_STATE_DESTROYING, align 4
  %8 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %9 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %8, i32 0, i32 2
  %10 = call i32 @set_bit(i32 %7, i32* %9)
  %11 = load %struct.mlx5e_profile*, %struct.mlx5e_profile** %3, align 8
  %12 = getelementptr inbounds %struct.mlx5e_profile, %struct.mlx5e_profile* %11, i32 0, i32 2
  %13 = load i32 (%struct.mlx5e_priv.2*)*, i32 (%struct.mlx5e_priv.2*)** %12, align 8
  %14 = icmp ne i32 (%struct.mlx5e_priv.2*)* %13, null
  br i1 %14, label %15, label %22

15:                                               ; preds = %1
  %16 = load %struct.mlx5e_profile*, %struct.mlx5e_profile** %3, align 8
  %17 = getelementptr inbounds %struct.mlx5e_profile, %struct.mlx5e_profile* %16, i32 0, i32 2
  %18 = load i32 (%struct.mlx5e_priv.2*)*, i32 (%struct.mlx5e_priv.2*)** %17, align 8
  %19 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %20 = bitcast %struct.mlx5e_priv* %19 to %struct.mlx5e_priv.2*
  %21 = call i32 %18(%struct.mlx5e_priv.2* %20)
  br label %22

22:                                               ; preds = %15, %1
  %23 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %24 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @flush_workqueue(i32 %25)
  %27 = load %struct.mlx5e_profile*, %struct.mlx5e_profile** %3, align 8
  %28 = getelementptr inbounds %struct.mlx5e_profile, %struct.mlx5e_profile* %27, i32 0, i32 1
  %29 = load i32 (%struct.mlx5e_priv.1*)*, i32 (%struct.mlx5e_priv.1*)** %28, align 8
  %30 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %31 = bitcast %struct.mlx5e_priv* %30 to %struct.mlx5e_priv.1*
  %32 = call i32 %29(%struct.mlx5e_priv.1* %31)
  %33 = load %struct.mlx5e_profile*, %struct.mlx5e_profile** %3, align 8
  %34 = getelementptr inbounds %struct.mlx5e_profile, %struct.mlx5e_profile* %33, i32 0, i32 0
  %35 = load i32 (%struct.mlx5e_priv.0*)*, i32 (%struct.mlx5e_priv.0*)** %34, align 8
  %36 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %37 = bitcast %struct.mlx5e_priv* %36 to %struct.mlx5e_priv.0*
  %38 = call i32 %35(%struct.mlx5e_priv.0* %37)
  %39 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %40 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %39, i32 0, i32 0
  %41 = call i32 @cancel_work_sync(i32* %40)
  ret void
}

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @flush_workqueue(i32) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
