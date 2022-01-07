; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_lpm_tree_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_lpm_tree_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_lpm_tree = type { i64, i32, i32 }
%struct.mlxsw_sp = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, %struct.mlxsw_sp_lpm_tree* }
%struct.mlxsw_sp_prefix_usage = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mlxsw_sp_lpm_tree* (%struct.mlxsw_sp*, %struct.mlxsw_sp_prefix_usage*, i32)* @mlxsw_sp_lpm_tree_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mlxsw_sp_lpm_tree* @mlxsw_sp_lpm_tree_get(%struct.mlxsw_sp* %0, %struct.mlxsw_sp_prefix_usage* %1, i32 %2) #0 {
  %4 = alloca %struct.mlxsw_sp_lpm_tree*, align 8
  %5 = alloca %struct.mlxsw_sp*, align 8
  %6 = alloca %struct.mlxsw_sp_prefix_usage*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlxsw_sp_lpm_tree*, align 8
  %9 = alloca i32, align 4
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %5, align 8
  store %struct.mlxsw_sp_prefix_usage* %1, %struct.mlxsw_sp_prefix_usage** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  br label %10

10:                                               ; preds = %50, %3
  %11 = load i32, i32* %9, align 4
  %12 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %13 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %11, %17
  br i1 %18, label %19, label %53

19:                                               ; preds = %10
  %20 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %21 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load %struct.mlxsw_sp_lpm_tree*, %struct.mlxsw_sp_lpm_tree** %24, align 8
  %26 = load i32, i32* %9, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.mlxsw_sp_lpm_tree, %struct.mlxsw_sp_lpm_tree* %25, i64 %27
  store %struct.mlxsw_sp_lpm_tree* %28, %struct.mlxsw_sp_lpm_tree** %8, align 8
  %29 = load %struct.mlxsw_sp_lpm_tree*, %struct.mlxsw_sp_lpm_tree** %8, align 8
  %30 = getelementptr inbounds %struct.mlxsw_sp_lpm_tree, %struct.mlxsw_sp_lpm_tree* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %49

33:                                               ; preds = %19
  %34 = load %struct.mlxsw_sp_lpm_tree*, %struct.mlxsw_sp_lpm_tree** %8, align 8
  %35 = getelementptr inbounds %struct.mlxsw_sp_lpm_tree, %struct.mlxsw_sp_lpm_tree* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* %7, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %49

39:                                               ; preds = %33
  %40 = load %struct.mlxsw_sp_lpm_tree*, %struct.mlxsw_sp_lpm_tree** %8, align 8
  %41 = getelementptr inbounds %struct.mlxsw_sp_lpm_tree, %struct.mlxsw_sp_lpm_tree* %40, i32 0, i32 2
  %42 = load %struct.mlxsw_sp_prefix_usage*, %struct.mlxsw_sp_prefix_usage** %6, align 8
  %43 = call i64 @mlxsw_sp_prefix_usage_eq(i32* %41, %struct.mlxsw_sp_prefix_usage* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %39
  %46 = load %struct.mlxsw_sp_lpm_tree*, %struct.mlxsw_sp_lpm_tree** %8, align 8
  %47 = call i32 @mlxsw_sp_lpm_tree_hold(%struct.mlxsw_sp_lpm_tree* %46)
  %48 = load %struct.mlxsw_sp_lpm_tree*, %struct.mlxsw_sp_lpm_tree** %8, align 8
  store %struct.mlxsw_sp_lpm_tree* %48, %struct.mlxsw_sp_lpm_tree** %4, align 8
  br label %58

49:                                               ; preds = %39, %33, %19
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %9, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %9, align 4
  br label %10

53:                                               ; preds = %10
  %54 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %55 = load %struct.mlxsw_sp_prefix_usage*, %struct.mlxsw_sp_prefix_usage** %6, align 8
  %56 = load i32, i32* %7, align 4
  %57 = call %struct.mlxsw_sp_lpm_tree* @mlxsw_sp_lpm_tree_create(%struct.mlxsw_sp* %54, %struct.mlxsw_sp_prefix_usage* %55, i32 %56)
  store %struct.mlxsw_sp_lpm_tree* %57, %struct.mlxsw_sp_lpm_tree** %4, align 8
  br label %58

58:                                               ; preds = %53, %45
  %59 = load %struct.mlxsw_sp_lpm_tree*, %struct.mlxsw_sp_lpm_tree** %4, align 8
  ret %struct.mlxsw_sp_lpm_tree* %59
}

declare dso_local i64 @mlxsw_sp_prefix_usage_eq(i32*, %struct.mlxsw_sp_prefix_usage*) #1

declare dso_local i32 @mlxsw_sp_lpm_tree_hold(%struct.mlxsw_sp_lpm_tree*) #1

declare dso_local %struct.mlxsw_sp_lpm_tree* @mlxsw_sp_lpm_tree_create(%struct.mlxsw_sp*, %struct.mlxsw_sp_prefix_usage*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
