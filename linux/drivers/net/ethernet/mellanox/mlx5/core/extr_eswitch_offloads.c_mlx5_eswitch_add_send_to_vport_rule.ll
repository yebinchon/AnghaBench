; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_eswitch_offloads.c_mlx5_eswitch_add_send_to_vport_rule.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_eswitch_offloads.c_mlx5_eswitch_add_send_to_vport_rule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_flow_handle = type { i32 }
%struct.mlx5_eswitch = type { i32, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.mlx5_flow_act = type { i32, i32 }
%struct.mlx5_flow_destination = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.mlx5_flow_spec = type { i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@fte_match_param = common dso_local global i32 0, align 4
@misc_parameters = common dso_local global i32 0, align 4
@fte_match_set_misc = common dso_local global i32 0, align 4
@source_sqn = common dso_local global i32 0, align 4
@source_port = common dso_local global i32 0, align 4
@MLX5_MATCH_MISC_PARAMETERS = common dso_local global i32 0, align 4
@MLX5_FLOW_DESTINATION_TYPE_VPORT = common dso_local global i32 0, align 4
@MLX5_FLOW_CONTEXT_ACTION_FWD_DEST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"FDB: Failed to add send to vport rule err %ld\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mlx5_flow_handle* @mlx5_eswitch_add_send_to_vport_rule(%struct.mlx5_eswitch* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mlx5_eswitch*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlx5_flow_act, align 4
  %8 = alloca %struct.mlx5_flow_destination, align 4
  %9 = alloca %struct.mlx5_flow_handle*, align 8
  %10 = alloca %struct.mlx5_flow_spec*, align 8
  %11 = alloca i8*, align 8
  store %struct.mlx5_eswitch* %0, %struct.mlx5_eswitch** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = bitcast %struct.mlx5_flow_act* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %12, i8 0, i64 8, i1 false)
  %13 = bitcast %struct.mlx5_flow_destination* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %13, i8 0, i64 8, i1 false)
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.mlx5_flow_spec* @kvzalloc(i32 12, i32 %14)
  store %struct.mlx5_flow_spec* %15, %struct.mlx5_flow_spec** %10, align 8
  %16 = load %struct.mlx5_flow_spec*, %struct.mlx5_flow_spec** %10, align 8
  %17 = icmp ne %struct.mlx5_flow_spec* %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  %21 = call %struct.mlx5_flow_handle* @ERR_PTR(i32 %20)
  store %struct.mlx5_flow_handle* %21, %struct.mlx5_flow_handle** %9, align 8
  br label %83

22:                                               ; preds = %3
  %23 = load i32, i32* @fte_match_param, align 4
  %24 = load %struct.mlx5_flow_spec*, %struct.mlx5_flow_spec** %10, align 8
  %25 = getelementptr inbounds %struct.mlx5_flow_spec, %struct.mlx5_flow_spec* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @misc_parameters, align 4
  %28 = call i8* @MLX5_ADDR_OF(i32 %23, i32 %26, i32 %27)
  store i8* %28, i8** %11, align 8
  %29 = load i32, i32* @fte_match_set_misc, align 4
  %30 = load i8*, i8** %11, align 8
  %31 = load i32, i32* @source_sqn, align 4
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @MLX5_SET(i32 %29, i8* %30, i32 %31, i32 %32)
  %34 = load i32, i32* @fte_match_set_misc, align 4
  %35 = load i8*, i8** %11, align 8
  %36 = load i32, i32* @source_port, align 4
  %37 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %4, align 8
  %38 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @MLX5_SET(i32 %34, i8* %35, i32 %36, i32 %39)
  %41 = load i32, i32* @fte_match_param, align 4
  %42 = load %struct.mlx5_flow_spec*, %struct.mlx5_flow_spec** %10, align 8
  %43 = getelementptr inbounds %struct.mlx5_flow_spec, %struct.mlx5_flow_spec* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @misc_parameters, align 4
  %46 = call i8* @MLX5_ADDR_OF(i32 %41, i32 %44, i32 %45)
  store i8* %46, i8** %11, align 8
  %47 = load i32, i32* @fte_match_set_misc, align 4
  %48 = load i8*, i8** %11, align 8
  %49 = load i32, i32* @source_sqn, align 4
  %50 = call i32 @MLX5_SET_TO_ONES(i32 %47, i8* %48, i32 %49)
  %51 = load i32, i32* @fte_match_set_misc, align 4
  %52 = load i8*, i8** %11, align 8
  %53 = load i32, i32* @source_port, align 4
  %54 = call i32 @MLX5_SET_TO_ONES(i32 %51, i8* %52, i32 %53)
  %55 = load i32, i32* @MLX5_MATCH_MISC_PARAMETERS, align 4
  %56 = load %struct.mlx5_flow_spec*, %struct.mlx5_flow_spec** %10, align 8
  %57 = getelementptr inbounds %struct.mlx5_flow_spec, %struct.mlx5_flow_spec* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 4
  %58 = load i32, i32* @MLX5_FLOW_DESTINATION_TYPE_VPORT, align 4
  %59 = getelementptr inbounds %struct.mlx5_flow_destination, %struct.mlx5_flow_destination* %8, i32 0, i32 1
  store i32 %58, i32* %59, align 4
  %60 = load i32, i32* %5, align 4
  %61 = getelementptr inbounds %struct.mlx5_flow_destination, %struct.mlx5_flow_destination* %8, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 4
  %63 = load i32, i32* @MLX5_FLOW_CONTEXT_ACTION_FWD_DEST, align 4
  %64 = getelementptr inbounds %struct.mlx5_flow_act, %struct.mlx5_flow_act* %7, i32 0, i32 0
  store i32 %63, i32* %64, align 4
  %65 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %4, align 8
  %66 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.mlx5_flow_spec*, %struct.mlx5_flow_spec** %10, align 8
  %71 = call %struct.mlx5_flow_handle* @mlx5_add_flow_rules(i32 %69, %struct.mlx5_flow_spec* %70, %struct.mlx5_flow_act* %7, %struct.mlx5_flow_destination* %8, i32 1)
  store %struct.mlx5_flow_handle* %71, %struct.mlx5_flow_handle** %9, align 8
  %72 = load %struct.mlx5_flow_handle*, %struct.mlx5_flow_handle** %9, align 8
  %73 = call i64 @IS_ERR(%struct.mlx5_flow_handle* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %22
  %76 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %4, align 8
  %77 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.mlx5_flow_handle*, %struct.mlx5_flow_handle** %9, align 8
  %80 = call i32 @PTR_ERR(%struct.mlx5_flow_handle* %79)
  %81 = call i32 @esw_warn(i32 %78, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %80)
  br label %82

82:                                               ; preds = %75, %22
  br label %83

83:                                               ; preds = %82, %18
  %84 = load %struct.mlx5_flow_spec*, %struct.mlx5_flow_spec** %10, align 8
  %85 = call i32 @kvfree(%struct.mlx5_flow_spec* %84)
  %86 = load %struct.mlx5_flow_handle*, %struct.mlx5_flow_handle** %9, align 8
  ret %struct.mlx5_flow_handle* %86
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.mlx5_flow_spec* @kvzalloc(i32, i32) #2

declare dso_local %struct.mlx5_flow_handle* @ERR_PTR(i32) #2

declare dso_local i8* @MLX5_ADDR_OF(i32, i32, i32) #2

declare dso_local i32 @MLX5_SET(i32, i8*, i32, i32) #2

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
