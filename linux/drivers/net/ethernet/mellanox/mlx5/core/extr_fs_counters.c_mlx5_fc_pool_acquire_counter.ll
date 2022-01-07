; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_fs_counters.c_mlx5_fc_pool_acquire_counter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_fs_counters.c_mlx5_fc_pool_acquire_counter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_fc = type { i32 }
%struct.mlx5_fc_pool = type { i32, i32, i32, i32, i32, i32 }
%struct.mlx5_fc_bulk = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mlx5_fc* (%struct.mlx5_fc_pool*)* @mlx5_fc_pool_acquire_counter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mlx5_fc* @mlx5_fc_pool_acquire_counter(%struct.mlx5_fc_pool* %0) #0 {
  %2 = alloca %struct.mlx5_fc_pool*, align 8
  %3 = alloca %struct.mlx5_fc_bulk*, align 8
  %4 = alloca %struct.mlx5_fc*, align 8
  store %struct.mlx5_fc_pool* %0, %struct.mlx5_fc_pool** %2, align 8
  %5 = load %struct.mlx5_fc_pool*, %struct.mlx5_fc_pool** %2, align 8
  %6 = getelementptr inbounds %struct.mlx5_fc_pool, %struct.mlx5_fc_pool* %5, i32 0, i32 0
  %7 = call i32 @mutex_lock(i32* %6)
  %8 = load %struct.mlx5_fc_pool*, %struct.mlx5_fc_pool** %2, align 8
  %9 = getelementptr inbounds %struct.mlx5_fc_pool, %struct.mlx5_fc_pool* %8, i32 0, i32 3
  %10 = load %struct.mlx5_fc_pool*, %struct.mlx5_fc_pool** %2, align 8
  %11 = getelementptr inbounds %struct.mlx5_fc_pool, %struct.mlx5_fc_pool* %10, i32 0, i32 5
  %12 = call %struct.mlx5_fc_bulk* @mlx5_fc_pool_acquire_from_list(i32* %9, i32* %11, i32 0)
  %13 = bitcast %struct.mlx5_fc_bulk* %12 to %struct.mlx5_fc*
  store %struct.mlx5_fc* %13, %struct.mlx5_fc** %4, align 8
  %14 = load %struct.mlx5_fc*, %struct.mlx5_fc** %4, align 8
  %15 = bitcast %struct.mlx5_fc* %14 to %struct.mlx5_fc_bulk*
  %16 = call i64 @IS_ERR(%struct.mlx5_fc_bulk* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %1
  %19 = load %struct.mlx5_fc_pool*, %struct.mlx5_fc_pool** %2, align 8
  %20 = getelementptr inbounds %struct.mlx5_fc_pool, %struct.mlx5_fc_pool* %19, i32 0, i32 4
  %21 = load %struct.mlx5_fc_pool*, %struct.mlx5_fc_pool** %2, align 8
  %22 = getelementptr inbounds %struct.mlx5_fc_pool, %struct.mlx5_fc_pool* %21, i32 0, i32 3
  %23 = call %struct.mlx5_fc_bulk* @mlx5_fc_pool_acquire_from_list(i32* %20, i32* %22, i32 1)
  %24 = bitcast %struct.mlx5_fc_bulk* %23 to %struct.mlx5_fc*
  store %struct.mlx5_fc* %24, %struct.mlx5_fc** %4, align 8
  br label %25

25:                                               ; preds = %18, %1
  %26 = load %struct.mlx5_fc*, %struct.mlx5_fc** %4, align 8
  %27 = bitcast %struct.mlx5_fc* %26 to %struct.mlx5_fc_bulk*
  %28 = call i64 @IS_ERR(%struct.mlx5_fc_bulk* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %49

30:                                               ; preds = %25
  %31 = load %struct.mlx5_fc_pool*, %struct.mlx5_fc_pool** %2, align 8
  %32 = call %struct.mlx5_fc_bulk* @mlx5_fc_pool_alloc_new_bulk(%struct.mlx5_fc_pool* %31)
  store %struct.mlx5_fc_bulk* %32, %struct.mlx5_fc_bulk** %3, align 8
  %33 = load %struct.mlx5_fc_bulk*, %struct.mlx5_fc_bulk** %3, align 8
  %34 = call i64 @IS_ERR(%struct.mlx5_fc_bulk* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %30
  %37 = load %struct.mlx5_fc_bulk*, %struct.mlx5_fc_bulk** %3, align 8
  %38 = call %struct.mlx5_fc_bulk* @ERR_CAST(%struct.mlx5_fc_bulk* %37)
  %39 = bitcast %struct.mlx5_fc_bulk* %38 to %struct.mlx5_fc*
  store %struct.mlx5_fc* %39, %struct.mlx5_fc** %4, align 8
  br label %58

40:                                               ; preds = %30
  %41 = load %struct.mlx5_fc_bulk*, %struct.mlx5_fc_bulk** %3, align 8
  %42 = call %struct.mlx5_fc_bulk* @mlx5_fc_bulk_acquire_fc(%struct.mlx5_fc_bulk* %41)
  %43 = bitcast %struct.mlx5_fc_bulk* %42 to %struct.mlx5_fc*
  store %struct.mlx5_fc* %43, %struct.mlx5_fc** %4, align 8
  %44 = load %struct.mlx5_fc_bulk*, %struct.mlx5_fc_bulk** %3, align 8
  %45 = getelementptr inbounds %struct.mlx5_fc_bulk, %struct.mlx5_fc_bulk* %44, i32 0, i32 0
  %46 = load %struct.mlx5_fc_pool*, %struct.mlx5_fc_pool** %2, align 8
  %47 = getelementptr inbounds %struct.mlx5_fc_pool, %struct.mlx5_fc_pool* %46, i32 0, i32 3
  %48 = call i32 @list_add(i32* %45, i32* %47)
  br label %49

49:                                               ; preds = %40, %25
  %50 = load %struct.mlx5_fc_pool*, %struct.mlx5_fc_pool** %2, align 8
  %51 = getelementptr inbounds %struct.mlx5_fc_pool, %struct.mlx5_fc_pool* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = add nsw i32 %52, -1
  store i32 %53, i32* %51, align 4
  %54 = load %struct.mlx5_fc_pool*, %struct.mlx5_fc_pool** %2, align 8
  %55 = getelementptr inbounds %struct.mlx5_fc_pool, %struct.mlx5_fc_pool* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %55, align 4
  br label %58

58:                                               ; preds = %49, %36
  %59 = load %struct.mlx5_fc_pool*, %struct.mlx5_fc_pool** %2, align 8
  %60 = getelementptr inbounds %struct.mlx5_fc_pool, %struct.mlx5_fc_pool* %59, i32 0, i32 0
  %61 = call i32 @mutex_unlock(i32* %60)
  %62 = load %struct.mlx5_fc*, %struct.mlx5_fc** %4, align 8
  ret %struct.mlx5_fc* %62
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.mlx5_fc_bulk* @mlx5_fc_pool_acquire_from_list(i32*, i32*, i32) #1

declare dso_local i64 @IS_ERR(%struct.mlx5_fc_bulk*) #1

declare dso_local %struct.mlx5_fc_bulk* @mlx5_fc_pool_alloc_new_bulk(%struct.mlx5_fc_pool*) #1

declare dso_local %struct.mlx5_fc_bulk* @ERR_CAST(%struct.mlx5_fc_bulk*) #1

declare dso_local %struct.mlx5_fc_bulk* @mlx5_fc_bulk_acquire_fc(%struct.mlx5_fc_bulk*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
