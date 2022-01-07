; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_fs_core.c_mlx5_flow_namespace_set_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_fs_core.c_mlx5_flow_namespace_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_flow_namespace = type { i32 }
%struct.mlx5_flow_root_namespace = type { i64, i32, %struct.mlx5_flow_cmds*, i32, %struct.mlx5_flow_namespace }
%struct.mlx5_flow_cmds = type { i32 (%struct.mlx5_flow_root_namespace*)*, i32 (%struct.mlx5_flow_root_namespace*)* }

@EINVAL = common dso_local global i32 0, align 4
@FS_FT_FDB = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@MLX5_FLOW_STEERING_MODE_SMFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Failed to create flow namespace (%d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_flow_namespace_set_mode(%struct.mlx5_flow_namespace* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx5_flow_namespace*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx5_flow_root_namespace*, align 8
  %7 = alloca %struct.mlx5_flow_cmds*, align 8
  %8 = alloca i32, align 4
  store %struct.mlx5_flow_namespace* %0, %struct.mlx5_flow_namespace** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.mlx5_flow_namespace*, %struct.mlx5_flow_namespace** %4, align 8
  %10 = getelementptr inbounds %struct.mlx5_flow_namespace, %struct.mlx5_flow_namespace* %9, i32 0, i32 0
  %11 = call %struct.mlx5_flow_root_namespace* @find_root(i32* %10)
  store %struct.mlx5_flow_root_namespace* %11, %struct.mlx5_flow_root_namespace** %6, align 8
  %12 = load %struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_root_namespace** %6, align 8
  %13 = getelementptr inbounds %struct.mlx5_flow_root_namespace, %struct.mlx5_flow_root_namespace* %12, i32 0, i32 4
  %14 = load %struct.mlx5_flow_namespace*, %struct.mlx5_flow_namespace** %4, align 8
  %15 = icmp ne %struct.mlx5_flow_namespace* %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %78

19:                                               ; preds = %2
  %20 = load %struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_root_namespace** %6, align 8
  %21 = getelementptr inbounds %struct.mlx5_flow_root_namespace, %struct.mlx5_flow_root_namespace* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @FS_FT_FDB, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  %26 = load i32, i32* @EOPNOTSUPP, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %78

28:                                               ; preds = %19
  %29 = load %struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_root_namespace** %6, align 8
  %30 = getelementptr inbounds %struct.mlx5_flow_root_namespace, %struct.mlx5_flow_root_namespace* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* %5, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  store i32 0, i32* %3, align 4
  br label %78

35:                                               ; preds = %28
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @MLX5_FLOW_STEERING_MODE_SMFS, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = call %struct.mlx5_flow_cmds* (...) @mlx5_fs_cmd_get_dr_cmds()
  store %struct.mlx5_flow_cmds* %40, %struct.mlx5_flow_cmds** %7, align 8
  br label %43

41:                                               ; preds = %35
  %42 = call %struct.mlx5_flow_cmds* (...) @mlx5_fs_cmd_get_fw_cmds()
  store %struct.mlx5_flow_cmds* %42, %struct.mlx5_flow_cmds** %7, align 8
  br label %43

43:                                               ; preds = %41, %39
  %44 = load %struct.mlx5_flow_cmds*, %struct.mlx5_flow_cmds** %7, align 8
  %45 = icmp ne %struct.mlx5_flow_cmds* %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %43
  %47 = load i32, i32* @EOPNOTSUPP, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %78

49:                                               ; preds = %43
  %50 = load %struct.mlx5_flow_cmds*, %struct.mlx5_flow_cmds** %7, align 8
  %51 = getelementptr inbounds %struct.mlx5_flow_cmds, %struct.mlx5_flow_cmds* %50, i32 0, i32 0
  %52 = load i32 (%struct.mlx5_flow_root_namespace*)*, i32 (%struct.mlx5_flow_root_namespace*)** %51, align 8
  %53 = load %struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_root_namespace** %6, align 8
  %54 = call i32 %52(%struct.mlx5_flow_root_namespace* %53)
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %49
  %58 = load %struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_root_namespace** %6, align 8
  %59 = getelementptr inbounds %struct.mlx5_flow_root_namespace, %struct.mlx5_flow_root_namespace* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* %8, align 4
  %62 = call i32 @mlx5_core_err(i32 %60, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %61)
  %63 = load i32, i32* %8, align 4
  store i32 %63, i32* %3, align 4
  br label %78

64:                                               ; preds = %49
  %65 = load %struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_root_namespace** %6, align 8
  %66 = getelementptr inbounds %struct.mlx5_flow_root_namespace, %struct.mlx5_flow_root_namespace* %65, i32 0, i32 2
  %67 = load %struct.mlx5_flow_cmds*, %struct.mlx5_flow_cmds** %66, align 8
  %68 = getelementptr inbounds %struct.mlx5_flow_cmds, %struct.mlx5_flow_cmds* %67, i32 0, i32 1
  %69 = load i32 (%struct.mlx5_flow_root_namespace*)*, i32 (%struct.mlx5_flow_root_namespace*)** %68, align 8
  %70 = load %struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_root_namespace** %6, align 8
  %71 = call i32 %69(%struct.mlx5_flow_root_namespace* %70)
  %72 = load %struct.mlx5_flow_cmds*, %struct.mlx5_flow_cmds** %7, align 8
  %73 = load %struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_root_namespace** %6, align 8
  %74 = getelementptr inbounds %struct.mlx5_flow_root_namespace, %struct.mlx5_flow_root_namespace* %73, i32 0, i32 2
  store %struct.mlx5_flow_cmds* %72, %struct.mlx5_flow_cmds** %74, align 8
  %75 = load i32, i32* %5, align 4
  %76 = load %struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_root_namespace** %6, align 8
  %77 = getelementptr inbounds %struct.mlx5_flow_root_namespace, %struct.mlx5_flow_root_namespace* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 8
  store i32 0, i32* %3, align 4
  br label %78

78:                                               ; preds = %64, %57, %46, %34, %25, %16
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local %struct.mlx5_flow_root_namespace* @find_root(i32*) #1

declare dso_local %struct.mlx5_flow_cmds* @mlx5_fs_cmd_get_dr_cmds(...) #1

declare dso_local %struct.mlx5_flow_cmds* @mlx5_fs_cmd_get_fw_cmds(...) #1

declare dso_local i32 @mlx5_core_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
