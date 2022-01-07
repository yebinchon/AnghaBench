; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_fib_lpm_tree_unlink.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_fib_lpm_tree_unlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { i32 }
%struct.mlxsw_sp_fib_node = type { %struct.TYPE_2__, %struct.mlxsw_sp_fib* }
%struct.TYPE_2__ = type { i64 }
%struct.mlxsw_sp_fib = type { i32, %struct.mlxsw_sp_lpm_tree* }
%struct.mlxsw_sp_lpm_tree = type { i64*, i32 }
%struct.mlxsw_sp_prefix_usage = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlxsw_sp*, %struct.mlxsw_sp_fib_node*)* @mlxsw_sp_fib_lpm_tree_unlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxsw_sp_fib_lpm_tree_unlink(%struct.mlxsw_sp* %0, %struct.mlxsw_sp_fib_node* %1) #0 {
  %3 = alloca %struct.mlxsw_sp*, align 8
  %4 = alloca %struct.mlxsw_sp_fib_node*, align 8
  %5 = alloca %struct.mlxsw_sp_lpm_tree*, align 8
  %6 = alloca %struct.mlxsw_sp_prefix_usage, align 4
  %7 = alloca %struct.mlxsw_sp_fib*, align 8
  %8 = alloca i32, align 4
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %3, align 8
  store %struct.mlxsw_sp_fib_node* %1, %struct.mlxsw_sp_fib_node** %4, align 8
  %9 = load %struct.mlxsw_sp_fib_node*, %struct.mlxsw_sp_fib_node** %4, align 8
  %10 = getelementptr inbounds %struct.mlxsw_sp_fib_node, %struct.mlxsw_sp_fib_node* %9, i32 0, i32 1
  %11 = load %struct.mlxsw_sp_fib*, %struct.mlxsw_sp_fib** %10, align 8
  %12 = getelementptr inbounds %struct.mlxsw_sp_fib, %struct.mlxsw_sp_fib* %11, i32 0, i32 1
  %13 = load %struct.mlxsw_sp_lpm_tree*, %struct.mlxsw_sp_lpm_tree** %12, align 8
  store %struct.mlxsw_sp_lpm_tree* %13, %struct.mlxsw_sp_lpm_tree** %5, align 8
  %14 = load %struct.mlxsw_sp_fib_node*, %struct.mlxsw_sp_fib_node** %4, align 8
  %15 = getelementptr inbounds %struct.mlxsw_sp_fib_node, %struct.mlxsw_sp_fib_node* %14, i32 0, i32 1
  %16 = load %struct.mlxsw_sp_fib*, %struct.mlxsw_sp_fib** %15, align 8
  store %struct.mlxsw_sp_fib* %16, %struct.mlxsw_sp_fib** %7, align 8
  %17 = load %struct.mlxsw_sp_lpm_tree*, %struct.mlxsw_sp_lpm_tree** %5, align 8
  %18 = getelementptr inbounds %struct.mlxsw_sp_lpm_tree, %struct.mlxsw_sp_lpm_tree* %17, i32 0, i32 0
  %19 = load i64*, i64** %18, align 8
  %20 = load %struct.mlxsw_sp_fib_node*, %struct.mlxsw_sp_fib_node** %4, align 8
  %21 = getelementptr inbounds %struct.mlxsw_sp_fib_node, %struct.mlxsw_sp_fib_node* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds i64, i64* %19, i64 %23
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %25, -1
  store i64 %26, i64* %24, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %2
  br label %60

29:                                               ; preds = %2
  %30 = load %struct.mlxsw_sp_lpm_tree*, %struct.mlxsw_sp_lpm_tree** %5, align 8
  %31 = getelementptr inbounds %struct.mlxsw_sp_lpm_tree, %struct.mlxsw_sp_lpm_tree* %30, i32 0, i32 1
  %32 = call i32 @mlxsw_sp_prefix_usage_cpy(%struct.mlxsw_sp_prefix_usage* %6, i32* %31)
  %33 = load %struct.mlxsw_sp_fib_node*, %struct.mlxsw_sp_fib_node** %4, align 8
  %34 = getelementptr inbounds %struct.mlxsw_sp_fib_node, %struct.mlxsw_sp_fib_node* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @mlxsw_sp_prefix_usage_clear(%struct.mlxsw_sp_prefix_usage* %6, i64 %36)
  %38 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %39 = load %struct.mlxsw_sp_fib*, %struct.mlxsw_sp_fib** %7, align 8
  %40 = getelementptr inbounds %struct.mlxsw_sp_fib, %struct.mlxsw_sp_fib* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call %struct.mlxsw_sp_lpm_tree* @mlxsw_sp_lpm_tree_get(%struct.mlxsw_sp* %38, %struct.mlxsw_sp_prefix_usage* %6, i32 %41)
  store %struct.mlxsw_sp_lpm_tree* %42, %struct.mlxsw_sp_lpm_tree** %5, align 8
  %43 = load %struct.mlxsw_sp_lpm_tree*, %struct.mlxsw_sp_lpm_tree** %5, align 8
  %44 = call i64 @IS_ERR(%struct.mlxsw_sp_lpm_tree* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %29
  br label %60

47:                                               ; preds = %29
  %48 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %49 = load %struct.mlxsw_sp_fib*, %struct.mlxsw_sp_fib** %7, align 8
  %50 = load %struct.mlxsw_sp_lpm_tree*, %struct.mlxsw_sp_lpm_tree** %5, align 8
  %51 = call i32 @mlxsw_sp_vrs_lpm_tree_replace(%struct.mlxsw_sp* %48, %struct.mlxsw_sp_fib* %49, %struct.mlxsw_sp_lpm_tree* %50)
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %8, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %47
  br label %56

55:                                               ; preds = %47
  br label %60

56:                                               ; preds = %54
  %57 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %58 = load %struct.mlxsw_sp_lpm_tree*, %struct.mlxsw_sp_lpm_tree** %5, align 8
  %59 = call i32 @mlxsw_sp_lpm_tree_put(%struct.mlxsw_sp* %57, %struct.mlxsw_sp_lpm_tree* %58)
  br label %60

60:                                               ; preds = %56, %55, %46, %28
  ret void
}

declare dso_local i32 @mlxsw_sp_prefix_usage_cpy(%struct.mlxsw_sp_prefix_usage*, i32*) #1

declare dso_local i32 @mlxsw_sp_prefix_usage_clear(%struct.mlxsw_sp_prefix_usage*, i64) #1

declare dso_local %struct.mlxsw_sp_lpm_tree* @mlxsw_sp_lpm_tree_get(%struct.mlxsw_sp*, %struct.mlxsw_sp_prefix_usage*, i32) #1

declare dso_local i64 @IS_ERR(%struct.mlxsw_sp_lpm_tree*) #1

declare dso_local i32 @mlxsw_sp_vrs_lpm_tree_replace(%struct.mlxsw_sp*, %struct.mlxsw_sp_fib*, %struct.mlxsw_sp_lpm_tree*) #1

declare dso_local i32 @mlxsw_sp_lpm_tree_put(%struct.mlxsw_sp*, %struct.mlxsw_sp_lpm_tree*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
