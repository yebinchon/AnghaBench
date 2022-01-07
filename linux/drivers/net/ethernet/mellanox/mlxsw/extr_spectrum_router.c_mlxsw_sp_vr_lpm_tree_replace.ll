; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_vr_lpm_tree_replace.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_vr_lpm_tree_replace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { i32 }
%struct.mlxsw_sp_fib = type { %struct.mlxsw_sp_lpm_tree* }
%struct.mlxsw_sp_lpm_tree = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp*, %struct.mlxsw_sp_fib*, %struct.mlxsw_sp_lpm_tree*)* @mlxsw_sp_vr_lpm_tree_replace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_vr_lpm_tree_replace(%struct.mlxsw_sp* %0, %struct.mlxsw_sp_fib* %1, %struct.mlxsw_sp_lpm_tree* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlxsw_sp*, align 8
  %6 = alloca %struct.mlxsw_sp_fib*, align 8
  %7 = alloca %struct.mlxsw_sp_lpm_tree*, align 8
  %8 = alloca %struct.mlxsw_sp_lpm_tree*, align 8
  %9 = alloca i32, align 4
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %5, align 8
  store %struct.mlxsw_sp_fib* %1, %struct.mlxsw_sp_fib** %6, align 8
  store %struct.mlxsw_sp_lpm_tree* %2, %struct.mlxsw_sp_lpm_tree** %7, align 8
  %10 = load %struct.mlxsw_sp_fib*, %struct.mlxsw_sp_fib** %6, align 8
  %11 = getelementptr inbounds %struct.mlxsw_sp_fib, %struct.mlxsw_sp_fib* %10, i32 0, i32 0
  %12 = load %struct.mlxsw_sp_lpm_tree*, %struct.mlxsw_sp_lpm_tree** %11, align 8
  store %struct.mlxsw_sp_lpm_tree* %12, %struct.mlxsw_sp_lpm_tree** %8, align 8
  %13 = load %struct.mlxsw_sp_lpm_tree*, %struct.mlxsw_sp_lpm_tree** %7, align 8
  %14 = load %struct.mlxsw_sp_fib*, %struct.mlxsw_sp_fib** %6, align 8
  %15 = getelementptr inbounds %struct.mlxsw_sp_fib, %struct.mlxsw_sp_fib* %14, i32 0, i32 0
  store %struct.mlxsw_sp_lpm_tree* %13, %struct.mlxsw_sp_lpm_tree** %15, align 8
  %16 = load %struct.mlxsw_sp_lpm_tree*, %struct.mlxsw_sp_lpm_tree** %7, align 8
  %17 = call i32 @mlxsw_sp_lpm_tree_hold(%struct.mlxsw_sp_lpm_tree* %16)
  %18 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %19 = load %struct.mlxsw_sp_fib*, %struct.mlxsw_sp_fib** %6, align 8
  %20 = load %struct.mlxsw_sp_lpm_tree*, %struct.mlxsw_sp_lpm_tree** %7, align 8
  %21 = getelementptr inbounds %struct.mlxsw_sp_lpm_tree, %struct.mlxsw_sp_lpm_tree* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @mlxsw_sp_vr_lpm_tree_bind(%struct.mlxsw_sp* %18, %struct.mlxsw_sp_fib* %19, i32 %22)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %3
  br label %31

27:                                               ; preds = %3
  %28 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %29 = load %struct.mlxsw_sp_lpm_tree*, %struct.mlxsw_sp_lpm_tree** %8, align 8
  %30 = call i32 @mlxsw_sp_lpm_tree_put(%struct.mlxsw_sp* %28, %struct.mlxsw_sp_lpm_tree* %29)
  store i32 0, i32* %4, align 4
  br label %39

31:                                               ; preds = %26
  %32 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %33 = load %struct.mlxsw_sp_lpm_tree*, %struct.mlxsw_sp_lpm_tree** %7, align 8
  %34 = call i32 @mlxsw_sp_lpm_tree_put(%struct.mlxsw_sp* %32, %struct.mlxsw_sp_lpm_tree* %33)
  %35 = load %struct.mlxsw_sp_lpm_tree*, %struct.mlxsw_sp_lpm_tree** %8, align 8
  %36 = load %struct.mlxsw_sp_fib*, %struct.mlxsw_sp_fib** %6, align 8
  %37 = getelementptr inbounds %struct.mlxsw_sp_fib, %struct.mlxsw_sp_fib* %36, i32 0, i32 0
  store %struct.mlxsw_sp_lpm_tree* %35, %struct.mlxsw_sp_lpm_tree** %37, align 8
  %38 = load i32, i32* %9, align 4
  store i32 %38, i32* %4, align 4
  br label %39

39:                                               ; preds = %31, %27
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

declare dso_local i32 @mlxsw_sp_lpm_tree_hold(%struct.mlxsw_sp_lpm_tree*) #1

declare dso_local i32 @mlxsw_sp_vr_lpm_tree_bind(%struct.mlxsw_sp*, %struct.mlxsw_sp_fib*, i32) #1

declare dso_local i32 @mlxsw_sp_lpm_tree_put(%struct.mlxsw_sp*, %struct.mlxsw_sp_lpm_tree*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
