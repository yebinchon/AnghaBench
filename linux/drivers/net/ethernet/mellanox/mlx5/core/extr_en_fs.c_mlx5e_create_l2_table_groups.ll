; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_fs.c_mlx5e_create_l2_table_groups.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_fs.c_mlx5e_create_l2_table_groups.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.mlx5e_l2_table = type { %struct.mlx5e_flow_table }
%struct.mlx5e_flow_table = type { i64, i32**, i32 }

@create_flow_group_in = common dso_local global i32 0, align 4
@MLX5E_NUM_L2_GROUPS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@match_criteria = common dso_local global i32 0, align 4
@fte_match_param = common dso_local global i32 0, align 4
@outer_headers = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@start_flow_index = common dso_local global i32 0, align 4
@MLX5E_L2_GROUP1_SIZE = common dso_local global i64 0, align 8
@end_flow_index = common dso_local global i32 0, align 4
@match_criteria_enable = common dso_local global i32 0, align 4
@MLX5_MATCH_OUTER_HEADERS = common dso_local global i32 0, align 4
@MLX5E_L2_GROUP2_SIZE = common dso_local global i64 0, align 8
@MLX5E_L2_GROUP3_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5e_l2_table*)* @mlx5e_create_l2_table_groups to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5e_create_l2_table_groups(%struct.mlx5e_l2_table* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx5e_l2_table*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx5e_flow_table*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store %struct.mlx5e_l2_table* %0, %struct.mlx5e_l2_table** %3, align 8
  %11 = load i32, i32* @create_flow_group_in, align 4
  %12 = call i32 @MLX5_ST_SZ_BYTES(i32 %11)
  store i32 %12, i32* %4, align 4
  %13 = load %struct.mlx5e_l2_table*, %struct.mlx5e_l2_table** %3, align 8
  %14 = getelementptr inbounds %struct.mlx5e_l2_table, %struct.mlx5e_l2_table* %13, i32 0, i32 0
  store %struct.mlx5e_flow_table* %14, %struct.mlx5e_flow_table** %5, align 8
  store i32 0, i32* %6, align 4
  %15 = load i32, i32* @MLX5E_NUM_L2_GROUPS, align 4
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call i32** @kcalloc(i32 %15, i32 8, i32 %16)
  %18 = load %struct.mlx5e_flow_table*, %struct.mlx5e_flow_table** %5, align 8
  %19 = getelementptr inbounds %struct.mlx5e_flow_table, %struct.mlx5e_flow_table* %18, i32 0, i32 1
  store i32** %17, i32*** %19, align 8
  %20 = load %struct.mlx5e_flow_table*, %struct.mlx5e_flow_table** %5, align 8
  %21 = getelementptr inbounds %struct.mlx5e_flow_table, %struct.mlx5e_flow_table* %20, i32 0, i32 1
  %22 = load i32**, i32*** %21, align 8
  %23 = icmp ne i32** %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %1
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %212

27:                                               ; preds = %1
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call i32* @kvzalloc(i32 %28, i32 %29)
  store i32* %30, i32** %8, align 8
  %31 = load i32*, i32** %8, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %40, label %33

33:                                               ; preds = %27
  %34 = load %struct.mlx5e_flow_table*, %struct.mlx5e_flow_table** %5, align 8
  %35 = getelementptr inbounds %struct.mlx5e_flow_table, %struct.mlx5e_flow_table* %34, i32 0, i32 1
  %36 = load i32**, i32*** %35, align 8
  %37 = call i32 @kfree(i32** %36)
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %212

40:                                               ; preds = %27
  %41 = load i32, i32* @create_flow_group_in, align 4
  %42 = load i32*, i32** %8, align 8
  %43 = load i32, i32* @match_criteria, align 4
  %44 = call i32* @MLX5_ADDR_OF(i32 %41, i32* %42, i32 %43)
  store i32* %44, i32** %10, align 8
  %45 = load i32, i32* @fte_match_param, align 4
  %46 = load i32*, i32** %10, align 8
  %47 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @outer_headers, i32 0, i32 0), align 4
  %48 = call i32* @MLX5_ADDR_OF(i32 %45, i32* %46, i32 %47)
  store i32* %48, i32** %7, align 8
  %49 = load i32*, i32** %8, align 8
  %50 = load i32, i32* @start_flow_index, align 4
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @MLX5_SET_CFG(i32* %49, i32 %50, i32 %51)
  %53 = load i64, i64* @MLX5E_L2_GROUP1_SIZE, align 8
  %54 = load i32, i32* %6, align 4
  %55 = sext i32 %54 to i64
  %56 = add nsw i64 %55, %53
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %6, align 4
  %58 = load i32*, i32** %8, align 8
  %59 = load i32, i32* @end_flow_index, align 4
  %60 = load i32, i32* %6, align 4
  %61 = sub nsw i32 %60, 1
  %62 = call i32 @MLX5_SET_CFG(i32* %58, i32 %59, i32 %61)
  %63 = load %struct.mlx5e_flow_table*, %struct.mlx5e_flow_table** %5, align 8
  %64 = getelementptr inbounds %struct.mlx5e_flow_table, %struct.mlx5e_flow_table* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = load i32*, i32** %8, align 8
  %67 = call i8* @mlx5_create_flow_group(i32 %65, i32* %66)
  %68 = bitcast i8* %67 to i32*
  %69 = load %struct.mlx5e_flow_table*, %struct.mlx5e_flow_table** %5, align 8
  %70 = getelementptr inbounds %struct.mlx5e_flow_table, %struct.mlx5e_flow_table* %69, i32 0, i32 1
  %71 = load i32**, i32*** %70, align 8
  %72 = load %struct.mlx5e_flow_table*, %struct.mlx5e_flow_table** %5, align 8
  %73 = getelementptr inbounds %struct.mlx5e_flow_table, %struct.mlx5e_flow_table* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = getelementptr inbounds i32*, i32** %71, i64 %74
  store i32* %68, i32** %75, align 8
  %76 = load %struct.mlx5e_flow_table*, %struct.mlx5e_flow_table** %5, align 8
  %77 = getelementptr inbounds %struct.mlx5e_flow_table, %struct.mlx5e_flow_table* %76, i32 0, i32 1
  %78 = load i32**, i32*** %77, align 8
  %79 = load %struct.mlx5e_flow_table*, %struct.mlx5e_flow_table** %5, align 8
  %80 = getelementptr inbounds %struct.mlx5e_flow_table, %struct.mlx5e_flow_table* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = getelementptr inbounds i32*, i32** %78, i64 %81
  %83 = load i32*, i32** %82, align 8
  %84 = call i64 @IS_ERR(i32* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %40
  br label %190

87:                                               ; preds = %40
  %88 = load %struct.mlx5e_flow_table*, %struct.mlx5e_flow_table** %5, align 8
  %89 = getelementptr inbounds %struct.mlx5e_flow_table, %struct.mlx5e_flow_table* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = add i64 %90, 1
  store i64 %91, i64* %89, align 8
  %92 = load i32*, i32** %7, align 8
  %93 = call i32 @eth_broadcast_addr(i32* %92)
  %94 = load i32*, i32** %8, align 8
  %95 = load i32, i32* @match_criteria_enable, align 4
  %96 = load i32, i32* @MLX5_MATCH_OUTER_HEADERS, align 4
  %97 = call i32 @MLX5_SET_CFG(i32* %94, i32 %95, i32 %96)
  %98 = load i32*, i32** %8, align 8
  %99 = load i32, i32* @start_flow_index, align 4
  %100 = load i32, i32* %6, align 4
  %101 = call i32 @MLX5_SET_CFG(i32* %98, i32 %99, i32 %100)
  %102 = load i64, i64* @MLX5E_L2_GROUP2_SIZE, align 8
  %103 = load i32, i32* %6, align 4
  %104 = sext i32 %103 to i64
  %105 = add nsw i64 %104, %102
  %106 = trunc i64 %105 to i32
  store i32 %106, i32* %6, align 4
  %107 = load i32*, i32** %8, align 8
  %108 = load i32, i32* @end_flow_index, align 4
  %109 = load i32, i32* %6, align 4
  %110 = sub nsw i32 %109, 1
  %111 = call i32 @MLX5_SET_CFG(i32* %107, i32 %108, i32 %110)
  %112 = load %struct.mlx5e_flow_table*, %struct.mlx5e_flow_table** %5, align 8
  %113 = getelementptr inbounds %struct.mlx5e_flow_table, %struct.mlx5e_flow_table* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = load i32*, i32** %8, align 8
  %116 = call i8* @mlx5_create_flow_group(i32 %114, i32* %115)
  %117 = bitcast i8* %116 to i32*
  %118 = load %struct.mlx5e_flow_table*, %struct.mlx5e_flow_table** %5, align 8
  %119 = getelementptr inbounds %struct.mlx5e_flow_table, %struct.mlx5e_flow_table* %118, i32 0, i32 1
  %120 = load i32**, i32*** %119, align 8
  %121 = load %struct.mlx5e_flow_table*, %struct.mlx5e_flow_table** %5, align 8
  %122 = getelementptr inbounds %struct.mlx5e_flow_table, %struct.mlx5e_flow_table* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = getelementptr inbounds i32*, i32** %120, i64 %123
  store i32* %117, i32** %124, align 8
  %125 = load %struct.mlx5e_flow_table*, %struct.mlx5e_flow_table** %5, align 8
  %126 = getelementptr inbounds %struct.mlx5e_flow_table, %struct.mlx5e_flow_table* %125, i32 0, i32 1
  %127 = load i32**, i32*** %126, align 8
  %128 = load %struct.mlx5e_flow_table*, %struct.mlx5e_flow_table** %5, align 8
  %129 = getelementptr inbounds %struct.mlx5e_flow_table, %struct.mlx5e_flow_table* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = getelementptr inbounds i32*, i32** %127, i64 %130
  %132 = load i32*, i32** %131, align 8
  %133 = call i64 @IS_ERR(i32* %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %87
  br label %190

136:                                              ; preds = %87
  %137 = load %struct.mlx5e_flow_table*, %struct.mlx5e_flow_table** %5, align 8
  %138 = getelementptr inbounds %struct.mlx5e_flow_table, %struct.mlx5e_flow_table* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = add i64 %139, 1
  store i64 %140, i64* %138, align 8
  %141 = load i32*, i32** %7, align 8
  %142 = call i32 @eth_zero_addr(i32* %141)
  %143 = load i32*, i32** %7, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 0
  store i32 1, i32* %144, align 4
  %145 = load i32*, i32** %8, align 8
  %146 = load i32, i32* @start_flow_index, align 4
  %147 = load i32, i32* %6, align 4
  %148 = call i32 @MLX5_SET_CFG(i32* %145, i32 %146, i32 %147)
  %149 = load i64, i64* @MLX5E_L2_GROUP3_SIZE, align 8
  %150 = load i32, i32* %6, align 4
  %151 = sext i32 %150 to i64
  %152 = add nsw i64 %151, %149
  %153 = trunc i64 %152 to i32
  store i32 %153, i32* %6, align 4
  %154 = load i32*, i32** %8, align 8
  %155 = load i32, i32* @end_flow_index, align 4
  %156 = load i32, i32* %6, align 4
  %157 = sub nsw i32 %156, 1
  %158 = call i32 @MLX5_SET_CFG(i32* %154, i32 %155, i32 %157)
  %159 = load %struct.mlx5e_flow_table*, %struct.mlx5e_flow_table** %5, align 8
  %160 = getelementptr inbounds %struct.mlx5e_flow_table, %struct.mlx5e_flow_table* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 8
  %162 = load i32*, i32** %8, align 8
  %163 = call i8* @mlx5_create_flow_group(i32 %161, i32* %162)
  %164 = bitcast i8* %163 to i32*
  %165 = load %struct.mlx5e_flow_table*, %struct.mlx5e_flow_table** %5, align 8
  %166 = getelementptr inbounds %struct.mlx5e_flow_table, %struct.mlx5e_flow_table* %165, i32 0, i32 1
  %167 = load i32**, i32*** %166, align 8
  %168 = load %struct.mlx5e_flow_table*, %struct.mlx5e_flow_table** %5, align 8
  %169 = getelementptr inbounds %struct.mlx5e_flow_table, %struct.mlx5e_flow_table* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = getelementptr inbounds i32*, i32** %167, i64 %170
  store i32* %164, i32** %171, align 8
  %172 = load %struct.mlx5e_flow_table*, %struct.mlx5e_flow_table** %5, align 8
  %173 = getelementptr inbounds %struct.mlx5e_flow_table, %struct.mlx5e_flow_table* %172, i32 0, i32 1
  %174 = load i32**, i32*** %173, align 8
  %175 = load %struct.mlx5e_flow_table*, %struct.mlx5e_flow_table** %5, align 8
  %176 = getelementptr inbounds %struct.mlx5e_flow_table, %struct.mlx5e_flow_table* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = getelementptr inbounds i32*, i32** %174, i64 %177
  %179 = load i32*, i32** %178, align 8
  %180 = call i64 @IS_ERR(i32* %179)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %183

182:                                              ; preds = %136
  br label %190

183:                                              ; preds = %136
  %184 = load %struct.mlx5e_flow_table*, %struct.mlx5e_flow_table** %5, align 8
  %185 = getelementptr inbounds %struct.mlx5e_flow_table, %struct.mlx5e_flow_table* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = add i64 %186, 1
  store i64 %187, i64* %185, align 8
  %188 = load i32*, i32** %8, align 8
  %189 = call i32 @kvfree(i32* %188)
  store i32 0, i32* %2, align 4
  br label %212

190:                                              ; preds = %182, %135, %86
  %191 = load %struct.mlx5e_flow_table*, %struct.mlx5e_flow_table** %5, align 8
  %192 = getelementptr inbounds %struct.mlx5e_flow_table, %struct.mlx5e_flow_table* %191, i32 0, i32 1
  %193 = load i32**, i32*** %192, align 8
  %194 = load %struct.mlx5e_flow_table*, %struct.mlx5e_flow_table** %5, align 8
  %195 = getelementptr inbounds %struct.mlx5e_flow_table, %struct.mlx5e_flow_table* %194, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = getelementptr inbounds i32*, i32** %193, i64 %196
  %198 = load i32*, i32** %197, align 8
  %199 = call i32 @PTR_ERR(i32* %198)
  store i32 %199, i32* %9, align 4
  %200 = load %struct.mlx5e_flow_table*, %struct.mlx5e_flow_table** %5, align 8
  %201 = getelementptr inbounds %struct.mlx5e_flow_table, %struct.mlx5e_flow_table* %200, i32 0, i32 1
  %202 = load i32**, i32*** %201, align 8
  %203 = load %struct.mlx5e_flow_table*, %struct.mlx5e_flow_table** %5, align 8
  %204 = getelementptr inbounds %struct.mlx5e_flow_table, %struct.mlx5e_flow_table* %203, i32 0, i32 0
  %205 = load i64, i64* %204, align 8
  %206 = getelementptr inbounds i32*, i32** %202, i64 %205
  store i32* null, i32** %206, align 8
  %207 = load %struct.mlx5e_flow_table*, %struct.mlx5e_flow_table** %5, align 8
  %208 = call i32 @mlx5e_destroy_groups(%struct.mlx5e_flow_table* %207)
  %209 = load i32*, i32** %8, align 8
  %210 = call i32 @kvfree(i32* %209)
  %211 = load i32, i32* %9, align 4
  store i32 %211, i32* %2, align 4
  br label %212

212:                                              ; preds = %190, %183, %33, %24
  %213 = load i32, i32* %2, align 4
  ret i32 %213
}

declare dso_local i32 @MLX5_ST_SZ_BYTES(i32) #1

declare dso_local i32** @kcalloc(i32, i32, i32) #1

declare dso_local i32* @kvzalloc(i32, i32) #1

declare dso_local i32 @kfree(i32**) #1

declare dso_local i32* @MLX5_ADDR_OF(i32, i32*, i32) #1

declare dso_local i32 @MLX5_SET_CFG(i32*, i32, i32) #1

declare dso_local i8* @mlx5_create_flow_group(i32, i32*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @eth_broadcast_addr(i32*) #1

declare dso_local i32 @eth_zero_addr(i32*) #1

declare dso_local i32 @kvfree(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @mlx5e_destroy_groups(%struct.mlx5e_flow_table*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
