; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_eswitch_offloads.c_esw_vport_ingress_prio_tag_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_eswitch_offloads.c_esw_vport_ingress_prio_tag_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.mlx5_eswitch = type { i32 }
%struct.mlx5_vport = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32*, i32, i32, i64 }
%struct.mlx5_flow_act = type { i32, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i64, i64, i32 }
%struct.mlx5_flow_spec = type { i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@fte_match_param = common dso_local global i32 0, align 4
@outer_headers = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@MLX5_MATCH_OUTER_HEADERS = common dso_local global i32 0, align 4
@MLX5_FLOW_CONTEXT_ACTION_VLAN_PUSH = common dso_local global i32 0, align 4
@MLX5_FLOW_CONTEXT_ACTION_ALLOW = common dso_local global i32 0, align 4
@ETH_P_8021Q = common dso_local global i32 0, align 4
@MLX5_FLOW_CONTEXT_ACTION_MOD_HDR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"vport[%d] configure ingress untagged allow rule, err(%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_eswitch*, %struct.mlx5_vport*)* @esw_vport_ingress_prio_tag_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @esw_vport_ingress_prio_tag_config(%struct.mlx5_eswitch* %0, %struct.mlx5_vport* %1) #0 {
  %3 = alloca %struct.mlx5_eswitch*, align 8
  %4 = alloca %struct.mlx5_vport*, align 8
  %5 = alloca %struct.mlx5_flow_act, align 8
  %6 = alloca %struct.mlx5_flow_spec*, align 8
  %7 = alloca i32, align 4
  store %struct.mlx5_eswitch* %0, %struct.mlx5_eswitch** %3, align 8
  store %struct.mlx5_vport* %1, %struct.mlx5_vport** %4, align 8
  %8 = bitcast %struct.mlx5_flow_act* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %8, i8 0, i64 24, i1 false)
  store i32 0, i32* %7, align 4
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.mlx5_flow_spec* @kvzalloc(i32 12, i32 %9)
  store %struct.mlx5_flow_spec* %10, %struct.mlx5_flow_spec** %6, align 8
  %11 = load %struct.mlx5_flow_spec*, %struct.mlx5_flow_spec** %6, align 8
  %12 = icmp ne %struct.mlx5_flow_spec* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %7, align 4
  br label %101

16:                                               ; preds = %2
  %17 = load i32, i32* @fte_match_param, align 4
  %18 = load %struct.mlx5_flow_spec*, %struct.mlx5_flow_spec** %6, align 8
  %19 = getelementptr inbounds %struct.mlx5_flow_spec, %struct.mlx5_flow_spec* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @outer_headers, i32 0, i32 0), align 4
  %22 = call i32 @MLX5_SET_TO_ONES(i32 %17, i32 %20, i32 %21)
  %23 = load i32, i32* @fte_match_param, align 4
  %24 = load %struct.mlx5_flow_spec*, %struct.mlx5_flow_spec** %6, align 8
  %25 = getelementptr inbounds %struct.mlx5_flow_spec, %struct.mlx5_flow_spec* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @outer_headers, i32 0, i32 0), align 4
  %28 = call i32 @MLX5_SET(i32 %23, i32 %26, i32 %27, i32 0)
  %29 = load i32, i32* @MLX5_MATCH_OUTER_HEADERS, align 4
  %30 = load %struct.mlx5_flow_spec*, %struct.mlx5_flow_spec** %6, align 8
  %31 = getelementptr inbounds %struct.mlx5_flow_spec, %struct.mlx5_flow_spec* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* @MLX5_FLOW_CONTEXT_ACTION_VLAN_PUSH, align 4
  %33 = load i32, i32* @MLX5_FLOW_CONTEXT_ACTION_ALLOW, align 4
  %34 = or i32 %32, %33
  %35 = getelementptr inbounds %struct.mlx5_flow_act, %struct.mlx5_flow_act* %5, i32 0, i32 0
  store i32 %34, i32* %35, align 8
  %36 = load i32, i32* @ETH_P_8021Q, align 4
  %37 = getelementptr inbounds %struct.mlx5_flow_act, %struct.mlx5_flow_act* %5, i32 0, i32 2
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i64 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 2
  store i32 %36, i32* %40, align 8
  %41 = getelementptr inbounds %struct.mlx5_flow_act, %struct.mlx5_flow_act* %5, i32 0, i32 2
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i64 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  store i64 0, i64* %44, align 8
  %45 = getelementptr inbounds %struct.mlx5_flow_act, %struct.mlx5_flow_act* %5, i32 0, i32 2
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i64 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  store i64 0, i64* %48, align 8
  %49 = load %struct.mlx5_vport*, %struct.mlx5_vport** %4, align 8
  %50 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 3
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %64

54:                                               ; preds = %16
  %55 = load i32, i32* @MLX5_FLOW_CONTEXT_ACTION_MOD_HDR, align 4
  %56 = getelementptr inbounds %struct.mlx5_flow_act, %struct.mlx5_flow_act* %5, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = or i32 %57, %55
  store i32 %58, i32* %56, align 8
  %59 = load %struct.mlx5_vport*, %struct.mlx5_vport** %4, align 8
  %60 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = getelementptr inbounds %struct.mlx5_flow_act, %struct.mlx5_flow_act* %5, i32 0, i32 1
  store i32 %62, i32* %63, align 4
  br label %64

64:                                               ; preds = %54, %16
  %65 = load %struct.mlx5_vport*, %struct.mlx5_vport** %4, align 8
  %66 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.mlx5_flow_spec*, %struct.mlx5_flow_spec** %6, align 8
  %70 = call i32* @mlx5_add_flow_rules(i32 %68, %struct.mlx5_flow_spec* %69, %struct.mlx5_flow_act* %5, i32* null, i32 0)
  %71 = load %struct.mlx5_vport*, %struct.mlx5_vport** %4, align 8
  %72 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  store i32* %70, i32** %73, align 8
  %74 = load %struct.mlx5_vport*, %struct.mlx5_vport** %4, align 8
  %75 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = call i64 @IS_ERR(i32* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %97

80:                                               ; preds = %64
  %81 = load %struct.mlx5_vport*, %struct.mlx5_vport** %4, align 8
  %82 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = call i32 @PTR_ERR(i32* %84)
  store i32 %85, i32* %7, align 4
  %86 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %3, align 8
  %87 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.mlx5_vport*, %struct.mlx5_vport** %4, align 8
  %90 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* %7, align 4
  %93 = call i32 @esw_warn(i32 %88, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %91, i32 %92)
  %94 = load %struct.mlx5_vport*, %struct.mlx5_vport** %4, align 8
  %95 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 0
  store i32* null, i32** %96, align 8
  br label %98

97:                                               ; preds = %64
  br label %98

98:                                               ; preds = %97, %80
  %99 = load %struct.mlx5_flow_spec*, %struct.mlx5_flow_spec** %6, align 8
  %100 = call i32 @kvfree(%struct.mlx5_flow_spec* %99)
  br label %101

101:                                              ; preds = %98, %13
  %102 = load i32, i32* %7, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %101
  %105 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %3, align 8
  %106 = load %struct.mlx5_vport*, %struct.mlx5_vport** %4, align 8
  %107 = call i32 @esw_vport_cleanup_ingress_rules(%struct.mlx5_eswitch* %105, %struct.mlx5_vport* %106)
  br label %108

108:                                              ; preds = %104, %101
  %109 = load i32, i32* %7, align 4
  ret i32 %109
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.mlx5_flow_spec* @kvzalloc(i32, i32) #2

declare dso_local i32 @MLX5_SET_TO_ONES(i32, i32, i32) #2

declare dso_local i32 @MLX5_SET(i32, i32, i32, i32) #2

declare dso_local i32* @mlx5_add_flow_rules(i32, %struct.mlx5_flow_spec*, %struct.mlx5_flow_act*, i32*, i32) #2

declare dso_local i64 @IS_ERR(i32*) #2

declare dso_local i32 @PTR_ERR(i32*) #2

declare dso_local i32 @esw_warn(i32, i8*, i32, i32) #2

declare dso_local i32 @kvfree(%struct.mlx5_flow_spec*) #2

declare dso_local i32 @esw_vport_cleanup_ingress_rules(%struct.mlx5_eswitch*, %struct.mlx5_vport*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
