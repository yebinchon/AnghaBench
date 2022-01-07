; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_eswitch.c_esw_vport_ingress_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_eswitch.c_esw_vport_ingress_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.mlx5_eswitch = type { i32 }
%struct.mlx5_vport = type { %struct.TYPE_5__, i32, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32*, i32, i32*, %struct.mlx5_fc* }
%struct.mlx5_fc = type { i32 }
%struct.TYPE_4__ = type { i32, i64, i64, i64 }
%struct.mlx5_flow_destination = type { i32, i32, i32 }
%struct.mlx5_flow_act = type { i32, i32 }
%struct.mlx5_flow_spec = type { i32, i32, i32 }

@.str = private unnamed_addr constant [48 x i8] c"failed to enable ingress acl (%d) on vport[%d]\0A\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"vport[%d] configure ingress rules, vlan(%d) qos(%d)\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@fte_match_param = common dso_local global i32 0, align 4
@outer_headers = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@MLX5_MATCH_OUTER_HEADERS = common dso_local global i32 0, align 4
@MLX5_FLOW_CONTEXT_ACTION_ALLOW = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [49 x i8] c"vport[%d] configure ingress allow rule, err(%d)\0A\00", align 1
@MLX5_FLOW_CONTEXT_ACTION_DROP = common dso_local global i32 0, align 4
@MLX5_FLOW_CONTEXT_ACTION_COUNT = common dso_local global i32 0, align 4
@MLX5_FLOW_DESTINATION_TYPE_COUNTER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [48 x i8] c"vport[%d] configure ingress drop rule, err(%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_eswitch*, %struct.mlx5_vport*)* @esw_vport_ingress_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @esw_vport_ingress_config(%struct.mlx5_eswitch* %0, %struct.mlx5_vport* %1) #0 {
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
  %13 = alloca i32*, align 8
  store %struct.mlx5_eswitch* %0, %struct.mlx5_eswitch** %4, align 8
  store %struct.mlx5_vport* %1, %struct.mlx5_vport** %5, align 8
  %14 = load %struct.mlx5_vport*, %struct.mlx5_vport** %5, align 8
  %15 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 3
  %17 = load %struct.mlx5_fc*, %struct.mlx5_fc** %16, align 8
  store %struct.mlx5_fc* %17, %struct.mlx5_fc** %6, align 8
  %18 = bitcast %struct.mlx5_flow_destination* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %18, i8 0, i64 12, i1 false)
  store %struct.mlx5_flow_destination* null, %struct.mlx5_flow_destination** %8, align 8
  %19 = bitcast %struct.mlx5_flow_act* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %19, i8 0, i64 8, i1 false)
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %20 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %4, align 8
  %21 = load %struct.mlx5_vport*, %struct.mlx5_vport** %5, align 8
  %22 = call i32 @esw_vport_cleanup_ingress_rules(%struct.mlx5_eswitch* %20, %struct.mlx5_vport* %21)
  %23 = load %struct.mlx5_vport*, %struct.mlx5_vport** %5, align 8
  %24 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 3
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %44, label %28

28:                                               ; preds = %2
  %29 = load %struct.mlx5_vport*, %struct.mlx5_vport** %5, align 8
  %30 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %44, label %34

34:                                               ; preds = %28
  %35 = load %struct.mlx5_vport*, %struct.mlx5_vport** %5, align 8
  %36 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %34
  %41 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %4, align 8
  %42 = load %struct.mlx5_vport*, %struct.mlx5_vport** %5, align 8
  %43 = call i32 @esw_vport_disable_ingress_acl(%struct.mlx5_eswitch* %41, %struct.mlx5_vport* %42)
  store i32 0, i32* %3, align 4
  br label %239

44:                                               ; preds = %34, %28, %2
  %45 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %4, align 8
  %46 = load %struct.mlx5_vport*, %struct.mlx5_vport** %5, align 8
  %47 = call i32 @esw_vport_enable_ingress_acl(%struct.mlx5_eswitch* %45, %struct.mlx5_vport* %46)
  store i32 %47, i32* %12, align 4
  %48 = load i32, i32* %12, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %60

50:                                               ; preds = %44
  %51 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %4, align 8
  %52 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %12, align 4
  %55 = load %struct.mlx5_vport*, %struct.mlx5_vport** %5, align 8
  %56 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @mlx5_core_warn(i32 %53, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %54, i32 %57)
  %59 = load i32, i32* %12, align 4
  store i32 %59, i32* %3, align 4
  br label %239

60:                                               ; preds = %44
  %61 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %4, align 8
  %62 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.mlx5_vport*, %struct.mlx5_vport** %5, align 8
  %65 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.mlx5_vport*, %struct.mlx5_vport** %5, align 8
  %68 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 3
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.mlx5_vport*, %struct.mlx5_vport** %5, align 8
  %72 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = call i32 @esw_debug(i32 %63, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %66, i64 %70, i64 %74)
  %76 = load i32, i32* @GFP_KERNEL, align 4
  %77 = call %struct.mlx5_flow_spec* @kvzalloc(i32 12, i32 %76)
  store %struct.mlx5_flow_spec* %77, %struct.mlx5_flow_spec** %10, align 8
  %78 = load %struct.mlx5_flow_spec*, %struct.mlx5_flow_spec** %10, align 8
  %79 = icmp ne %struct.mlx5_flow_spec* %78, null
  br i1 %79, label %83, label %80

80:                                               ; preds = %60
  %81 = load i32, i32* @ENOMEM, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %12, align 4
  br label %228

83:                                               ; preds = %60
  %84 = load %struct.mlx5_vport*, %struct.mlx5_vport** %5, align 8
  %85 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 3
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %95, label %89

89:                                               ; preds = %83
  %90 = load %struct.mlx5_vport*, %struct.mlx5_vport** %5, align 8
  %91 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %102

95:                                               ; preds = %89, %83
  %96 = load i32, i32* @fte_match_param, align 4
  %97 = load %struct.mlx5_flow_spec*, %struct.mlx5_flow_spec** %10, align 8
  %98 = getelementptr inbounds %struct.mlx5_flow_spec, %struct.mlx5_flow_spec* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @outer_headers, i32 0, i32 2), align 4
  %101 = call i32 @MLX5_SET_TO_ONES(i32 %96, i32 %99, i32 %100)
  br label %102

102:                                              ; preds = %95, %89
  %103 = load %struct.mlx5_vport*, %struct.mlx5_vport** %5, align 8
  %104 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %133

108:                                              ; preds = %102
  %109 = load i32, i32* @fte_match_param, align 4
  %110 = load %struct.mlx5_flow_spec*, %struct.mlx5_flow_spec** %10, align 8
  %111 = getelementptr inbounds %struct.mlx5_flow_spec, %struct.mlx5_flow_spec* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @outer_headers, i32 0, i32 0), align 4
  %114 = call i32 @MLX5_SET_TO_ONES(i32 %109, i32 %112, i32 %113)
  %115 = load i32, i32* @fte_match_param, align 4
  %116 = load %struct.mlx5_flow_spec*, %struct.mlx5_flow_spec** %10, align 8
  %117 = getelementptr inbounds %struct.mlx5_flow_spec, %struct.mlx5_flow_spec* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @outer_headers, i32 0, i32 1), align 4
  %120 = call i32 @MLX5_SET_TO_ONES(i32 %115, i32 %118, i32 %119)
  %121 = load i32, i32* @fte_match_param, align 4
  %122 = load %struct.mlx5_flow_spec*, %struct.mlx5_flow_spec** %10, align 8
  %123 = getelementptr inbounds %struct.mlx5_flow_spec, %struct.mlx5_flow_spec* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @outer_headers, i32 0, i32 0), align 4
  %126 = call i32* @MLX5_ADDR_OF(i32 %121, i32 %124, i32 %125)
  store i32* %126, i32** %13, align 8
  %127 = load i32*, i32** %13, align 8
  %128 = load %struct.mlx5_vport*, %struct.mlx5_vport** %5, align 8
  %129 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %128, i32 0, i32 2
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = call i32 @ether_addr_copy(i32* %127, i32 %131)
  br label %133

133:                                              ; preds = %108, %102
  %134 = load i32, i32* @MLX5_MATCH_OUTER_HEADERS, align 4
  %135 = load %struct.mlx5_flow_spec*, %struct.mlx5_flow_spec** %10, align 8
  %136 = getelementptr inbounds %struct.mlx5_flow_spec, %struct.mlx5_flow_spec* %135, i32 0, i32 0
  store i32 %134, i32* %136, align 4
  %137 = load i32, i32* @MLX5_FLOW_CONTEXT_ACTION_ALLOW, align 4
  %138 = getelementptr inbounds %struct.mlx5_flow_act, %struct.mlx5_flow_act* %9, i32 0, i32 0
  store i32 %137, i32* %138, align 4
  %139 = load %struct.mlx5_vport*, %struct.mlx5_vport** %5, align 8
  %140 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 8
  %143 = load %struct.mlx5_flow_spec*, %struct.mlx5_flow_spec** %10, align 8
  %144 = call i8* @mlx5_add_flow_rules(i32 %142, %struct.mlx5_flow_spec* %143, %struct.mlx5_flow_act* %9, %struct.mlx5_flow_destination* null, i32 0)
  %145 = bitcast i8* %144 to i32*
  %146 = load %struct.mlx5_vport*, %struct.mlx5_vport** %5, align 8
  %147 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i32 0, i32 2
  store i32* %145, i32** %148, align 8
  %149 = load %struct.mlx5_vport*, %struct.mlx5_vport** %5, align 8
  %150 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i32 0, i32 2
  %152 = load i32*, i32** %151, align 8
  %153 = call i64 @IS_ERR(i32* %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %172

155:                                              ; preds = %133
  %156 = load %struct.mlx5_vport*, %struct.mlx5_vport** %5, align 8
  %157 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %157, i32 0, i32 2
  %159 = load i32*, i32** %158, align 8
  %160 = call i32 @PTR_ERR(i32* %159)
  store i32 %160, i32* %12, align 4
  %161 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %4, align 8
  %162 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.mlx5_vport*, %struct.mlx5_vport** %5, align 8
  %165 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 8
  %167 = load i32, i32* %12, align 4
  %168 = call i32 @esw_warn(i32 %163, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i32 %166, i32 %167)
  %169 = load %struct.mlx5_vport*, %struct.mlx5_vport** %5, align 8
  %170 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %170, i32 0, i32 2
  store i32* null, i32** %171, align 8
  br label %228

172:                                              ; preds = %133
  %173 = load %struct.mlx5_flow_spec*, %struct.mlx5_flow_spec** %10, align 8
  %174 = call i32 @memset(%struct.mlx5_flow_spec* %173, i32 0, i32 12)
  %175 = load i32, i32* @MLX5_FLOW_CONTEXT_ACTION_DROP, align 4
  %176 = getelementptr inbounds %struct.mlx5_flow_act, %struct.mlx5_flow_act* %9, i32 0, i32 0
  store i32 %175, i32* %176, align 4
  %177 = load %struct.mlx5_fc*, %struct.mlx5_fc** %6, align 8
  %178 = icmp ne %struct.mlx5_fc* %177, null
  br i1 %178, label %179, label %191

179:                                              ; preds = %172
  %180 = load i32, i32* @MLX5_FLOW_CONTEXT_ACTION_COUNT, align 4
  %181 = getelementptr inbounds %struct.mlx5_flow_act, %struct.mlx5_flow_act* %9, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = or i32 %182, %180
  store i32 %183, i32* %181, align 4
  %184 = load i32, i32* @MLX5_FLOW_DESTINATION_TYPE_COUNTER, align 4
  %185 = getelementptr inbounds %struct.mlx5_flow_destination, %struct.mlx5_flow_destination* %7, i32 0, i32 1
  store i32 %184, i32* %185, align 4
  %186 = load %struct.mlx5_fc*, %struct.mlx5_fc** %6, align 8
  %187 = call i32 @mlx5_fc_id(%struct.mlx5_fc* %186)
  %188 = getelementptr inbounds %struct.mlx5_flow_destination, %struct.mlx5_flow_destination* %7, i32 0, i32 0
  store i32 %187, i32* %188, align 4
  store %struct.mlx5_flow_destination* %7, %struct.mlx5_flow_destination** %8, align 8
  %189 = load i32, i32* %11, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %11, align 4
  br label %191

191:                                              ; preds = %179, %172
  %192 = load %struct.mlx5_vport*, %struct.mlx5_vport** %5, align 8
  %193 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 8
  %196 = load %struct.mlx5_flow_spec*, %struct.mlx5_flow_spec** %10, align 8
  %197 = load %struct.mlx5_flow_destination*, %struct.mlx5_flow_destination** %8, align 8
  %198 = load i32, i32* %11, align 4
  %199 = call i8* @mlx5_add_flow_rules(i32 %195, %struct.mlx5_flow_spec* %196, %struct.mlx5_flow_act* %9, %struct.mlx5_flow_destination* %197, i32 %198)
  %200 = bitcast i8* %199 to i32*
  %201 = load %struct.mlx5_vport*, %struct.mlx5_vport** %5, align 8
  %202 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %202, i32 0, i32 0
  store i32* %200, i32** %203, align 8
  %204 = load %struct.mlx5_vport*, %struct.mlx5_vport** %5, align 8
  %205 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %205, i32 0, i32 0
  %207 = load i32*, i32** %206, align 8
  %208 = call i64 @IS_ERR(i32* %207)
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %227

210:                                              ; preds = %191
  %211 = load %struct.mlx5_vport*, %struct.mlx5_vport** %5, align 8
  %212 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %212, i32 0, i32 0
  %214 = load i32*, i32** %213, align 8
  %215 = call i32 @PTR_ERR(i32* %214)
  store i32 %215, i32* %12, align 4
  %216 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %4, align 8
  %217 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 4
  %219 = load %struct.mlx5_vport*, %struct.mlx5_vport** %5, align 8
  %220 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 8
  %222 = load i32, i32* %12, align 4
  %223 = call i32 @esw_warn(i32 %218, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i32 %221, i32 %222)
  %224 = load %struct.mlx5_vport*, %struct.mlx5_vport** %5, align 8
  %225 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %225, i32 0, i32 0
  store i32* null, i32** %226, align 8
  br label %228

227:                                              ; preds = %191
  br label %228

228:                                              ; preds = %227, %210, %155, %80
  %229 = load i32, i32* %12, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %235

231:                                              ; preds = %228
  %232 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %4, align 8
  %233 = load %struct.mlx5_vport*, %struct.mlx5_vport** %5, align 8
  %234 = call i32 @esw_vport_cleanup_ingress_rules(%struct.mlx5_eswitch* %232, %struct.mlx5_vport* %233)
  br label %235

235:                                              ; preds = %231, %228
  %236 = load %struct.mlx5_flow_spec*, %struct.mlx5_flow_spec** %10, align 8
  %237 = call i32 @kvfree(%struct.mlx5_flow_spec* %236)
  %238 = load i32, i32* %12, align 4
  store i32 %238, i32* %3, align 4
  br label %239

239:                                              ; preds = %235, %50, %40
  %240 = load i32, i32* %3, align 4
  ret i32 %240
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @esw_vport_cleanup_ingress_rules(%struct.mlx5_eswitch*, %struct.mlx5_vport*) #2

declare dso_local i32 @esw_vport_disable_ingress_acl(%struct.mlx5_eswitch*, %struct.mlx5_vport*) #2

declare dso_local i32 @esw_vport_enable_ingress_acl(%struct.mlx5_eswitch*, %struct.mlx5_vport*) #2

declare dso_local i32 @mlx5_core_warn(i32, i8*, i32, i32) #2

declare dso_local i32 @esw_debug(i32, i8*, i32, i64, i64) #2

declare dso_local %struct.mlx5_flow_spec* @kvzalloc(i32, i32) #2

declare dso_local i32 @MLX5_SET_TO_ONES(i32, i32, i32) #2

declare dso_local i32* @MLX5_ADDR_OF(i32, i32, i32) #2

declare dso_local i32 @ether_addr_copy(i32*, i32) #2

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
