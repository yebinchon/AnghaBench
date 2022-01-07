; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_eswitch_offloads_termtbl.c_mlx5_eswitch_termtbl_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_eswitch_offloads_termtbl.c_mlx5_eswitch_termtbl_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_flow_spec = type { i32 }
%struct.mlx5_core_dev = type { i32 }
%struct.mlx5_termtbl_handle = type { i32, i32, i32 }
%struct.mlx5_flow_act = type { i32 }
%struct.mlx5_flow_namespace = type { i32 }

@mlx5_eswitch_termtbl_create.spec = internal constant %struct.mlx5_flow_spec zeroinitializer, align 4
@MLX5_FLOW_NAMESPACE_FDB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Failed to get FDB flow namespace\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@FDB_SLOW_PATH = common dso_local global i32 0, align 4
@MLX5_FLOW_TABLE_TERMINATION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Failed to create termination table\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"Failed to create termination table rule\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"Failed to destroy termination table\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_core_dev*, %struct.mlx5_termtbl_handle*, %struct.mlx5_flow_act*)* @mlx5_eswitch_termtbl_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5_eswitch_termtbl_create(%struct.mlx5_core_dev* %0, %struct.mlx5_termtbl_handle* %1, %struct.mlx5_flow_act* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx5_core_dev*, align 8
  %6 = alloca %struct.mlx5_termtbl_handle*, align 8
  %7 = alloca %struct.mlx5_flow_act*, align 8
  %8 = alloca %struct.mlx5_flow_namespace*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %5, align 8
  store %struct.mlx5_termtbl_handle* %1, %struct.mlx5_termtbl_handle** %6, align 8
  store %struct.mlx5_flow_act* %2, %struct.mlx5_flow_act** %7, align 8
  %12 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %13 = load i32, i32* @MLX5_FLOW_NAMESPACE_FDB, align 4
  %14 = call %struct.mlx5_flow_namespace* @mlx5_get_flow_namespace(%struct.mlx5_core_dev* %12, i32 %13)
  store %struct.mlx5_flow_namespace* %14, %struct.mlx5_flow_namespace** %8, align 8
  %15 = load %struct.mlx5_flow_namespace*, %struct.mlx5_flow_namespace** %8, align 8
  %16 = icmp ne %struct.mlx5_flow_namespace* %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %3
  %18 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %19 = call i32 @esw_warn(%struct.mlx5_core_dev* %18, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @EOPNOTSUPP, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %73

22:                                               ; preds = %3
  %23 = load i32, i32* @FDB_SLOW_PATH, align 4
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* @MLX5_FLOW_TABLE_TERMINATION, align 4
  store i32 %24, i32* %10, align 4
  %25 = load %struct.mlx5_flow_namespace*, %struct.mlx5_flow_namespace** %8, align 8
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* %10, align 4
  %28 = call i32 @mlx5_create_auto_grouped_flow_table(%struct.mlx5_flow_namespace* %25, i32 %26, i32 1, i32 1, i32 0, i32 %27)
  %29 = load %struct.mlx5_termtbl_handle*, %struct.mlx5_termtbl_handle** %6, align 8
  %30 = getelementptr inbounds %struct.mlx5_termtbl_handle, %struct.mlx5_termtbl_handle* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  %31 = load %struct.mlx5_termtbl_handle*, %struct.mlx5_termtbl_handle** %6, align 8
  %32 = getelementptr inbounds %struct.mlx5_termtbl_handle, %struct.mlx5_termtbl_handle* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @IS_ERR(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %22
  %37 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %38 = call i32 @esw_warn(%struct.mlx5_core_dev* %37, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %39 = load i32, i32* @EOPNOTSUPP, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %73

41:                                               ; preds = %22
  %42 = load %struct.mlx5_termtbl_handle*, %struct.mlx5_termtbl_handle** %6, align 8
  %43 = getelementptr inbounds %struct.mlx5_termtbl_handle, %struct.mlx5_termtbl_handle* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.mlx5_flow_act*, %struct.mlx5_flow_act** %7, align 8
  %46 = load %struct.mlx5_termtbl_handle*, %struct.mlx5_termtbl_handle** %6, align 8
  %47 = getelementptr inbounds %struct.mlx5_termtbl_handle, %struct.mlx5_termtbl_handle* %46, i32 0, i32 2
  %48 = call i32 @mlx5_add_flow_rules(i32 %44, %struct.mlx5_flow_spec* @mlx5_eswitch_termtbl_create.spec, %struct.mlx5_flow_act* %45, i32* %47, i32 1)
  %49 = load %struct.mlx5_termtbl_handle*, %struct.mlx5_termtbl_handle** %6, align 8
  %50 = getelementptr inbounds %struct.mlx5_termtbl_handle, %struct.mlx5_termtbl_handle* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  %51 = load %struct.mlx5_termtbl_handle*, %struct.mlx5_termtbl_handle** %6, align 8
  %52 = getelementptr inbounds %struct.mlx5_termtbl_handle, %struct.mlx5_termtbl_handle* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @IS_ERR(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %41
  %57 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %58 = call i32 @esw_warn(%struct.mlx5_core_dev* %57, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  br label %60

59:                                               ; preds = %41
  store i32 0, i32* %4, align 4
  br label %73

60:                                               ; preds = %56
  %61 = load %struct.mlx5_termtbl_handle*, %struct.mlx5_termtbl_handle** %6, align 8
  %62 = getelementptr inbounds %struct.mlx5_termtbl_handle, %struct.mlx5_termtbl_handle* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @mlx5_destroy_flow_table(i32 %63)
  store i32 %64, i32* %11, align 4
  %65 = load i32, i32* %11, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %60
  %68 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %69 = call i32 @esw_warn(%struct.mlx5_core_dev* %68, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  br label %70

70:                                               ; preds = %67, %60
  %71 = load i32, i32* @EOPNOTSUPP, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %4, align 4
  br label %73

73:                                               ; preds = %70, %59, %36, %17
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

declare dso_local %struct.mlx5_flow_namespace* @mlx5_get_flow_namespace(%struct.mlx5_core_dev*, i32) #1

declare dso_local i32 @esw_warn(%struct.mlx5_core_dev*, i8*) #1

declare dso_local i32 @mlx5_create_auto_grouped_flow_table(%struct.mlx5_flow_namespace*, i32, i32, i32, i32, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @mlx5_add_flow_rules(i32, %struct.mlx5_flow_spec*, %struct.mlx5_flow_act*, i32*, i32) #1

declare dso_local i32 @mlx5_destroy_flow_table(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
