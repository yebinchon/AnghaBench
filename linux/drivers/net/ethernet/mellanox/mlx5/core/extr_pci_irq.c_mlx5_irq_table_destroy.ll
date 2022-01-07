; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_pci_irq.c_mlx5_irq_table_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_pci_irq.c_mlx5_irq_table_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.mlx5_irq_table* }
%struct.mlx5_irq_table = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx5_irq_table_destroy(%struct.mlx5_core_dev* %0) #0 {
  %2 = alloca %struct.mlx5_core_dev*, align 8
  %3 = alloca %struct.mlx5_irq_table*, align 8
  %4 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %2, align 8
  %5 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %6 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load %struct.mlx5_irq_table*, %struct.mlx5_irq_table** %7, align 8
  store %struct.mlx5_irq_table* %8, %struct.mlx5_irq_table** %3, align 8
  %9 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %10 = call i32 @irq_clear_rmap(%struct.mlx5_core_dev* %9)
  %11 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %12 = call i32 @clear_comp_irqs_affinity_hints(%struct.mlx5_core_dev* %11)
  store i32 0, i32* %4, align 4
  br label %13

13:                                               ; preds = %30, %1
  %14 = load i32, i32* %4, align 4
  %15 = load %struct.mlx5_irq_table*, %struct.mlx5_irq_table** %3, align 8
  %16 = getelementptr inbounds %struct.mlx5_irq_table, %struct.mlx5_irq_table* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %33

19:                                               ; preds = %13
  %20 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %21 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @pci_irq_vector(i32 %22, i32 %23)
  %25 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %26 = load i32, i32* %4, align 4
  %27 = call %struct.TYPE_4__* @mlx5_irq_get(%struct.mlx5_core_dev* %25, i32 %26)
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = call i32 @free_irq(i32 %24, i32* %28)
  br label %30

30:                                               ; preds = %19
  %31 = load i32, i32* %4, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %4, align 4
  br label %13

33:                                               ; preds = %13
  %34 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %35 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @pci_free_irq_vectors(i32 %36)
  %38 = load %struct.mlx5_irq_table*, %struct.mlx5_irq_table** %3, align 8
  %39 = getelementptr inbounds %struct.mlx5_irq_table, %struct.mlx5_irq_table* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @kfree(i32 %40)
  ret void
}

declare dso_local i32 @irq_clear_rmap(%struct.mlx5_core_dev*) #1

declare dso_local i32 @clear_comp_irqs_affinity_hints(%struct.mlx5_core_dev*) #1

declare dso_local i32 @free_irq(i32, i32*) #1

declare dso_local i32 @pci_irq_vector(i32, i32) #1

declare dso_local %struct.TYPE_4__* @mlx5_irq_get(%struct.mlx5_core_dev*, i32) #1

declare dso_local i32 @pci_free_irq_vectors(i32) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
