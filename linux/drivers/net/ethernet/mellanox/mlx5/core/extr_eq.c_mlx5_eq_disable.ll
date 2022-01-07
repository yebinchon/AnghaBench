; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_eq.c_mlx5_eq_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_eq.c_mlx5_eq_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.mlx5_eq_table* }
%struct.mlx5_eq_table = type { i32 }
%struct.mlx5_eq = type { i32 }
%struct.notifier_block = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx5_eq_disable(%struct.mlx5_core_dev* %0, %struct.mlx5_eq* %1, %struct.notifier_block* %2) #0 {
  %4 = alloca %struct.mlx5_core_dev*, align 8
  %5 = alloca %struct.mlx5_eq*, align 8
  %6 = alloca %struct.notifier_block*, align 8
  %7 = alloca %struct.mlx5_eq_table*, align 8
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %4, align 8
  store %struct.mlx5_eq* %1, %struct.mlx5_eq** %5, align 8
  store %struct.notifier_block* %2, %struct.notifier_block** %6, align 8
  %8 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %9 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.mlx5_eq_table*, %struct.mlx5_eq_table** %10, align 8
  store %struct.mlx5_eq_table* %11, %struct.mlx5_eq_table** %7, align 8
  %12 = load %struct.mlx5_eq_table*, %struct.mlx5_eq_table** %7, align 8
  %13 = getelementptr inbounds %struct.mlx5_eq_table, %struct.mlx5_eq_table* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.mlx5_eq*, %struct.mlx5_eq** %5, align 8
  %16 = getelementptr inbounds %struct.mlx5_eq, %struct.mlx5_eq* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.notifier_block*, %struct.notifier_block** %6, align 8
  %19 = call i32 @mlx5_irq_detach_nb(i32 %14, i32 %17, %struct.notifier_block* %18)
  ret void
}

declare dso_local i32 @mlx5_irq_detach_nb(i32, i32, %struct.notifier_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
