; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_fib_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_fib_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_fib = type { i32, %struct.mlxsw_sp_lpm_tree*, %struct.mlxsw_sp_vr*, i32, i32 }
%struct.mlxsw_sp_lpm_tree = type { i32 }
%struct.mlxsw_sp = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.mlxsw_sp_lpm_tree** }
%struct.mlxsw_sp_vr = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@mlxsw_sp_fib_ht_params = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mlxsw_sp_fib* (%struct.mlxsw_sp*, %struct.mlxsw_sp_vr*, i32)* @mlxsw_sp_fib_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mlxsw_sp_fib* @mlxsw_sp_fib_create(%struct.mlxsw_sp* %0, %struct.mlxsw_sp_vr* %1, i32 %2) #0 {
  %4 = alloca %struct.mlxsw_sp_fib*, align 8
  %5 = alloca %struct.mlxsw_sp*, align 8
  %6 = alloca %struct.mlxsw_sp_vr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlxsw_sp_lpm_tree*, align 8
  %9 = alloca %struct.mlxsw_sp_fib*, align 8
  %10 = alloca i32, align 4
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %5, align 8
  store %struct.mlxsw_sp_vr* %1, %struct.mlxsw_sp_vr** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %12 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load %struct.mlxsw_sp_lpm_tree**, %struct.mlxsw_sp_lpm_tree*** %15, align 8
  %17 = load i32, i32* %7, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.mlxsw_sp_lpm_tree*, %struct.mlxsw_sp_lpm_tree** %16, i64 %18
  %20 = load %struct.mlxsw_sp_lpm_tree*, %struct.mlxsw_sp_lpm_tree** %19, align 8
  store %struct.mlxsw_sp_lpm_tree* %20, %struct.mlxsw_sp_lpm_tree** %8, align 8
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call %struct.mlxsw_sp_fib* @kzalloc(i32 32, i32 %21)
  store %struct.mlxsw_sp_fib* %22, %struct.mlxsw_sp_fib** %9, align 8
  %23 = load %struct.mlxsw_sp_fib*, %struct.mlxsw_sp_fib** %9, align 8
  %24 = icmp ne %struct.mlxsw_sp_fib* %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %3
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  %28 = call %struct.mlxsw_sp_fib* @ERR_PTR(i32 %27)
  store %struct.mlxsw_sp_fib* %28, %struct.mlxsw_sp_fib** %4, align 8
  br label %71

29:                                               ; preds = %3
  %30 = load %struct.mlxsw_sp_fib*, %struct.mlxsw_sp_fib** %9, align 8
  %31 = getelementptr inbounds %struct.mlxsw_sp_fib, %struct.mlxsw_sp_fib* %30, i32 0, i32 4
  %32 = call i32 @rhashtable_init(i32* %31, i32* @mlxsw_sp_fib_ht_params)
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  br label %66

36:                                               ; preds = %29
  %37 = load %struct.mlxsw_sp_fib*, %struct.mlxsw_sp_fib** %9, align 8
  %38 = getelementptr inbounds %struct.mlxsw_sp_fib, %struct.mlxsw_sp_fib* %37, i32 0, i32 3
  %39 = call i32 @INIT_LIST_HEAD(i32* %38)
  %40 = load i32, i32* %7, align 4
  %41 = load %struct.mlxsw_sp_fib*, %struct.mlxsw_sp_fib** %9, align 8
  %42 = getelementptr inbounds %struct.mlxsw_sp_fib, %struct.mlxsw_sp_fib* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load %struct.mlxsw_sp_vr*, %struct.mlxsw_sp_vr** %6, align 8
  %44 = load %struct.mlxsw_sp_fib*, %struct.mlxsw_sp_fib** %9, align 8
  %45 = getelementptr inbounds %struct.mlxsw_sp_fib, %struct.mlxsw_sp_fib* %44, i32 0, i32 2
  store %struct.mlxsw_sp_vr* %43, %struct.mlxsw_sp_vr** %45, align 8
  %46 = load %struct.mlxsw_sp_lpm_tree*, %struct.mlxsw_sp_lpm_tree** %8, align 8
  %47 = load %struct.mlxsw_sp_fib*, %struct.mlxsw_sp_fib** %9, align 8
  %48 = getelementptr inbounds %struct.mlxsw_sp_fib, %struct.mlxsw_sp_fib* %47, i32 0, i32 1
  store %struct.mlxsw_sp_lpm_tree* %46, %struct.mlxsw_sp_lpm_tree** %48, align 8
  %49 = load %struct.mlxsw_sp_lpm_tree*, %struct.mlxsw_sp_lpm_tree** %8, align 8
  %50 = call i32 @mlxsw_sp_lpm_tree_hold(%struct.mlxsw_sp_lpm_tree* %49)
  %51 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %52 = load %struct.mlxsw_sp_fib*, %struct.mlxsw_sp_fib** %9, align 8
  %53 = load %struct.mlxsw_sp_lpm_tree*, %struct.mlxsw_sp_lpm_tree** %8, align 8
  %54 = getelementptr inbounds %struct.mlxsw_sp_lpm_tree, %struct.mlxsw_sp_lpm_tree* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @mlxsw_sp_vr_lpm_tree_bind(%struct.mlxsw_sp* %51, %struct.mlxsw_sp_fib* %52, i32 %55)
  store i32 %56, i32* %10, align 4
  %57 = load i32, i32* %10, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %36
  br label %62

60:                                               ; preds = %36
  %61 = load %struct.mlxsw_sp_fib*, %struct.mlxsw_sp_fib** %9, align 8
  store %struct.mlxsw_sp_fib* %61, %struct.mlxsw_sp_fib** %4, align 8
  br label %71

62:                                               ; preds = %59
  %63 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %64 = load %struct.mlxsw_sp_lpm_tree*, %struct.mlxsw_sp_lpm_tree** %8, align 8
  %65 = call i32 @mlxsw_sp_lpm_tree_put(%struct.mlxsw_sp* %63, %struct.mlxsw_sp_lpm_tree* %64)
  br label %66

66:                                               ; preds = %62, %35
  %67 = load %struct.mlxsw_sp_fib*, %struct.mlxsw_sp_fib** %9, align 8
  %68 = call i32 @kfree(%struct.mlxsw_sp_fib* %67)
  %69 = load i32, i32* %10, align 4
  %70 = call %struct.mlxsw_sp_fib* @ERR_PTR(i32 %69)
  store %struct.mlxsw_sp_fib* %70, %struct.mlxsw_sp_fib** %4, align 8
  br label %71

71:                                               ; preds = %66, %60, %25
  %72 = load %struct.mlxsw_sp_fib*, %struct.mlxsw_sp_fib** %4, align 8
  ret %struct.mlxsw_sp_fib* %72
}

declare dso_local %struct.mlxsw_sp_fib* @kzalloc(i32, i32) #1

declare dso_local %struct.mlxsw_sp_fib* @ERR_PTR(i32) #1

declare dso_local i32 @rhashtable_init(i32*, i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @mlxsw_sp_lpm_tree_hold(%struct.mlxsw_sp_lpm_tree*) #1

declare dso_local i32 @mlxsw_sp_vr_lpm_tree_bind(%struct.mlxsw_sp*, %struct.mlxsw_sp_fib*, i32) #1

declare dso_local i32 @mlxsw_sp_lpm_tree_put(%struct.mlxsw_sp*, %struct.mlxsw_sp_lpm_tree*) #1

declare dso_local i32 @kfree(%struct.mlxsw_sp_fib*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
