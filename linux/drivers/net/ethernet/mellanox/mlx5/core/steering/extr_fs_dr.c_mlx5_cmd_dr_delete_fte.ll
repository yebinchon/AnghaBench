; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_fs_dr.c_mlx5_cmd_dr_delete_fte.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_fs_dr.c_mlx5_cmd_dr_delete_fte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_flow_root_namespace = type { i32 }
%struct.mlx5_flow_table = type { i32 }
%struct.fs_fte = type { %struct.mlx5_fs_dr_rule }
%struct.mlx5_fs_dr_rule = type { i32, i32*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_table*, %struct.fs_fte*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_table*, %struct.fs_fte*)* @mlx5_cmd_dr_delete_fte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5_cmd_dr_delete_fte(%struct.mlx5_flow_root_namespace* %0, %struct.mlx5_flow_table* %1, %struct.fs_fte* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx5_flow_root_namespace*, align 8
  %6 = alloca %struct.mlx5_flow_table*, align 8
  %7 = alloca %struct.fs_fte*, align 8
  %8 = alloca %struct.mlx5_fs_dr_rule*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.mlx5_flow_root_namespace* %0, %struct.mlx5_flow_root_namespace** %5, align 8
  store %struct.mlx5_flow_table* %1, %struct.mlx5_flow_table** %6, align 8
  store %struct.fs_fte* %2, %struct.fs_fte** %7, align 8
  %11 = load %struct.fs_fte*, %struct.fs_fte** %7, align 8
  %12 = getelementptr inbounds %struct.fs_fte, %struct.fs_fte* %11, i32 0, i32 0
  store %struct.mlx5_fs_dr_rule* %12, %struct.mlx5_fs_dr_rule** %8, align 8
  %13 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %6, align 8
  %14 = getelementptr inbounds %struct.mlx5_flow_table, %struct.mlx5_flow_table* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @mlx5_dr_is_fw_table(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %3
  %19 = call %struct.TYPE_2__* (...) @mlx5_fs_cmd_get_fw_cmds()
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32 (%struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_table*, %struct.fs_fte*)*, i32 (%struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_table*, %struct.fs_fte*)** %20, align 8
  %22 = load %struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_root_namespace** %5, align 8
  %23 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %6, align 8
  %24 = load %struct.fs_fte*, %struct.fs_fte** %7, align 8
  %25 = call i32 %21(%struct.mlx5_flow_root_namespace* %22, %struct.mlx5_flow_table* %23, %struct.fs_fte* %24)
  store i32 %25, i32* %4, align 4
  br label %70

26:                                               ; preds = %3
  %27 = load %struct.mlx5_fs_dr_rule*, %struct.mlx5_fs_dr_rule** %8, align 8
  %28 = getelementptr inbounds %struct.mlx5_fs_dr_rule, %struct.mlx5_fs_dr_rule* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @mlx5dr_rule_destroy(i32 %29)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %26
  %34 = load i32, i32* %9, align 4
  store i32 %34, i32* %4, align 4
  br label %70

35:                                               ; preds = %26
  store i32 0, i32* %10, align 4
  br label %36

36:                                               ; preds = %62, %35
  %37 = load i32, i32* %10, align 4
  %38 = load %struct.mlx5_fs_dr_rule*, %struct.mlx5_fs_dr_rule** %8, align 8
  %39 = getelementptr inbounds %struct.mlx5_fs_dr_rule, %struct.mlx5_fs_dr_rule* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp slt i32 %37, %40
  br i1 %41, label %42, label %65

42:                                               ; preds = %36
  %43 = load %struct.mlx5_fs_dr_rule*, %struct.mlx5_fs_dr_rule** %8, align 8
  %44 = getelementptr inbounds %struct.mlx5_fs_dr_rule, %struct.mlx5_fs_dr_rule* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %10, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @IS_ERR_OR_NULL(i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %61, label %52

52:                                               ; preds = %42
  %53 = load %struct.mlx5_fs_dr_rule*, %struct.mlx5_fs_dr_rule** %8, align 8
  %54 = getelementptr inbounds %struct.mlx5_fs_dr_rule, %struct.mlx5_fs_dr_rule* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %10, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @mlx5dr_action_destroy(i32 %59)
  br label %61

61:                                               ; preds = %52, %42
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %10, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %10, align 4
  br label %36

65:                                               ; preds = %36
  %66 = load %struct.mlx5_fs_dr_rule*, %struct.mlx5_fs_dr_rule** %8, align 8
  %67 = getelementptr inbounds %struct.mlx5_fs_dr_rule, %struct.mlx5_fs_dr_rule* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = call i32 @kfree(i32* %68)
  store i32 0, i32* %4, align 4
  br label %70

70:                                               ; preds = %65, %33, %18
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

declare dso_local i64 @mlx5_dr_is_fw_table(i32) #1

declare dso_local %struct.TYPE_2__* @mlx5_fs_cmd_get_fw_cmds(...) #1

declare dso_local i32 @mlx5dr_rule_destroy(i32) #1

declare dso_local i32 @IS_ERR_OR_NULL(i32) #1

declare dso_local i32 @mlx5dr_action_destroy(i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
