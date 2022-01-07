; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_eq.c_destroy_async_eq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_eq.c_destroy_async_eq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.mlx5_eq_table* }
%struct.mlx5_eq_table = type { i32 }
%struct.mlx5_eq = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_core_dev*, %struct.mlx5_eq*)* @destroy_async_eq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @destroy_async_eq(%struct.mlx5_core_dev* %0, %struct.mlx5_eq* %1) #0 {
  %3 = alloca %struct.mlx5_core_dev*, align 8
  %4 = alloca %struct.mlx5_eq*, align 8
  %5 = alloca %struct.mlx5_eq_table*, align 8
  %6 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %3, align 8
  store %struct.mlx5_eq* %1, %struct.mlx5_eq** %4, align 8
  %7 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %8 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.mlx5_eq_table*, %struct.mlx5_eq_table** %9, align 8
  store %struct.mlx5_eq_table* %10, %struct.mlx5_eq_table** %5, align 8
  %11 = load %struct.mlx5_eq_table*, %struct.mlx5_eq_table** %5, align 8
  %12 = getelementptr inbounds %struct.mlx5_eq_table, %struct.mlx5_eq_table* %11, i32 0, i32 0
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %15 = load %struct.mlx5_eq*, %struct.mlx5_eq** %4, align 8
  %16 = call i32 @destroy_unmap_eq(%struct.mlx5_core_dev* %14, %struct.mlx5_eq* %15)
  store i32 %16, i32* %6, align 4
  %17 = load %struct.mlx5_eq_table*, %struct.mlx5_eq_table** %5, align 8
  %18 = getelementptr inbounds %struct.mlx5_eq_table, %struct.mlx5_eq_table* %17, i32 0, i32 0
  %19 = call i32 @mutex_unlock(i32* %18)
  %20 = load i32, i32* %6, align 4
  ret i32 %20
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @destroy_unmap_eq(%struct.mlx5_core_dev*, %struct.mlx5_eq*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
