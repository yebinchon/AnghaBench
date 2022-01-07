; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_lpm_tree_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_lpm_tree_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_lpm_tree = type { i32, i32, i32, i32 }
%struct.mlxsw_sp = type { i32 }
%struct.mlxsw_sp_prefix_usage = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mlxsw_sp_lpm_tree* (%struct.mlxsw_sp*, %struct.mlxsw_sp_prefix_usage*, i32)* @mlxsw_sp_lpm_tree_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mlxsw_sp_lpm_tree* @mlxsw_sp_lpm_tree_create(%struct.mlxsw_sp* %0, %struct.mlxsw_sp_prefix_usage* %1, i32 %2) #0 {
  %4 = alloca %struct.mlxsw_sp_lpm_tree*, align 8
  %5 = alloca %struct.mlxsw_sp*, align 8
  %6 = alloca %struct.mlxsw_sp_prefix_usage*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlxsw_sp_lpm_tree*, align 8
  %9 = alloca i32, align 4
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %5, align 8
  store %struct.mlxsw_sp_prefix_usage* %1, %struct.mlxsw_sp_prefix_usage** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %11 = call %struct.mlxsw_sp_lpm_tree* @mlxsw_sp_lpm_tree_find_unused(%struct.mlxsw_sp* %10)
  store %struct.mlxsw_sp_lpm_tree* %11, %struct.mlxsw_sp_lpm_tree** %8, align 8
  %12 = load %struct.mlxsw_sp_lpm_tree*, %struct.mlxsw_sp_lpm_tree** %8, align 8
  %13 = icmp ne %struct.mlxsw_sp_lpm_tree* %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @EBUSY, align 4
  %16 = sub nsw i32 0, %15
  %17 = call %struct.mlxsw_sp_lpm_tree* @ERR_PTR(i32 %16)
  store %struct.mlxsw_sp_lpm_tree* %17, %struct.mlxsw_sp_lpm_tree** %4, align 8
  br label %55

18:                                               ; preds = %3
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.mlxsw_sp_lpm_tree*, %struct.mlxsw_sp_lpm_tree** %8, align 8
  %21 = getelementptr inbounds %struct.mlxsw_sp_lpm_tree, %struct.mlxsw_sp_lpm_tree* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  %22 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %23 = load %struct.mlxsw_sp_lpm_tree*, %struct.mlxsw_sp_lpm_tree** %8, align 8
  %24 = call i32 @mlxsw_sp_lpm_tree_alloc(%struct.mlxsw_sp* %22, %struct.mlxsw_sp_lpm_tree* %23)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %18
  %28 = load i32, i32* %9, align 4
  %29 = call %struct.mlxsw_sp_lpm_tree* @ERR_PTR(i32 %28)
  store %struct.mlxsw_sp_lpm_tree* %29, %struct.mlxsw_sp_lpm_tree** %4, align 8
  br label %55

30:                                               ; preds = %18
  %31 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %32 = load %struct.mlxsw_sp_prefix_usage*, %struct.mlxsw_sp_prefix_usage** %6, align 8
  %33 = load %struct.mlxsw_sp_lpm_tree*, %struct.mlxsw_sp_lpm_tree** %8, align 8
  %34 = call i32 @mlxsw_sp_lpm_tree_left_struct_set(%struct.mlxsw_sp* %31, %struct.mlxsw_sp_prefix_usage* %32, %struct.mlxsw_sp_lpm_tree* %33)
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %30
  br label %49

38:                                               ; preds = %30
  %39 = load %struct.mlxsw_sp_lpm_tree*, %struct.mlxsw_sp_lpm_tree** %8, align 8
  %40 = getelementptr inbounds %struct.mlxsw_sp_lpm_tree, %struct.mlxsw_sp_lpm_tree* %39, i32 0, i32 3
  %41 = load %struct.mlxsw_sp_prefix_usage*, %struct.mlxsw_sp_prefix_usage** %6, align 8
  %42 = call i32 @memcpy(i32* %40, %struct.mlxsw_sp_prefix_usage* %41, i32 4)
  %43 = load %struct.mlxsw_sp_lpm_tree*, %struct.mlxsw_sp_lpm_tree** %8, align 8
  %44 = getelementptr inbounds %struct.mlxsw_sp_lpm_tree, %struct.mlxsw_sp_lpm_tree* %43, i32 0, i32 2
  %45 = call i32 @memset(i32* %44, i32 0, i32 4)
  %46 = load %struct.mlxsw_sp_lpm_tree*, %struct.mlxsw_sp_lpm_tree** %8, align 8
  %47 = getelementptr inbounds %struct.mlxsw_sp_lpm_tree, %struct.mlxsw_sp_lpm_tree* %46, i32 0, i32 1
  store i32 1, i32* %47, align 4
  %48 = load %struct.mlxsw_sp_lpm_tree*, %struct.mlxsw_sp_lpm_tree** %8, align 8
  store %struct.mlxsw_sp_lpm_tree* %48, %struct.mlxsw_sp_lpm_tree** %4, align 8
  br label %55

49:                                               ; preds = %37
  %50 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %51 = load %struct.mlxsw_sp_lpm_tree*, %struct.mlxsw_sp_lpm_tree** %8, align 8
  %52 = call i32 @mlxsw_sp_lpm_tree_free(%struct.mlxsw_sp* %50, %struct.mlxsw_sp_lpm_tree* %51)
  %53 = load i32, i32* %9, align 4
  %54 = call %struct.mlxsw_sp_lpm_tree* @ERR_PTR(i32 %53)
  store %struct.mlxsw_sp_lpm_tree* %54, %struct.mlxsw_sp_lpm_tree** %4, align 8
  br label %55

55:                                               ; preds = %49, %38, %27, %14
  %56 = load %struct.mlxsw_sp_lpm_tree*, %struct.mlxsw_sp_lpm_tree** %4, align 8
  ret %struct.mlxsw_sp_lpm_tree* %56
}

declare dso_local %struct.mlxsw_sp_lpm_tree* @mlxsw_sp_lpm_tree_find_unused(%struct.mlxsw_sp*) #1

declare dso_local %struct.mlxsw_sp_lpm_tree* @ERR_PTR(i32) #1

declare dso_local i32 @mlxsw_sp_lpm_tree_alloc(%struct.mlxsw_sp*, %struct.mlxsw_sp_lpm_tree*) #1

declare dso_local i32 @mlxsw_sp_lpm_tree_left_struct_set(%struct.mlxsw_sp*, %struct.mlxsw_sp_prefix_usage*, %struct.mlxsw_sp_lpm_tree*) #1

declare dso_local i32 @memcpy(i32*, %struct.mlxsw_sp_prefix_usage*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @mlxsw_sp_lpm_tree_free(%struct.mlxsw_sp*, %struct.mlxsw_sp_lpm_tree*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
