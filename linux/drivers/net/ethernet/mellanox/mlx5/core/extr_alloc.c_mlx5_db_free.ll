; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_alloc.c_mlx5_db_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_alloc.c_mlx5_db_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.mlx5_db = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx5_db_free(%struct.mlx5_core_dev* %0, %struct.mlx5_db* %1) #0 {
  %3 = alloca %struct.mlx5_core_dev*, align 8
  %4 = alloca %struct.mlx5_db*, align 8
  %5 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %3, align 8
  store %struct.mlx5_db* %1, %struct.mlx5_db** %4, align 8
  %6 = load i32, i32* @PAGE_SIZE, align 4
  %7 = call i32 (...) @cache_line_size()
  %8 = sdiv i32 %6, %7
  store i32 %8, i32* %5, align 4
  %9 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %10 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load %struct.mlx5_db*, %struct.mlx5_db** %4, align 8
  %14 = getelementptr inbounds %struct.mlx5_db, %struct.mlx5_db* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.mlx5_db*, %struct.mlx5_db** %4, align 8
  %17 = getelementptr inbounds %struct.mlx5_db, %struct.mlx5_db* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @__set_bit(i32 %15, i32 %21)
  %23 = load %struct.mlx5_db*, %struct.mlx5_db** %4, align 8
  %24 = getelementptr inbounds %struct.mlx5_db, %struct.mlx5_db* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %5, align 4
  %30 = call i64 @bitmap_full(i32 %28, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %68

32:                                               ; preds = %2
  %33 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %34 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @PAGE_SIZE, align 4
  %37 = load %struct.mlx5_db*, %struct.mlx5_db** %4, align 8
  %38 = getelementptr inbounds %struct.mlx5_db, %struct.mlx5_db* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.mlx5_db*, %struct.mlx5_db** %4, align 8
  %44 = getelementptr inbounds %struct.mlx5_db, %struct.mlx5_db* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @dma_free_coherent(i32 %35, i32 %36, i32 %42, i32 %48)
  %50 = load %struct.mlx5_db*, %struct.mlx5_db** %4, align 8
  %51 = getelementptr inbounds %struct.mlx5_db, %struct.mlx5_db* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 1
  %55 = call i32 @list_del(i32* %54)
  %56 = load %struct.mlx5_db*, %struct.mlx5_db** %4, align 8
  %57 = getelementptr inbounds %struct.mlx5_db, %struct.mlx5_db* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @bitmap_free(i32 %61)
  %63 = load %struct.mlx5_db*, %struct.mlx5_db** %4, align 8
  %64 = getelementptr inbounds %struct.mlx5_db, %struct.mlx5_db* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %65, align 8
  %67 = call i32 @kfree(%struct.TYPE_6__* %66)
  br label %68

68:                                               ; preds = %32, %2
  %69 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %70 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = call i32 @mutex_unlock(i32* %71)
  ret void
}

declare dso_local i32 @cache_line_size(...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @__set_bit(i32, i32) #1

declare dso_local i64 @bitmap_full(i32, i32) #1

declare dso_local i32 @dma_free_coherent(i32, i32, i32, i32) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @bitmap_free(i32) #1

declare dso_local i32 @kfree(%struct.TYPE_6__*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
