; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_rule.c_mlx5dr_rule_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_rule.c_mlx5dr_rule_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5dr_rule = type { i32 }
%struct.mlx5dr_matcher = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.mlx5dr_match_parameters = type { i32 }
%struct.mlx5dr_action = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mlx5dr_rule* @mlx5dr_rule_create(%struct.mlx5dr_matcher* %0, %struct.mlx5dr_match_parameters* %1, i64 %2, %struct.mlx5dr_action** %3) #0 {
  %5 = alloca %struct.mlx5dr_matcher*, align 8
  %6 = alloca %struct.mlx5dr_match_parameters*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.mlx5dr_action**, align 8
  %9 = alloca %struct.mlx5dr_rule*, align 8
  store %struct.mlx5dr_matcher* %0, %struct.mlx5dr_matcher** %5, align 8
  store %struct.mlx5dr_match_parameters* %1, %struct.mlx5dr_match_parameters** %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.mlx5dr_action** %3, %struct.mlx5dr_action*** %8, align 8
  %10 = load %struct.mlx5dr_matcher*, %struct.mlx5dr_matcher** %5, align 8
  %11 = getelementptr inbounds %struct.mlx5dr_matcher, %struct.mlx5dr_matcher* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load %struct.mlx5dr_matcher*, %struct.mlx5dr_matcher** %5, align 8
  %18 = getelementptr inbounds %struct.mlx5dr_matcher, %struct.mlx5dr_matcher* %17, i32 0, i32 1
  %19 = call i32 @refcount_inc(i32* %18)
  %20 = load %struct.mlx5dr_matcher*, %struct.mlx5dr_matcher** %5, align 8
  %21 = load %struct.mlx5dr_match_parameters*, %struct.mlx5dr_match_parameters** %6, align 8
  %22 = load i64, i64* %7, align 8
  %23 = load %struct.mlx5dr_action**, %struct.mlx5dr_action*** %8, align 8
  %24 = call %struct.mlx5dr_rule* @dr_rule_create_rule(%struct.mlx5dr_matcher* %20, %struct.mlx5dr_match_parameters* %21, i64 %22, %struct.mlx5dr_action** %23)
  store %struct.mlx5dr_rule* %24, %struct.mlx5dr_rule** %9, align 8
  %25 = load %struct.mlx5dr_rule*, %struct.mlx5dr_rule** %9, align 8
  %26 = icmp ne %struct.mlx5dr_rule* %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %4
  %28 = load %struct.mlx5dr_matcher*, %struct.mlx5dr_matcher** %5, align 8
  %29 = getelementptr inbounds %struct.mlx5dr_matcher, %struct.mlx5dr_matcher* %28, i32 0, i32 1
  %30 = call i32 @refcount_dec(i32* %29)
  br label %31

31:                                               ; preds = %27, %4
  %32 = load %struct.mlx5dr_matcher*, %struct.mlx5dr_matcher** %5, align 8
  %33 = getelementptr inbounds %struct.mlx5dr_matcher, %struct.mlx5dr_matcher* %32, i32 0, i32 0
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = call i32 @mutex_unlock(i32* %37)
  %39 = load %struct.mlx5dr_rule*, %struct.mlx5dr_rule** %9, align 8
  ret %struct.mlx5dr_rule* %39
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @refcount_inc(i32*) #1

declare dso_local %struct.mlx5dr_rule* @dr_rule_create_rule(%struct.mlx5dr_matcher*, %struct.mlx5dr_match_parameters*, i64, %struct.mlx5dr_action**) #1

declare dso_local i32 @refcount_dec(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
