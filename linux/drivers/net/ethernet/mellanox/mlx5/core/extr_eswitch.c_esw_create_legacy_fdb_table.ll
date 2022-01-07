; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_eswitch.c_esw_create_legacy_fdb_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_eswitch.c_esw_create_legacy_fdb_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8* }
%struct.TYPE_8__ = type { i32 }
%struct.mlx5_eswitch = type { %struct.TYPE_6__, %struct.mlx5_core_dev* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.mlx5_flow_table*, %struct.mlx5_flow_table*, %struct.mlx5_flow_table*, %struct.mlx5_flow_table* }
%struct.mlx5_flow_table = type { i32 }
%struct.mlx5_core_dev = type { i32 }
%struct.mlx5_flow_table_attr = type { i32, i32 }
%struct.mlx5_flow_namespace = type { i32 }
%struct.mlx5_flow_group = type opaque

@create_flow_group_in = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Create FDB log_max_size(%d)\0A\00", align 1
@log_max_ft_size = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Failed to get FDB flow namespace\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@LEGACY_FDB_PRIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"Failed to create FDB Table err %d\0A\00", align 1
@match_criteria_enable = common dso_local global i32 0, align 4
@MLX5_MATCH_OUTER_HEADERS = common dso_local global i32 0, align 4
@fte_match_param = common dso_local global i32 0, align 4
@outer_headers = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@start_flow_index = common dso_local global i32 0, align 4
@end_flow_index = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"Failed to create flow group err(%d)\0A\00", align 1
@.str.4 = private unnamed_addr constant [46 x i8] c"Failed to create allmulti flow group err(%d)\0A\00", align 1
@MLX5_MATCH_MISC_PARAMETERS = common dso_local global i32 0, align 4
@misc_parameters = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@.str.5 = private unnamed_addr constant [45 x i8] c"Failed to create promisc flow group err(%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_eswitch*)* @esw_create_legacy_fdb_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @esw_create_legacy_fdb_table(%struct.mlx5_eswitch* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx5_eswitch*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx5_flow_table_attr, align 4
  %6 = alloca %struct.mlx5_core_dev*, align 8
  %7 = alloca %struct.mlx5_flow_namespace*, align 8
  %8 = alloca %struct.mlx5_flow_table*, align 8
  %9 = alloca %struct.mlx5_flow_group*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store %struct.mlx5_eswitch* %0, %struct.mlx5_eswitch** %3, align 8
  %15 = load i32, i32* @create_flow_group_in, align 4
  %16 = call i32 @MLX5_ST_SZ_BYTES(i32 %15)
  store i32 %16, i32* %4, align 4
  %17 = bitcast %struct.mlx5_flow_table_attr* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %17, i8 0, i64 8, i1 false)
  %18 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %3, align 8
  %19 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %18, i32 0, i32 1
  %20 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %19, align 8
  store %struct.mlx5_core_dev* %20, %struct.mlx5_core_dev** %6, align 8
  store i32 0, i32* %14, align 4
  %21 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  %22 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  %23 = load i32, i32* @log_max_ft_size, align 4
  %24 = call i32 @MLX5_CAP_ESW_FLOWTABLE_FDB(%struct.mlx5_core_dev* %22, i32 %23)
  %25 = call i32 @esw_debug(%struct.mlx5_core_dev* %21, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  %27 = call %struct.mlx5_flow_namespace* @mlx5_get_fdb_sub_ns(%struct.mlx5_core_dev* %26, i32 0)
  store %struct.mlx5_flow_namespace* %27, %struct.mlx5_flow_namespace** %7, align 8
  %28 = load %struct.mlx5_flow_namespace*, %struct.mlx5_flow_namespace** %7, align 8
  %29 = icmp ne %struct.mlx5_flow_namespace* %28, null
  br i1 %29, label %35, label %30

30:                                               ; preds = %1
  %31 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  %32 = call i32 (%struct.mlx5_core_dev*, i8*, ...) @esw_warn(%struct.mlx5_core_dev* %31, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i32, i32* @EOPNOTSUPP, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %216

35:                                               ; preds = %1
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = call i8* @kvzalloc(i32 %36, i32 %37)
  store i8* %38, i8** %12, align 8
  %39 = load i8*, i8** %12, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %35
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %2, align 4
  br label %216

44:                                               ; preds = %35
  %45 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  %46 = load i32, i32* @log_max_ft_size, align 4
  %47 = call i32 @MLX5_CAP_ESW_FLOWTABLE_FDB(%struct.mlx5_core_dev* %45, i32 %46)
  %48 = call i32 @BIT(i32 %47)
  store i32 %48, i32* %11, align 4
  %49 = load i32, i32* %11, align 4
  %50 = getelementptr inbounds %struct.mlx5_flow_table_attr, %struct.mlx5_flow_table_attr* %5, i32 0, i32 0
  store i32 %49, i32* %50, align 4
  %51 = load i32, i32* @LEGACY_FDB_PRIO, align 4
  %52 = getelementptr inbounds %struct.mlx5_flow_table_attr, %struct.mlx5_flow_table_attr* %5, i32 0, i32 1
  store i32 %51, i32* %52, align 4
  %53 = load %struct.mlx5_flow_namespace*, %struct.mlx5_flow_namespace** %7, align 8
  %54 = call %struct.mlx5_flow_table* @mlx5_create_flow_table(%struct.mlx5_flow_namespace* %53, %struct.mlx5_flow_table_attr* %5)
  store %struct.mlx5_flow_table* %54, %struct.mlx5_flow_table** %8, align 8
  %55 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %8, align 8
  %56 = call i64 @IS_ERR(%struct.mlx5_flow_table* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %44
  %59 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %8, align 8
  %60 = call i32 @PTR_ERR(%struct.mlx5_flow_table* %59)
  store i32 %60, i32* %14, align 4
  %61 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  %62 = load i32, i32* %14, align 4
  %63 = call i32 (%struct.mlx5_core_dev*, i8*, ...) @esw_warn(%struct.mlx5_core_dev* %61, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %62)
  br label %206

64:                                               ; preds = %44
  %65 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %8, align 8
  %66 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %3, align 8
  %67 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 3
  store %struct.mlx5_flow_table* %65, %struct.mlx5_flow_table** %69, align 8
  %70 = load i32, i32* @create_flow_group_in, align 4
  %71 = load i8*, i8** %12, align 8
  %72 = load i32, i32* @match_criteria_enable, align 4
  %73 = load i32, i32* @MLX5_MATCH_OUTER_HEADERS, align 4
  %74 = call i32 @MLX5_SET(i32 %70, i8* %71, i32 %72, i32 %73)
  %75 = load i32, i32* @create_flow_group_in, align 4
  %76 = load i8*, i8** %12, align 8
  %77 = load i8*, i8** %10, align 8
  %78 = call i8* @MLX5_ADDR_OF(i32 %75, i8* %76, i8* %77)
  store i8* %78, i8** %10, align 8
  %79 = load i32, i32* @fte_match_param, align 4
  %80 = load i8*, i8** %10, align 8
  %81 = load i8*, i8** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @outer_headers, i32 0, i32 0), align 8
  %82 = call i8* @MLX5_ADDR_OF(i32 %79, i8* %80, i8* %81)
  %83 = bitcast i8* %82 to i32*
  store i32* %83, i32** %13, align 8
  %84 = load i32, i32* @create_flow_group_in, align 4
  %85 = load i8*, i8** %12, align 8
  %86 = load i32, i32* @start_flow_index, align 4
  %87 = call i32 @MLX5_SET(i32 %84, i8* %85, i32 %86, i32 0)
  %88 = load i32, i32* @create_flow_group_in, align 4
  %89 = load i8*, i8** %12, align 8
  %90 = load i32, i32* @end_flow_index, align 4
  %91 = load i32, i32* %11, align 4
  %92 = sub nsw i32 %91, 3
  %93 = call i32 @MLX5_SET(i32 %88, i8* %89, i32 %90, i32 %92)
  %94 = load i32*, i32** %13, align 8
  %95 = call i32 @eth_broadcast_addr(i32* %94)
  %96 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %8, align 8
  %97 = load i8*, i8** %12, align 8
  %98 = call %struct.mlx5_flow_table* @mlx5_create_flow_group(%struct.mlx5_flow_table* %96, i8* %97)
  %99 = bitcast %struct.mlx5_flow_table* %98 to %struct.mlx5_flow_group*
  store %struct.mlx5_flow_group* %99, %struct.mlx5_flow_group** %9, align 8
  %100 = load %struct.mlx5_flow_group*, %struct.mlx5_flow_group** %9, align 8
  %101 = bitcast %struct.mlx5_flow_group* %100 to %struct.mlx5_flow_table*
  %102 = call i64 @IS_ERR(%struct.mlx5_flow_table* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %111

104:                                              ; preds = %64
  %105 = load %struct.mlx5_flow_group*, %struct.mlx5_flow_group** %9, align 8
  %106 = bitcast %struct.mlx5_flow_group* %105 to %struct.mlx5_flow_table*
  %107 = call i32 @PTR_ERR(%struct.mlx5_flow_table* %106)
  store i32 %107, i32* %14, align 4
  %108 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  %109 = load i32, i32* %14, align 4
  %110 = call i32 (%struct.mlx5_core_dev*, i8*, ...) @esw_warn(%struct.mlx5_core_dev* %108, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %109)
  br label %206

111:                                              ; preds = %64
  %112 = load %struct.mlx5_flow_group*, %struct.mlx5_flow_group** %9, align 8
  %113 = bitcast %struct.mlx5_flow_group* %112 to %struct.mlx5_flow_table*
  %114 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %3, align 8
  %115 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 2
  store %struct.mlx5_flow_table* %113, %struct.mlx5_flow_table** %117, align 8
  %118 = load i32, i32* @create_flow_group_in, align 4
  %119 = load i8*, i8** %12, align 8
  %120 = load i32, i32* @match_criteria_enable, align 4
  %121 = load i32, i32* @MLX5_MATCH_OUTER_HEADERS, align 4
  %122 = call i32 @MLX5_SET(i32 %118, i8* %119, i32 %120, i32 %121)
  %123 = load i32, i32* @create_flow_group_in, align 4
  %124 = load i8*, i8** %12, align 8
  %125 = load i32, i32* @start_flow_index, align 4
  %126 = load i32, i32* %11, align 4
  %127 = sub nsw i32 %126, 2
  %128 = call i32 @MLX5_SET(i32 %123, i8* %124, i32 %125, i32 %127)
  %129 = load i32, i32* @create_flow_group_in, align 4
  %130 = load i8*, i8** %12, align 8
  %131 = load i32, i32* @end_flow_index, align 4
  %132 = load i32, i32* %11, align 4
  %133 = sub nsw i32 %132, 2
  %134 = call i32 @MLX5_SET(i32 %129, i8* %130, i32 %131, i32 %133)
  %135 = load i32*, i32** %13, align 8
  %136 = call i32 @eth_zero_addr(i32* %135)
  %137 = load i32*, i32** %13, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 0
  store i32 1, i32* %138, align 4
  %139 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %8, align 8
  %140 = load i8*, i8** %12, align 8
  %141 = call %struct.mlx5_flow_table* @mlx5_create_flow_group(%struct.mlx5_flow_table* %139, i8* %140)
  %142 = bitcast %struct.mlx5_flow_table* %141 to %struct.mlx5_flow_group*
  store %struct.mlx5_flow_group* %142, %struct.mlx5_flow_group** %9, align 8
  %143 = load %struct.mlx5_flow_group*, %struct.mlx5_flow_group** %9, align 8
  %144 = bitcast %struct.mlx5_flow_group* %143 to %struct.mlx5_flow_table*
  %145 = call i64 @IS_ERR(%struct.mlx5_flow_table* %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %154

147:                                              ; preds = %111
  %148 = load %struct.mlx5_flow_group*, %struct.mlx5_flow_group** %9, align 8
  %149 = bitcast %struct.mlx5_flow_group* %148 to %struct.mlx5_flow_table*
  %150 = call i32 @PTR_ERR(%struct.mlx5_flow_table* %149)
  store i32 %150, i32* %14, align 4
  %151 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  %152 = load i32, i32* %14, align 4
  %153 = call i32 (%struct.mlx5_core_dev*, i8*, ...) @esw_warn(%struct.mlx5_core_dev* %151, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0), i32 %152)
  br label %206

154:                                              ; preds = %111
  %155 = load %struct.mlx5_flow_group*, %struct.mlx5_flow_group** %9, align 8
  %156 = bitcast %struct.mlx5_flow_group* %155 to %struct.mlx5_flow_table*
  %157 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %3, align 8
  %158 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %159, i32 0, i32 1
  store %struct.mlx5_flow_table* %156, %struct.mlx5_flow_table** %160, align 8
  %161 = load i32*, i32** %13, align 8
  %162 = call i32 @eth_zero_addr(i32* %161)
  %163 = load i32, i32* @create_flow_group_in, align 4
  %164 = load i8*, i8** %12, align 8
  %165 = load i32, i32* @match_criteria_enable, align 4
  %166 = load i32, i32* @MLX5_MATCH_MISC_PARAMETERS, align 4
  %167 = call i32 @MLX5_SET(i32 %163, i8* %164, i32 %165, i32 %166)
  %168 = load i32, i32* @fte_match_param, align 4
  %169 = load i8*, i8** %10, align 8
  %170 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @misc_parameters, i32 0, i32 0), align 4
  %171 = call i32 @MLX5_SET_TO_ONES(i32 %168, i8* %169, i32 %170)
  %172 = load i32, i32* @create_flow_group_in, align 4
  %173 = load i8*, i8** %12, align 8
  %174 = load i32, i32* @start_flow_index, align 4
  %175 = load i32, i32* %11, align 4
  %176 = sub nsw i32 %175, 1
  %177 = call i32 @MLX5_SET(i32 %172, i8* %173, i32 %174, i32 %176)
  %178 = load i32, i32* @create_flow_group_in, align 4
  %179 = load i8*, i8** %12, align 8
  %180 = load i32, i32* @end_flow_index, align 4
  %181 = load i32, i32* %11, align 4
  %182 = sub nsw i32 %181, 1
  %183 = call i32 @MLX5_SET(i32 %178, i8* %179, i32 %180, i32 %182)
  %184 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %8, align 8
  %185 = load i8*, i8** %12, align 8
  %186 = call %struct.mlx5_flow_table* @mlx5_create_flow_group(%struct.mlx5_flow_table* %184, i8* %185)
  %187 = bitcast %struct.mlx5_flow_table* %186 to %struct.mlx5_flow_group*
  store %struct.mlx5_flow_group* %187, %struct.mlx5_flow_group** %9, align 8
  %188 = load %struct.mlx5_flow_group*, %struct.mlx5_flow_group** %9, align 8
  %189 = bitcast %struct.mlx5_flow_group* %188 to %struct.mlx5_flow_table*
  %190 = call i64 @IS_ERR(%struct.mlx5_flow_table* %189)
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %199

192:                                              ; preds = %154
  %193 = load %struct.mlx5_flow_group*, %struct.mlx5_flow_group** %9, align 8
  %194 = bitcast %struct.mlx5_flow_group* %193 to %struct.mlx5_flow_table*
  %195 = call i32 @PTR_ERR(%struct.mlx5_flow_table* %194)
  store i32 %195, i32* %14, align 4
  %196 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  %197 = load i32, i32* %14, align 4
  %198 = call i32 (%struct.mlx5_core_dev*, i8*, ...) @esw_warn(%struct.mlx5_core_dev* %196, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), i32 %197)
  br label %206

199:                                              ; preds = %154
  %200 = load %struct.mlx5_flow_group*, %struct.mlx5_flow_group** %9, align 8
  %201 = bitcast %struct.mlx5_flow_group* %200 to %struct.mlx5_flow_table*
  %202 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %3, align 8
  %203 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %204, i32 0, i32 0
  store %struct.mlx5_flow_table* %201, %struct.mlx5_flow_table** %205, align 8
  br label %206

206:                                              ; preds = %199, %192, %147, %104, %58
  %207 = load i32, i32* %14, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %212

209:                                              ; preds = %206
  %210 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %3, align 8
  %211 = call i32 @esw_destroy_legacy_fdb_table(%struct.mlx5_eswitch* %210)
  br label %212

212:                                              ; preds = %209, %206
  %213 = load i8*, i8** %12, align 8
  %214 = call i32 @kvfree(i8* %213)
  %215 = load i32, i32* %14, align 4
  store i32 %215, i32* %2, align 4
  br label %216

216:                                              ; preds = %212, %41, %30
  %217 = load i32, i32* %2, align 4
  ret i32 %217
}

declare dso_local i32 @MLX5_ST_SZ_BYTES(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @esw_debug(%struct.mlx5_core_dev*, i8*, i32) #1

declare dso_local i32 @MLX5_CAP_ESW_FLOWTABLE_FDB(%struct.mlx5_core_dev*, i32) #1

declare dso_local %struct.mlx5_flow_namespace* @mlx5_get_fdb_sub_ns(%struct.mlx5_core_dev*, i32) #1

declare dso_local i32 @esw_warn(%struct.mlx5_core_dev*, i8*, ...) #1

declare dso_local i8* @kvzalloc(i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local %struct.mlx5_flow_table* @mlx5_create_flow_table(%struct.mlx5_flow_namespace*, %struct.mlx5_flow_table_attr*) #1

declare dso_local i64 @IS_ERR(%struct.mlx5_flow_table*) #1

declare dso_local i32 @PTR_ERR(%struct.mlx5_flow_table*) #1

declare dso_local i32 @MLX5_SET(i32, i8*, i32, i32) #1

declare dso_local i8* @MLX5_ADDR_OF(i32, i8*, i8*) #1

declare dso_local i32 @eth_broadcast_addr(i32*) #1

declare dso_local %struct.mlx5_flow_table* @mlx5_create_flow_group(%struct.mlx5_flow_table*, i8*) #1

declare dso_local i32 @eth_zero_addr(i32*) #1

declare dso_local i32 @MLX5_SET_TO_ONES(i32, i8*, i32) #1

declare dso_local i32 @esw_destroy_legacy_fdb_table(%struct.mlx5_eswitch*) #1

declare dso_local i32 @kvfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
