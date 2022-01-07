; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_main.c_mlx5e_alloc_xps_cpumask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_main.c_mlx5e_alloc_xps_cpumask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_channel = type { i32, i32, i32 }
%struct.mlx5e_params = type { i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5e_channel*, %struct.mlx5e_params*)* @mlx5e_alloc_xps_cpumask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5e_alloc_xps_cpumask(%struct.mlx5e_channel* %0, %struct.mlx5e_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx5e_channel*, align 8
  %5 = alloca %struct.mlx5e_params*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mlx5e_channel* %0, %struct.mlx5e_channel** %4, align 8
  store %struct.mlx5e_params* %1, %struct.mlx5e_params** %5, align 8
  %9 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %4, align 8
  %10 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @mlx5_comp_vectors_count(i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %4, align 8
  %14 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %13, i32 0, i32 1
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call i32 @zalloc_cpumask_var(i32* %14, i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %50

21:                                               ; preds = %2
  %22 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %4, align 8
  %23 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %7, align 4
  br label %25

25:                                               ; preds = %41, %21
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %49

29:                                               ; preds = %25
  %30 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %4, align 8
  %31 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @mlx5_comp_irq_get_affinity_mask(i32 %32, i32 %33)
  %35 = call i32 @cpumask_first(i32 %34)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %4, align 8
  %38 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @cpumask_set_cpu(i32 %36, i32 %39)
  br label %41

41:                                               ; preds = %29
  %42 = load %struct.mlx5e_params*, %struct.mlx5e_params** %5, align 8
  %43 = getelementptr inbounds %struct.mlx5e_params, %struct.mlx5e_params* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i32, i32* %7, align 4
  %46 = sext i32 %45 to i64
  %47 = add nsw i64 %46, %44
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %7, align 4
  br label %25

49:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %49, %18
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i32 @mlx5_comp_vectors_count(i32) #1

declare dso_local i32 @zalloc_cpumask_var(i32*, i32) #1

declare dso_local i32 @cpumask_first(i32) #1

declare dso_local i32 @mlx5_comp_irq_get_affinity_mask(i32, i32) #1

declare dso_local i32 @cpumask_set_cpu(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
