; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_eswitch_offloads.c_mlx5_eswitch_create_vport_rx_rule.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_eswitch_offloads.c_mlx5_eswitch_create_vport_rx_rule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_flow_handle = type { i32 }
%struct.mlx5_eswitch = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.mlx5_flow_destination = type { i32 }
%struct.mlx5_flow_act = type { i32, i32 }
%struct.mlx5_flow_spec = type { i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@fte_match_param = common dso_local global i32 0, align 4
@misc_parameters_2 = common dso_local global i32 0, align 4
@fte_match_set_misc2 = common dso_local global i32 0, align 4
@metadata_reg_c_0 = common dso_local global i32 0, align 4
@MLX5_MATCH_MISC_PARAMETERS_2 = common dso_local global i32 0, align 4
@misc_parameters = common dso_local global i32 0, align 4
@fte_match_set_misc = common dso_local global i32 0, align 4
@source_port = common dso_local global i32 0, align 4
@MLX5_MATCH_MISC_PARAMETERS = common dso_local global i32 0, align 4
@MLX5_FLOW_CONTEXT_ACTION_FWD_DEST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"fs offloads: Failed to add vport rx rule err %ld\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mlx5_flow_handle* @mlx5_eswitch_create_vport_rx_rule(%struct.mlx5_eswitch* %0, i32 %1, %struct.mlx5_flow_destination* %2) #0 {
  %4 = alloca %struct.mlx5_eswitch*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx5_flow_destination*, align 8
  %7 = alloca %struct.mlx5_flow_act, align 4
  %8 = alloca %struct.mlx5_flow_handle*, align 8
  %9 = alloca %struct.mlx5_flow_spec*, align 8
  %10 = alloca i8*, align 8
  store %struct.mlx5_eswitch* %0, %struct.mlx5_eswitch** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.mlx5_flow_destination* %2, %struct.mlx5_flow_destination** %6, align 8
  %11 = bitcast %struct.mlx5_flow_act* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %11, i8 0, i64 8, i1 false)
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.mlx5_flow_spec* @kvzalloc(i32 12, i32 %12)
  store %struct.mlx5_flow_spec* %13, %struct.mlx5_flow_spec** %9, align 8
  %14 = load %struct.mlx5_flow_spec*, %struct.mlx5_flow_spec** %9, align 8
  %15 = icmp ne %struct.mlx5_flow_spec* %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  %19 = call %struct.mlx5_flow_handle* @ERR_PTR(i32 %18)
  store %struct.mlx5_flow_handle* %19, %struct.mlx5_flow_handle** %8, align 8
  br label %97

20:                                               ; preds = %3
  %21 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %4, align 8
  %22 = call i64 @mlx5_eswitch_vport_match_metadata_enabled(%struct.mlx5_eswitch* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %51

24:                                               ; preds = %20
  %25 = load i32, i32* @fte_match_param, align 4
  %26 = load %struct.mlx5_flow_spec*, %struct.mlx5_flow_spec** %9, align 8
  %27 = getelementptr inbounds %struct.mlx5_flow_spec, %struct.mlx5_flow_spec* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @misc_parameters_2, align 4
  %30 = call i8* @MLX5_ADDR_OF(i32 %25, i32 %28, i32 %29)
  store i8* %30, i8** %10, align 8
  %31 = load i32, i32* @fte_match_set_misc2, align 4
  %32 = load i8*, i8** %10, align 8
  %33 = load i32, i32* @metadata_reg_c_0, align 4
  %34 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %4, align 8
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @mlx5_eswitch_get_vport_metadata_for_match(%struct.mlx5_eswitch* %34, i32 %35)
  %37 = call i32 @MLX5_SET(i32 %31, i8* %32, i32 %33, i32 %36)
  %38 = load i32, i32* @fte_match_param, align 4
  %39 = load %struct.mlx5_flow_spec*, %struct.mlx5_flow_spec** %9, align 8
  %40 = getelementptr inbounds %struct.mlx5_flow_spec, %struct.mlx5_flow_spec* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @misc_parameters_2, align 4
  %43 = call i8* @MLX5_ADDR_OF(i32 %38, i32 %41, i32 %42)
  store i8* %43, i8** %10, align 8
  %44 = load i32, i32* @fte_match_set_misc2, align 4
  %45 = load i8*, i8** %10, align 8
  %46 = load i32, i32* @metadata_reg_c_0, align 4
  %47 = call i32 @MLX5_SET_TO_ONES(i32 %44, i8* %45, i32 %46)
  %48 = load i32, i32* @MLX5_MATCH_MISC_PARAMETERS_2, align 4
  %49 = load %struct.mlx5_flow_spec*, %struct.mlx5_flow_spec** %9, align 8
  %50 = getelementptr inbounds %struct.mlx5_flow_spec, %struct.mlx5_flow_spec* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 4
  br label %76

51:                                               ; preds = %20
  %52 = load i32, i32* @fte_match_param, align 4
  %53 = load %struct.mlx5_flow_spec*, %struct.mlx5_flow_spec** %9, align 8
  %54 = getelementptr inbounds %struct.mlx5_flow_spec, %struct.mlx5_flow_spec* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @misc_parameters, align 4
  %57 = call i8* @MLX5_ADDR_OF(i32 %52, i32 %55, i32 %56)
  store i8* %57, i8** %10, align 8
  %58 = load i32, i32* @fte_match_set_misc, align 4
  %59 = load i8*, i8** %10, align 8
  %60 = load i32, i32* @source_port, align 4
  %61 = load i32, i32* %5, align 4
  %62 = call i32 @MLX5_SET(i32 %58, i8* %59, i32 %60, i32 %61)
  %63 = load i32, i32* @fte_match_param, align 4
  %64 = load %struct.mlx5_flow_spec*, %struct.mlx5_flow_spec** %9, align 8
  %65 = getelementptr inbounds %struct.mlx5_flow_spec, %struct.mlx5_flow_spec* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @misc_parameters, align 4
  %68 = call i8* @MLX5_ADDR_OF(i32 %63, i32 %66, i32 %67)
  store i8* %68, i8** %10, align 8
  %69 = load i32, i32* @fte_match_set_misc, align 4
  %70 = load i8*, i8** %10, align 8
  %71 = load i32, i32* @source_port, align 4
  %72 = call i32 @MLX5_SET_TO_ONES(i32 %69, i8* %70, i32 %71)
  %73 = load i32, i32* @MLX5_MATCH_MISC_PARAMETERS, align 4
  %74 = load %struct.mlx5_flow_spec*, %struct.mlx5_flow_spec** %9, align 8
  %75 = getelementptr inbounds %struct.mlx5_flow_spec, %struct.mlx5_flow_spec* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 4
  br label %76

76:                                               ; preds = %51, %24
  %77 = load i32, i32* @MLX5_FLOW_CONTEXT_ACTION_FWD_DEST, align 4
  %78 = getelementptr inbounds %struct.mlx5_flow_act, %struct.mlx5_flow_act* %7, i32 0, i32 0
  store i32 %77, i32* %78, align 4
  %79 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %4, align 8
  %80 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.mlx5_flow_spec*, %struct.mlx5_flow_spec** %9, align 8
  %84 = load %struct.mlx5_flow_destination*, %struct.mlx5_flow_destination** %6, align 8
  %85 = call %struct.mlx5_flow_handle* @mlx5_add_flow_rules(i32 %82, %struct.mlx5_flow_spec* %83, %struct.mlx5_flow_act* %7, %struct.mlx5_flow_destination* %84, i32 1)
  store %struct.mlx5_flow_handle* %85, %struct.mlx5_flow_handle** %8, align 8
  %86 = load %struct.mlx5_flow_handle*, %struct.mlx5_flow_handle** %8, align 8
  %87 = call i64 @IS_ERR(%struct.mlx5_flow_handle* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %96

89:                                               ; preds = %76
  %90 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %4, align 8
  %91 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.mlx5_flow_handle*, %struct.mlx5_flow_handle** %8, align 8
  %94 = call i32 @PTR_ERR(%struct.mlx5_flow_handle* %93)
  %95 = call i32 @esw_warn(i32 %92, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %94)
  br label %97

96:                                               ; preds = %76
  br label %97

97:                                               ; preds = %96, %89, %16
  %98 = load %struct.mlx5_flow_spec*, %struct.mlx5_flow_spec** %9, align 8
  %99 = call i32 @kvfree(%struct.mlx5_flow_spec* %98)
  %100 = load %struct.mlx5_flow_handle*, %struct.mlx5_flow_handle** %8, align 8
  ret %struct.mlx5_flow_handle* %100
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.mlx5_flow_spec* @kvzalloc(i32, i32) #2

declare dso_local %struct.mlx5_flow_handle* @ERR_PTR(i32) #2

declare dso_local i64 @mlx5_eswitch_vport_match_metadata_enabled(%struct.mlx5_eswitch*) #2

declare dso_local i8* @MLX5_ADDR_OF(i32, i32, i32) #2

declare dso_local i32 @MLX5_SET(i32, i8*, i32, i32) #2

declare dso_local i32 @mlx5_eswitch_get_vport_metadata_for_match(%struct.mlx5_eswitch*, i32) #2

declare dso_local i32 @MLX5_SET_TO_ONES(i32, i8*, i32) #2

declare dso_local %struct.mlx5_flow_handle* @mlx5_add_flow_rules(i32, %struct.mlx5_flow_spec*, %struct.mlx5_flow_act*, %struct.mlx5_flow_destination*, i32) #2

declare dso_local i64 @IS_ERR(%struct.mlx5_flow_handle*) #2

declare dso_local i32 @esw_warn(i32, i8*, i32) #2

declare dso_local i32 @PTR_ERR(%struct.mlx5_flow_handle*) #2

declare dso_local i32 @kvfree(%struct.mlx5_flow_spec*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
