; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_eq.c_mlx5_eq_notifier_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_eq.c_mlx5_eq_notifier_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.mlx5_eq_table* }
%struct.mlx5_eq_table = type { i32* }
%struct.mlx5_nb = type { i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_eq_notifier_register(%struct.mlx5_core_dev* %0, %struct.mlx5_nb* %1) #0 {
  %3 = alloca %struct.mlx5_core_dev*, align 8
  %4 = alloca %struct.mlx5_nb*, align 8
  %5 = alloca %struct.mlx5_eq_table*, align 8
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %3, align 8
  store %struct.mlx5_nb* %1, %struct.mlx5_nb** %4, align 8
  %6 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %7 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.mlx5_eq_table*, %struct.mlx5_eq_table** %8, align 8
  store %struct.mlx5_eq_table* %9, %struct.mlx5_eq_table** %5, align 8
  %10 = load %struct.mlx5_eq_table*, %struct.mlx5_eq_table** %5, align 8
  %11 = getelementptr inbounds %struct.mlx5_eq_table, %struct.mlx5_eq_table* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = load %struct.mlx5_nb*, %struct.mlx5_nb** %4, align 8
  %14 = getelementptr inbounds %struct.mlx5_nb, %struct.mlx5_nb* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds i32, i32* %12, i64 %15
  %17 = load %struct.mlx5_nb*, %struct.mlx5_nb** %4, align 8
  %18 = getelementptr inbounds %struct.mlx5_nb, %struct.mlx5_nb* %17, i32 0, i32 1
  %19 = call i32 @atomic_notifier_chain_register(i32* %16, i32* %18)
  ret i32 %19
}

declare dso_local i32 @atomic_notifier_chain_register(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
