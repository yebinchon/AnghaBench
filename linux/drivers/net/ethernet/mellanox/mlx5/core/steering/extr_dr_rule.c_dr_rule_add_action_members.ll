; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_rule.c_dr_rule_add_action_members.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_rule.c_dr_rule_add_action_members.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5dr_rule = type { i32 }
%struct.mlx5dr_action = type { i32 }
%struct.mlx5dr_rule_action_member = type { %struct.mlx5dr_action*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5dr_rule*, i64, %struct.mlx5dr_action**)* @dr_rule_add_action_members to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dr_rule_add_action_members(%struct.mlx5dr_rule* %0, i64 %1, %struct.mlx5dr_action** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx5dr_rule*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.mlx5dr_action**, align 8
  %8 = alloca %struct.mlx5dr_rule_action_member*, align 8
  %9 = alloca i32, align 4
  store %struct.mlx5dr_rule* %0, %struct.mlx5dr_rule** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.mlx5dr_action** %2, %struct.mlx5dr_action*** %7, align 8
  store i32 0, i32* %9, align 4
  br label %10

10:                                               ; preds = %42, %3
  %11 = load i32, i32* %9, align 4
  %12 = sext i32 %11 to i64
  %13 = load i64, i64* %6, align 8
  %14 = icmp ult i64 %12, %13
  br i1 %14, label %15, label %45

15:                                               ; preds = %10
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.mlx5dr_rule_action_member* @kvzalloc(i32 16, i32 %16)
  store %struct.mlx5dr_rule_action_member* %17, %struct.mlx5dr_rule_action_member** %8, align 8
  %18 = load %struct.mlx5dr_rule_action_member*, %struct.mlx5dr_rule_action_member** %8, align 8
  %19 = icmp ne %struct.mlx5dr_rule_action_member* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %15
  br label %46

21:                                               ; preds = %15
  %22 = load %struct.mlx5dr_action**, %struct.mlx5dr_action*** %7, align 8
  %23 = load i32, i32* %9, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.mlx5dr_action*, %struct.mlx5dr_action** %22, i64 %24
  %26 = load %struct.mlx5dr_action*, %struct.mlx5dr_action** %25, align 8
  %27 = load %struct.mlx5dr_rule_action_member*, %struct.mlx5dr_rule_action_member** %8, align 8
  %28 = getelementptr inbounds %struct.mlx5dr_rule_action_member, %struct.mlx5dr_rule_action_member* %27, i32 0, i32 0
  store %struct.mlx5dr_action* %26, %struct.mlx5dr_action** %28, align 8
  %29 = load %struct.mlx5dr_rule_action_member*, %struct.mlx5dr_rule_action_member** %8, align 8
  %30 = getelementptr inbounds %struct.mlx5dr_rule_action_member, %struct.mlx5dr_rule_action_member* %29, i32 0, i32 1
  %31 = call i32 @INIT_LIST_HEAD(i32* %30)
  %32 = load %struct.mlx5dr_rule_action_member*, %struct.mlx5dr_rule_action_member** %8, align 8
  %33 = getelementptr inbounds %struct.mlx5dr_rule_action_member, %struct.mlx5dr_rule_action_member* %32, i32 0, i32 1
  %34 = load %struct.mlx5dr_rule*, %struct.mlx5dr_rule** %5, align 8
  %35 = getelementptr inbounds %struct.mlx5dr_rule, %struct.mlx5dr_rule* %34, i32 0, i32 0
  %36 = call i32 @list_add_tail(i32* %33, i32* %35)
  %37 = load %struct.mlx5dr_rule_action_member*, %struct.mlx5dr_rule_action_member** %8, align 8
  %38 = getelementptr inbounds %struct.mlx5dr_rule_action_member, %struct.mlx5dr_rule_action_member* %37, i32 0, i32 0
  %39 = load %struct.mlx5dr_action*, %struct.mlx5dr_action** %38, align 8
  %40 = getelementptr inbounds %struct.mlx5dr_action, %struct.mlx5dr_action* %39, i32 0, i32 0
  %41 = call i32 @refcount_inc(i32* %40)
  br label %42

42:                                               ; preds = %21
  %43 = load i32, i32* %9, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %9, align 4
  br label %10

45:                                               ; preds = %10
  store i32 0, i32* %4, align 4
  br label %51

46:                                               ; preds = %20
  %47 = load %struct.mlx5dr_rule*, %struct.mlx5dr_rule** %5, align 8
  %48 = call i32 @dr_rule_remove_action_members(%struct.mlx5dr_rule* %47)
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %4, align 4
  br label %51

51:                                               ; preds = %46, %45
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local %struct.mlx5dr_rule_action_member* @kvzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @refcount_inc(i32*) #1

declare dso_local i32 @dr_rule_remove_action_members(%struct.mlx5dr_rule*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
