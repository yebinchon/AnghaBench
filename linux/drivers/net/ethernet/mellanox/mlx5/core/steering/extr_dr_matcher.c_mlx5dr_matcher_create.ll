; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_matcher.c_mlx5dr_matcher_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_matcher.c_mlx5dr_matcher_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5dr_matcher = type { i32, i32, i32, i32, %struct.mlx5dr_table* }
%struct.mlx5dr_table = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.mlx5dr_match_parameters = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mlx5dr_matcher* @mlx5dr_matcher_create(%struct.mlx5dr_table* %0, i32 %1, i32 %2, %struct.mlx5dr_match_parameters* %3) #0 {
  %5 = alloca %struct.mlx5dr_matcher*, align 8
  %6 = alloca %struct.mlx5dr_table*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.mlx5dr_match_parameters*, align 8
  %10 = alloca %struct.mlx5dr_matcher*, align 8
  %11 = alloca i32, align 4
  store %struct.mlx5dr_table* %0, %struct.mlx5dr_table** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.mlx5dr_match_parameters* %3, %struct.mlx5dr_match_parameters** %9, align 8
  %12 = load %struct.mlx5dr_table*, %struct.mlx5dr_table** %6, align 8
  %13 = getelementptr inbounds %struct.mlx5dr_table, %struct.mlx5dr_table* %12, i32 0, i32 0
  %14 = call i32 @refcount_inc(i32* %13)
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.mlx5dr_matcher* @kzalloc(i32 24, i32 %15)
  store %struct.mlx5dr_matcher* %16, %struct.mlx5dr_matcher** %10, align 8
  %17 = load %struct.mlx5dr_matcher*, %struct.mlx5dr_matcher** %10, align 8
  %18 = icmp ne %struct.mlx5dr_matcher* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %4
  br label %71

20:                                               ; preds = %4
  %21 = load %struct.mlx5dr_table*, %struct.mlx5dr_table** %6, align 8
  %22 = load %struct.mlx5dr_matcher*, %struct.mlx5dr_matcher** %10, align 8
  %23 = getelementptr inbounds %struct.mlx5dr_matcher, %struct.mlx5dr_matcher* %22, i32 0, i32 4
  store %struct.mlx5dr_table* %21, %struct.mlx5dr_table** %23, align 8
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.mlx5dr_matcher*, %struct.mlx5dr_matcher** %10, align 8
  %26 = getelementptr inbounds %struct.mlx5dr_matcher, %struct.mlx5dr_matcher* %25, i32 0, i32 3
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* %8, align 4
  %28 = load %struct.mlx5dr_matcher*, %struct.mlx5dr_matcher** %10, align 8
  %29 = getelementptr inbounds %struct.mlx5dr_matcher, %struct.mlx5dr_matcher* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 8
  %30 = load %struct.mlx5dr_matcher*, %struct.mlx5dr_matcher** %10, align 8
  %31 = getelementptr inbounds %struct.mlx5dr_matcher, %struct.mlx5dr_matcher* %30, i32 0, i32 1
  %32 = call i32 @refcount_set(i32* %31, i32 1)
  %33 = load %struct.mlx5dr_matcher*, %struct.mlx5dr_matcher** %10, align 8
  %34 = getelementptr inbounds %struct.mlx5dr_matcher, %struct.mlx5dr_matcher* %33, i32 0, i32 0
  %35 = call i32 @INIT_LIST_HEAD(i32* %34)
  %36 = load %struct.mlx5dr_table*, %struct.mlx5dr_table** %6, align 8
  %37 = getelementptr inbounds %struct.mlx5dr_table, %struct.mlx5dr_table* %36, i32 0, i32 1
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = call i32 @mutex_lock(i32* %39)
  %41 = load %struct.mlx5dr_matcher*, %struct.mlx5dr_matcher** %10, align 8
  %42 = load %struct.mlx5dr_match_parameters*, %struct.mlx5dr_match_parameters** %9, align 8
  %43 = call i32 @dr_matcher_init(%struct.mlx5dr_matcher* %41, %struct.mlx5dr_match_parameters* %42)
  store i32 %43, i32* %11, align 4
  %44 = load i32, i32* %11, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %20
  br label %63

47:                                               ; preds = %20
  %48 = load %struct.mlx5dr_matcher*, %struct.mlx5dr_matcher** %10, align 8
  %49 = call i32 @dr_matcher_add_to_tbl(%struct.mlx5dr_matcher* %48)
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* %11, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  br label %60

53:                                               ; preds = %47
  %54 = load %struct.mlx5dr_table*, %struct.mlx5dr_table** %6, align 8
  %55 = getelementptr inbounds %struct.mlx5dr_table, %struct.mlx5dr_table* %54, i32 0, i32 1
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = call i32 @mutex_unlock(i32* %57)
  %59 = load %struct.mlx5dr_matcher*, %struct.mlx5dr_matcher** %10, align 8
  store %struct.mlx5dr_matcher* %59, %struct.mlx5dr_matcher** %5, align 8
  br label %75

60:                                               ; preds = %52
  %61 = load %struct.mlx5dr_matcher*, %struct.mlx5dr_matcher** %10, align 8
  %62 = call i32 @dr_matcher_uninit(%struct.mlx5dr_matcher* %61)
  br label %63

63:                                               ; preds = %60, %46
  %64 = load %struct.mlx5dr_table*, %struct.mlx5dr_table** %6, align 8
  %65 = getelementptr inbounds %struct.mlx5dr_table, %struct.mlx5dr_table* %64, i32 0, i32 1
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = call i32 @mutex_unlock(i32* %67)
  %69 = load %struct.mlx5dr_matcher*, %struct.mlx5dr_matcher** %10, align 8
  %70 = call i32 @kfree(%struct.mlx5dr_matcher* %69)
  br label %71

71:                                               ; preds = %63, %19
  %72 = load %struct.mlx5dr_table*, %struct.mlx5dr_table** %6, align 8
  %73 = getelementptr inbounds %struct.mlx5dr_table, %struct.mlx5dr_table* %72, i32 0, i32 0
  %74 = call i32 @refcount_dec(i32* %73)
  store %struct.mlx5dr_matcher* null, %struct.mlx5dr_matcher** %5, align 8
  br label %75

75:                                               ; preds = %71, %53
  %76 = load %struct.mlx5dr_matcher*, %struct.mlx5dr_matcher** %5, align 8
  ret %struct.mlx5dr_matcher* %76
}

declare dso_local i32 @refcount_inc(i32*) #1

declare dso_local %struct.mlx5dr_matcher* @kzalloc(i32, i32) #1

declare dso_local i32 @refcount_set(i32*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @dr_matcher_init(%struct.mlx5dr_matcher*, %struct.mlx5dr_match_parameters*) #1

declare dso_local i32 @dr_matcher_add_to_tbl(%struct.mlx5dr_matcher*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @dr_matcher_uninit(%struct.mlx5dr_matcher*) #1

declare dso_local i32 @kfree(%struct.mlx5dr_matcher*) #1

declare dso_local i32 @refcount_dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
