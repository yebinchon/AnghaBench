; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_eswitch.c_esw_vport_enable_ingress_acl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_eswitch.c_esw_vport_enable_ingress_acl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.mlx5_eswitch = type { %struct.mlx5_core_dev* }
%struct.mlx5_core_dev = type { i32 }
%struct.mlx5_vport = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { %struct.mlx5_flow_table*, %struct.mlx5_flow_table*, %struct.mlx5_flow_table*, %struct.mlx5_flow_table*, %struct.mlx5_flow_table* }
%struct.mlx5_flow_table = type { i32 }
%struct.mlx5_flow_namespace = type { i32 }
%struct.mlx5_flow_group = type opaque

@create_flow_group_in = common dso_local global i32 0, align 4
@ft_support = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Create vport[%d] ingress ACL log_max_size(%d)\0A\00", align 1
@log_max_ft_size = common dso_local global i32 0, align 4
@MLX5_FLOW_NAMESPACE_ESW_INGRESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [62 x i8] c"Failed to get E-Switch ingress flow namespace for vport (%d)\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [65 x i8] c"Failed to create E-Switch vport[%d] ingress flow Table, err(%d)\0A\00", align 1
@match_criteria_enable = common dso_local global i32 0, align 4
@MLX5_MATCH_OUTER_HEADERS = common dso_local global i32 0, align 4
@fte_match_param = common dso_local global i32 0, align 4
@outer_headers = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@start_flow_index = common dso_local global i32 0, align 4
@end_flow_index = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [83 x i8] c"Failed to create E-Switch vport[%d] ingress untagged spoofchk flow group, err(%d)\0A\00", align 1
@.str.4 = private unnamed_addr constant [74 x i8] c"Failed to create E-Switch vport[%d] ingress untagged flow group, err(%d)\0A\00", align 1
@.str.5 = private unnamed_addr constant [74 x i8] c"Failed to create E-Switch vport[%d] ingress spoofchk flow group, err(%d)\0A\00", align 1
@.str.6 = private unnamed_addr constant [70 x i8] c"Failed to create E-Switch vport[%d] ingress drop flow group, err(%d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @esw_vport_enable_ingress_acl(%struct.mlx5_eswitch* %0, %struct.mlx5_vport* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx5_eswitch*, align 8
  %5 = alloca %struct.mlx5_vport*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlx5_core_dev*, align 8
  %8 = alloca %struct.mlx5_flow_namespace*, align 8
  %9 = alloca %struct.mlx5_flow_table*, align 8
  %10 = alloca %struct.mlx5_flow_group*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.mlx5_eswitch* %0, %struct.mlx5_eswitch** %4, align 8
  store %struct.mlx5_vport* %1, %struct.mlx5_vport** %5, align 8
  %15 = load i32, i32* @create_flow_group_in, align 4
  %16 = call i32 @MLX5_ST_SZ_BYTES(i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %4, align 8
  %18 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %17, i32 0, i32 0
  %19 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %18, align 8
  store %struct.mlx5_core_dev* %19, %struct.mlx5_core_dev** %7, align 8
  store i32 4, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %20 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %7, align 8
  %21 = load i32, i32* @ft_support, align 4
  %22 = call i32 @MLX5_CAP_ESW_INGRESS_ACL(%struct.mlx5_core_dev* %20, i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %2
  %25 = load i32, i32* @EOPNOTSUPP, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %335

27:                                               ; preds = %2
  %28 = load %struct.mlx5_vport*, %struct.mlx5_vport** %5, align 8
  %29 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %30, align 8
  %32 = call i32 @IS_ERR_OR_NULL(%struct.mlx5_flow_table* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %27
  store i32 0, i32* %3, align 4
  br label %335

35:                                               ; preds = %27
  %36 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %7, align 8
  %37 = load %struct.mlx5_vport*, %struct.mlx5_vport** %5, align 8
  %38 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %7, align 8
  %41 = load i32, i32* @log_max_ft_size, align 4
  %42 = call i32 @MLX5_CAP_ESW_INGRESS_ACL(%struct.mlx5_core_dev* %40, i32 %41)
  %43 = call i32 @esw_debug(%struct.mlx5_core_dev* %36, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %39, i32 %42)
  %44 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %7, align 8
  %45 = load i32, i32* @MLX5_FLOW_NAMESPACE_ESW_INGRESS, align 4
  %46 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %4, align 8
  %47 = load %struct.mlx5_vport*, %struct.mlx5_vport** %5, align 8
  %48 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @mlx5_eswitch_vport_num_to_index(%struct.mlx5_eswitch* %46, i32 %49)
  %51 = call %struct.mlx5_flow_namespace* @mlx5_get_flow_vport_acl_namespace(%struct.mlx5_core_dev* %44, i32 %45, i32 %50)
  store %struct.mlx5_flow_namespace* %51, %struct.mlx5_flow_namespace** %8, align 8
  %52 = load %struct.mlx5_flow_namespace*, %struct.mlx5_flow_namespace** %8, align 8
  %53 = icmp ne %struct.mlx5_flow_namespace* %52, null
  br i1 %53, label %62, label %54

54:                                               ; preds = %35
  %55 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %7, align 8
  %56 = load %struct.mlx5_vport*, %struct.mlx5_vport** %5, align 8
  %57 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = call i32 (%struct.mlx5_core_dev*, i8*, i32, ...) @esw_warn(%struct.mlx5_core_dev* %55, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0), i32 %58)
  %60 = load i32, i32* @EOPNOTSUPP, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %3, align 4
  br label %335

62:                                               ; preds = %35
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* @GFP_KERNEL, align 4
  %65 = call i32* @kvzalloc(i32 %63, i32 %64)
  store i32* %65, i32** %12, align 8
  %66 = load i32*, i32** %12, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %71, label %68

68:                                               ; preds = %62
  %69 = load i32, i32* @ENOMEM, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %3, align 4
  br label %335

71:                                               ; preds = %62
  %72 = load %struct.mlx5_flow_namespace*, %struct.mlx5_flow_namespace** %8, align 8
  %73 = load i32, i32* %13, align 4
  %74 = load %struct.mlx5_vport*, %struct.mlx5_vport** %5, align 8
  %75 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = call %struct.mlx5_flow_table* @mlx5_create_vport_flow_table(%struct.mlx5_flow_namespace* %72, i32 0, i32 %73, i32 0, i32 %76)
  store %struct.mlx5_flow_table* %77, %struct.mlx5_flow_table** %9, align 8
  %78 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %9, align 8
  %79 = call i64 @IS_ERR(%struct.mlx5_flow_table* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %90

81:                                               ; preds = %71
  %82 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %9, align 8
  %83 = call i32 @PTR_ERR(%struct.mlx5_flow_table* %82)
  store i32 %83, i32* %14, align 4
  %84 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %7, align 8
  %85 = load %struct.mlx5_vport*, %struct.mlx5_vport** %5, align 8
  %86 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* %14, align 4
  %89 = call i32 (%struct.mlx5_core_dev*, i8*, i32, ...) @esw_warn(%struct.mlx5_core_dev* %84, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.2, i64 0, i64 0), i32 %87, i32 %88)
  br label %275

90:                                               ; preds = %71
  %91 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %9, align 8
  %92 = load %struct.mlx5_vport*, %struct.mlx5_vport** %5, align 8
  %93 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 0
  store %struct.mlx5_flow_table* %91, %struct.mlx5_flow_table** %94, align 8
  %95 = load i32, i32* @create_flow_group_in, align 4
  %96 = load i32*, i32** %12, align 8
  %97 = load i8*, i8** %11, align 8
  %98 = call i8* @MLX5_ADDR_OF(i32 %95, i32* %96, i8* %97)
  store i8* %98, i8** %11, align 8
  %99 = load i32, i32* @create_flow_group_in, align 4
  %100 = load i32*, i32** %12, align 8
  %101 = load i32, i32* @match_criteria_enable, align 4
  %102 = load i32, i32* @MLX5_MATCH_OUTER_HEADERS, align 4
  %103 = call i32 @MLX5_SET(i32 %99, i32* %100, i32 %101, i32 %102)
  %104 = load i32, i32* @fte_match_param, align 4
  %105 = load i8*, i8** %11, align 8
  %106 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @outer_headers, i32 0, i32 2), align 4
  %107 = call i32 @MLX5_SET_TO_ONES(i32 %104, i8* %105, i32 %106)
  %108 = load i32, i32* @fte_match_param, align 4
  %109 = load i8*, i8** %11, align 8
  %110 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @outer_headers, i32 0, i32 1), align 4
  %111 = call i32 @MLX5_SET_TO_ONES(i32 %108, i8* %109, i32 %110)
  %112 = load i32, i32* @fte_match_param, align 4
  %113 = load i8*, i8** %11, align 8
  %114 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @outer_headers, i32 0, i32 0), align 4
  %115 = call i32 @MLX5_SET_TO_ONES(i32 %112, i8* %113, i32 %114)
  %116 = load i32, i32* @create_flow_group_in, align 4
  %117 = load i32*, i32** %12, align 8
  %118 = load i32, i32* @start_flow_index, align 4
  %119 = call i32 @MLX5_SET(i32 %116, i32* %117, i32 %118, i32 0)
  %120 = load i32, i32* @create_flow_group_in, align 4
  %121 = load i32*, i32** %12, align 8
  %122 = load i32, i32* @end_flow_index, align 4
  %123 = call i32 @MLX5_SET(i32 %120, i32* %121, i32 %122, i32 0)
  %124 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %9, align 8
  %125 = load i32*, i32** %12, align 8
  %126 = call %struct.mlx5_flow_table* @mlx5_create_flow_group(%struct.mlx5_flow_table* %124, i32* %125)
  %127 = bitcast %struct.mlx5_flow_table* %126 to %struct.mlx5_flow_group*
  store %struct.mlx5_flow_group* %127, %struct.mlx5_flow_group** %10, align 8
  %128 = load %struct.mlx5_flow_group*, %struct.mlx5_flow_group** %10, align 8
  %129 = bitcast %struct.mlx5_flow_group* %128 to %struct.mlx5_flow_table*
  %130 = call i64 @IS_ERR(%struct.mlx5_flow_table* %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %142

132:                                              ; preds = %90
  %133 = load %struct.mlx5_flow_group*, %struct.mlx5_flow_group** %10, align 8
  %134 = bitcast %struct.mlx5_flow_group* %133 to %struct.mlx5_flow_table*
  %135 = call i32 @PTR_ERR(%struct.mlx5_flow_table* %134)
  store i32 %135, i32* %14, align 4
  %136 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %7, align 8
  %137 = load %struct.mlx5_vport*, %struct.mlx5_vport** %5, align 8
  %138 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* %14, align 4
  %141 = call i32 (%struct.mlx5_core_dev*, i8*, i32, ...) @esw_warn(%struct.mlx5_core_dev* %136, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.3, i64 0, i64 0), i32 %139, i32 %140)
  br label %275

142:                                              ; preds = %90
  %143 = load %struct.mlx5_flow_group*, %struct.mlx5_flow_group** %10, align 8
  %144 = bitcast %struct.mlx5_flow_group* %143 to %struct.mlx5_flow_table*
  %145 = load %struct.mlx5_vport*, %struct.mlx5_vport** %5, align 8
  %146 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i32 0, i32 1
  store %struct.mlx5_flow_table* %144, %struct.mlx5_flow_table** %147, align 8
  %148 = load i32*, i32** %12, align 8
  %149 = load i32, i32* %6, align 4
  %150 = call i32 @memset(i32* %148, i32 0, i32 %149)
  %151 = load i32, i32* @create_flow_group_in, align 4
  %152 = load i32*, i32** %12, align 8
  %153 = load i32, i32* @match_criteria_enable, align 4
  %154 = load i32, i32* @MLX5_MATCH_OUTER_HEADERS, align 4
  %155 = call i32 @MLX5_SET(i32 %151, i32* %152, i32 %153, i32 %154)
  %156 = load i32, i32* @fte_match_param, align 4
  %157 = load i8*, i8** %11, align 8
  %158 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @outer_headers, i32 0, i32 2), align 4
  %159 = call i32 @MLX5_SET_TO_ONES(i32 %156, i8* %157, i32 %158)
  %160 = load i32, i32* @create_flow_group_in, align 4
  %161 = load i32*, i32** %12, align 8
  %162 = load i32, i32* @start_flow_index, align 4
  %163 = call i32 @MLX5_SET(i32 %160, i32* %161, i32 %162, i32 1)
  %164 = load i32, i32* @create_flow_group_in, align 4
  %165 = load i32*, i32** %12, align 8
  %166 = load i32, i32* @end_flow_index, align 4
  %167 = call i32 @MLX5_SET(i32 %164, i32* %165, i32 %166, i32 1)
  %168 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %9, align 8
  %169 = load i32*, i32** %12, align 8
  %170 = call %struct.mlx5_flow_table* @mlx5_create_flow_group(%struct.mlx5_flow_table* %168, i32* %169)
  %171 = bitcast %struct.mlx5_flow_table* %170 to %struct.mlx5_flow_group*
  store %struct.mlx5_flow_group* %171, %struct.mlx5_flow_group** %10, align 8
  %172 = load %struct.mlx5_flow_group*, %struct.mlx5_flow_group** %10, align 8
  %173 = bitcast %struct.mlx5_flow_group* %172 to %struct.mlx5_flow_table*
  %174 = call i64 @IS_ERR(%struct.mlx5_flow_table* %173)
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %186

176:                                              ; preds = %142
  %177 = load %struct.mlx5_flow_group*, %struct.mlx5_flow_group** %10, align 8
  %178 = bitcast %struct.mlx5_flow_group* %177 to %struct.mlx5_flow_table*
  %179 = call i32 @PTR_ERR(%struct.mlx5_flow_table* %178)
  store i32 %179, i32* %14, align 4
  %180 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %7, align 8
  %181 = load %struct.mlx5_vport*, %struct.mlx5_vport** %5, align 8
  %182 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 8
  %184 = load i32, i32* %14, align 4
  %185 = call i32 (%struct.mlx5_core_dev*, i8*, i32, ...) @esw_warn(%struct.mlx5_core_dev* %180, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.4, i64 0, i64 0), i32 %183, i32 %184)
  br label %275

186:                                              ; preds = %142
  %187 = load %struct.mlx5_flow_group*, %struct.mlx5_flow_group** %10, align 8
  %188 = bitcast %struct.mlx5_flow_group* %187 to %struct.mlx5_flow_table*
  %189 = load %struct.mlx5_vport*, %struct.mlx5_vport** %5, align 8
  %190 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %190, i32 0, i32 2
  store %struct.mlx5_flow_table* %188, %struct.mlx5_flow_table** %191, align 8
  %192 = load i32*, i32** %12, align 8
  %193 = load i32, i32* %6, align 4
  %194 = call i32 @memset(i32* %192, i32 0, i32 %193)
  %195 = load i32, i32* @create_flow_group_in, align 4
  %196 = load i32*, i32** %12, align 8
  %197 = load i32, i32* @match_criteria_enable, align 4
  %198 = load i32, i32* @MLX5_MATCH_OUTER_HEADERS, align 4
  %199 = call i32 @MLX5_SET(i32 %195, i32* %196, i32 %197, i32 %198)
  %200 = load i32, i32* @fte_match_param, align 4
  %201 = load i8*, i8** %11, align 8
  %202 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @outer_headers, i32 0, i32 1), align 4
  %203 = call i32 @MLX5_SET_TO_ONES(i32 %200, i8* %201, i32 %202)
  %204 = load i32, i32* @fte_match_param, align 4
  %205 = load i8*, i8** %11, align 8
  %206 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @outer_headers, i32 0, i32 0), align 4
  %207 = call i32 @MLX5_SET_TO_ONES(i32 %204, i8* %205, i32 %206)
  %208 = load i32, i32* @create_flow_group_in, align 4
  %209 = load i32*, i32** %12, align 8
  %210 = load i32, i32* @start_flow_index, align 4
  %211 = call i32 @MLX5_SET(i32 %208, i32* %209, i32 %210, i32 2)
  %212 = load i32, i32* @create_flow_group_in, align 4
  %213 = load i32*, i32** %12, align 8
  %214 = load i32, i32* @end_flow_index, align 4
  %215 = call i32 @MLX5_SET(i32 %212, i32* %213, i32 %214, i32 2)
  %216 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %9, align 8
  %217 = load i32*, i32** %12, align 8
  %218 = call %struct.mlx5_flow_table* @mlx5_create_flow_group(%struct.mlx5_flow_table* %216, i32* %217)
  %219 = bitcast %struct.mlx5_flow_table* %218 to %struct.mlx5_flow_group*
  store %struct.mlx5_flow_group* %219, %struct.mlx5_flow_group** %10, align 8
  %220 = load %struct.mlx5_flow_group*, %struct.mlx5_flow_group** %10, align 8
  %221 = bitcast %struct.mlx5_flow_group* %220 to %struct.mlx5_flow_table*
  %222 = call i64 @IS_ERR(%struct.mlx5_flow_table* %221)
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %234

224:                                              ; preds = %186
  %225 = load %struct.mlx5_flow_group*, %struct.mlx5_flow_group** %10, align 8
  %226 = bitcast %struct.mlx5_flow_group* %225 to %struct.mlx5_flow_table*
  %227 = call i32 @PTR_ERR(%struct.mlx5_flow_table* %226)
  store i32 %227, i32* %14, align 4
  %228 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %7, align 8
  %229 = load %struct.mlx5_vport*, %struct.mlx5_vport** %5, align 8
  %230 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %229, i32 0, i32 1
  %231 = load i32, i32* %230, align 8
  %232 = load i32, i32* %14, align 4
  %233 = call i32 (%struct.mlx5_core_dev*, i8*, i32, ...) @esw_warn(%struct.mlx5_core_dev* %228, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.5, i64 0, i64 0), i32 %231, i32 %232)
  br label %275

234:                                              ; preds = %186
  %235 = load %struct.mlx5_flow_group*, %struct.mlx5_flow_group** %10, align 8
  %236 = bitcast %struct.mlx5_flow_group* %235 to %struct.mlx5_flow_table*
  %237 = load %struct.mlx5_vport*, %struct.mlx5_vport** %5, align 8
  %238 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %237, i32 0, i32 0
  %239 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %238, i32 0, i32 3
  store %struct.mlx5_flow_table* %236, %struct.mlx5_flow_table** %239, align 8
  %240 = load i32*, i32** %12, align 8
  %241 = load i32, i32* %6, align 4
  %242 = call i32 @memset(i32* %240, i32 0, i32 %241)
  %243 = load i32, i32* @create_flow_group_in, align 4
  %244 = load i32*, i32** %12, align 8
  %245 = load i32, i32* @start_flow_index, align 4
  %246 = call i32 @MLX5_SET(i32 %243, i32* %244, i32 %245, i32 3)
  %247 = load i32, i32* @create_flow_group_in, align 4
  %248 = load i32*, i32** %12, align 8
  %249 = load i32, i32* @end_flow_index, align 4
  %250 = call i32 @MLX5_SET(i32 %247, i32* %248, i32 %249, i32 3)
  %251 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %9, align 8
  %252 = load i32*, i32** %12, align 8
  %253 = call %struct.mlx5_flow_table* @mlx5_create_flow_group(%struct.mlx5_flow_table* %251, i32* %252)
  %254 = bitcast %struct.mlx5_flow_table* %253 to %struct.mlx5_flow_group*
  store %struct.mlx5_flow_group* %254, %struct.mlx5_flow_group** %10, align 8
  %255 = load %struct.mlx5_flow_group*, %struct.mlx5_flow_group** %10, align 8
  %256 = bitcast %struct.mlx5_flow_group* %255 to %struct.mlx5_flow_table*
  %257 = call i64 @IS_ERR(%struct.mlx5_flow_table* %256)
  %258 = icmp ne i64 %257, 0
  br i1 %258, label %259, label %269

259:                                              ; preds = %234
  %260 = load %struct.mlx5_flow_group*, %struct.mlx5_flow_group** %10, align 8
  %261 = bitcast %struct.mlx5_flow_group* %260 to %struct.mlx5_flow_table*
  %262 = call i32 @PTR_ERR(%struct.mlx5_flow_table* %261)
  store i32 %262, i32* %14, align 4
  %263 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %7, align 8
  %264 = load %struct.mlx5_vport*, %struct.mlx5_vport** %5, align 8
  %265 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %264, i32 0, i32 1
  %266 = load i32, i32* %265, align 8
  %267 = load i32, i32* %14, align 4
  %268 = call i32 (%struct.mlx5_core_dev*, i8*, i32, ...) @esw_warn(%struct.mlx5_core_dev* %263, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.6, i64 0, i64 0), i32 %266, i32 %267)
  br label %275

269:                                              ; preds = %234
  %270 = load %struct.mlx5_flow_group*, %struct.mlx5_flow_group** %10, align 8
  %271 = bitcast %struct.mlx5_flow_group* %270 to %struct.mlx5_flow_table*
  %272 = load %struct.mlx5_vport*, %struct.mlx5_vport** %5, align 8
  %273 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %272, i32 0, i32 0
  %274 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %273, i32 0, i32 4
  store %struct.mlx5_flow_table* %271, %struct.mlx5_flow_table** %274, align 8
  br label %275

275:                                              ; preds = %269, %259, %224, %176, %132, %81
  %276 = load i32, i32* %14, align 4
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %278, label %331

278:                                              ; preds = %275
  %279 = load %struct.mlx5_vport*, %struct.mlx5_vport** %5, align 8
  %280 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %279, i32 0, i32 0
  %281 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %280, i32 0, i32 3
  %282 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %281, align 8
  %283 = call i32 @IS_ERR_OR_NULL(%struct.mlx5_flow_table* %282)
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %291, label %285

285:                                              ; preds = %278
  %286 = load %struct.mlx5_vport*, %struct.mlx5_vport** %5, align 8
  %287 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %286, i32 0, i32 0
  %288 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %287, i32 0, i32 3
  %289 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %288, align 8
  %290 = call i32 @mlx5_destroy_flow_group(%struct.mlx5_flow_table* %289)
  br label %291

291:                                              ; preds = %285, %278
  %292 = load %struct.mlx5_vport*, %struct.mlx5_vport** %5, align 8
  %293 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %292, i32 0, i32 0
  %294 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %293, i32 0, i32 2
  %295 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %294, align 8
  %296 = call i32 @IS_ERR_OR_NULL(%struct.mlx5_flow_table* %295)
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %304, label %298

298:                                              ; preds = %291
  %299 = load %struct.mlx5_vport*, %struct.mlx5_vport** %5, align 8
  %300 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %299, i32 0, i32 0
  %301 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %300, i32 0, i32 2
  %302 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %301, align 8
  %303 = call i32 @mlx5_destroy_flow_group(%struct.mlx5_flow_table* %302)
  br label %304

304:                                              ; preds = %298, %291
  %305 = load %struct.mlx5_vport*, %struct.mlx5_vport** %5, align 8
  %306 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %305, i32 0, i32 0
  %307 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %306, i32 0, i32 1
  %308 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %307, align 8
  %309 = call i32 @IS_ERR_OR_NULL(%struct.mlx5_flow_table* %308)
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %317, label %311

311:                                              ; preds = %304
  %312 = load %struct.mlx5_vport*, %struct.mlx5_vport** %5, align 8
  %313 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %312, i32 0, i32 0
  %314 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %313, i32 0, i32 1
  %315 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %314, align 8
  %316 = call i32 @mlx5_destroy_flow_group(%struct.mlx5_flow_table* %315)
  br label %317

317:                                              ; preds = %311, %304
  %318 = load %struct.mlx5_vport*, %struct.mlx5_vport** %5, align 8
  %319 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %318, i32 0, i32 0
  %320 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %319, i32 0, i32 0
  %321 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %320, align 8
  %322 = call i32 @IS_ERR_OR_NULL(%struct.mlx5_flow_table* %321)
  %323 = icmp ne i32 %322, 0
  br i1 %323, label %330, label %324

324:                                              ; preds = %317
  %325 = load %struct.mlx5_vport*, %struct.mlx5_vport** %5, align 8
  %326 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %325, i32 0, i32 0
  %327 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %326, i32 0, i32 0
  %328 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %327, align 8
  %329 = call i32 @mlx5_destroy_flow_table(%struct.mlx5_flow_table* %328)
  br label %330

330:                                              ; preds = %324, %317
  br label %331

331:                                              ; preds = %330, %275
  %332 = load i32*, i32** %12, align 8
  %333 = call i32 @kvfree(i32* %332)
  %334 = load i32, i32* %14, align 4
  store i32 %334, i32* %3, align 4
  br label %335

335:                                              ; preds = %331, %68, %54, %34, %24
  %336 = load i32, i32* %3, align 4
  ret i32 %336
}

declare dso_local i32 @MLX5_ST_SZ_BYTES(i32) #1

declare dso_local i32 @MLX5_CAP_ESW_INGRESS_ACL(%struct.mlx5_core_dev*, i32) #1

declare dso_local i32 @IS_ERR_OR_NULL(%struct.mlx5_flow_table*) #1

declare dso_local i32 @esw_debug(%struct.mlx5_core_dev*, i8*, i32, i32) #1

declare dso_local %struct.mlx5_flow_namespace* @mlx5_get_flow_vport_acl_namespace(%struct.mlx5_core_dev*, i32, i32) #1

declare dso_local i32 @mlx5_eswitch_vport_num_to_index(%struct.mlx5_eswitch*, i32) #1

declare dso_local i32 @esw_warn(%struct.mlx5_core_dev*, i8*, i32, ...) #1

declare dso_local i32* @kvzalloc(i32, i32) #1

declare dso_local %struct.mlx5_flow_table* @mlx5_create_vport_flow_table(%struct.mlx5_flow_namespace*, i32, i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.mlx5_flow_table*) #1

declare dso_local i32 @PTR_ERR(%struct.mlx5_flow_table*) #1

declare dso_local i8* @MLX5_ADDR_OF(i32, i32*, i8*) #1

declare dso_local i32 @MLX5_SET(i32, i32*, i32, i32) #1

declare dso_local i32 @MLX5_SET_TO_ONES(i32, i8*, i32) #1

declare dso_local %struct.mlx5_flow_table* @mlx5_create_flow_group(%struct.mlx5_flow_table*, i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @mlx5_destroy_flow_group(%struct.mlx5_flow_table*) #1

declare dso_local i32 @mlx5_destroy_flow_table(%struct.mlx5_flow_table*) #1

declare dso_local i32 @kvfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
