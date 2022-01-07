; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_fs.c___mlx5e_create_vlan_table_groups.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_fs.c___mlx5e_create_vlan_table_groups.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.mlx5e_flow_table = type { i64, i32**, i32 }

@create_flow_group_in = common dso_local global i32 0, align 4
@match_criteria = common dso_local global i32 0, align 4
@match_criteria_enable = common dso_local global i32 0, align 4
@MLX5_MATCH_OUTER_HEADERS = common dso_local global i32 0, align 4
@fte_match_param = common dso_local global i32 0, align 4
@outer_headers = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@start_flow_index = common dso_local global i32 0, align 4
@MLX5E_VLAN_GROUP0_SIZE = common dso_local global i64 0, align 8
@end_flow_index = common dso_local global i32 0, align 4
@MLX5E_VLAN_GROUP1_SIZE = common dso_local global i64 0, align 8
@MLX5E_VLAN_GROUP2_SIZE = common dso_local global i64 0, align 8
@MLX5E_VLAN_GROUP3_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5e_flow_table*, i32*, i32)* @__mlx5e_create_vlan_table_groups to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__mlx5e_create_vlan_table_groups(%struct.mlx5e_flow_table* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx5e_flow_table*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store %struct.mlx5e_flow_table* %0, %struct.mlx5e_flow_table** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %11 = load i32, i32* @create_flow_group_in, align 4
  %12 = load i32*, i32** %6, align 8
  %13 = load i32, i32* @match_criteria, align 4
  %14 = call i32* @MLX5_ADDR_OF(i32 %11, i32* %12, i32 %13)
  store i32* %14, i32** %10, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @memset(i32* %15, i32 0, i32 %16)
  %18 = load i32*, i32** %6, align 8
  %19 = load i32, i32* @match_criteria_enable, align 4
  %20 = load i32, i32* @MLX5_MATCH_OUTER_HEADERS, align 4
  %21 = call i32 @MLX5_SET_CFG(i32* %18, i32 %19, i32 %20)
  %22 = load i32, i32* @fte_match_param, align 4
  %23 = load i32*, i32** %10, align 8
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @outer_headers, i32 0, i32 1), align 4
  %25 = call i32 @MLX5_SET_TO_ONES(i32 %22, i32* %23, i32 %24)
  %26 = load i32, i32* @fte_match_param, align 4
  %27 = load i32*, i32** %10, align 8
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @outer_headers, i32 0, i32 2), align 4
  %29 = call i32 @MLX5_SET_TO_ONES(i32 %26, i32* %27, i32 %28)
  %30 = load i32*, i32** %6, align 8
  %31 = load i32, i32* @start_flow_index, align 4
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @MLX5_SET_CFG(i32* %30, i32 %31, i32 %32)
  %34 = load i64, i64* @MLX5E_VLAN_GROUP0_SIZE, align 8
  %35 = load i32, i32* %9, align 4
  %36 = sext i32 %35 to i64
  %37 = add nsw i64 %36, %34
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %9, align 4
  %39 = load i32*, i32** %6, align 8
  %40 = load i32, i32* @end_flow_index, align 4
  %41 = load i32, i32* %9, align 4
  %42 = sub nsw i32 %41, 1
  %43 = call i32 @MLX5_SET_CFG(i32* %39, i32 %40, i32 %42)
  %44 = load %struct.mlx5e_flow_table*, %struct.mlx5e_flow_table** %5, align 8
  %45 = getelementptr inbounds %struct.mlx5e_flow_table, %struct.mlx5e_flow_table* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = load i32*, i32** %6, align 8
  %48 = call i8* @mlx5_create_flow_group(i32 %46, i32* %47)
  %49 = bitcast i8* %48 to i32*
  %50 = load %struct.mlx5e_flow_table*, %struct.mlx5e_flow_table** %5, align 8
  %51 = getelementptr inbounds %struct.mlx5e_flow_table, %struct.mlx5e_flow_table* %50, i32 0, i32 1
  %52 = load i32**, i32*** %51, align 8
  %53 = load %struct.mlx5e_flow_table*, %struct.mlx5e_flow_table** %5, align 8
  %54 = getelementptr inbounds %struct.mlx5e_flow_table, %struct.mlx5e_flow_table* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = getelementptr inbounds i32*, i32** %52, i64 %55
  store i32* %49, i32** %56, align 8
  %57 = load %struct.mlx5e_flow_table*, %struct.mlx5e_flow_table** %5, align 8
  %58 = getelementptr inbounds %struct.mlx5e_flow_table, %struct.mlx5e_flow_table* %57, i32 0, i32 1
  %59 = load i32**, i32*** %58, align 8
  %60 = load %struct.mlx5e_flow_table*, %struct.mlx5e_flow_table** %5, align 8
  %61 = getelementptr inbounds %struct.mlx5e_flow_table, %struct.mlx5e_flow_table* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = getelementptr inbounds i32*, i32** %59, i64 %62
  %64 = load i32*, i32** %63, align 8
  %65 = call i64 @IS_ERR(i32* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %3
  br label %239

68:                                               ; preds = %3
  %69 = load %struct.mlx5e_flow_table*, %struct.mlx5e_flow_table** %5, align 8
  %70 = getelementptr inbounds %struct.mlx5e_flow_table, %struct.mlx5e_flow_table* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = add i64 %71, 1
  store i64 %72, i64* %70, align 8
  %73 = load i32*, i32** %6, align 8
  %74 = load i32, i32* %7, align 4
  %75 = call i32 @memset(i32* %73, i32 0, i32 %74)
  %76 = load i32*, i32** %6, align 8
  %77 = load i32, i32* @match_criteria_enable, align 4
  %78 = load i32, i32* @MLX5_MATCH_OUTER_HEADERS, align 4
  %79 = call i32 @MLX5_SET_CFG(i32* %76, i32 %77, i32 %78)
  %80 = load i32, i32* @fte_match_param, align 4
  %81 = load i32*, i32** %10, align 8
  %82 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @outer_headers, i32 0, i32 0), align 4
  %83 = call i32 @MLX5_SET_TO_ONES(i32 %80, i32* %81, i32 %82)
  %84 = load i32, i32* @fte_match_param, align 4
  %85 = load i32*, i32** %10, align 8
  %86 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @outer_headers, i32 0, i32 2), align 4
  %87 = call i32 @MLX5_SET_TO_ONES(i32 %84, i32* %85, i32 %86)
  %88 = load i32*, i32** %6, align 8
  %89 = load i32, i32* @start_flow_index, align 4
  %90 = load i32, i32* %9, align 4
  %91 = call i32 @MLX5_SET_CFG(i32* %88, i32 %89, i32 %90)
  %92 = load i64, i64* @MLX5E_VLAN_GROUP1_SIZE, align 8
  %93 = load i32, i32* %9, align 4
  %94 = sext i32 %93 to i64
  %95 = add nsw i64 %94, %92
  %96 = trunc i64 %95 to i32
  store i32 %96, i32* %9, align 4
  %97 = load i32*, i32** %6, align 8
  %98 = load i32, i32* @end_flow_index, align 4
  %99 = load i32, i32* %9, align 4
  %100 = sub nsw i32 %99, 1
  %101 = call i32 @MLX5_SET_CFG(i32* %97, i32 %98, i32 %100)
  %102 = load %struct.mlx5e_flow_table*, %struct.mlx5e_flow_table** %5, align 8
  %103 = getelementptr inbounds %struct.mlx5e_flow_table, %struct.mlx5e_flow_table* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = load i32*, i32** %6, align 8
  %106 = call i8* @mlx5_create_flow_group(i32 %104, i32* %105)
  %107 = bitcast i8* %106 to i32*
  %108 = load %struct.mlx5e_flow_table*, %struct.mlx5e_flow_table** %5, align 8
  %109 = getelementptr inbounds %struct.mlx5e_flow_table, %struct.mlx5e_flow_table* %108, i32 0, i32 1
  %110 = load i32**, i32*** %109, align 8
  %111 = load %struct.mlx5e_flow_table*, %struct.mlx5e_flow_table** %5, align 8
  %112 = getelementptr inbounds %struct.mlx5e_flow_table, %struct.mlx5e_flow_table* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = getelementptr inbounds i32*, i32** %110, i64 %113
  store i32* %107, i32** %114, align 8
  %115 = load %struct.mlx5e_flow_table*, %struct.mlx5e_flow_table** %5, align 8
  %116 = getelementptr inbounds %struct.mlx5e_flow_table, %struct.mlx5e_flow_table* %115, i32 0, i32 1
  %117 = load i32**, i32*** %116, align 8
  %118 = load %struct.mlx5e_flow_table*, %struct.mlx5e_flow_table** %5, align 8
  %119 = getelementptr inbounds %struct.mlx5e_flow_table, %struct.mlx5e_flow_table* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = getelementptr inbounds i32*, i32** %117, i64 %120
  %122 = load i32*, i32** %121, align 8
  %123 = call i64 @IS_ERR(i32* %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %68
  br label %239

126:                                              ; preds = %68
  %127 = load %struct.mlx5e_flow_table*, %struct.mlx5e_flow_table** %5, align 8
  %128 = getelementptr inbounds %struct.mlx5e_flow_table, %struct.mlx5e_flow_table* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = add i64 %129, 1
  store i64 %130, i64* %128, align 8
  %131 = load i32*, i32** %6, align 8
  %132 = load i32, i32* %7, align 4
  %133 = call i32 @memset(i32* %131, i32 0, i32 %132)
  %134 = load i32*, i32** %6, align 8
  %135 = load i32, i32* @match_criteria_enable, align 4
  %136 = load i32, i32* @MLX5_MATCH_OUTER_HEADERS, align 4
  %137 = call i32 @MLX5_SET_CFG(i32* %134, i32 %135, i32 %136)
  %138 = load i32, i32* @fte_match_param, align 4
  %139 = load i32*, i32** %10, align 8
  %140 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @outer_headers, i32 0, i32 1), align 4
  %141 = call i32 @MLX5_SET_TO_ONES(i32 %138, i32* %139, i32 %140)
  %142 = load i32*, i32** %6, align 8
  %143 = load i32, i32* @start_flow_index, align 4
  %144 = load i32, i32* %9, align 4
  %145 = call i32 @MLX5_SET_CFG(i32* %142, i32 %143, i32 %144)
  %146 = load i64, i64* @MLX5E_VLAN_GROUP2_SIZE, align 8
  %147 = load i32, i32* %9, align 4
  %148 = sext i32 %147 to i64
  %149 = add nsw i64 %148, %146
  %150 = trunc i64 %149 to i32
  store i32 %150, i32* %9, align 4
  %151 = load i32*, i32** %6, align 8
  %152 = load i32, i32* @end_flow_index, align 4
  %153 = load i32, i32* %9, align 4
  %154 = sub nsw i32 %153, 1
  %155 = call i32 @MLX5_SET_CFG(i32* %151, i32 %152, i32 %154)
  %156 = load %struct.mlx5e_flow_table*, %struct.mlx5e_flow_table** %5, align 8
  %157 = getelementptr inbounds %struct.mlx5e_flow_table, %struct.mlx5e_flow_table* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 8
  %159 = load i32*, i32** %6, align 8
  %160 = call i8* @mlx5_create_flow_group(i32 %158, i32* %159)
  %161 = bitcast i8* %160 to i32*
  %162 = load %struct.mlx5e_flow_table*, %struct.mlx5e_flow_table** %5, align 8
  %163 = getelementptr inbounds %struct.mlx5e_flow_table, %struct.mlx5e_flow_table* %162, i32 0, i32 1
  %164 = load i32**, i32*** %163, align 8
  %165 = load %struct.mlx5e_flow_table*, %struct.mlx5e_flow_table** %5, align 8
  %166 = getelementptr inbounds %struct.mlx5e_flow_table, %struct.mlx5e_flow_table* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = getelementptr inbounds i32*, i32** %164, i64 %167
  store i32* %161, i32** %168, align 8
  %169 = load %struct.mlx5e_flow_table*, %struct.mlx5e_flow_table** %5, align 8
  %170 = getelementptr inbounds %struct.mlx5e_flow_table, %struct.mlx5e_flow_table* %169, i32 0, i32 1
  %171 = load i32**, i32*** %170, align 8
  %172 = load %struct.mlx5e_flow_table*, %struct.mlx5e_flow_table** %5, align 8
  %173 = getelementptr inbounds %struct.mlx5e_flow_table, %struct.mlx5e_flow_table* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = getelementptr inbounds i32*, i32** %171, i64 %174
  %176 = load i32*, i32** %175, align 8
  %177 = call i64 @IS_ERR(i32* %176)
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %180

179:                                              ; preds = %126
  br label %239

180:                                              ; preds = %126
  %181 = load %struct.mlx5e_flow_table*, %struct.mlx5e_flow_table** %5, align 8
  %182 = getelementptr inbounds %struct.mlx5e_flow_table, %struct.mlx5e_flow_table* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = add i64 %183, 1
  store i64 %184, i64* %182, align 8
  %185 = load i32*, i32** %6, align 8
  %186 = load i32, i32* %7, align 4
  %187 = call i32 @memset(i32* %185, i32 0, i32 %186)
  %188 = load i32*, i32** %6, align 8
  %189 = load i32, i32* @match_criteria_enable, align 4
  %190 = load i32, i32* @MLX5_MATCH_OUTER_HEADERS, align 4
  %191 = call i32 @MLX5_SET_CFG(i32* %188, i32 %189, i32 %190)
  %192 = load i32, i32* @fte_match_param, align 4
  %193 = load i32*, i32** %10, align 8
  %194 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @outer_headers, i32 0, i32 0), align 4
  %195 = call i32 @MLX5_SET_TO_ONES(i32 %192, i32* %193, i32 %194)
  %196 = load i32*, i32** %6, align 8
  %197 = load i32, i32* @start_flow_index, align 4
  %198 = load i32, i32* %9, align 4
  %199 = call i32 @MLX5_SET_CFG(i32* %196, i32 %197, i32 %198)
  %200 = load i64, i64* @MLX5E_VLAN_GROUP3_SIZE, align 8
  %201 = load i32, i32* %9, align 4
  %202 = sext i32 %201 to i64
  %203 = add nsw i64 %202, %200
  %204 = trunc i64 %203 to i32
  store i32 %204, i32* %9, align 4
  %205 = load i32*, i32** %6, align 8
  %206 = load i32, i32* @end_flow_index, align 4
  %207 = load i32, i32* %9, align 4
  %208 = sub nsw i32 %207, 1
  %209 = call i32 @MLX5_SET_CFG(i32* %205, i32 %206, i32 %208)
  %210 = load %struct.mlx5e_flow_table*, %struct.mlx5e_flow_table** %5, align 8
  %211 = getelementptr inbounds %struct.mlx5e_flow_table, %struct.mlx5e_flow_table* %210, i32 0, i32 2
  %212 = load i32, i32* %211, align 8
  %213 = load i32*, i32** %6, align 8
  %214 = call i8* @mlx5_create_flow_group(i32 %212, i32* %213)
  %215 = bitcast i8* %214 to i32*
  %216 = load %struct.mlx5e_flow_table*, %struct.mlx5e_flow_table** %5, align 8
  %217 = getelementptr inbounds %struct.mlx5e_flow_table, %struct.mlx5e_flow_table* %216, i32 0, i32 1
  %218 = load i32**, i32*** %217, align 8
  %219 = load %struct.mlx5e_flow_table*, %struct.mlx5e_flow_table** %5, align 8
  %220 = getelementptr inbounds %struct.mlx5e_flow_table, %struct.mlx5e_flow_table* %219, i32 0, i32 0
  %221 = load i64, i64* %220, align 8
  %222 = getelementptr inbounds i32*, i32** %218, i64 %221
  store i32* %215, i32** %222, align 8
  %223 = load %struct.mlx5e_flow_table*, %struct.mlx5e_flow_table** %5, align 8
  %224 = getelementptr inbounds %struct.mlx5e_flow_table, %struct.mlx5e_flow_table* %223, i32 0, i32 1
  %225 = load i32**, i32*** %224, align 8
  %226 = load %struct.mlx5e_flow_table*, %struct.mlx5e_flow_table** %5, align 8
  %227 = getelementptr inbounds %struct.mlx5e_flow_table, %struct.mlx5e_flow_table* %226, i32 0, i32 0
  %228 = load i64, i64* %227, align 8
  %229 = getelementptr inbounds i32*, i32** %225, i64 %228
  %230 = load i32*, i32** %229, align 8
  %231 = call i64 @IS_ERR(i32* %230)
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %233, label %234

233:                                              ; preds = %180
  br label %239

234:                                              ; preds = %180
  %235 = load %struct.mlx5e_flow_table*, %struct.mlx5e_flow_table** %5, align 8
  %236 = getelementptr inbounds %struct.mlx5e_flow_table, %struct.mlx5e_flow_table* %235, i32 0, i32 0
  %237 = load i64, i64* %236, align 8
  %238 = add i64 %237, 1
  store i64 %238, i64* %236, align 8
  store i32 0, i32* %4, align 4
  br label %259

239:                                              ; preds = %233, %179, %125, %67
  %240 = load %struct.mlx5e_flow_table*, %struct.mlx5e_flow_table** %5, align 8
  %241 = getelementptr inbounds %struct.mlx5e_flow_table, %struct.mlx5e_flow_table* %240, i32 0, i32 1
  %242 = load i32**, i32*** %241, align 8
  %243 = load %struct.mlx5e_flow_table*, %struct.mlx5e_flow_table** %5, align 8
  %244 = getelementptr inbounds %struct.mlx5e_flow_table, %struct.mlx5e_flow_table* %243, i32 0, i32 0
  %245 = load i64, i64* %244, align 8
  %246 = getelementptr inbounds i32*, i32** %242, i64 %245
  %247 = load i32*, i32** %246, align 8
  %248 = call i32 @PTR_ERR(i32* %247)
  store i32 %248, i32* %8, align 4
  %249 = load %struct.mlx5e_flow_table*, %struct.mlx5e_flow_table** %5, align 8
  %250 = getelementptr inbounds %struct.mlx5e_flow_table, %struct.mlx5e_flow_table* %249, i32 0, i32 1
  %251 = load i32**, i32*** %250, align 8
  %252 = load %struct.mlx5e_flow_table*, %struct.mlx5e_flow_table** %5, align 8
  %253 = getelementptr inbounds %struct.mlx5e_flow_table, %struct.mlx5e_flow_table* %252, i32 0, i32 0
  %254 = load i64, i64* %253, align 8
  %255 = getelementptr inbounds i32*, i32** %251, i64 %254
  store i32* null, i32** %255, align 8
  %256 = load %struct.mlx5e_flow_table*, %struct.mlx5e_flow_table** %5, align 8
  %257 = call i32 @mlx5e_destroy_groups(%struct.mlx5e_flow_table* %256)
  %258 = load i32, i32* %8, align 4
  store i32 %258, i32* %4, align 4
  br label %259

259:                                              ; preds = %239, %234
  %260 = load i32, i32* %4, align 4
  ret i32 %260
}

declare dso_local i32* @MLX5_ADDR_OF(i32, i32*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @MLX5_SET_CFG(i32*, i32, i32) #1

declare dso_local i32 @MLX5_SET_TO_ONES(i32, i32*, i32) #1

declare dso_local i8* @mlx5_create_flow_group(i32, i32*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @mlx5e_destroy_groups(%struct.mlx5e_flow_table*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
