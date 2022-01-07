; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_eswitch.c_esw_vport_egress_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_eswitch.c_esw_vport_egress_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.mlx5_eswitch = type { i32 }
%struct.mlx5_vport = type { %struct.TYPE_5__, i32, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32*, i32, i32*, %struct.mlx5_fc* }
%struct.mlx5_fc = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.mlx5_flow_destination = type { i32, i32, i32 }
%struct.mlx5_flow_act = type { i32, i32 }
%struct.mlx5_flow_spec = type { i32, i32, i32 }

@.str = private unnamed_addr constant [47 x i8] c"failed to enable egress acl (%d) on vport[%d]\0A\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"vport[%d] configure egress rules, vlan(%d) qos(%d)\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@fte_match_param = common dso_local global i32 0, align 4
@outer_headers = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@MLX5_MATCH_OUTER_HEADERS = common dso_local global i32 0, align 4
@MLX5_FLOW_CONTEXT_ACTION_ALLOW = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [62 x i8] c"vport[%d] configure egress allowed vlan rule failed, err(%d)\0A\00", align 1
@MLX5_FLOW_CONTEXT_ACTION_DROP = common dso_local global i32 0, align 4
@MLX5_FLOW_CONTEXT_ACTION_COUNT = common dso_local global i32 0, align 4
@MLX5_FLOW_DESTINATION_TYPE_COUNTER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [54 x i8] c"vport[%d] configure egress drop rule failed, err(%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_eswitch*, %struct.mlx5_vport*)* @esw_vport_egress_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @esw_vport_egress_config(%struct.mlx5_eswitch* %0, %struct.mlx5_vport* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx5_eswitch*, align 8
  %5 = alloca %struct.mlx5_vport*, align 8
  %6 = alloca %struct.mlx5_fc*, align 8
  %7 = alloca %struct.mlx5_flow_destination, align 4
  %8 = alloca %struct.mlx5_flow_destination*, align 8
  %9 = alloca %struct.mlx5_flow_act, align 4
  %10 = alloca %struct.mlx5_flow_spec*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.mlx5_eswitch* %0, %struct.mlx5_eswitch** %4, align 8
  store %struct.mlx5_vport* %1, %struct.mlx5_vport** %5, align 8
  %13 = load %struct.mlx5_vport*, %struct.mlx5_vport** %5, align 8
  %14 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 3
  %16 = load %struct.mlx5_fc*, %struct.mlx5_fc** %15, align 8
  store %struct.mlx5_fc* %16, %struct.mlx5_fc** %6, align 8
  %17 = bitcast %struct.mlx5_flow_destination* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %17, i8 0, i64 12, i1 false)
  store %struct.mlx5_flow_destination* null, %struct.mlx5_flow_destination** %8, align 8
  %18 = bitcast %struct.mlx5_flow_act* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %18, i8 0, i64 8, i1 false)
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %19 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %4, align 8
  %20 = load %struct.mlx5_vport*, %struct.mlx5_vport** %5, align 8
  %21 = call i32 @esw_vport_cleanup_egress_rules(%struct.mlx5_eswitch* %19, %struct.mlx5_vport* %20)
  %22 = load %struct.mlx5_vport*, %struct.mlx5_vport** %5, align 8
  %23 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %37, label %27

27:                                               ; preds = %2
  %28 = load %struct.mlx5_vport*, %struct.mlx5_vport** %5, align 8
  %29 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %27
  %34 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %4, align 8
  %35 = load %struct.mlx5_vport*, %struct.mlx5_vport** %5, align 8
  %36 = call i32 @esw_vport_disable_egress_acl(%struct.mlx5_eswitch* %34, %struct.mlx5_vport* %35)
  store i32 0, i32* %3, align 4
  br label %203

37:                                               ; preds = %27, %2
  %38 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %4, align 8
  %39 = load %struct.mlx5_vport*, %struct.mlx5_vport** %5, align 8
  %40 = call i32 @esw_vport_enable_egress_acl(%struct.mlx5_eswitch* %38, %struct.mlx5_vport* %39)
  store i32 %40, i32* %12, align 4
  %41 = load i32, i32* %12, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %53

43:                                               ; preds = %37
  %44 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %4, align 8
  %45 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %12, align 4
  %48 = load %struct.mlx5_vport*, %struct.mlx5_vport** %5, align 8
  %49 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @mlx5_core_warn(i32 %46, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %47, i32 %50)
  %52 = load i32, i32* %12, align 4
  store i32 %52, i32* %3, align 4
  br label %203

53:                                               ; preds = %37
  %54 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %4, align 8
  %55 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.mlx5_vport*, %struct.mlx5_vport** %5, align 8
  %58 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.mlx5_vport*, %struct.mlx5_vport** %5, align 8
  %61 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.mlx5_vport*, %struct.mlx5_vport** %5, align 8
  %65 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @esw_debug(i32 %56, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %59, i32 %63, i32 %67)
  %69 = load i32, i32* @GFP_KERNEL, align 4
  %70 = call %struct.mlx5_flow_spec* @kvzalloc(i32 12, i32 %69)
  store %struct.mlx5_flow_spec* %70, %struct.mlx5_flow_spec** %10, align 8
  %71 = load %struct.mlx5_flow_spec*, %struct.mlx5_flow_spec** %10, align 8
  %72 = icmp ne %struct.mlx5_flow_spec* %71, null
  br i1 %72, label %76, label %73

73:                                               ; preds = %53
  %74 = load i32, i32* @ENOMEM, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %12, align 4
  br label %199

76:                                               ; preds = %53
  %77 = load i32, i32* @fte_match_param, align 4
  %78 = load %struct.mlx5_flow_spec*, %struct.mlx5_flow_spec** %10, align 8
  %79 = getelementptr inbounds %struct.mlx5_flow_spec, %struct.mlx5_flow_spec* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @outer_headers, i32 0, i32 1), align 4
  %82 = call i32 @MLX5_SET_TO_ONES(i32 %77, i32 %80, i32 %81)
  %83 = load i32, i32* @fte_match_param, align 4
  %84 = load %struct.mlx5_flow_spec*, %struct.mlx5_flow_spec** %10, align 8
  %85 = getelementptr inbounds %struct.mlx5_flow_spec, %struct.mlx5_flow_spec* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @outer_headers, i32 0, i32 1), align 4
  %88 = call i32 @MLX5_SET_TO_ONES(i32 %83, i32 %86, i32 %87)
  %89 = load i32, i32* @fte_match_param, align 4
  %90 = load %struct.mlx5_flow_spec*, %struct.mlx5_flow_spec** %10, align 8
  %91 = getelementptr inbounds %struct.mlx5_flow_spec, %struct.mlx5_flow_spec* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @outer_headers, i32 0, i32 0), align 4
  %94 = call i32 @MLX5_SET_TO_ONES(i32 %89, i32 %92, i32 %93)
  %95 = load i32, i32* @fte_match_param, align 4
  %96 = load %struct.mlx5_flow_spec*, %struct.mlx5_flow_spec** %10, align 8
  %97 = getelementptr inbounds %struct.mlx5_flow_spec, %struct.mlx5_flow_spec* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @outer_headers, i32 0, i32 0), align 4
  %100 = load %struct.mlx5_vport*, %struct.mlx5_vport** %5, align 8
  %101 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @MLX5_SET(i32 %95, i32 %98, i32 %99, i32 %103)
  %105 = load i32, i32* @MLX5_MATCH_OUTER_HEADERS, align 4
  %106 = load %struct.mlx5_flow_spec*, %struct.mlx5_flow_spec** %10, align 8
  %107 = getelementptr inbounds %struct.mlx5_flow_spec, %struct.mlx5_flow_spec* %106, i32 0, i32 0
  store i32 %105, i32* %107, align 4
  %108 = load i32, i32* @MLX5_FLOW_CONTEXT_ACTION_ALLOW, align 4
  %109 = getelementptr inbounds %struct.mlx5_flow_act, %struct.mlx5_flow_act* %9, i32 0, i32 0
  store i32 %108, i32* %109, align 4
  %110 = load %struct.mlx5_vport*, %struct.mlx5_vport** %5, align 8
  %111 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.mlx5_flow_spec*, %struct.mlx5_flow_spec** %10, align 8
  %115 = call i8* @mlx5_add_flow_rules(i32 %113, %struct.mlx5_flow_spec* %114, %struct.mlx5_flow_act* %9, %struct.mlx5_flow_destination* null, i32 0)
  %116 = bitcast i8* %115 to i32*
  %117 = load %struct.mlx5_vport*, %struct.mlx5_vport** %5, align 8
  %118 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 2
  store i32* %116, i32** %119, align 8
  %120 = load %struct.mlx5_vport*, %struct.mlx5_vport** %5, align 8
  %121 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 2
  %123 = load i32*, i32** %122, align 8
  %124 = call i64 @IS_ERR(i32* %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %143

126:                                              ; preds = %76
  %127 = load %struct.mlx5_vport*, %struct.mlx5_vport** %5, align 8
  %128 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 2
  %130 = load i32*, i32** %129, align 8
  %131 = call i32 @PTR_ERR(i32* %130)
  store i32 %131, i32* %12, align 4
  %132 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %4, align 8
  %133 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.mlx5_vport*, %struct.mlx5_vport** %5, align 8
  %136 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* %12, align 4
  %139 = call i32 @esw_warn(i32 %134, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.2, i64 0, i64 0), i32 %137, i32 %138)
  %140 = load %struct.mlx5_vport*, %struct.mlx5_vport** %5, align 8
  %141 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i32 0, i32 2
  store i32* null, i32** %142, align 8
  br label %199

143:                                              ; preds = %76
  %144 = load %struct.mlx5_flow_spec*, %struct.mlx5_flow_spec** %10, align 8
  %145 = call i32 @memset(%struct.mlx5_flow_spec* %144, i32 0, i32 12)
  %146 = load i32, i32* @MLX5_FLOW_CONTEXT_ACTION_DROP, align 4
  %147 = getelementptr inbounds %struct.mlx5_flow_act, %struct.mlx5_flow_act* %9, i32 0, i32 0
  store i32 %146, i32* %147, align 4
  %148 = load %struct.mlx5_fc*, %struct.mlx5_fc** %6, align 8
  %149 = icmp ne %struct.mlx5_fc* %148, null
  br i1 %149, label %150, label %162

150:                                              ; preds = %143
  %151 = load i32, i32* @MLX5_FLOW_CONTEXT_ACTION_COUNT, align 4
  %152 = getelementptr inbounds %struct.mlx5_flow_act, %struct.mlx5_flow_act* %9, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = or i32 %153, %151
  store i32 %154, i32* %152, align 4
  %155 = load i32, i32* @MLX5_FLOW_DESTINATION_TYPE_COUNTER, align 4
  %156 = getelementptr inbounds %struct.mlx5_flow_destination, %struct.mlx5_flow_destination* %7, i32 0, i32 1
  store i32 %155, i32* %156, align 4
  %157 = load %struct.mlx5_fc*, %struct.mlx5_fc** %6, align 8
  %158 = call i32 @mlx5_fc_id(%struct.mlx5_fc* %157)
  %159 = getelementptr inbounds %struct.mlx5_flow_destination, %struct.mlx5_flow_destination* %7, i32 0, i32 0
  store i32 %158, i32* %159, align 4
  store %struct.mlx5_flow_destination* %7, %struct.mlx5_flow_destination** %8, align 8
  %160 = load i32, i32* %11, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %11, align 4
  br label %162

162:                                              ; preds = %150, %143
  %163 = load %struct.mlx5_vport*, %struct.mlx5_vport** %5, align 8
  %164 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 8
  %167 = load %struct.mlx5_flow_spec*, %struct.mlx5_flow_spec** %10, align 8
  %168 = load %struct.mlx5_flow_destination*, %struct.mlx5_flow_destination** %8, align 8
  %169 = load i32, i32* %11, align 4
  %170 = call i8* @mlx5_add_flow_rules(i32 %166, %struct.mlx5_flow_spec* %167, %struct.mlx5_flow_act* %9, %struct.mlx5_flow_destination* %168, i32 %169)
  %171 = bitcast i8* %170 to i32*
  %172 = load %struct.mlx5_vport*, %struct.mlx5_vport** %5, align 8
  %173 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %173, i32 0, i32 0
  store i32* %171, i32** %174, align 8
  %175 = load %struct.mlx5_vport*, %struct.mlx5_vport** %5, align 8
  %176 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %176, i32 0, i32 0
  %178 = load i32*, i32** %177, align 8
  %179 = call i64 @IS_ERR(i32* %178)
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %198

181:                                              ; preds = %162
  %182 = load %struct.mlx5_vport*, %struct.mlx5_vport** %5, align 8
  %183 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %183, i32 0, i32 0
  %185 = load i32*, i32** %184, align 8
  %186 = call i32 @PTR_ERR(i32* %185)
  store i32 %186, i32* %12, align 4
  %187 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %4, align 8
  %188 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = load %struct.mlx5_vport*, %struct.mlx5_vport** %5, align 8
  %191 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 8
  %193 = load i32, i32* %12, align 4
  %194 = call i32 @esw_warn(i32 %189, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0), i32 %192, i32 %193)
  %195 = load %struct.mlx5_vport*, %struct.mlx5_vport** %5, align 8
  %196 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %196, i32 0, i32 0
  store i32* null, i32** %197, align 8
  br label %198

198:                                              ; preds = %181, %162
  br label %199

199:                                              ; preds = %198, %126, %73
  %200 = load %struct.mlx5_flow_spec*, %struct.mlx5_flow_spec** %10, align 8
  %201 = call i32 @kvfree(%struct.mlx5_flow_spec* %200)
  %202 = load i32, i32* %12, align 4
  store i32 %202, i32* %3, align 4
  br label %203

203:                                              ; preds = %199, %43, %33
  %204 = load i32, i32* %3, align 4
  ret i32 %204
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @esw_vport_cleanup_egress_rules(%struct.mlx5_eswitch*, %struct.mlx5_vport*) #2

declare dso_local i32 @esw_vport_disable_egress_acl(%struct.mlx5_eswitch*, %struct.mlx5_vport*) #2

declare dso_local i32 @esw_vport_enable_egress_acl(%struct.mlx5_eswitch*, %struct.mlx5_vport*) #2

declare dso_local i32 @mlx5_core_warn(i32, i8*, i32, i32) #2

declare dso_local i32 @esw_debug(i32, i8*, i32, i32, i32) #2

declare dso_local %struct.mlx5_flow_spec* @kvzalloc(i32, i32) #2

declare dso_local i32 @MLX5_SET_TO_ONES(i32, i32, i32) #2

declare dso_local i32 @MLX5_SET(i32, i32, i32, i32) #2

declare dso_local i8* @mlx5_add_flow_rules(i32, %struct.mlx5_flow_spec*, %struct.mlx5_flow_act*, %struct.mlx5_flow_destination*, i32) #2

declare dso_local i64 @IS_ERR(i32*) #2

declare dso_local i32 @PTR_ERR(i32*) #2

declare dso_local i32 @esw_warn(i32, i8*, i32, i32) #2

declare dso_local i32 @memset(%struct.mlx5_flow_spec*, i32, i32) #2

declare dso_local i32 @mlx5_fc_id(%struct.mlx5_fc*) #2

declare dso_local i32 @kvfree(%struct.mlx5_flow_spec*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
