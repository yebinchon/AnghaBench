; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_fib_lpm_tree_link.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_fib_lpm_tree_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.mlxsw_sp_lpm_tree** }
%struct.mlxsw_sp_lpm_tree = type { i64*, i32 }
%struct.mlxsw_sp_fib_node = type { %struct.TYPE_6__, %struct.mlxsw_sp_fib* }
%struct.TYPE_6__ = type { i64 }
%struct.mlxsw_sp_fib = type { i64 }
%struct.mlxsw_sp_prefix_usage = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp*, %struct.mlxsw_sp_fib_node*)* @mlxsw_sp_fib_lpm_tree_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_fib_lpm_tree_link(%struct.mlxsw_sp* %0, %struct.mlxsw_sp_fib_node* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlxsw_sp*, align 8
  %5 = alloca %struct.mlxsw_sp_fib_node*, align 8
  %6 = alloca %struct.mlxsw_sp_prefix_usage, align 4
  %7 = alloca %struct.mlxsw_sp_fib*, align 8
  %8 = alloca %struct.mlxsw_sp_lpm_tree*, align 8
  %9 = alloca i32, align 4
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %4, align 8
  store %struct.mlxsw_sp_fib_node* %1, %struct.mlxsw_sp_fib_node** %5, align 8
  %10 = load %struct.mlxsw_sp_fib_node*, %struct.mlxsw_sp_fib_node** %5, align 8
  %11 = getelementptr inbounds %struct.mlxsw_sp_fib_node, %struct.mlxsw_sp_fib_node* %10, i32 0, i32 1
  %12 = load %struct.mlxsw_sp_fib*, %struct.mlxsw_sp_fib** %11, align 8
  store %struct.mlxsw_sp_fib* %12, %struct.mlxsw_sp_fib** %7, align 8
  %13 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %14 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %13, i32 0, i32 0
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.mlxsw_sp_lpm_tree**, %struct.mlxsw_sp_lpm_tree*** %17, align 8
  %19 = load %struct.mlxsw_sp_fib*, %struct.mlxsw_sp_fib** %7, align 8
  %20 = getelementptr inbounds %struct.mlxsw_sp_fib, %struct.mlxsw_sp_fib* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds %struct.mlxsw_sp_lpm_tree*, %struct.mlxsw_sp_lpm_tree** %18, i64 %21
  %23 = load %struct.mlxsw_sp_lpm_tree*, %struct.mlxsw_sp_lpm_tree** %22, align 8
  store %struct.mlxsw_sp_lpm_tree* %23, %struct.mlxsw_sp_lpm_tree** %8, align 8
  %24 = load %struct.mlxsw_sp_lpm_tree*, %struct.mlxsw_sp_lpm_tree** %8, align 8
  %25 = getelementptr inbounds %struct.mlxsw_sp_lpm_tree, %struct.mlxsw_sp_lpm_tree* %24, i32 0, i32 0
  %26 = load i64*, i64** %25, align 8
  %27 = load %struct.mlxsw_sp_fib_node*, %struct.mlxsw_sp_fib_node** %5, align 8
  %28 = getelementptr inbounds %struct.mlxsw_sp_fib_node, %struct.mlxsw_sp_fib_node* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds i64, i64* %26, i64 %30
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %2
  br label %64

35:                                               ; preds = %2
  %36 = load %struct.mlxsw_sp_lpm_tree*, %struct.mlxsw_sp_lpm_tree** %8, align 8
  %37 = getelementptr inbounds %struct.mlxsw_sp_lpm_tree, %struct.mlxsw_sp_lpm_tree* %36, i32 0, i32 1
  %38 = call i32 @mlxsw_sp_prefix_usage_cpy(%struct.mlxsw_sp_prefix_usage* %6, i32* %37)
  %39 = load %struct.mlxsw_sp_fib_node*, %struct.mlxsw_sp_fib_node** %5, align 8
  %40 = getelementptr inbounds %struct.mlxsw_sp_fib_node, %struct.mlxsw_sp_fib_node* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @mlxsw_sp_prefix_usage_set(%struct.mlxsw_sp_prefix_usage* %6, i64 %42)
  %44 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %45 = load %struct.mlxsw_sp_fib*, %struct.mlxsw_sp_fib** %7, align 8
  %46 = getelementptr inbounds %struct.mlxsw_sp_fib, %struct.mlxsw_sp_fib* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = call %struct.mlxsw_sp_lpm_tree* @mlxsw_sp_lpm_tree_get(%struct.mlxsw_sp* %44, %struct.mlxsw_sp_prefix_usage* %6, i64 %47)
  store %struct.mlxsw_sp_lpm_tree* %48, %struct.mlxsw_sp_lpm_tree** %8, align 8
  %49 = load %struct.mlxsw_sp_lpm_tree*, %struct.mlxsw_sp_lpm_tree** %8, align 8
  %50 = call i64 @IS_ERR(%struct.mlxsw_sp_lpm_tree* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %35
  %53 = load %struct.mlxsw_sp_lpm_tree*, %struct.mlxsw_sp_lpm_tree** %8, align 8
  %54 = call i32 @PTR_ERR(%struct.mlxsw_sp_lpm_tree* %53)
  store i32 %54, i32* %3, align 4
  br label %80

55:                                               ; preds = %35
  %56 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %57 = load %struct.mlxsw_sp_fib*, %struct.mlxsw_sp_fib** %7, align 8
  %58 = load %struct.mlxsw_sp_lpm_tree*, %struct.mlxsw_sp_lpm_tree** %8, align 8
  %59 = call i32 @mlxsw_sp_vrs_lpm_tree_replace(%struct.mlxsw_sp* %56, %struct.mlxsw_sp_fib* %57, %struct.mlxsw_sp_lpm_tree* %58)
  store i32 %59, i32* %9, align 4
  %60 = load i32, i32* %9, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %55
  br label %75

63:                                               ; preds = %55
  br label %64

64:                                               ; preds = %63, %34
  %65 = load %struct.mlxsw_sp_lpm_tree*, %struct.mlxsw_sp_lpm_tree** %8, align 8
  %66 = getelementptr inbounds %struct.mlxsw_sp_lpm_tree, %struct.mlxsw_sp_lpm_tree* %65, i32 0, i32 0
  %67 = load i64*, i64** %66, align 8
  %68 = load %struct.mlxsw_sp_fib_node*, %struct.mlxsw_sp_fib_node** %5, align 8
  %69 = getelementptr inbounds %struct.mlxsw_sp_fib_node, %struct.mlxsw_sp_fib_node* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = getelementptr inbounds i64, i64* %67, i64 %71
  %73 = load i64, i64* %72, align 8
  %74 = add nsw i64 %73, 1
  store i64 %74, i64* %72, align 8
  store i32 0, i32* %3, align 4
  br label %80

75:                                               ; preds = %62
  %76 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %77 = load %struct.mlxsw_sp_lpm_tree*, %struct.mlxsw_sp_lpm_tree** %8, align 8
  %78 = call i32 @mlxsw_sp_lpm_tree_put(%struct.mlxsw_sp* %76, %struct.mlxsw_sp_lpm_tree* %77)
  %79 = load i32, i32* %9, align 4
  store i32 %79, i32* %3, align 4
  br label %80

80:                                               ; preds = %75, %64, %52
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local i32 @mlxsw_sp_prefix_usage_cpy(%struct.mlxsw_sp_prefix_usage*, i32*) #1

declare dso_local i32 @mlxsw_sp_prefix_usage_set(%struct.mlxsw_sp_prefix_usage*, i64) #1

declare dso_local %struct.mlxsw_sp_lpm_tree* @mlxsw_sp_lpm_tree_get(%struct.mlxsw_sp*, %struct.mlxsw_sp_prefix_usage*, i64) #1

declare dso_local i64 @IS_ERR(%struct.mlxsw_sp_lpm_tree*) #1

declare dso_local i32 @PTR_ERR(%struct.mlxsw_sp_lpm_tree*) #1

declare dso_local i32 @mlxsw_sp_vrs_lpm_tree_replace(%struct.mlxsw_sp*, %struct.mlxsw_sp_fib*, %struct.mlxsw_sp_lpm_tree*) #1

declare dso_local i32 @mlxsw_sp_lpm_tree_put(%struct.mlxsw_sp*, %struct.mlxsw_sp_lpm_tree*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
