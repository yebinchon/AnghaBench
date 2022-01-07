; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_fs_counters.c_mlx5_fc_pool_release_counter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_fs_counters.c_mlx5_fc_pool_release_counter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_fc_pool = type { i64, i64, i32, i32, i32, i32, %struct.mlx5_core_dev* }
%struct.mlx5_core_dev = type { i32 }
%struct.mlx5_fc = type { %struct.mlx5_fc_bulk* }
%struct.mlx5_fc_bulk = type { i32, i32 }

@.str = private unnamed_addr constant [54 x i8] c"Attempted to release a counter which is not acquired\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5_fc_pool*, %struct.mlx5_fc*)* @mlx5_fc_pool_release_counter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5_fc_pool_release_counter(%struct.mlx5_fc_pool* %0, %struct.mlx5_fc* %1) #0 {
  %3 = alloca %struct.mlx5_fc_pool*, align 8
  %4 = alloca %struct.mlx5_fc*, align 8
  %5 = alloca %struct.mlx5_core_dev*, align 8
  %6 = alloca %struct.mlx5_fc_bulk*, align 8
  %7 = alloca i32, align 4
  store %struct.mlx5_fc_pool* %0, %struct.mlx5_fc_pool** %3, align 8
  store %struct.mlx5_fc* %1, %struct.mlx5_fc** %4, align 8
  %8 = load %struct.mlx5_fc_pool*, %struct.mlx5_fc_pool** %3, align 8
  %9 = getelementptr inbounds %struct.mlx5_fc_pool, %struct.mlx5_fc_pool* %8, i32 0, i32 6
  %10 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %9, align 8
  store %struct.mlx5_core_dev* %10, %struct.mlx5_core_dev** %5, align 8
  %11 = load %struct.mlx5_fc*, %struct.mlx5_fc** %4, align 8
  %12 = getelementptr inbounds %struct.mlx5_fc, %struct.mlx5_fc* %11, i32 0, i32 0
  %13 = load %struct.mlx5_fc_bulk*, %struct.mlx5_fc_bulk** %12, align 8
  store %struct.mlx5_fc_bulk* %13, %struct.mlx5_fc_bulk** %6, align 8
  %14 = load %struct.mlx5_fc_pool*, %struct.mlx5_fc_pool** %3, align 8
  %15 = getelementptr inbounds %struct.mlx5_fc_pool, %struct.mlx5_fc_pool* %14, i32 0, i32 2
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load %struct.mlx5_fc_bulk*, %struct.mlx5_fc_bulk** %6, align 8
  %18 = load %struct.mlx5_fc*, %struct.mlx5_fc** %4, align 8
  %19 = call i64 @mlx5_fc_bulk_release_fc(%struct.mlx5_fc_bulk* %17, %struct.mlx5_fc* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %23 = call i32 @mlx5_core_warn(%struct.mlx5_core_dev* %22, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  br label %72

24:                                               ; preds = %2
  %25 = load %struct.mlx5_fc_pool*, %struct.mlx5_fc_pool** %3, align 8
  %26 = getelementptr inbounds %struct.mlx5_fc_pool, %struct.mlx5_fc_pool* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %27, 1
  store i64 %28, i64* %26, align 8
  %29 = load %struct.mlx5_fc_pool*, %struct.mlx5_fc_pool** %3, align 8
  %30 = getelementptr inbounds %struct.mlx5_fc_pool, %struct.mlx5_fc_pool* %29, i32 0, i32 5
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %31, -1
  store i32 %32, i32* %30, align 4
  %33 = load %struct.mlx5_fc_bulk*, %struct.mlx5_fc_bulk** %6, align 8
  %34 = call i32 @mlx5_fc_bulk_get_free_fcs_amount(%struct.mlx5_fc_bulk* %33)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp eq i32 %35, 1
  br i1 %36, label %37, label %43

37:                                               ; preds = %24
  %38 = load %struct.mlx5_fc_bulk*, %struct.mlx5_fc_bulk** %6, align 8
  %39 = getelementptr inbounds %struct.mlx5_fc_bulk, %struct.mlx5_fc_bulk* %38, i32 0, i32 1
  %40 = load %struct.mlx5_fc_pool*, %struct.mlx5_fc_pool** %3, align 8
  %41 = getelementptr inbounds %struct.mlx5_fc_pool, %struct.mlx5_fc_pool* %40, i32 0, i32 4
  %42 = call i32 @list_move_tail(i32* %39, i32* %41)
  br label %43

43:                                               ; preds = %37, %24
  %44 = load i32, i32* %7, align 4
  %45 = load %struct.mlx5_fc_bulk*, %struct.mlx5_fc_bulk** %6, align 8
  %46 = getelementptr inbounds %struct.mlx5_fc_bulk, %struct.mlx5_fc_bulk* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp eq i32 %44, %47
  br i1 %48, label %49, label %71

49:                                               ; preds = %43
  %50 = load %struct.mlx5_fc_bulk*, %struct.mlx5_fc_bulk** %6, align 8
  %51 = getelementptr inbounds %struct.mlx5_fc_bulk, %struct.mlx5_fc_bulk* %50, i32 0, i32 1
  %52 = call i32 @list_del(i32* %51)
  %53 = load %struct.mlx5_fc_pool*, %struct.mlx5_fc_pool** %3, align 8
  %54 = getelementptr inbounds %struct.mlx5_fc_pool, %struct.mlx5_fc_pool* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.mlx5_fc_pool*, %struct.mlx5_fc_pool** %3, align 8
  %57 = getelementptr inbounds %struct.mlx5_fc_pool, %struct.mlx5_fc_pool* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp sgt i64 %55, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %49
  %61 = load %struct.mlx5_fc_pool*, %struct.mlx5_fc_pool** %3, align 8
  %62 = load %struct.mlx5_fc_bulk*, %struct.mlx5_fc_bulk** %6, align 8
  %63 = call i32 @mlx5_fc_pool_free_bulk(%struct.mlx5_fc_pool* %61, %struct.mlx5_fc_bulk* %62)
  br label %70

64:                                               ; preds = %49
  %65 = load %struct.mlx5_fc_bulk*, %struct.mlx5_fc_bulk** %6, align 8
  %66 = getelementptr inbounds %struct.mlx5_fc_bulk, %struct.mlx5_fc_bulk* %65, i32 0, i32 1
  %67 = load %struct.mlx5_fc_pool*, %struct.mlx5_fc_pool** %3, align 8
  %68 = getelementptr inbounds %struct.mlx5_fc_pool, %struct.mlx5_fc_pool* %67, i32 0, i32 3
  %69 = call i32 @list_add(i32* %66, i32* %68)
  br label %70

70:                                               ; preds = %64, %60
  br label %71

71:                                               ; preds = %70, %43
  br label %72

72:                                               ; preds = %71, %21
  %73 = load %struct.mlx5_fc_pool*, %struct.mlx5_fc_pool** %3, align 8
  %74 = getelementptr inbounds %struct.mlx5_fc_pool, %struct.mlx5_fc_pool* %73, i32 0, i32 2
  %75 = call i32 @mutex_unlock(i32* %74)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @mlx5_fc_bulk_release_fc(%struct.mlx5_fc_bulk*, %struct.mlx5_fc*) #1

declare dso_local i32 @mlx5_core_warn(%struct.mlx5_core_dev*, i8*) #1

declare dso_local i32 @mlx5_fc_bulk_get_free_fcs_amount(%struct.mlx5_fc_bulk*) #1

declare dso_local i32 @list_move_tail(i32*, i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @mlx5_fc_pool_free_bulk(%struct.mlx5_fc_pool*, %struct.mlx5_fc_bulk*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
