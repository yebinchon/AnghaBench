; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_eswitch.c_esw_vport_enable_egress_acl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_eswitch.c_esw_vport_enable_egress_acl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.mlx5_eswitch = type { %struct.mlx5_core_dev* }
%struct.mlx5_core_dev = type { i32 }
%struct.mlx5_vport = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { %struct.mlx5_flow_table*, %struct.mlx5_flow_table*, %struct.mlx5_flow_table* }
%struct.mlx5_flow_table = type { i32 }
%struct.mlx5_flow_group = type opaque
%struct.mlx5_flow_namespace = type { i32 }

@create_flow_group_in = common dso_local global i32 0, align 4
@ft_support = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Create vport[%d] egress ACL log_max_size(%d)\0A\00", align 1
@log_max_ft_size = common dso_local global i32 0, align 4
@MLX5_FLOW_NAMESPACE_ESW_EGRESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [61 x i8] c"Failed to get E-Switch egress flow namespace for vport (%d)\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [64 x i8] c"Failed to create E-Switch vport[%d] egress flow Table, err(%d)\0A\00", align 1
@match_criteria_enable = common dso_local global i32 0, align 4
@MLX5_MATCH_OUTER_HEADERS = common dso_local global i32 0, align 4
@fte_match_param = common dso_local global i32 0, align 4
@outer_headers = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@start_flow_index = common dso_local global i32 0, align 4
@end_flow_index = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [78 x i8] c"Failed to create E-Switch vport[%d] egress allowed vlans flow group, err(%d)\0A\00", align 1
@.str.4 = private unnamed_addr constant [69 x i8] c"Failed to create E-Switch vport[%d] egress drop flow group, err(%d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @esw_vport_enable_egress_acl(%struct.mlx5_eswitch* %0, %struct.mlx5_vport* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx5_eswitch*, align 8
  %5 = alloca %struct.mlx5_vport*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlx5_flow_group*, align 8
  %8 = alloca %struct.mlx5_flow_group*, align 8
  %9 = alloca %struct.mlx5_core_dev*, align 8
  %10 = alloca %struct.mlx5_flow_namespace*, align 8
  %11 = alloca %struct.mlx5_flow_table*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.mlx5_eswitch* %0, %struct.mlx5_eswitch** %4, align 8
  store %struct.mlx5_vport* %1, %struct.mlx5_vport** %5, align 8
  %16 = load i32, i32* @create_flow_group_in, align 4
  %17 = call i32 @MLX5_ST_SZ_BYTES(i32 %16)
  store i32 %17, i32* %6, align 4
  store %struct.mlx5_flow_group* null, %struct.mlx5_flow_group** %7, align 8
  store %struct.mlx5_flow_group* null, %struct.mlx5_flow_group** %8, align 8
  %18 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %4, align 8
  %19 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %18, i32 0, i32 0
  %20 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %19, align 8
  store %struct.mlx5_core_dev* %20, %struct.mlx5_core_dev** %9, align 8
  store i32 2, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %21 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %9, align 8
  %22 = load i32, i32* @ft_support, align 4
  %23 = call i32 @MLX5_CAP_ESW_EGRESS_ACL(%struct.mlx5_core_dev* %21, i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %2
  %26 = load i32, i32* @EOPNOTSUPP, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %206

28:                                               ; preds = %2
  %29 = load %struct.mlx5_vport*, %struct.mlx5_vport** %5, align 8
  %30 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 2
  %32 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %31, align 8
  %33 = call i32 @IS_ERR_OR_NULL(%struct.mlx5_flow_table* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %28
  store i32 0, i32* %3, align 4
  br label %206

36:                                               ; preds = %28
  %37 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %9, align 8
  %38 = load %struct.mlx5_vport*, %struct.mlx5_vport** %5, align 8
  %39 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %9, align 8
  %42 = load i32, i32* @log_max_ft_size, align 4
  %43 = call i32 @MLX5_CAP_ESW_EGRESS_ACL(%struct.mlx5_core_dev* %41, i32 %42)
  %44 = call i32 @esw_debug(%struct.mlx5_core_dev* %37, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %40, i32 %43)
  %45 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %9, align 8
  %46 = load i32, i32* @MLX5_FLOW_NAMESPACE_ESW_EGRESS, align 4
  %47 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %4, align 8
  %48 = load %struct.mlx5_vport*, %struct.mlx5_vport** %5, align 8
  %49 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @mlx5_eswitch_vport_num_to_index(%struct.mlx5_eswitch* %47, i32 %50)
  %52 = call %struct.mlx5_flow_namespace* @mlx5_get_flow_vport_acl_namespace(%struct.mlx5_core_dev* %45, i32 %46, i32 %51)
  store %struct.mlx5_flow_namespace* %52, %struct.mlx5_flow_namespace** %10, align 8
  %53 = load %struct.mlx5_flow_namespace*, %struct.mlx5_flow_namespace** %10, align 8
  %54 = icmp ne %struct.mlx5_flow_namespace* %53, null
  br i1 %54, label %63, label %55

55:                                               ; preds = %36
  %56 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %9, align 8
  %57 = load %struct.mlx5_vport*, %struct.mlx5_vport** %5, align 8
  %58 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = call i32 (%struct.mlx5_core_dev*, i8*, i32, ...) @esw_warn(%struct.mlx5_core_dev* %56, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i32 %59)
  %61 = load i32, i32* @EOPNOTSUPP, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %3, align 4
  br label %206

63:                                               ; preds = %36
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* @GFP_KERNEL, align 4
  %66 = call i32* @kvzalloc(i32 %64, i32 %65)
  store i32* %66, i32** %13, align 8
  %67 = load i32*, i32** %13, align 8
  %68 = icmp ne i32* %67, null
  br i1 %68, label %72, label %69

69:                                               ; preds = %63
  %70 = load i32, i32* @ENOMEM, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %3, align 4
  br label %206

72:                                               ; preds = %63
  %73 = load %struct.mlx5_flow_namespace*, %struct.mlx5_flow_namespace** %10, align 8
  %74 = load i32, i32* %14, align 4
  %75 = load %struct.mlx5_vport*, %struct.mlx5_vport** %5, align 8
  %76 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = call %struct.mlx5_flow_table* @mlx5_create_vport_flow_table(%struct.mlx5_flow_namespace* %73, i32 0, i32 %74, i32 0, i32 %77)
  store %struct.mlx5_flow_table* %78, %struct.mlx5_flow_table** %11, align 8
  %79 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %11, align 8
  %80 = call i64 @IS_ERR(%struct.mlx5_flow_table* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %91

82:                                               ; preds = %72
  %83 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %11, align 8
  %84 = call i32 @PTR_ERR(%struct.mlx5_flow_table* %83)
  store i32 %84, i32* %15, align 4
  %85 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %9, align 8
  %86 = load %struct.mlx5_vport*, %struct.mlx5_vport** %5, align 8
  %87 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* %15, align 4
  %90 = call i32 (%struct.mlx5_core_dev*, i8*, i32, ...) @esw_warn(%struct.mlx5_core_dev* %85, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.2, i64 0, i64 0), i32 %88, i32 %89)
  br label %180

91:                                               ; preds = %72
  %92 = load i32, i32* @create_flow_group_in, align 4
  %93 = load i32*, i32** %13, align 8
  %94 = load i32, i32* @match_criteria_enable, align 4
  %95 = load i32, i32* @MLX5_MATCH_OUTER_HEADERS, align 4
  %96 = call i32 @MLX5_SET(i32 %92, i32* %93, i32 %94, i32 %95)
  %97 = load i32, i32* @create_flow_group_in, align 4
  %98 = load i32*, i32** %13, align 8
  %99 = load i8*, i8** %12, align 8
  %100 = call i8* @MLX5_ADDR_OF(i32 %97, i32* %98, i8* %99)
  store i8* %100, i8** %12, align 8
  %101 = load i32, i32* @fte_match_param, align 4
  %102 = load i8*, i8** %12, align 8
  %103 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @outer_headers, i32 0, i32 1), align 4
  %104 = call i32 @MLX5_SET_TO_ONES(i32 %101, i8* %102, i32 %103)
  %105 = load i32, i32* @fte_match_param, align 4
  %106 = load i8*, i8** %12, align 8
  %107 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @outer_headers, i32 0, i32 0), align 4
  %108 = call i32 @MLX5_SET_TO_ONES(i32 %105, i8* %106, i32 %107)
  %109 = load i32, i32* @create_flow_group_in, align 4
  %110 = load i32*, i32** %13, align 8
  %111 = load i32, i32* @start_flow_index, align 4
  %112 = call i32 @MLX5_SET(i32 %109, i32* %110, i32 %111, i32 0)
  %113 = load i32, i32* @create_flow_group_in, align 4
  %114 = load i32*, i32** %13, align 8
  %115 = load i32, i32* @end_flow_index, align 4
  %116 = call i32 @MLX5_SET(i32 %113, i32* %114, i32 %115, i32 0)
  %117 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %11, align 8
  %118 = load i32*, i32** %13, align 8
  %119 = call %struct.mlx5_flow_table* @mlx5_create_flow_group(%struct.mlx5_flow_table* %117, i32* %118)
  %120 = bitcast %struct.mlx5_flow_table* %119 to %struct.mlx5_flow_group*
  store %struct.mlx5_flow_group* %120, %struct.mlx5_flow_group** %7, align 8
  %121 = load %struct.mlx5_flow_group*, %struct.mlx5_flow_group** %7, align 8
  %122 = bitcast %struct.mlx5_flow_group* %121 to %struct.mlx5_flow_table*
  %123 = call i64 @IS_ERR(%struct.mlx5_flow_table* %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %135

125:                                              ; preds = %91
  %126 = load %struct.mlx5_flow_group*, %struct.mlx5_flow_group** %7, align 8
  %127 = bitcast %struct.mlx5_flow_group* %126 to %struct.mlx5_flow_table*
  %128 = call i32 @PTR_ERR(%struct.mlx5_flow_table* %127)
  store i32 %128, i32* %15, align 4
  %129 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %9, align 8
  %130 = load %struct.mlx5_vport*, %struct.mlx5_vport** %5, align 8
  %131 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* %15, align 4
  %134 = call i32 (%struct.mlx5_core_dev*, i8*, i32, ...) @esw_warn(%struct.mlx5_core_dev* %129, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.3, i64 0, i64 0), i32 %132, i32 %133)
  br label %180

135:                                              ; preds = %91
  %136 = load i32*, i32** %13, align 8
  %137 = load i32, i32* %6, align 4
  %138 = call i32 @memset(i32* %136, i32 0, i32 %137)
  %139 = load i32, i32* @create_flow_group_in, align 4
  %140 = load i32*, i32** %13, align 8
  %141 = load i32, i32* @start_flow_index, align 4
  %142 = call i32 @MLX5_SET(i32 %139, i32* %140, i32 %141, i32 1)
  %143 = load i32, i32* @create_flow_group_in, align 4
  %144 = load i32*, i32** %13, align 8
  %145 = load i32, i32* @end_flow_index, align 4
  %146 = call i32 @MLX5_SET(i32 %143, i32* %144, i32 %145, i32 1)
  %147 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %11, align 8
  %148 = load i32*, i32** %13, align 8
  %149 = call %struct.mlx5_flow_table* @mlx5_create_flow_group(%struct.mlx5_flow_table* %147, i32* %148)
  %150 = bitcast %struct.mlx5_flow_table* %149 to %struct.mlx5_flow_group*
  store %struct.mlx5_flow_group* %150, %struct.mlx5_flow_group** %8, align 8
  %151 = load %struct.mlx5_flow_group*, %struct.mlx5_flow_group** %8, align 8
  %152 = bitcast %struct.mlx5_flow_group* %151 to %struct.mlx5_flow_table*
  %153 = call i64 @IS_ERR(%struct.mlx5_flow_table* %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %165

155:                                              ; preds = %135
  %156 = load %struct.mlx5_flow_group*, %struct.mlx5_flow_group** %8, align 8
  %157 = bitcast %struct.mlx5_flow_group* %156 to %struct.mlx5_flow_table*
  %158 = call i32 @PTR_ERR(%struct.mlx5_flow_table* %157)
  store i32 %158, i32* %15, align 4
  %159 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %9, align 8
  %160 = load %struct.mlx5_vport*, %struct.mlx5_vport** %5, align 8
  %161 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 8
  %163 = load i32, i32* %15, align 4
  %164 = call i32 (%struct.mlx5_core_dev*, i8*, i32, ...) @esw_warn(%struct.mlx5_core_dev* %159, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.4, i64 0, i64 0), i32 %162, i32 %163)
  br label %180

165:                                              ; preds = %135
  %166 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %11, align 8
  %167 = load %struct.mlx5_vport*, %struct.mlx5_vport** %5, align 8
  %168 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %168, i32 0, i32 2
  store %struct.mlx5_flow_table* %166, %struct.mlx5_flow_table** %169, align 8
  %170 = load %struct.mlx5_flow_group*, %struct.mlx5_flow_group** %8, align 8
  %171 = bitcast %struct.mlx5_flow_group* %170 to %struct.mlx5_flow_table*
  %172 = load %struct.mlx5_vport*, %struct.mlx5_vport** %5, align 8
  %173 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %173, i32 0, i32 1
  store %struct.mlx5_flow_table* %171, %struct.mlx5_flow_table** %174, align 8
  %175 = load %struct.mlx5_flow_group*, %struct.mlx5_flow_group** %7, align 8
  %176 = bitcast %struct.mlx5_flow_group* %175 to %struct.mlx5_flow_table*
  %177 = load %struct.mlx5_vport*, %struct.mlx5_vport** %5, align 8
  %178 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %178, i32 0, i32 0
  store %struct.mlx5_flow_table* %176, %struct.mlx5_flow_table** %179, align 8
  br label %180

180:                                              ; preds = %165, %155, %125, %82
  %181 = load i32*, i32** %13, align 8
  %182 = call i32 @kvfree(i32* %181)
  %183 = load i32, i32* %15, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %194

185:                                              ; preds = %180
  %186 = load %struct.mlx5_flow_group*, %struct.mlx5_flow_group** %7, align 8
  %187 = bitcast %struct.mlx5_flow_group* %186 to %struct.mlx5_flow_table*
  %188 = call i32 @IS_ERR_OR_NULL(%struct.mlx5_flow_table* %187)
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %194, label %190

190:                                              ; preds = %185
  %191 = load %struct.mlx5_flow_group*, %struct.mlx5_flow_group** %7, align 8
  %192 = bitcast %struct.mlx5_flow_group* %191 to %struct.mlx5_flow_table*
  %193 = call i32 @mlx5_destroy_flow_group(%struct.mlx5_flow_table* %192)
  br label %194

194:                                              ; preds = %190, %185, %180
  %195 = load i32, i32* %15, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %204

197:                                              ; preds = %194
  %198 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %11, align 8
  %199 = call i32 @IS_ERR_OR_NULL(%struct.mlx5_flow_table* %198)
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %204, label %201

201:                                              ; preds = %197
  %202 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %11, align 8
  %203 = call i32 @mlx5_destroy_flow_table(%struct.mlx5_flow_table* %202)
  br label %204

204:                                              ; preds = %201, %197, %194
  %205 = load i32, i32* %15, align 4
  store i32 %205, i32* %3, align 4
  br label %206

206:                                              ; preds = %204, %69, %55, %35, %25
  %207 = load i32, i32* %3, align 4
  ret i32 %207
}

declare dso_local i32 @MLX5_ST_SZ_BYTES(i32) #1

declare dso_local i32 @MLX5_CAP_ESW_EGRESS_ACL(%struct.mlx5_core_dev*, i32) #1

declare dso_local i32 @IS_ERR_OR_NULL(%struct.mlx5_flow_table*) #1

declare dso_local i32 @esw_debug(%struct.mlx5_core_dev*, i8*, i32, i32) #1

declare dso_local %struct.mlx5_flow_namespace* @mlx5_get_flow_vport_acl_namespace(%struct.mlx5_core_dev*, i32, i32) #1

declare dso_local i32 @mlx5_eswitch_vport_num_to_index(%struct.mlx5_eswitch*, i32) #1

declare dso_local i32 @esw_warn(%struct.mlx5_core_dev*, i8*, i32, ...) #1

declare dso_local i32* @kvzalloc(i32, i32) #1

declare dso_local %struct.mlx5_flow_table* @mlx5_create_vport_flow_table(%struct.mlx5_flow_namespace*, i32, i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.mlx5_flow_table*) #1

declare dso_local i32 @PTR_ERR(%struct.mlx5_flow_table*) #1

declare dso_local i32 @MLX5_SET(i32, i32*, i32, i32) #1

declare dso_local i8* @MLX5_ADDR_OF(i32, i32*, i8*) #1

declare dso_local i32 @MLX5_SET_TO_ONES(i32, i8*, i32) #1

declare dso_local %struct.mlx5_flow_table* @mlx5_create_flow_group(%struct.mlx5_flow_table*, i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @kvfree(i32*) #1

declare dso_local i32 @mlx5_destroy_flow_group(%struct.mlx5_flow_table*) #1

declare dso_local i32 @mlx5_destroy_flow_table(%struct.mlx5_flow_table*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
