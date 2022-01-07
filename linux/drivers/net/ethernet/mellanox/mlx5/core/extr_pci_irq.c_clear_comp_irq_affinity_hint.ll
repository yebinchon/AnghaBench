; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_pci_irq.c_clear_comp_irq_affinity_hint.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_pci_irq.c_clear_comp_irq_affinity_hint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { i32 }
%struct.mlx5_irq = type { i32 }

@MLX5_IRQ_VEC_COMP_BASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5_core_dev*, i32)* @clear_comp_irq_affinity_hint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clear_comp_irq_affinity_hint(%struct.mlx5_core_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.mlx5_core_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx5_irq*, align 8
  %7 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* @MLX5_IRQ_VEC_COMP_BASE, align 4
  %9 = load i32, i32* %4, align 4
  %10 = add nsw i32 %8, %9
  store i32 %10, i32* %5, align 4
  %11 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call %struct.mlx5_irq* @mlx5_irq_get(%struct.mlx5_core_dev* %11, i32 %12)
  store %struct.mlx5_irq* %13, %struct.mlx5_irq** %6, align 8
  %14 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %15 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @pci_irq_vector(i32 %16, i32 %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @irq_set_affinity_hint(i32 %19, i32* null)
  %21 = load %struct.mlx5_irq*, %struct.mlx5_irq** %6, align 8
  %22 = getelementptr inbounds %struct.mlx5_irq, %struct.mlx5_irq* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @free_cpumask_var(i32 %23)
  ret void
}

declare dso_local %struct.mlx5_irq* @mlx5_irq_get(%struct.mlx5_core_dev*, i32) #1

declare dso_local i32 @pci_irq_vector(i32, i32) #1

declare dso_local i32 @irq_set_affinity_hint(i32, i32*) #1

declare dso_local i32 @free_cpumask_var(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
