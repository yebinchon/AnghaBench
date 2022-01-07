; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_icm_pool.c_mlx5dr_icm_pool_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_icm_pool.c_mlx5dr_icm_pool_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5dr_icm_pool = type { i32, i32, i32, i32, i32*, i32, %struct.mlx5dr_domain* }
%struct.mlx5dr_domain = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@DR_ICM_TYPE_STE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mlx5dr_icm_pool* @mlx5dr_icm_pool_create(%struct.mlx5dr_domain* %0, i32 %1) #0 {
  %3 = alloca %struct.mlx5dr_icm_pool*, align 8
  %4 = alloca %struct.mlx5dr_domain*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlx5dr_icm_pool*, align 8
  %8 = alloca i32, align 4
  store %struct.mlx5dr_domain* %0, %struct.mlx5dr_domain** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @DR_ICM_TYPE_STE, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %4, align 8
  %14 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %6, align 4
  br label %22

17:                                               ; preds = %2
  %18 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %4, align 8
  %19 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %6, align 4
  br label %22

22:                                               ; preds = %17, %12
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.mlx5dr_icm_pool* @kvzalloc(i32 40, i32 %23)
  store %struct.mlx5dr_icm_pool* %24, %struct.mlx5dr_icm_pool** %7, align 8
  %25 = load %struct.mlx5dr_icm_pool*, %struct.mlx5dr_icm_pool** %7, align 8
  %26 = icmp ne %struct.mlx5dr_icm_pool* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %22
  store %struct.mlx5dr_icm_pool* null, %struct.mlx5dr_icm_pool** %3, align 8
  br label %84

28:                                               ; preds = %22
  %29 = load i32, i32* %6, align 4
  %30 = add i32 %29, 1
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call i32* @kcalloc(i32 %30, i32 4, i32 %31)
  %33 = load %struct.mlx5dr_icm_pool*, %struct.mlx5dr_icm_pool** %7, align 8
  %34 = getelementptr inbounds %struct.mlx5dr_icm_pool, %struct.mlx5dr_icm_pool* %33, i32 0, i32 4
  store i32* %32, i32** %34, align 8
  %35 = load %struct.mlx5dr_icm_pool*, %struct.mlx5dr_icm_pool** %7, align 8
  %36 = getelementptr inbounds %struct.mlx5dr_icm_pool, %struct.mlx5dr_icm_pool* %35, i32 0, i32 4
  %37 = load i32*, i32** %36, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %28
  br label %81

40:                                               ; preds = %28
  %41 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %4, align 8
  %42 = load %struct.mlx5dr_icm_pool*, %struct.mlx5dr_icm_pool** %7, align 8
  %43 = getelementptr inbounds %struct.mlx5dr_icm_pool, %struct.mlx5dr_icm_pool* %42, i32 0, i32 6
  store %struct.mlx5dr_domain* %41, %struct.mlx5dr_domain** %43, align 8
  %44 = load i32, i32* %5, align 4
  %45 = load %struct.mlx5dr_icm_pool*, %struct.mlx5dr_icm_pool** %7, align 8
  %46 = getelementptr inbounds %struct.mlx5dr_icm_pool, %struct.mlx5dr_icm_pool* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  %47 = load i32, i32* %6, align 4
  %48 = load %struct.mlx5dr_icm_pool*, %struct.mlx5dr_icm_pool** %7, align 8
  %49 = getelementptr inbounds %struct.mlx5dr_icm_pool, %struct.mlx5dr_icm_pool* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* %6, align 4
  %51 = add i32 %50, 1
  %52 = load %struct.mlx5dr_icm_pool*, %struct.mlx5dr_icm_pool** %7, align 8
  %53 = getelementptr inbounds %struct.mlx5dr_icm_pool, %struct.mlx5dr_icm_pool* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 8
  %54 = load %struct.mlx5dr_icm_pool*, %struct.mlx5dr_icm_pool** %7, align 8
  %55 = getelementptr inbounds %struct.mlx5dr_icm_pool, %struct.mlx5dr_icm_pool* %54, i32 0, i32 5
  %56 = call i32 @INIT_LIST_HEAD(i32* %55)
  store i32 0, i32* %8, align 4
  br label %57

57:                                               ; preds = %73, %40
  %58 = load i32, i32* %8, align 4
  %59 = load %struct.mlx5dr_icm_pool*, %struct.mlx5dr_icm_pool** %7, align 8
  %60 = getelementptr inbounds %struct.mlx5dr_icm_pool, %struct.mlx5dr_icm_pool* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = icmp slt i32 %58, %61
  br i1 %62, label %63, label %76

63:                                               ; preds = %57
  %64 = load %struct.mlx5dr_icm_pool*, %struct.mlx5dr_icm_pool** %7, align 8
  %65 = load %struct.mlx5dr_icm_pool*, %struct.mlx5dr_icm_pool** %7, align 8
  %66 = getelementptr inbounds %struct.mlx5dr_icm_pool, %struct.mlx5dr_icm_pool* %65, i32 0, i32 4
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %8, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %8, align 4
  %72 = call i32 @dr_icm_bucket_init(%struct.mlx5dr_icm_pool* %64, i32* %70, i32 %71)
  br label %73

73:                                               ; preds = %63
  %74 = load i32, i32* %8, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %8, align 4
  br label %57

76:                                               ; preds = %57
  %77 = load %struct.mlx5dr_icm_pool*, %struct.mlx5dr_icm_pool** %7, align 8
  %78 = getelementptr inbounds %struct.mlx5dr_icm_pool, %struct.mlx5dr_icm_pool* %77, i32 0, i32 3
  %79 = call i32 @mutex_init(i32* %78)
  %80 = load %struct.mlx5dr_icm_pool*, %struct.mlx5dr_icm_pool** %7, align 8
  store %struct.mlx5dr_icm_pool* %80, %struct.mlx5dr_icm_pool** %3, align 8
  br label %84

81:                                               ; preds = %39
  %82 = load %struct.mlx5dr_icm_pool*, %struct.mlx5dr_icm_pool** %7, align 8
  %83 = call i32 @kvfree(%struct.mlx5dr_icm_pool* %82)
  store %struct.mlx5dr_icm_pool* null, %struct.mlx5dr_icm_pool** %3, align 8
  br label %84

84:                                               ; preds = %81, %76, %27
  %85 = load %struct.mlx5dr_icm_pool*, %struct.mlx5dr_icm_pool** %3, align 8
  ret %struct.mlx5dr_icm_pool* %85
}

declare dso_local %struct.mlx5dr_icm_pool* @kvzalloc(i32, i32) #1

declare dso_local i32* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @dr_icm_bucket_init(%struct.mlx5dr_icm_pool*, i32*, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @kvfree(%struct.mlx5dr_icm_pool*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
