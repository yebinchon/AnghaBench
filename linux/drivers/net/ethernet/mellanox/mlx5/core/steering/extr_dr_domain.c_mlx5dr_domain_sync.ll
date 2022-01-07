; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_domain.c_mlx5dr_domain_sync.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_domain.c_mlx5dr_domain_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5dr_domain = type { i32, i32 }

@MLX5DR_DOMAIN_SYNC_FLAGS_SW = common dso_local global i32 0, align 4
@MLX5DR_DOMAIN_SYNC_FLAGS_HW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5dr_domain_sync(%struct.mlx5dr_domain* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx5dr_domain*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mlx5dr_domain* %0, %struct.mlx5dr_domain** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @MLX5DR_DOMAIN_SYNC_FLAGS_SW, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %25

11:                                               ; preds = %2
  %12 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %4, align 8
  %13 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %12, i32 0, i32 1
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %4, align 8
  %16 = call i32 @mlx5dr_send_ring_force_drain(%struct.mlx5dr_domain* %15)
  store i32 %16, i32* %6, align 4
  %17 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %4, align 8
  %18 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %17, i32 0, i32 1
  %19 = call i32 @mutex_unlock(i32* %18)
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %11
  %23 = load i32, i32* %6, align 4
  store i32 %23, i32* %3, align 4
  br label %37

24:                                               ; preds = %11
  br label %25

25:                                               ; preds = %24, %2
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @MLX5DR_DOMAIN_SYNC_FLAGS_HW, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %4, align 8
  %32 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @mlx5dr_cmd_sync_steering(i32 %33)
  store i32 %34, i32* %6, align 4
  br label %35

35:                                               ; preds = %30, %25
  %36 = load i32, i32* %6, align 4
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %35, %22
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mlx5dr_send_ring_force_drain(%struct.mlx5dr_domain*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @mlx5dr_cmd_sync_steering(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
