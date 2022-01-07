; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_lpm_tree_find_unused.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_lpm_tree_find_unused.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_lpm_tree = type { i64 }
%struct.mlxsw_sp = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, %struct.mlxsw_sp_lpm_tree* }

@mlxsw_sp_lpm_tree_find_unused.lpm_tree = internal global %struct.mlxsw_sp_lpm_tree* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mlxsw_sp_lpm_tree* (%struct.mlxsw_sp*)* @mlxsw_sp_lpm_tree_find_unused to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mlxsw_sp_lpm_tree* @mlxsw_sp_lpm_tree_find_unused(%struct.mlxsw_sp* %0) #0 {
  %2 = alloca %struct.mlxsw_sp_lpm_tree*, align 8
  %3 = alloca %struct.mlxsw_sp*, align 8
  %4 = alloca i32, align 4
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %3, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %31, %1
  %6 = load i32, i32* %4, align 4
  %7 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %8 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %7, i32 0, i32 0
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %6, %12
  br i1 %13, label %14, label %34

14:                                               ; preds = %5
  %15 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %16 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = load %struct.mlxsw_sp_lpm_tree*, %struct.mlxsw_sp_lpm_tree** %19, align 8
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.mlxsw_sp_lpm_tree, %struct.mlxsw_sp_lpm_tree* %20, i64 %22
  store %struct.mlxsw_sp_lpm_tree* %23, %struct.mlxsw_sp_lpm_tree** @mlxsw_sp_lpm_tree_find_unused.lpm_tree, align 8
  %24 = load %struct.mlxsw_sp_lpm_tree*, %struct.mlxsw_sp_lpm_tree** @mlxsw_sp_lpm_tree_find_unused.lpm_tree, align 8
  %25 = getelementptr inbounds %struct.mlxsw_sp_lpm_tree, %struct.mlxsw_sp_lpm_tree* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %14
  %29 = load %struct.mlxsw_sp_lpm_tree*, %struct.mlxsw_sp_lpm_tree** @mlxsw_sp_lpm_tree_find_unused.lpm_tree, align 8
  store %struct.mlxsw_sp_lpm_tree* %29, %struct.mlxsw_sp_lpm_tree** %2, align 8
  br label %35

30:                                               ; preds = %14
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %4, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %4, align 4
  br label %5

34:                                               ; preds = %5
  store %struct.mlxsw_sp_lpm_tree* null, %struct.mlxsw_sp_lpm_tree** %2, align 8
  br label %35

35:                                               ; preds = %34, %28
  %36 = load %struct.mlxsw_sp_lpm_tree*, %struct.mlxsw_sp_lpm_tree** %2, align 8
  ret %struct.mlxsw_sp_lpm_tree* %36
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
