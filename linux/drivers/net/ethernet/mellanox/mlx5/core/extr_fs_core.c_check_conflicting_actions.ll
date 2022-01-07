; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_fs_core.c_check_conflicting_actions.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_fs_core.c_check_conflicting_actions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MLX5_FLOW_CONTEXT_ACTION_COUNT = common dso_local global i32 0, align 4
@MLX5_FLOW_CONTEXT_ACTION_DROP = common dso_local global i32 0, align 4
@MLX5_FLOW_CONTEXT_ACTION_PACKET_REFORMAT = common dso_local global i32 0, align 4
@MLX5_FLOW_CONTEXT_ACTION_DECAP = common dso_local global i32 0, align 4
@MLX5_FLOW_CONTEXT_ACTION_MOD_HDR = common dso_local global i32 0, align 4
@MLX5_FLOW_CONTEXT_ACTION_VLAN_POP = common dso_local global i32 0, align 4
@MLX5_FLOW_CONTEXT_ACTION_VLAN_PUSH = common dso_local global i32 0, align 4
@MLX5_FLOW_CONTEXT_ACTION_VLAN_POP_2 = common dso_local global i32 0, align 4
@MLX5_FLOW_CONTEXT_ACTION_VLAN_PUSH_2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @check_conflicting_actions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_conflicting_actions(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* %5, align 4
  %9 = xor i32 %7, %8
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @MLX5_FLOW_CONTEXT_ACTION_COUNT, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %17, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @MLX5_FLOW_CONTEXT_ACTION_COUNT, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %13, %2
  store i32 0, i32* %3, align 4
  br label %39

18:                                               ; preds = %13
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @MLX5_FLOW_CONTEXT_ACTION_DROP, align 4
  %21 = load i32, i32* @MLX5_FLOW_CONTEXT_ACTION_PACKET_REFORMAT, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @MLX5_FLOW_CONTEXT_ACTION_DECAP, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @MLX5_FLOW_CONTEXT_ACTION_MOD_HDR, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @MLX5_FLOW_CONTEXT_ACTION_VLAN_POP, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @MLX5_FLOW_CONTEXT_ACTION_VLAN_PUSH, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @MLX5_FLOW_CONTEXT_ACTION_VLAN_POP_2, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @MLX5_FLOW_CONTEXT_ACTION_VLAN_PUSH_2, align 4
  %34 = or i32 %32, %33
  %35 = and i32 %19, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %18
  store i32 1, i32* %3, align 4
  br label %39

38:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %39

39:                                               ; preds = %38, %37, %17
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
