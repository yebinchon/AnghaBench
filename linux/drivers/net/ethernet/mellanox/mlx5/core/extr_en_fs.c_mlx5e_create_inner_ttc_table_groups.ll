; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_fs.c_mlx5e_create_inner_ttc_table_groups.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_fs.c_mlx5e_create_inner_ttc_table_groups.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.mlx5e_ttc_table = type { %struct.mlx5e_flow_table }
%struct.mlx5e_flow_table = type { i64, i32**, i32 }

@create_flow_group_in = common dso_local global i32 0, align 4
@MLX5E_INNER_TTC_NUM_GROUPS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@match_criteria = common dso_local global i32 0, align 4
@fte_match_param = common dso_local global i32 0, align 4
@inner_headers = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@match_criteria_enable = common dso_local global i32 0, align 4
@MLX5_MATCH_INNER_HEADERS = common dso_local global i32 0, align 4
@start_flow_index = common dso_local global i32 0, align 4
@MLX5E_INNER_TTC_GROUP1_SIZE = common dso_local global i64 0, align 8
@end_flow_index = common dso_local global i32 0, align 4
@MLX5E_INNER_TTC_GROUP2_SIZE = common dso_local global i64 0, align 8
@MLX5E_INNER_TTC_GROUP3_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5e_ttc_table*)* @mlx5e_create_inner_ttc_table_groups to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5e_create_inner_ttc_table_groups(%struct.mlx5e_ttc_table* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx5e_ttc_table*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx5e_flow_table*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.mlx5e_ttc_table* %0, %struct.mlx5e_ttc_table** %3, align 8
  %10 = load i32, i32* @create_flow_group_in, align 4
  %11 = call i32 @MLX5_ST_SZ_BYTES(i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load %struct.mlx5e_ttc_table*, %struct.mlx5e_ttc_table** %3, align 8
  %13 = getelementptr inbounds %struct.mlx5e_ttc_table, %struct.mlx5e_ttc_table* %12, i32 0, i32 0
  store %struct.mlx5e_flow_table* %13, %struct.mlx5e_flow_table** %5, align 8
  store i32 0, i32* %6, align 4
  %14 = load i32, i32* @MLX5E_INNER_TTC_NUM_GROUPS, align 4
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call i32** @kcalloc(i32 %14, i32 8, i32 %15)
  %17 = load %struct.mlx5e_flow_table*, %struct.mlx5e_flow_table** %5, align 8
  %18 = getelementptr inbounds %struct.mlx5e_flow_table, %struct.mlx5e_flow_table* %17, i32 0, i32 1
  store i32** %16, i32*** %18, align 8
  %19 = load %struct.mlx5e_flow_table*, %struct.mlx5e_flow_table** %5, align 8
  %20 = getelementptr inbounds %struct.mlx5e_flow_table, %struct.mlx5e_flow_table* %19, i32 0, i32 1
  %21 = load i32**, i32*** %20, align 8
  %22 = icmp ne i32** %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %1
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %214

26:                                               ; preds = %1
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call i32* @kvzalloc(i32 %27, i32 %28)
  store i32* %29, i32** %7, align 8
  %30 = load i32*, i32** %7, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %39, label %32

32:                                               ; preds = %26
  %33 = load %struct.mlx5e_flow_table*, %struct.mlx5e_flow_table** %5, align 8
  %34 = getelementptr inbounds %struct.mlx5e_flow_table, %struct.mlx5e_flow_table* %33, i32 0, i32 1
  %35 = load i32**, i32*** %34, align 8
  %36 = call i32 @kfree(i32** %35)
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %214

39:                                               ; preds = %26
  %40 = load i32, i32* @create_flow_group_in, align 4
  %41 = load i32*, i32** %7, align 8
  %42 = load i32, i32* @match_criteria, align 4
  %43 = call i32* @MLX5_ADDR_OF(i32 %40, i32* %41, i32 %42)
  store i32* %43, i32** %9, align 8
  %44 = load i32, i32* @fte_match_param, align 4
  %45 = load i32*, i32** %9, align 8
  %46 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inner_headers, i32 0, i32 0), align 4
  %47 = call i32 @MLX5_SET_TO_ONES(i32 %44, i32* %45, i32 %46)
  %48 = load i32, i32* @fte_match_param, align 4
  %49 = load i32*, i32** %9, align 8
  %50 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inner_headers, i32 0, i32 1), align 4
  %51 = call i32 @MLX5_SET_TO_ONES(i32 %48, i32* %49, i32 %50)
  %52 = load i32*, i32** %7, align 8
  %53 = load i32, i32* @match_criteria_enable, align 4
  %54 = load i32, i32* @MLX5_MATCH_INNER_HEADERS, align 4
  %55 = call i32 @MLX5_SET_CFG(i32* %52, i32 %53, i32 %54)
  %56 = load i32*, i32** %7, align 8
  %57 = load i32, i32* @start_flow_index, align 4
  %58 = load i32, i32* %6, align 4
  %59 = call i32 @MLX5_SET_CFG(i32* %56, i32 %57, i32 %58)
  %60 = load i64, i64* @MLX5E_INNER_TTC_GROUP1_SIZE, align 8
  %61 = load i32, i32* %6, align 4
  %62 = sext i32 %61 to i64
  %63 = add nsw i64 %62, %60
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %6, align 4
  %65 = load i32*, i32** %7, align 8
  %66 = load i32, i32* @end_flow_index, align 4
  %67 = load i32, i32* %6, align 4
  %68 = sub nsw i32 %67, 1
  %69 = call i32 @MLX5_SET_CFG(i32* %65, i32 %66, i32 %68)
  %70 = load %struct.mlx5e_flow_table*, %struct.mlx5e_flow_table** %5, align 8
  %71 = getelementptr inbounds %struct.mlx5e_flow_table, %struct.mlx5e_flow_table* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = load i32*, i32** %7, align 8
  %74 = call i8* @mlx5_create_flow_group(i32 %72, i32* %73)
  %75 = bitcast i8* %74 to i32*
  %76 = load %struct.mlx5e_flow_table*, %struct.mlx5e_flow_table** %5, align 8
  %77 = getelementptr inbounds %struct.mlx5e_flow_table, %struct.mlx5e_flow_table* %76, i32 0, i32 1
  %78 = load i32**, i32*** %77, align 8
  %79 = load %struct.mlx5e_flow_table*, %struct.mlx5e_flow_table** %5, align 8
  %80 = getelementptr inbounds %struct.mlx5e_flow_table, %struct.mlx5e_flow_table* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = getelementptr inbounds i32*, i32** %78, i64 %81
  store i32* %75, i32** %82, align 8
  %83 = load %struct.mlx5e_flow_table*, %struct.mlx5e_flow_table** %5, align 8
  %84 = getelementptr inbounds %struct.mlx5e_flow_table, %struct.mlx5e_flow_table* %83, i32 0, i32 1
  %85 = load i32**, i32*** %84, align 8
  %86 = load %struct.mlx5e_flow_table*, %struct.mlx5e_flow_table** %5, align 8
  %87 = getelementptr inbounds %struct.mlx5e_flow_table, %struct.mlx5e_flow_table* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = getelementptr inbounds i32*, i32** %85, i64 %88
  %90 = load i32*, i32** %89, align 8
  %91 = call i64 @IS_ERR(i32* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %39
  br label %194

94:                                               ; preds = %39
  %95 = load %struct.mlx5e_flow_table*, %struct.mlx5e_flow_table** %5, align 8
  %96 = getelementptr inbounds %struct.mlx5e_flow_table, %struct.mlx5e_flow_table* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = add i64 %97, 1
  store i64 %98, i64* %96, align 8
  %99 = load i32, i32* @fte_match_param, align 4
  %100 = load i32*, i32** %9, align 8
  %101 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inner_headers, i32 0, i32 0), align 4
  %102 = call i32 @MLX5_SET(i32 %99, i32* %100, i32 %101, i32 0)
  %103 = load i32*, i32** %7, align 8
  %104 = load i32, i32* @start_flow_index, align 4
  %105 = load i32, i32* %6, align 4
  %106 = call i32 @MLX5_SET_CFG(i32* %103, i32 %104, i32 %105)
  %107 = load i64, i64* @MLX5E_INNER_TTC_GROUP2_SIZE, align 8
  %108 = load i32, i32* %6, align 4
  %109 = sext i32 %108 to i64
  %110 = add nsw i64 %109, %107
  %111 = trunc i64 %110 to i32
  store i32 %111, i32* %6, align 4
  %112 = load i32*, i32** %7, align 8
  %113 = load i32, i32* @end_flow_index, align 4
  %114 = load i32, i32* %6, align 4
  %115 = sub nsw i32 %114, 1
  %116 = call i32 @MLX5_SET_CFG(i32* %112, i32 %113, i32 %115)
  %117 = load %struct.mlx5e_flow_table*, %struct.mlx5e_flow_table** %5, align 8
  %118 = getelementptr inbounds %struct.mlx5e_flow_table, %struct.mlx5e_flow_table* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = load i32*, i32** %7, align 8
  %121 = call i8* @mlx5_create_flow_group(i32 %119, i32* %120)
  %122 = bitcast i8* %121 to i32*
  %123 = load %struct.mlx5e_flow_table*, %struct.mlx5e_flow_table** %5, align 8
  %124 = getelementptr inbounds %struct.mlx5e_flow_table, %struct.mlx5e_flow_table* %123, i32 0, i32 1
  %125 = load i32**, i32*** %124, align 8
  %126 = load %struct.mlx5e_flow_table*, %struct.mlx5e_flow_table** %5, align 8
  %127 = getelementptr inbounds %struct.mlx5e_flow_table, %struct.mlx5e_flow_table* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = getelementptr inbounds i32*, i32** %125, i64 %128
  store i32* %122, i32** %129, align 8
  %130 = load %struct.mlx5e_flow_table*, %struct.mlx5e_flow_table** %5, align 8
  %131 = getelementptr inbounds %struct.mlx5e_flow_table, %struct.mlx5e_flow_table* %130, i32 0, i32 1
  %132 = load i32**, i32*** %131, align 8
  %133 = load %struct.mlx5e_flow_table*, %struct.mlx5e_flow_table** %5, align 8
  %134 = getelementptr inbounds %struct.mlx5e_flow_table, %struct.mlx5e_flow_table* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = getelementptr inbounds i32*, i32** %132, i64 %135
  %137 = load i32*, i32** %136, align 8
  %138 = call i64 @IS_ERR(i32* %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %94
  br label %194

141:                                              ; preds = %94
  %142 = load %struct.mlx5e_flow_table*, %struct.mlx5e_flow_table** %5, align 8
  %143 = getelementptr inbounds %struct.mlx5e_flow_table, %struct.mlx5e_flow_table* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = add i64 %144, 1
  store i64 %145, i64* %143, align 8
  %146 = load i32*, i32** %7, align 8
  %147 = load i32, i32* %4, align 4
  %148 = call i32 @memset(i32* %146, i32 0, i32 %147)
  %149 = load i32*, i32** %7, align 8
  %150 = load i32, i32* @start_flow_index, align 4
  %151 = load i32, i32* %6, align 4
  %152 = call i32 @MLX5_SET_CFG(i32* %149, i32 %150, i32 %151)
  %153 = load i64, i64* @MLX5E_INNER_TTC_GROUP3_SIZE, align 8
  %154 = load i32, i32* %6, align 4
  %155 = sext i32 %154 to i64
  %156 = add nsw i64 %155, %153
  %157 = trunc i64 %156 to i32
  store i32 %157, i32* %6, align 4
  %158 = load i32*, i32** %7, align 8
  %159 = load i32, i32* @end_flow_index, align 4
  %160 = load i32, i32* %6, align 4
  %161 = sub nsw i32 %160, 1
  %162 = call i32 @MLX5_SET_CFG(i32* %158, i32 %159, i32 %161)
  %163 = load %struct.mlx5e_flow_table*, %struct.mlx5e_flow_table** %5, align 8
  %164 = getelementptr inbounds %struct.mlx5e_flow_table, %struct.mlx5e_flow_table* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 8
  %166 = load i32*, i32** %7, align 8
  %167 = call i8* @mlx5_create_flow_group(i32 %165, i32* %166)
  %168 = bitcast i8* %167 to i32*
  %169 = load %struct.mlx5e_flow_table*, %struct.mlx5e_flow_table** %5, align 8
  %170 = getelementptr inbounds %struct.mlx5e_flow_table, %struct.mlx5e_flow_table* %169, i32 0, i32 1
  %171 = load i32**, i32*** %170, align 8
  %172 = load %struct.mlx5e_flow_table*, %struct.mlx5e_flow_table** %5, align 8
  %173 = getelementptr inbounds %struct.mlx5e_flow_table, %struct.mlx5e_flow_table* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = getelementptr inbounds i32*, i32** %171, i64 %174
  store i32* %168, i32** %175, align 8
  %176 = load %struct.mlx5e_flow_table*, %struct.mlx5e_flow_table** %5, align 8
  %177 = getelementptr inbounds %struct.mlx5e_flow_table, %struct.mlx5e_flow_table* %176, i32 0, i32 1
  %178 = load i32**, i32*** %177, align 8
  %179 = load %struct.mlx5e_flow_table*, %struct.mlx5e_flow_table** %5, align 8
  %180 = getelementptr inbounds %struct.mlx5e_flow_table, %struct.mlx5e_flow_table* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = getelementptr inbounds i32*, i32** %178, i64 %181
  %183 = load i32*, i32** %182, align 8
  %184 = call i64 @IS_ERR(i32* %183)
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %187

186:                                              ; preds = %141
  br label %194

187:                                              ; preds = %141
  %188 = load %struct.mlx5e_flow_table*, %struct.mlx5e_flow_table** %5, align 8
  %189 = getelementptr inbounds %struct.mlx5e_flow_table, %struct.mlx5e_flow_table* %188, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = add i64 %190, 1
  store i64 %191, i64* %189, align 8
  %192 = load i32*, i32** %7, align 8
  %193 = call i32 @kvfree(i32* %192)
  store i32 0, i32* %2, align 4
  br label %214

194:                                              ; preds = %186, %140, %93
  %195 = load %struct.mlx5e_flow_table*, %struct.mlx5e_flow_table** %5, align 8
  %196 = getelementptr inbounds %struct.mlx5e_flow_table, %struct.mlx5e_flow_table* %195, i32 0, i32 1
  %197 = load i32**, i32*** %196, align 8
  %198 = load %struct.mlx5e_flow_table*, %struct.mlx5e_flow_table** %5, align 8
  %199 = getelementptr inbounds %struct.mlx5e_flow_table, %struct.mlx5e_flow_table* %198, i32 0, i32 0
  %200 = load i64, i64* %199, align 8
  %201 = getelementptr inbounds i32*, i32** %197, i64 %200
  %202 = load i32*, i32** %201, align 8
  %203 = call i32 @PTR_ERR(i32* %202)
  store i32 %203, i32* %8, align 4
  %204 = load %struct.mlx5e_flow_table*, %struct.mlx5e_flow_table** %5, align 8
  %205 = getelementptr inbounds %struct.mlx5e_flow_table, %struct.mlx5e_flow_table* %204, i32 0, i32 1
  %206 = load i32**, i32*** %205, align 8
  %207 = load %struct.mlx5e_flow_table*, %struct.mlx5e_flow_table** %5, align 8
  %208 = getelementptr inbounds %struct.mlx5e_flow_table, %struct.mlx5e_flow_table* %207, i32 0, i32 0
  %209 = load i64, i64* %208, align 8
  %210 = getelementptr inbounds i32*, i32** %206, i64 %209
  store i32* null, i32** %210, align 8
  %211 = load i32*, i32** %7, align 8
  %212 = call i32 @kvfree(i32* %211)
  %213 = load i32, i32* %8, align 4
  store i32 %213, i32* %2, align 4
  br label %214

214:                                              ; preds = %194, %187, %32, %23
  %215 = load i32, i32* %2, align 4
  ret i32 %215
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
