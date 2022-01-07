; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_eq.c_mlx5_eq_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_eq.c_mlx5_eq_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.mlx5_eq_table* }
%struct.mlx5_eq_table = type { i32 }
%struct.mlx5_eq = type { i32 }
%struct.notifier_block = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_eq_enable(%struct.mlx5_core_dev* %0, %struct.mlx5_eq* %1, %struct.notifier_block* %2) #0 {
  %4 = alloca %struct.mlx5_core_dev*, align 8
  %5 = alloca %struct.mlx5_eq*, align 8
  %6 = alloca %struct.notifier_block*, align 8
  %7 = alloca %struct.mlx5_eq_table*, align 8
  %8 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %4, align 8
  store %struct.mlx5_eq* %1, %struct.mlx5_eq** %5, align 8
  store %struct.notifier_block* %2, %struct.notifier_block** %6, align 8
  %9 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %10 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.mlx5_eq_table*, %struct.mlx5_eq_table** %11, align 8
  store %struct.mlx5_eq_table* %12, %struct.mlx5_eq_table** %7, align 8
  %13 = load %struct.mlx5_eq_table*, %struct.mlx5_eq_table** %7, align 8
  %14 = getelementptr inbounds %struct.mlx5_eq_table, %struct.mlx5_eq_table* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.mlx5_eq*, %struct.mlx5_eq** %5, align 8
  %17 = getelementptr inbounds %struct.mlx5_eq, %struct.mlx5_eq* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.notifier_block*, %struct.notifier_block** %6, align 8
  %20 = call i32 @mlx5_irq_attach_nb(i32 %15, i32 %18, %struct.notifier_block* %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %3
  %24 = load %struct.mlx5_eq*, %struct.mlx5_eq** %5, align 8
  %25 = call i32 @eq_update_ci(%struct.mlx5_eq* %24, i32 1)
  br label %26

26:                                               ; preds = %23, %3
  %27 = load i32, i32* %8, align 4
  ret i32 %27
}

declare dso_local i32 @mlx5_irq_attach_nb(i32, i32, %struct.notifier_block*) #1

declare dso_local i32 @eq_update_ci(%struct.mlx5_eq*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
