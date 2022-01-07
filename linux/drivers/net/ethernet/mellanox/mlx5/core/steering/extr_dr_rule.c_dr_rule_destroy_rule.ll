; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_rule.c_dr_rule_destroy_rule.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_rule.c_dr_rule_destroy_rule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5dr_rule = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.mlx5dr_domain* }
%struct.mlx5dr_domain = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5dr_rule*)* @dr_rule_destroy_rule to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dr_rule_destroy_rule(%struct.mlx5dr_rule* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx5dr_rule*, align 8
  %4 = alloca %struct.mlx5dr_domain*, align 8
  store %struct.mlx5dr_rule* %0, %struct.mlx5dr_rule** %3, align 8
  %5 = load %struct.mlx5dr_rule*, %struct.mlx5dr_rule** %3, align 8
  %6 = getelementptr inbounds %struct.mlx5dr_rule, %struct.mlx5dr_rule* %5, i32 0, i32 2
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %10, align 8
  store %struct.mlx5dr_domain* %11, %struct.mlx5dr_domain** %4, align 8
  %12 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %4, align 8
  %13 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %28 [
    i32 129, label %15
    i32 128, label %20
    i32 130, label %25
  ]

15:                                               ; preds = %1
  %16 = load %struct.mlx5dr_rule*, %struct.mlx5dr_rule** %3, align 8
  %17 = load %struct.mlx5dr_rule*, %struct.mlx5dr_rule** %3, align 8
  %18 = getelementptr inbounds %struct.mlx5dr_rule, %struct.mlx5dr_rule* %17, i32 0, i32 1
  %19 = call i32 @dr_rule_destroy_rule_nic(%struct.mlx5dr_rule* %16, i32* %18)
  br label %31

20:                                               ; preds = %1
  %21 = load %struct.mlx5dr_rule*, %struct.mlx5dr_rule** %3, align 8
  %22 = load %struct.mlx5dr_rule*, %struct.mlx5dr_rule** %3, align 8
  %23 = getelementptr inbounds %struct.mlx5dr_rule, %struct.mlx5dr_rule* %22, i32 0, i32 0
  %24 = call i32 @dr_rule_destroy_rule_nic(%struct.mlx5dr_rule* %21, i32* %23)
  br label %31

25:                                               ; preds = %1
  %26 = load %struct.mlx5dr_rule*, %struct.mlx5dr_rule** %3, align 8
  %27 = call i32 @dr_rule_destroy_rule_fdb(%struct.mlx5dr_rule* %26)
  br label %31

28:                                               ; preds = %1
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %36

31:                                               ; preds = %25, %20, %15
  %32 = load %struct.mlx5dr_rule*, %struct.mlx5dr_rule** %3, align 8
  %33 = call i32 @dr_rule_remove_action_members(%struct.mlx5dr_rule* %32)
  %34 = load %struct.mlx5dr_rule*, %struct.mlx5dr_rule** %3, align 8
  %35 = call i32 @kfree(%struct.mlx5dr_rule* %34)
  store i32 0, i32* %2, align 4
  br label %36

36:                                               ; preds = %31, %28
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i32 @dr_rule_destroy_rule_nic(%struct.mlx5dr_rule*, i32*) #1

declare dso_local i32 @dr_rule_destroy_rule_fdb(%struct.mlx5dr_rule*) #1

declare dso_local i32 @dr_rule_remove_action_members(%struct.mlx5dr_rule*) #1

declare dso_local i32 @kfree(%struct.mlx5dr_rule*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
