; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_rule.c_mlx5dr_rule_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_rule.c_mlx5dr_rule_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5dr_rule = type { %struct.mlx5dr_matcher* }
%struct.mlx5dr_matcher = type { i32, %struct.mlx5dr_table* }
%struct.mlx5dr_table = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5dr_rule_destroy(%struct.mlx5dr_rule* %0) #0 {
  %2 = alloca %struct.mlx5dr_rule*, align 8
  %3 = alloca %struct.mlx5dr_matcher*, align 8
  %4 = alloca %struct.mlx5dr_table*, align 8
  %5 = alloca i32, align 4
  store %struct.mlx5dr_rule* %0, %struct.mlx5dr_rule** %2, align 8
  %6 = load %struct.mlx5dr_rule*, %struct.mlx5dr_rule** %2, align 8
  %7 = getelementptr inbounds %struct.mlx5dr_rule, %struct.mlx5dr_rule* %6, i32 0, i32 0
  %8 = load %struct.mlx5dr_matcher*, %struct.mlx5dr_matcher** %7, align 8
  store %struct.mlx5dr_matcher* %8, %struct.mlx5dr_matcher** %3, align 8
  %9 = load %struct.mlx5dr_rule*, %struct.mlx5dr_rule** %2, align 8
  %10 = getelementptr inbounds %struct.mlx5dr_rule, %struct.mlx5dr_rule* %9, i32 0, i32 0
  %11 = load %struct.mlx5dr_matcher*, %struct.mlx5dr_matcher** %10, align 8
  %12 = getelementptr inbounds %struct.mlx5dr_matcher, %struct.mlx5dr_matcher* %11, i32 0, i32 1
  %13 = load %struct.mlx5dr_table*, %struct.mlx5dr_table** %12, align 8
  store %struct.mlx5dr_table* %13, %struct.mlx5dr_table** %4, align 8
  %14 = load %struct.mlx5dr_table*, %struct.mlx5dr_table** %4, align 8
  %15 = getelementptr inbounds %struct.mlx5dr_table, %struct.mlx5dr_table* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load %struct.mlx5dr_rule*, %struct.mlx5dr_rule** %2, align 8
  %20 = call i32 @dr_rule_destroy_rule(%struct.mlx5dr_rule* %19)
  store i32 %20, i32* %5, align 4
  %21 = load %struct.mlx5dr_table*, %struct.mlx5dr_table** %4, align 8
  %22 = getelementptr inbounds %struct.mlx5dr_table, %struct.mlx5dr_table* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = call i32 @mutex_unlock(i32* %24)
  %26 = load i32, i32* %5, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %1
  %29 = load %struct.mlx5dr_matcher*, %struct.mlx5dr_matcher** %3, align 8
  %30 = getelementptr inbounds %struct.mlx5dr_matcher, %struct.mlx5dr_matcher* %29, i32 0, i32 0
  %31 = call i32 @refcount_dec(i32* %30)
  br label %32

32:                                               ; preds = %28, %1
  %33 = load i32, i32* %5, align 4
  ret i32 %33
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @dr_rule_destroy_rule(%struct.mlx5dr_rule*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @refcount_dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
