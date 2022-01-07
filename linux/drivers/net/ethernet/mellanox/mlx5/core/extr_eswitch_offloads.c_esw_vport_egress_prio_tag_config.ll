; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_eswitch_offloads.c_esw_vport_egress_prio_tag_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_eswitch_offloads.c_esw_vport_egress_prio_tag_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.mlx5_eswitch = type { i32 }
%struct.mlx5_vport = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32*, i32 }
%struct.mlx5_flow_act = type { i32, i32 }
%struct.mlx5_flow_spec = type { i32, i32, i32 }

@prio_tag_required = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"failed to enable egress acl (%d) on vport[%d]\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"vport[%d] configure prio tag egress rules\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@fte_match_param = common dso_local global i32 0, align 4
@outer_headers = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@MLX5_MATCH_OUTER_HEADERS = common dso_local global i32 0, align 4
@MLX5_FLOW_CONTEXT_ACTION_VLAN_POP = common dso_local global i32 0, align 4
@MLX5_FLOW_CONTEXT_ACTION_ALLOW = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [67 x i8] c"vport[%d] configure egress pop prio tag vlan rule failed, err(%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_eswitch*, %struct.mlx5_vport*)* @esw_vport_egress_prio_tag_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @esw_vport_egress_prio_tag_config(%struct.mlx5_eswitch* %0, %struct.mlx5_vport* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx5_eswitch*, align 8
  %5 = alloca %struct.mlx5_vport*, align 8
  %6 = alloca %struct.mlx5_flow_act, align 4
  %7 = alloca %struct.mlx5_flow_spec*, align 8
  %8 = alloca i32, align 4
  store %struct.mlx5_eswitch* %0, %struct.mlx5_eswitch** %4, align 8
  store %struct.mlx5_vport* %1, %struct.mlx5_vport** %5, align 8
  %9 = bitcast %struct.mlx5_flow_act* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %9, i8 0, i64 8, i1 false)
  store i32 0, i32* %8, align 4
  %10 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %4, align 8
  %11 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @prio_tag_required, align 4
  %14 = call i32 @MLX5_CAP_GEN(i32 %12, i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %128

17:                                               ; preds = %2
  %18 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %4, align 8
  %19 = load %struct.mlx5_vport*, %struct.mlx5_vport** %5, align 8
  %20 = call i32 @esw_vport_cleanup_egress_rules(%struct.mlx5_eswitch* %18, %struct.mlx5_vport* %19)
  %21 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %4, align 8
  %22 = load %struct.mlx5_vport*, %struct.mlx5_vport** %5, align 8
  %23 = call i32 @esw_vport_enable_egress_acl(%struct.mlx5_eswitch* %21, %struct.mlx5_vport* %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %17
  %27 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %4, align 8
  %28 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %8, align 4
  %31 = load %struct.mlx5_vport*, %struct.mlx5_vport** %5, align 8
  %32 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @mlx5_core_warn(i32 %29, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %33)
  %35 = load i32, i32* %8, align 4
  store i32 %35, i32* %3, align 4
  br label %128

36:                                               ; preds = %17
  %37 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %4, align 8
  %38 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.mlx5_vport*, %struct.mlx5_vport** %5, align 8
  %41 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @esw_debug(i32 %39, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  %44 = load i32, i32* @GFP_KERNEL, align 4
  %45 = call %struct.mlx5_flow_spec* @kvzalloc(i32 12, i32 %44)
  store %struct.mlx5_flow_spec* %45, %struct.mlx5_flow_spec** %7, align 8
  %46 = load %struct.mlx5_flow_spec*, %struct.mlx5_flow_spec** %7, align 8
  %47 = icmp ne %struct.mlx5_flow_spec* %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %36
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %8, align 4
  br label %119

51:                                               ; preds = %36
  %52 = load i32, i32* @fte_match_param, align 4
  %53 = load %struct.mlx5_flow_spec*, %struct.mlx5_flow_spec** %7, align 8
  %54 = getelementptr inbounds %struct.mlx5_flow_spec, %struct.mlx5_flow_spec* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @outer_headers, i32 0, i32 1), align 4
  %57 = call i32 @MLX5_SET_TO_ONES(i32 %52, i32 %55, i32 %56)
  %58 = load i32, i32* @fte_match_param, align 4
  %59 = load %struct.mlx5_flow_spec*, %struct.mlx5_flow_spec** %7, align 8
  %60 = getelementptr inbounds %struct.mlx5_flow_spec, %struct.mlx5_flow_spec* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @outer_headers, i32 0, i32 1), align 4
  %63 = call i32 @MLX5_SET_TO_ONES(i32 %58, i32 %61, i32 %62)
  %64 = load i32, i32* @fte_match_param, align 4
  %65 = load %struct.mlx5_flow_spec*, %struct.mlx5_flow_spec** %7, align 8
  %66 = getelementptr inbounds %struct.mlx5_flow_spec, %struct.mlx5_flow_spec* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @outer_headers, i32 0, i32 0), align 4
  %69 = call i32 @MLX5_SET_TO_ONES(i32 %64, i32 %67, i32 %68)
  %70 = load i32, i32* @fte_match_param, align 4
  %71 = load %struct.mlx5_flow_spec*, %struct.mlx5_flow_spec** %7, align 8
  %72 = getelementptr inbounds %struct.mlx5_flow_spec, %struct.mlx5_flow_spec* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @outer_headers, i32 0, i32 0), align 4
  %75 = call i32 @MLX5_SET(i32 %70, i32 %73, i32 %74, i32 0)
  %76 = load i32, i32* @MLX5_MATCH_OUTER_HEADERS, align 4
  %77 = load %struct.mlx5_flow_spec*, %struct.mlx5_flow_spec** %7, align 8
  %78 = getelementptr inbounds %struct.mlx5_flow_spec, %struct.mlx5_flow_spec* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 4
  %79 = load i32, i32* @MLX5_FLOW_CONTEXT_ACTION_VLAN_POP, align 4
  %80 = load i32, i32* @MLX5_FLOW_CONTEXT_ACTION_ALLOW, align 4
  %81 = or i32 %79, %80
  %82 = getelementptr inbounds %struct.mlx5_flow_act, %struct.mlx5_flow_act* %6, i32 0, i32 0
  store i32 %81, i32* %82, align 4
  %83 = load %struct.mlx5_vport*, %struct.mlx5_vport** %5, align 8
  %84 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.mlx5_flow_spec*, %struct.mlx5_flow_spec** %7, align 8
  %88 = call i32* @mlx5_add_flow_rules(i32 %86, %struct.mlx5_flow_spec* %87, %struct.mlx5_flow_act* %6, i32* null, i32 0)
  %89 = load %struct.mlx5_vport*, %struct.mlx5_vport** %5, align 8
  %90 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 0
  store i32* %88, i32** %91, align 8
  %92 = load %struct.mlx5_vport*, %struct.mlx5_vport** %5, align 8
  %93 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = call i64 @IS_ERR(i32* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %115

98:                                               ; preds = %51
  %99 = load %struct.mlx5_vport*, %struct.mlx5_vport** %5, align 8
  %100 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = call i32 @PTR_ERR(i32* %102)
  store i32 %103, i32* %8, align 4
  %104 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %4, align 8
  %105 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.mlx5_vport*, %struct.mlx5_vport** %5, align 8
  %108 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* %8, align 4
  %111 = call i32 @esw_warn(i32 %106, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.2, i64 0, i64 0), i32 %109, i32 %110)
  %112 = load %struct.mlx5_vport*, %struct.mlx5_vport** %5, align 8
  %113 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 0
  store i32* null, i32** %114, align 8
  br label %116

115:                                              ; preds = %51
  br label %116

116:                                              ; preds = %115, %98
  %117 = load %struct.mlx5_flow_spec*, %struct.mlx5_flow_spec** %7, align 8
  %118 = call i32 @kvfree(%struct.mlx5_flow_spec* %117)
  br label %119

119:                                              ; preds = %116, %48
  %120 = load i32, i32* %8, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %119
  %123 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %4, align 8
  %124 = load %struct.mlx5_vport*, %struct.mlx5_vport** %5, align 8
  %125 = call i32 @esw_vport_cleanup_egress_rules(%struct.mlx5_eswitch* %123, %struct.mlx5_vport* %124)
  br label %126

126:                                              ; preds = %122, %119
  %127 = load i32, i32* %8, align 4
  store i32 %127, i32* %3, align 4
  br label %128

128:                                              ; preds = %126, %26, %16
  %129 = load i32, i32* %3, align 4
  ret i32 %129
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @MLX5_CAP_GEN(i32, i32) #2

declare dso_local i32 @esw_vport_cleanup_egress_rules(%struct.mlx5_eswitch*, %struct.mlx5_vport*) #2

declare dso_local i32 @esw_vport_enable_egress_acl(%struct.mlx5_eswitch*, %struct.mlx5_vport*) #2

declare dso_local i32 @mlx5_core_warn(i32, i8*, i32, i32) #2

declare dso_local i32 @esw_debug(i32, i8*, i32) #2

declare dso_local %struct.mlx5_flow_spec* @kvzalloc(i32, i32) #2

declare dso_local i32 @MLX5_SET_TO_ONES(i32, i32, i32) #2

declare dso_local i32 @MLX5_SET(i32, i32, i32, i32) #2

declare dso_local i32* @mlx5_add_flow_rules(i32, %struct.mlx5_flow_spec*, %struct.mlx5_flow_act*, i32*, i32) #2

declare dso_local i64 @IS_ERR(i32*) #2

declare dso_local i32 @PTR_ERR(i32*) #2

declare dso_local i32 @esw_warn(i32, i8*, i32, i32) #2

declare dso_local i32 @kvfree(%struct.mlx5_flow_spec*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
