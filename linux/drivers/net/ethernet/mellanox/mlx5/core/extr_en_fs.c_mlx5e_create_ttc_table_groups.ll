; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_fs.c_mlx5e_create_ttc_table_groups.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_fs.c_mlx5e_create_ttc_table_groups.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.mlx5e_ttc_table = type { %struct.mlx5e_flow_table }
%struct.mlx5e_flow_table = type { i64, i32**, i32 }

@create_flow_group_in = common dso_local global i32 0, align 4
@MLX5E_TTC_NUM_GROUPS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@match_criteria = common dso_local global i32 0, align 4
@fte_match_param = common dso_local global i32 0, align 4
@outer_headers = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@match_criteria_enable = common dso_local global i32 0, align 4
@MLX5_MATCH_OUTER_HEADERS = common dso_local global i32 0, align 4
@start_flow_index = common dso_local global i32 0, align 4
@MLX5E_TTC_GROUP1_SIZE = common dso_local global i64 0, align 8
@end_flow_index = common dso_local global i32 0, align 4
@MLX5E_TTC_GROUP2_SIZE = common dso_local global i64 0, align 8
@MLX5E_TTC_GROUP3_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5e_ttc_table*, i32)* @mlx5e_create_ttc_table_groups to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5e_create_ttc_table_groups(%struct.mlx5e_ttc_table* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx5e_ttc_table*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlx5e_flow_table*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store %struct.mlx5e_ttc_table* %0, %struct.mlx5e_ttc_table** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load i32, i32* @create_flow_group_in, align 4
  %13 = call i32 @MLX5_ST_SZ_BYTES(i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load %struct.mlx5e_ttc_table*, %struct.mlx5e_ttc_table** %4, align 8
  %15 = getelementptr inbounds %struct.mlx5e_ttc_table, %struct.mlx5e_ttc_table* %14, i32 0, i32 0
  store %struct.mlx5e_flow_table* %15, %struct.mlx5e_flow_table** %7, align 8
  store i32 0, i32* %8, align 4
  %16 = load i32, i32* @MLX5E_TTC_NUM_GROUPS, align 4
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call i32** @kcalloc(i32 %16, i32 8, i32 %17)
  %19 = load %struct.mlx5e_flow_table*, %struct.mlx5e_flow_table** %7, align 8
  %20 = getelementptr inbounds %struct.mlx5e_flow_table, %struct.mlx5e_flow_table* %19, i32 0, i32 1
  store i32** %18, i32*** %20, align 8
  %21 = load %struct.mlx5e_flow_table*, %struct.mlx5e_flow_table** %7, align 8
  %22 = getelementptr inbounds %struct.mlx5e_flow_table, %struct.mlx5e_flow_table* %21, i32 0, i32 1
  %23 = load i32**, i32*** %22, align 8
  %24 = icmp ne i32** %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %2
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %225

28:                                               ; preds = %2
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call i32* @kvzalloc(i32 %29, i32 %30)
  store i32* %31, i32** %9, align 8
  %32 = load i32*, i32** %9, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %41, label %34

34:                                               ; preds = %28
  %35 = load %struct.mlx5e_flow_table*, %struct.mlx5e_flow_table** %7, align 8
  %36 = getelementptr inbounds %struct.mlx5e_flow_table, %struct.mlx5e_flow_table* %35, i32 0, i32 1
  %37 = load i32**, i32*** %36, align 8
  %38 = call i32 @kfree(i32** %37)
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %225

41:                                               ; preds = %28
  %42 = load i32, i32* @create_flow_group_in, align 4
  %43 = load i32*, i32** %9, align 8
  %44 = load i32, i32* @match_criteria, align 4
  %45 = call i32* @MLX5_ADDR_OF(i32 %42, i32* %43, i32 %44)
  store i32* %45, i32** %11, align 8
  %46 = load i32, i32* @fte_match_param, align 4
  %47 = load i32*, i32** %11, align 8
  %48 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @outer_headers, i32 0, i32 0), align 4
  %49 = call i32 @MLX5_SET_TO_ONES(i32 %46, i32* %47, i32 %48)
  %50 = load i32, i32* %5, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %41
  %53 = load i32, i32* @fte_match_param, align 4
  %54 = load i32*, i32** %11, align 8
  %55 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @outer_headers, i32 0, i32 2), align 4
  %56 = call i32 @MLX5_SET_TO_ONES(i32 %53, i32* %54, i32 %55)
  br label %62

57:                                               ; preds = %41
  %58 = load i32, i32* @fte_match_param, align 4
  %59 = load i32*, i32** %11, align 8
  %60 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @outer_headers, i32 0, i32 1), align 4
  %61 = call i32 @MLX5_SET_TO_ONES(i32 %58, i32* %59, i32 %60)
  br label %62

62:                                               ; preds = %57, %52
  %63 = load i32*, i32** %9, align 8
  %64 = load i32, i32* @match_criteria_enable, align 4
  %65 = load i32, i32* @MLX5_MATCH_OUTER_HEADERS, align 4
  %66 = call i32 @MLX5_SET_CFG(i32* %63, i32 %64, i32 %65)
  %67 = load i32*, i32** %9, align 8
  %68 = load i32, i32* @start_flow_index, align 4
  %69 = load i32, i32* %8, align 4
  %70 = call i32 @MLX5_SET_CFG(i32* %67, i32 %68, i32 %69)
  %71 = load i64, i64* @MLX5E_TTC_GROUP1_SIZE, align 8
  %72 = load i32, i32* %8, align 4
  %73 = sext i32 %72 to i64
  %74 = add nsw i64 %73, %71
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %8, align 4
  %76 = load i32*, i32** %9, align 8
  %77 = load i32, i32* @end_flow_index, align 4
  %78 = load i32, i32* %8, align 4
  %79 = sub nsw i32 %78, 1
  %80 = call i32 @MLX5_SET_CFG(i32* %76, i32 %77, i32 %79)
  %81 = load %struct.mlx5e_flow_table*, %struct.mlx5e_flow_table** %7, align 8
  %82 = getelementptr inbounds %struct.mlx5e_flow_table, %struct.mlx5e_flow_table* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = load i32*, i32** %9, align 8
  %85 = call i8* @mlx5_create_flow_group(i32 %83, i32* %84)
  %86 = bitcast i8* %85 to i32*
  %87 = load %struct.mlx5e_flow_table*, %struct.mlx5e_flow_table** %7, align 8
  %88 = getelementptr inbounds %struct.mlx5e_flow_table, %struct.mlx5e_flow_table* %87, i32 0, i32 1
  %89 = load i32**, i32*** %88, align 8
  %90 = load %struct.mlx5e_flow_table*, %struct.mlx5e_flow_table** %7, align 8
  %91 = getelementptr inbounds %struct.mlx5e_flow_table, %struct.mlx5e_flow_table* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = getelementptr inbounds i32*, i32** %89, i64 %92
  store i32* %86, i32** %93, align 8
  %94 = load %struct.mlx5e_flow_table*, %struct.mlx5e_flow_table** %7, align 8
  %95 = getelementptr inbounds %struct.mlx5e_flow_table, %struct.mlx5e_flow_table* %94, i32 0, i32 1
  %96 = load i32**, i32*** %95, align 8
  %97 = load %struct.mlx5e_flow_table*, %struct.mlx5e_flow_table** %7, align 8
  %98 = getelementptr inbounds %struct.mlx5e_flow_table, %struct.mlx5e_flow_table* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = getelementptr inbounds i32*, i32** %96, i64 %99
  %101 = load i32*, i32** %100, align 8
  %102 = call i64 @IS_ERR(i32* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %62
  br label %205

105:                                              ; preds = %62
  %106 = load %struct.mlx5e_flow_table*, %struct.mlx5e_flow_table** %7, align 8
  %107 = getelementptr inbounds %struct.mlx5e_flow_table, %struct.mlx5e_flow_table* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = add i64 %108, 1
  store i64 %109, i64* %107, align 8
  %110 = load i32, i32* @fte_match_param, align 4
  %111 = load i32*, i32** %11, align 8
  %112 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @outer_headers, i32 0, i32 0), align 4
  %113 = call i32 @MLX5_SET(i32 %110, i32* %111, i32 %112, i32 0)
  %114 = load i32*, i32** %9, align 8
  %115 = load i32, i32* @start_flow_index, align 4
  %116 = load i32, i32* %8, align 4
  %117 = call i32 @MLX5_SET_CFG(i32* %114, i32 %115, i32 %116)
  %118 = load i64, i64* @MLX5E_TTC_GROUP2_SIZE, align 8
  %119 = load i32, i32* %8, align 4
  %120 = sext i32 %119 to i64
  %121 = add nsw i64 %120, %118
  %122 = trunc i64 %121 to i32
  store i32 %122, i32* %8, align 4
  %123 = load i32*, i32** %9, align 8
  %124 = load i32, i32* @end_flow_index, align 4
  %125 = load i32, i32* %8, align 4
  %126 = sub nsw i32 %125, 1
  %127 = call i32 @MLX5_SET_CFG(i32* %123, i32 %124, i32 %126)
  %128 = load %struct.mlx5e_flow_table*, %struct.mlx5e_flow_table** %7, align 8
  %129 = getelementptr inbounds %struct.mlx5e_flow_table, %struct.mlx5e_flow_table* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = load i32*, i32** %9, align 8
  %132 = call i8* @mlx5_create_flow_group(i32 %130, i32* %131)
  %133 = bitcast i8* %132 to i32*
  %134 = load %struct.mlx5e_flow_table*, %struct.mlx5e_flow_table** %7, align 8
  %135 = getelementptr inbounds %struct.mlx5e_flow_table, %struct.mlx5e_flow_table* %134, i32 0, i32 1
  %136 = load i32**, i32*** %135, align 8
  %137 = load %struct.mlx5e_flow_table*, %struct.mlx5e_flow_table** %7, align 8
  %138 = getelementptr inbounds %struct.mlx5e_flow_table, %struct.mlx5e_flow_table* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = getelementptr inbounds i32*, i32** %136, i64 %139
  store i32* %133, i32** %140, align 8
  %141 = load %struct.mlx5e_flow_table*, %struct.mlx5e_flow_table** %7, align 8
  %142 = getelementptr inbounds %struct.mlx5e_flow_table, %struct.mlx5e_flow_table* %141, i32 0, i32 1
  %143 = load i32**, i32*** %142, align 8
  %144 = load %struct.mlx5e_flow_table*, %struct.mlx5e_flow_table** %7, align 8
  %145 = getelementptr inbounds %struct.mlx5e_flow_table, %struct.mlx5e_flow_table* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = getelementptr inbounds i32*, i32** %143, i64 %146
  %148 = load i32*, i32** %147, align 8
  %149 = call i64 @IS_ERR(i32* %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %105
  br label %205

152:                                              ; preds = %105
  %153 = load %struct.mlx5e_flow_table*, %struct.mlx5e_flow_table** %7, align 8
  %154 = getelementptr inbounds %struct.mlx5e_flow_table, %struct.mlx5e_flow_table* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = add i64 %155, 1
  store i64 %156, i64* %154, align 8
  %157 = load i32*, i32** %9, align 8
  %158 = load i32, i32* %6, align 4
  %159 = call i32 @memset(i32* %157, i32 0, i32 %158)
  %160 = load i32*, i32** %9, align 8
  %161 = load i32, i32* @start_flow_index, align 4
  %162 = load i32, i32* %8, align 4
  %163 = call i32 @MLX5_SET_CFG(i32* %160, i32 %161, i32 %162)
  %164 = load i64, i64* @MLX5E_TTC_GROUP3_SIZE, align 8
  %165 = load i32, i32* %8, align 4
  %166 = sext i32 %165 to i64
  %167 = add nsw i64 %166, %164
  %168 = trunc i64 %167 to i32
  store i32 %168, i32* %8, align 4
  %169 = load i32*, i32** %9, align 8
  %170 = load i32, i32* @end_flow_index, align 4
  %171 = load i32, i32* %8, align 4
  %172 = sub nsw i32 %171, 1
  %173 = call i32 @MLX5_SET_CFG(i32* %169, i32 %170, i32 %172)
  %174 = load %struct.mlx5e_flow_table*, %struct.mlx5e_flow_table** %7, align 8
  %175 = getelementptr inbounds %struct.mlx5e_flow_table, %struct.mlx5e_flow_table* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 8
  %177 = load i32*, i32** %9, align 8
  %178 = call i8* @mlx5_create_flow_group(i32 %176, i32* %177)
  %179 = bitcast i8* %178 to i32*
  %180 = load %struct.mlx5e_flow_table*, %struct.mlx5e_flow_table** %7, align 8
  %181 = getelementptr inbounds %struct.mlx5e_flow_table, %struct.mlx5e_flow_table* %180, i32 0, i32 1
  %182 = load i32**, i32*** %181, align 8
  %183 = load %struct.mlx5e_flow_table*, %struct.mlx5e_flow_table** %7, align 8
  %184 = getelementptr inbounds %struct.mlx5e_flow_table, %struct.mlx5e_flow_table* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = getelementptr inbounds i32*, i32** %182, i64 %185
  store i32* %179, i32** %186, align 8
  %187 = load %struct.mlx5e_flow_table*, %struct.mlx5e_flow_table** %7, align 8
  %188 = getelementptr inbounds %struct.mlx5e_flow_table, %struct.mlx5e_flow_table* %187, i32 0, i32 1
  %189 = load i32**, i32*** %188, align 8
  %190 = load %struct.mlx5e_flow_table*, %struct.mlx5e_flow_table** %7, align 8
  %191 = getelementptr inbounds %struct.mlx5e_flow_table, %struct.mlx5e_flow_table* %190, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  %193 = getelementptr inbounds i32*, i32** %189, i64 %192
  %194 = load i32*, i32** %193, align 8
  %195 = call i64 @IS_ERR(i32* %194)
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %198

197:                                              ; preds = %152
  br label %205

198:                                              ; preds = %152
  %199 = load %struct.mlx5e_flow_table*, %struct.mlx5e_flow_table** %7, align 8
  %200 = getelementptr inbounds %struct.mlx5e_flow_table, %struct.mlx5e_flow_table* %199, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = add i64 %201, 1
  store i64 %202, i64* %200, align 8
  %203 = load i32*, i32** %9, align 8
  %204 = call i32 @kvfree(i32* %203)
  store i32 0, i32* %3, align 4
  br label %225

205:                                              ; preds = %197, %151, %104
  %206 = load %struct.mlx5e_flow_table*, %struct.mlx5e_flow_table** %7, align 8
  %207 = getelementptr inbounds %struct.mlx5e_flow_table, %struct.mlx5e_flow_table* %206, i32 0, i32 1
  %208 = load i32**, i32*** %207, align 8
  %209 = load %struct.mlx5e_flow_table*, %struct.mlx5e_flow_table** %7, align 8
  %210 = getelementptr inbounds %struct.mlx5e_flow_table, %struct.mlx5e_flow_table* %209, i32 0, i32 0
  %211 = load i64, i64* %210, align 8
  %212 = getelementptr inbounds i32*, i32** %208, i64 %211
  %213 = load i32*, i32** %212, align 8
  %214 = call i32 @PTR_ERR(i32* %213)
  store i32 %214, i32* %10, align 4
  %215 = load %struct.mlx5e_flow_table*, %struct.mlx5e_flow_table** %7, align 8
  %216 = getelementptr inbounds %struct.mlx5e_flow_table, %struct.mlx5e_flow_table* %215, i32 0, i32 1
  %217 = load i32**, i32*** %216, align 8
  %218 = load %struct.mlx5e_flow_table*, %struct.mlx5e_flow_table** %7, align 8
  %219 = getelementptr inbounds %struct.mlx5e_flow_table, %struct.mlx5e_flow_table* %218, i32 0, i32 0
  %220 = load i64, i64* %219, align 8
  %221 = getelementptr inbounds i32*, i32** %217, i64 %220
  store i32* null, i32** %221, align 8
  %222 = load i32*, i32** %9, align 8
  %223 = call i32 @kvfree(i32* %222)
  %224 = load i32, i32* %10, align 4
  store i32 %224, i32* %3, align 4
  br label %225

225:                                              ; preds = %205, %198, %34, %25
  %226 = load i32, i32* %3, align 4
  ret i32 %226
}

declare dso_local i32 @MLX5_ST_SZ_BYTES(i32) #1

declare dso_local i32** @kcalloc(i32, i32, i32) #1

declare dso_local i32* @kvzalloc(i32, i32) #1

declare dso_local i32 @kfree(i32**) #1

declare dso_local i32* @MLX5_ADDR_OF(i32, i32*, i32) #1

declare dso_local i32 @MLX5_SET_TO_ONES(i32, i32*, i32) #1

declare dso_local i32 @MLX5_SET_CFG(i32*, i32, i32) #1

declare dso_local i8* @mlx5_create_flow_group(i32, i32*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @MLX5_SET(i32, i32*, i32, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @kvfree(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
