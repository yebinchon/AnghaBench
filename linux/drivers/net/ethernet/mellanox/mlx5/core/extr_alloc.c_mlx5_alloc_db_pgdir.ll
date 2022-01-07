; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_alloc.c_mlx5_alloc_db_pgdir.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_alloc.c_mlx5_alloc_db_pgdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_db_pgdir = type { i32, i32, i32 }
%struct.mlx5_core_dev = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mlx5_db_pgdir* (%struct.mlx5_core_dev*, i32)* @mlx5_alloc_db_pgdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mlx5_db_pgdir* @mlx5_alloc_db_pgdir(%struct.mlx5_core_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.mlx5_db_pgdir*, align 8
  %4 = alloca %struct.mlx5_core_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlx5_db_pgdir*, align 8
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* @PAGE_SIZE, align 4
  %9 = call i32 (...) @cache_line_size()
  %10 = sdiv i32 %8, %9
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.mlx5_db_pgdir* @kzalloc(i32 12, i32 %11)
  store %struct.mlx5_db_pgdir* %12, %struct.mlx5_db_pgdir** %7, align 8
  %13 = load %struct.mlx5_db_pgdir*, %struct.mlx5_db_pgdir** %7, align 8
  %14 = icmp ne %struct.mlx5_db_pgdir* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  store %struct.mlx5_db_pgdir* null, %struct.mlx5_db_pgdir** %3, align 8
  br label %56

16:                                               ; preds = %2
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call i32 @bitmap_zalloc(i32 %17, i32 %18)
  %20 = load %struct.mlx5_db_pgdir*, %struct.mlx5_db_pgdir** %7, align 8
  %21 = getelementptr inbounds %struct.mlx5_db_pgdir, %struct.mlx5_db_pgdir* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  %22 = load %struct.mlx5_db_pgdir*, %struct.mlx5_db_pgdir** %7, align 8
  %23 = getelementptr inbounds %struct.mlx5_db_pgdir, %struct.mlx5_db_pgdir* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %16
  %27 = load %struct.mlx5_db_pgdir*, %struct.mlx5_db_pgdir** %7, align 8
  %28 = call i32 @kfree(%struct.mlx5_db_pgdir* %27)
  store %struct.mlx5_db_pgdir* null, %struct.mlx5_db_pgdir** %3, align 8
  br label %56

29:                                               ; preds = %16
  %30 = load %struct.mlx5_db_pgdir*, %struct.mlx5_db_pgdir** %7, align 8
  %31 = getelementptr inbounds %struct.mlx5_db_pgdir, %struct.mlx5_db_pgdir* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @bitmap_fill(i32 %32, i32 %33)
  %35 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %36 = load i32, i32* @PAGE_SIZE, align 4
  %37 = load %struct.mlx5_db_pgdir*, %struct.mlx5_db_pgdir** %7, align 8
  %38 = getelementptr inbounds %struct.mlx5_db_pgdir, %struct.mlx5_db_pgdir* %37, i32 0, i32 2
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @mlx5_dma_zalloc_coherent_node(%struct.mlx5_core_dev* %35, i32 %36, i32* %38, i32 %39)
  %41 = load %struct.mlx5_db_pgdir*, %struct.mlx5_db_pgdir** %7, align 8
  %42 = getelementptr inbounds %struct.mlx5_db_pgdir, %struct.mlx5_db_pgdir* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = load %struct.mlx5_db_pgdir*, %struct.mlx5_db_pgdir** %7, align 8
  %44 = getelementptr inbounds %struct.mlx5_db_pgdir, %struct.mlx5_db_pgdir* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %54, label %47

47:                                               ; preds = %29
  %48 = load %struct.mlx5_db_pgdir*, %struct.mlx5_db_pgdir** %7, align 8
  %49 = getelementptr inbounds %struct.mlx5_db_pgdir, %struct.mlx5_db_pgdir* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @bitmap_free(i32 %50)
  %52 = load %struct.mlx5_db_pgdir*, %struct.mlx5_db_pgdir** %7, align 8
  %53 = call i32 @kfree(%struct.mlx5_db_pgdir* %52)
  store %struct.mlx5_db_pgdir* null, %struct.mlx5_db_pgdir** %3, align 8
  br label %56

54:                                               ; preds = %29
  %55 = load %struct.mlx5_db_pgdir*, %struct.mlx5_db_pgdir** %7, align 8
  store %struct.mlx5_db_pgdir* %55, %struct.mlx5_db_pgdir** %3, align 8
  br label %56

56:                                               ; preds = %54, %47, %26, %15
  %57 = load %struct.mlx5_db_pgdir*, %struct.mlx5_db_pgdir** %3, align 8
  ret %struct.mlx5_db_pgdir* %57
}

declare dso_local i32 @cache_line_size(...) #1

declare dso_local %struct.mlx5_db_pgdir* @kzalloc(i32, i32) #1

declare dso_local i32 @bitmap_zalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.mlx5_db_pgdir*) #1

declare dso_local i32 @bitmap_fill(i32, i32) #1

declare dso_local i32 @mlx5_dma_zalloc_coherent_node(%struct.mlx5_core_dev*, i32, i32*, i32) #1

declare dso_local i32 @bitmap_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
