; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_pci_irq.c_set_comp_irq_affinity_hint.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_pci_irq.c_set_comp_irq_affinity_hint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.mlx5_irq = type { i32 }

@MLX5_IRQ_VEC_COMP_BASE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"zalloc_cpumask_var failed\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@CONFIG_SMP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"irq_set_affinity_hint failed, irq 0x%.4x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_core_dev*, i32)* @set_comp_irq_affinity_hint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_comp_irq_affinity_hint(%struct.mlx5_core_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx5_core_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlx5_irq*, align 8
  %8 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* @MLX5_IRQ_VEC_COMP_BASE, align 4
  %10 = load i32, i32* %5, align 4
  %11 = add nsw i32 %9, %10
  store i32 %11, i32* %6, align 4
  %12 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call %struct.mlx5_irq* @mlx5_irq_get(%struct.mlx5_core_dev* %12, i32 %13)
  store %struct.mlx5_irq* %14, %struct.mlx5_irq** %7, align 8
  %15 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %16 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @pci_irq_vector(i32 %17, i32 %18)
  store i32 %19, i32* %8, align 4
  %20 = load %struct.mlx5_irq*, %struct.mlx5_irq** %7, align 8
  %21 = getelementptr inbounds %struct.mlx5_irq, %struct.mlx5_irq* %20, i32 0, i32 0
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call i32 @zalloc_cpumask_var(i32* %21, i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %2
  %26 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %27 = call i32 (%struct.mlx5_core_dev*, i8*, ...) @mlx5_core_warn(%struct.mlx5_core_dev* %26, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %56

30:                                               ; preds = %2
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %33 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @cpumask_local_spread(i32 %31, i32 %35)
  %37 = load %struct.mlx5_irq*, %struct.mlx5_irq** %7, align 8
  %38 = getelementptr inbounds %struct.mlx5_irq, %struct.mlx5_irq* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @cpumask_set_cpu(i32 %36, i32 %39)
  %41 = load i32, i32* @CONFIG_SMP, align 4
  %42 = call i64 @IS_ENABLED(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %55

44:                                               ; preds = %30
  %45 = load i32, i32* %8, align 4
  %46 = load %struct.mlx5_irq*, %struct.mlx5_irq** %7, align 8
  %47 = getelementptr inbounds %struct.mlx5_irq, %struct.mlx5_irq* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @irq_set_affinity_hint(i32 %45, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %44
  %52 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %53 = load i32, i32* %8, align 4
  %54 = call i32 (%struct.mlx5_core_dev*, i8*, ...) @mlx5_core_warn(%struct.mlx5_core_dev* %52, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %53)
  br label %55

55:                                               ; preds = %51, %44, %30
  store i32 0, i32* %3, align 4
  br label %56

56:                                               ; preds = %55, %25
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local %struct.mlx5_irq* @mlx5_irq_get(%struct.mlx5_core_dev*, i32) #1

declare dso_local i32 @pci_irq_vector(i32, i32) #1

declare dso_local i32 @zalloc_cpumask_var(i32*, i32) #1

declare dso_local i32 @mlx5_core_warn(%struct.mlx5_core_dev*, i8*, ...) #1

declare dso_local i32 @cpumask_set_cpu(i32, i32) #1

declare dso_local i32 @cpumask_local_spread(i32, i32) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i64 @irq_set_affinity_hint(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
