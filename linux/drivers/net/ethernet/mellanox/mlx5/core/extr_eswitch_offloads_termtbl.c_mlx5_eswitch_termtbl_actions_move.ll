; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_eswitch_offloads_termtbl.c_mlx5_eswitch_termtbl_actions_move.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_eswitch_offloads_termtbl.c_mlx5_eswitch_termtbl_actions_move.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_flow_act = type { i32, i32* }

@MLX5_FLOW_CONTEXT_ACTION_VLAN_PUSH = common dso_local global i32 0, align 4
@MLX5_FLOW_CONTEXT_ACTION_VLAN_PUSH_2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5_flow_act*, %struct.mlx5_flow_act*)* @mlx5_eswitch_termtbl_actions_move to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5_eswitch_termtbl_actions_move(%struct.mlx5_flow_act* %0, %struct.mlx5_flow_act* %1) #0 {
  %3 = alloca %struct.mlx5_flow_act*, align 8
  %4 = alloca %struct.mlx5_flow_act*, align 8
  store %struct.mlx5_flow_act* %0, %struct.mlx5_flow_act** %3, align 8
  store %struct.mlx5_flow_act* %1, %struct.mlx5_flow_act** %4, align 8
  %5 = load %struct.mlx5_flow_act*, %struct.mlx5_flow_act** %3, align 8
  %6 = getelementptr inbounds %struct.mlx5_flow_act, %struct.mlx5_flow_act* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @MLX5_FLOW_CONTEXT_ACTION_VLAN_PUSH, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  br label %71

12:                                               ; preds = %2
  %13 = load i32, i32* @MLX5_FLOW_CONTEXT_ACTION_VLAN_PUSH, align 4
  %14 = xor i32 %13, -1
  %15 = load %struct.mlx5_flow_act*, %struct.mlx5_flow_act** %3, align 8
  %16 = getelementptr inbounds %struct.mlx5_flow_act, %struct.mlx5_flow_act* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = and i32 %17, %14
  store i32 %18, i32* %16, align 8
  %19 = load i32, i32* @MLX5_FLOW_CONTEXT_ACTION_VLAN_PUSH, align 4
  %20 = load %struct.mlx5_flow_act*, %struct.mlx5_flow_act** %4, align 8
  %21 = getelementptr inbounds %struct.mlx5_flow_act, %struct.mlx5_flow_act* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = or i32 %22, %19
  store i32 %23, i32* %21, align 8
  %24 = load %struct.mlx5_flow_act*, %struct.mlx5_flow_act** %4, align 8
  %25 = getelementptr inbounds %struct.mlx5_flow_act, %struct.mlx5_flow_act* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load %struct.mlx5_flow_act*, %struct.mlx5_flow_act** %3, align 8
  %29 = getelementptr inbounds %struct.mlx5_flow_act, %struct.mlx5_flow_act* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = call i32 @memcpy(i32* %27, i32* %31, i32 4)
  %33 = load %struct.mlx5_flow_act*, %struct.mlx5_flow_act** %3, align 8
  %34 = getelementptr inbounds %struct.mlx5_flow_act, %struct.mlx5_flow_act* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = call i32 @memset(i32* %36, i32 0, i32 4)
  %38 = load %struct.mlx5_flow_act*, %struct.mlx5_flow_act** %3, align 8
  %39 = getelementptr inbounds %struct.mlx5_flow_act, %struct.mlx5_flow_act* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @MLX5_FLOW_CONTEXT_ACTION_VLAN_PUSH_2, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %12
  br label %71

45:                                               ; preds = %12
  %46 = load i32, i32* @MLX5_FLOW_CONTEXT_ACTION_VLAN_PUSH_2, align 4
  %47 = xor i32 %46, -1
  %48 = load %struct.mlx5_flow_act*, %struct.mlx5_flow_act** %3, align 8
  %49 = getelementptr inbounds %struct.mlx5_flow_act, %struct.mlx5_flow_act* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = and i32 %50, %47
  store i32 %51, i32* %49, align 8
  %52 = load i32, i32* @MLX5_FLOW_CONTEXT_ACTION_VLAN_PUSH_2, align 4
  %53 = load %struct.mlx5_flow_act*, %struct.mlx5_flow_act** %4, align 8
  %54 = getelementptr inbounds %struct.mlx5_flow_act, %struct.mlx5_flow_act* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = or i32 %55, %52
  store i32 %56, i32* %54, align 8
  %57 = load %struct.mlx5_flow_act*, %struct.mlx5_flow_act** %4, align 8
  %58 = getelementptr inbounds %struct.mlx5_flow_act, %struct.mlx5_flow_act* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 1
  %61 = load %struct.mlx5_flow_act*, %struct.mlx5_flow_act** %3, align 8
  %62 = getelementptr inbounds %struct.mlx5_flow_act, %struct.mlx5_flow_act* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 1
  %65 = call i32 @memcpy(i32* %60, i32* %64, i32 4)
  %66 = load %struct.mlx5_flow_act*, %struct.mlx5_flow_act** %3, align 8
  %67 = getelementptr inbounds %struct.mlx5_flow_act, %struct.mlx5_flow_act* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 1
  %70 = call i32 @memset(i32* %69, i32 0, i32 4)
  br label %71

71:                                               ; preds = %45, %44, %11
  ret void
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
