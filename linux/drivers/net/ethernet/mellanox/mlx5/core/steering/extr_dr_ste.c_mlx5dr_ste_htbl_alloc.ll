; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_ste.c_mlx5dr_ste_htbl_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_ste.c_mlx5dr_ste_htbl_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5dr_ste_htbl = type { i32, i32*, i64, %struct.mlx5dr_ste*, i32, i32, i32, %struct.mlx5dr_icm_chunk* }
%struct.mlx5dr_ste = type { i32, i32, i32, %struct.mlx5dr_ste_htbl*, i64 }
%struct.mlx5dr_icm_chunk = type { i32, i32*, i64, %struct.mlx5dr_ste* }
%struct.mlx5dr_icm_pool = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@DR_STE_SIZE_REDUCED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mlx5dr_ste_htbl* @mlx5dr_ste_htbl_alloc(%struct.mlx5dr_icm_pool* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.mlx5dr_ste_htbl*, align 8
  %6 = alloca %struct.mlx5dr_icm_pool*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.mlx5dr_icm_chunk*, align 8
  %11 = alloca %struct.mlx5dr_ste_htbl*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.mlx5dr_ste*, align 8
  store %struct.mlx5dr_icm_pool* %0, %struct.mlx5dr_icm_pool** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.mlx5dr_ste_htbl* @kzalloc(i32 56, i32 %14)
  store %struct.mlx5dr_ste_htbl* %15, %struct.mlx5dr_ste_htbl** %11, align 8
  %16 = load %struct.mlx5dr_ste_htbl*, %struct.mlx5dr_ste_htbl** %11, align 8
  %17 = icmp ne %struct.mlx5dr_ste_htbl* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %4
  store %struct.mlx5dr_ste_htbl* null, %struct.mlx5dr_ste_htbl** %5, align 8
  br label %109

19:                                               ; preds = %4
  %20 = load %struct.mlx5dr_icm_pool*, %struct.mlx5dr_icm_pool** %6, align 8
  %21 = load i32, i32* %7, align 4
  %22 = call %struct.mlx5dr_icm_chunk* @mlx5dr_icm_alloc_chunk(%struct.mlx5dr_icm_pool* %20, i32 %21)
  store %struct.mlx5dr_icm_chunk* %22, %struct.mlx5dr_icm_chunk** %10, align 8
  %23 = load %struct.mlx5dr_icm_chunk*, %struct.mlx5dr_icm_chunk** %10, align 8
  %24 = icmp ne %struct.mlx5dr_icm_chunk* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %19
  br label %106

26:                                               ; preds = %19
  %27 = load %struct.mlx5dr_icm_chunk*, %struct.mlx5dr_icm_chunk** %10, align 8
  %28 = load %struct.mlx5dr_ste_htbl*, %struct.mlx5dr_ste_htbl** %11, align 8
  %29 = getelementptr inbounds %struct.mlx5dr_ste_htbl, %struct.mlx5dr_ste_htbl* %28, i32 0, i32 7
  store %struct.mlx5dr_icm_chunk* %27, %struct.mlx5dr_icm_chunk** %29, align 8
  %30 = load i32, i32* %8, align 4
  %31 = load %struct.mlx5dr_ste_htbl*, %struct.mlx5dr_ste_htbl** %11, align 8
  %32 = getelementptr inbounds %struct.mlx5dr_ste_htbl, %struct.mlx5dr_ste_htbl* %31, i32 0, i32 6
  store i32 %30, i32* %32, align 8
  %33 = load i32, i32* %9, align 4
  %34 = load %struct.mlx5dr_ste_htbl*, %struct.mlx5dr_ste_htbl** %11, align 8
  %35 = getelementptr inbounds %struct.mlx5dr_ste_htbl, %struct.mlx5dr_ste_htbl* %34, i32 0, i32 5
  store i32 %33, i32* %35, align 4
  %36 = load %struct.mlx5dr_icm_chunk*, %struct.mlx5dr_icm_chunk** %10, align 8
  %37 = getelementptr inbounds %struct.mlx5dr_icm_chunk, %struct.mlx5dr_icm_chunk* %36, i32 0, i32 3
  %38 = load %struct.mlx5dr_ste*, %struct.mlx5dr_ste** %37, align 8
  %39 = load %struct.mlx5dr_ste_htbl*, %struct.mlx5dr_ste_htbl** %11, align 8
  %40 = getelementptr inbounds %struct.mlx5dr_ste_htbl, %struct.mlx5dr_ste_htbl* %39, i32 0, i32 3
  store %struct.mlx5dr_ste* %38, %struct.mlx5dr_ste** %40, align 8
  %41 = load %struct.mlx5dr_icm_chunk*, %struct.mlx5dr_icm_chunk** %10, align 8
  %42 = getelementptr inbounds %struct.mlx5dr_icm_chunk, %struct.mlx5dr_icm_chunk* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.mlx5dr_ste_htbl*, %struct.mlx5dr_ste_htbl** %11, align 8
  %45 = getelementptr inbounds %struct.mlx5dr_ste_htbl, %struct.mlx5dr_ste_htbl* %44, i32 0, i32 2
  store i64 %43, i64* %45, align 8
  %46 = load %struct.mlx5dr_icm_chunk*, %struct.mlx5dr_icm_chunk** %10, align 8
  %47 = getelementptr inbounds %struct.mlx5dr_icm_chunk, %struct.mlx5dr_icm_chunk* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = load %struct.mlx5dr_ste_htbl*, %struct.mlx5dr_ste_htbl** %11, align 8
  %50 = getelementptr inbounds %struct.mlx5dr_ste_htbl, %struct.mlx5dr_ste_htbl* %49, i32 0, i32 1
  store i32* %48, i32** %50, align 8
  %51 = load %struct.mlx5dr_ste_htbl*, %struct.mlx5dr_ste_htbl** %11, align 8
  %52 = getelementptr inbounds %struct.mlx5dr_ste_htbl, %struct.mlx5dr_ste_htbl* %51, i32 0, i32 4
  %53 = call i32 @refcount_set(i32* %52, i32 0)
  store i32 0, i32* %12, align 4
  br label %54

54:                                               ; preds = %96, %26
  %55 = load i32, i32* %12, align 4
  %56 = load %struct.mlx5dr_icm_chunk*, %struct.mlx5dr_icm_chunk** %10, align 8
  %57 = getelementptr inbounds %struct.mlx5dr_icm_chunk, %struct.mlx5dr_icm_chunk* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp slt i32 %55, %58
  br i1 %59, label %60, label %99

60:                                               ; preds = %54
  %61 = load %struct.mlx5dr_ste_htbl*, %struct.mlx5dr_ste_htbl** %11, align 8
  %62 = getelementptr inbounds %struct.mlx5dr_ste_htbl, %struct.mlx5dr_ste_htbl* %61, i32 0, i32 3
  %63 = load %struct.mlx5dr_ste*, %struct.mlx5dr_ste** %62, align 8
  %64 = load i32, i32* %12, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.mlx5dr_ste, %struct.mlx5dr_ste* %63, i64 %65
  store %struct.mlx5dr_ste* %66, %struct.mlx5dr_ste** %13, align 8
  %67 = load %struct.mlx5dr_ste_htbl*, %struct.mlx5dr_ste_htbl** %11, align 8
  %68 = getelementptr inbounds %struct.mlx5dr_ste_htbl, %struct.mlx5dr_ste_htbl* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = load i32, i32* %12, align 4
  %71 = load i32, i32* @DR_STE_SIZE_REDUCED, align 4
  %72 = mul nsw i32 %70, %71
  %73 = sext i32 %72 to i64
  %74 = add nsw i64 %69, %73
  %75 = load %struct.mlx5dr_ste*, %struct.mlx5dr_ste** %13, align 8
  %76 = getelementptr inbounds %struct.mlx5dr_ste, %struct.mlx5dr_ste* %75, i32 0, i32 4
  store i64 %74, i64* %76, align 8
  %77 = load %struct.mlx5dr_ste_htbl*, %struct.mlx5dr_ste_htbl** %11, align 8
  %78 = load %struct.mlx5dr_ste*, %struct.mlx5dr_ste** %13, align 8
  %79 = getelementptr inbounds %struct.mlx5dr_ste, %struct.mlx5dr_ste* %78, i32 0, i32 3
  store %struct.mlx5dr_ste_htbl* %77, %struct.mlx5dr_ste_htbl** %79, align 8
  %80 = load %struct.mlx5dr_ste*, %struct.mlx5dr_ste** %13, align 8
  %81 = getelementptr inbounds %struct.mlx5dr_ste, %struct.mlx5dr_ste* %80, i32 0, i32 2
  %82 = call i32 @refcount_set(i32* %81, i32 0)
  %83 = load %struct.mlx5dr_ste*, %struct.mlx5dr_ste** %13, align 8
  %84 = getelementptr inbounds %struct.mlx5dr_ste, %struct.mlx5dr_ste* %83, i32 0, i32 1
  %85 = call i32 @INIT_LIST_HEAD(i32* %84)
  %86 = load %struct.mlx5dr_ste_htbl*, %struct.mlx5dr_ste_htbl** %11, align 8
  %87 = getelementptr inbounds %struct.mlx5dr_ste_htbl, %struct.mlx5dr_ste_htbl* %86, i32 0, i32 1
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* %12, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = call i32 @INIT_LIST_HEAD(i32* %91)
  %93 = load %struct.mlx5dr_ste*, %struct.mlx5dr_ste** %13, align 8
  %94 = getelementptr inbounds %struct.mlx5dr_ste, %struct.mlx5dr_ste* %93, i32 0, i32 0
  %95 = call i32 @INIT_LIST_HEAD(i32* %94)
  br label %96

96:                                               ; preds = %60
  %97 = load i32, i32* %12, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %12, align 4
  br label %54

99:                                               ; preds = %54
  %100 = load i32, i32* %7, align 4
  %101 = load %struct.mlx5dr_ste_htbl*, %struct.mlx5dr_ste_htbl** %11, align 8
  %102 = getelementptr inbounds %struct.mlx5dr_ste_htbl, %struct.mlx5dr_ste_htbl* %101, i32 0, i32 0
  store i32 %100, i32* %102, align 8
  %103 = load %struct.mlx5dr_ste_htbl*, %struct.mlx5dr_ste_htbl** %11, align 8
  %104 = call i32 @dr_ste_set_ctrl(%struct.mlx5dr_ste_htbl* %103)
  %105 = load %struct.mlx5dr_ste_htbl*, %struct.mlx5dr_ste_htbl** %11, align 8
  store %struct.mlx5dr_ste_htbl* %105, %struct.mlx5dr_ste_htbl** %5, align 8
  br label %109

106:                                              ; preds = %25
  %107 = load %struct.mlx5dr_ste_htbl*, %struct.mlx5dr_ste_htbl** %11, align 8
  %108 = call i32 @kfree(%struct.mlx5dr_ste_htbl* %107)
  store %struct.mlx5dr_ste_htbl* null, %struct.mlx5dr_ste_htbl** %5, align 8
  br label %109

109:                                              ; preds = %106, %99, %18
  %110 = load %struct.mlx5dr_ste_htbl*, %struct.mlx5dr_ste_htbl** %5, align 8
  ret %struct.mlx5dr_ste_htbl* %110
}

declare dso_local %struct.mlx5dr_ste_htbl* @kzalloc(i32, i32) #1

declare dso_local %struct.mlx5dr_icm_chunk* @mlx5dr_icm_alloc_chunk(%struct.mlx5dr_icm_pool*, i32) #1

declare dso_local i32 @refcount_set(i32*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @dr_ste_set_ctrl(%struct.mlx5dr_ste_htbl*) #1

declare dso_local i32 @kfree(%struct.mlx5dr_ste_htbl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
