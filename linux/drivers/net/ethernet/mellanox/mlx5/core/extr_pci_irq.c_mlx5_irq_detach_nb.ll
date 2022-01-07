; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_pci_irq.c_mlx5_irq_detach_nb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_pci_irq.c_mlx5_irq_detach_nb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_irq_table = type { %struct.mlx5_irq* }
%struct.mlx5_irq = type { i32 }
%struct.notifier_block = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_irq_detach_nb(%struct.mlx5_irq_table* %0, i32 %1, %struct.notifier_block* %2) #0 {
  %4 = alloca %struct.mlx5_irq_table*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.notifier_block*, align 8
  %7 = alloca %struct.mlx5_irq*, align 8
  store %struct.mlx5_irq_table* %0, %struct.mlx5_irq_table** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.notifier_block* %2, %struct.notifier_block** %6, align 8
  %8 = load %struct.mlx5_irq_table*, %struct.mlx5_irq_table** %4, align 8
  %9 = getelementptr inbounds %struct.mlx5_irq_table, %struct.mlx5_irq_table* %8, i32 0, i32 0
  %10 = load %struct.mlx5_irq*, %struct.mlx5_irq** %9, align 8
  %11 = load i32, i32* %5, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.mlx5_irq, %struct.mlx5_irq* %10, i64 %12
  store %struct.mlx5_irq* %13, %struct.mlx5_irq** %7, align 8
  %14 = load %struct.mlx5_irq*, %struct.mlx5_irq** %7, align 8
  %15 = getelementptr inbounds %struct.mlx5_irq, %struct.mlx5_irq* %14, i32 0, i32 0
  %16 = load %struct.notifier_block*, %struct.notifier_block** %6, align 8
  %17 = call i32 @atomic_notifier_chain_unregister(i32* %15, %struct.notifier_block* %16)
  ret i32 %17
}

declare dso_local i32 @atomic_notifier_chain_unregister(i32*, %struct.notifier_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
