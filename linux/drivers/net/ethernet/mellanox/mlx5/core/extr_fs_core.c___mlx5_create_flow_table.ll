; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_fs_core.c___mlx5_create_flow_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_fs_core.c___mlx5_create_flow_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_flow_table = type { %struct.TYPE_5__, i32, i64 }
%struct.TYPE_5__ = type { i32 }
%struct.mlx5_flow_namespace = type { i32, i32 }
%struct.mlx5_flow_table_attr = type { i64, i32, i64, i32 }
%struct.mlx5_flow_root_namespace = type { i32, %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { i32 (%struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_table*, i32, %struct.mlx5_flow_table*)*, i32 (%struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_table*)* }
%struct.fs_prio = type { i64, i64, i32, i32 }

@.str = private unnamed_addr constant [54 x i8] c"mlx5: flow steering failed to find root of namespace\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@del_hw_flow_table = common dso_local global i32 0, align 4
@del_sw_flow_table = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mlx5_flow_table* (%struct.mlx5_flow_namespace*, %struct.mlx5_flow_table_attr*, i32, i32)* @__mlx5_create_flow_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mlx5_flow_table* @__mlx5_create_flow_table(%struct.mlx5_flow_namespace* %0, %struct.mlx5_flow_table_attr* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.mlx5_flow_table*, align 8
  %6 = alloca %struct.mlx5_flow_namespace*, align 8
  %7 = alloca %struct.mlx5_flow_table_attr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.mlx5_flow_root_namespace*, align 8
  %11 = alloca %struct.mlx5_flow_table*, align 8
  %12 = alloca %struct.fs_prio*, align 8
  %13 = alloca %struct.mlx5_flow_table*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.mlx5_flow_namespace* %0, %struct.mlx5_flow_namespace** %6, align 8
  store %struct.mlx5_flow_table_attr* %1, %struct.mlx5_flow_table_attr** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %16 = load %struct.mlx5_flow_namespace*, %struct.mlx5_flow_namespace** %6, align 8
  %17 = getelementptr inbounds %struct.mlx5_flow_namespace, %struct.mlx5_flow_namespace* %16, i32 0, i32 1
  %18 = call %struct.mlx5_flow_root_namespace* @find_root(i32* %17)
  store %struct.mlx5_flow_root_namespace* %18, %struct.mlx5_flow_root_namespace** %10, align 8
  store %struct.mlx5_flow_table* null, %struct.mlx5_flow_table** %11, align 8
  store %struct.fs_prio* null, %struct.fs_prio** %12, align 8
  %19 = load %struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_root_namespace** %10, align 8
  %20 = icmp ne %struct.mlx5_flow_root_namespace* %19, null
  br i1 %20, label %26, label %21

21:                                               ; preds = %4
  %22 = call i32 @pr_err(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @ENODEV, align 4
  %24 = sub nsw i32 0, %23
  %25 = call %struct.mlx5_flow_table* @ERR_PTR(i32 %24)
  store %struct.mlx5_flow_table* %25, %struct.mlx5_flow_table** %5, align 8
  br label %183

26:                                               ; preds = %4
  %27 = load %struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_root_namespace** %10, align 8
  %28 = getelementptr inbounds %struct.mlx5_flow_root_namespace, %struct.mlx5_flow_root_namespace* %27, i32 0, i32 0
  %29 = call i32 @mutex_lock(i32* %28)
  %30 = load %struct.mlx5_flow_namespace*, %struct.mlx5_flow_namespace** %6, align 8
  %31 = load %struct.mlx5_flow_table_attr*, %struct.mlx5_flow_table_attr** %7, align 8
  %32 = getelementptr inbounds %struct.mlx5_flow_table_attr, %struct.mlx5_flow_table_attr* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = call %struct.fs_prio* @find_prio(%struct.mlx5_flow_namespace* %30, i32 %33)
  store %struct.fs_prio* %34, %struct.fs_prio** %12, align 8
  %35 = load %struct.fs_prio*, %struct.fs_prio** %12, align 8
  %36 = icmp ne %struct.fs_prio* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %26
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %15, align 4
  br label %177

40:                                               ; preds = %26
  %41 = load %struct.mlx5_flow_table_attr*, %struct.mlx5_flow_table_attr** %7, align 8
  %42 = getelementptr inbounds %struct.mlx5_flow_table_attr, %struct.mlx5_flow_table_attr* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.fs_prio*, %struct.fs_prio** %12, align 8
  %45 = getelementptr inbounds %struct.fs_prio, %struct.fs_prio* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp sge i64 %43, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %40
  %49 = load i32, i32* @ENOSPC, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %15, align 4
  br label %177

51:                                               ; preds = %40
  %52 = load %struct.fs_prio*, %struct.fs_prio** %12, align 8
  %53 = getelementptr inbounds %struct.fs_prio, %struct.fs_prio* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.mlx5_flow_table_attr*, %struct.mlx5_flow_table_attr** %7, align 8
  %56 = getelementptr inbounds %struct.mlx5_flow_table_attr, %struct.mlx5_flow_table_attr* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = add nsw i64 %57, %54
  store i64 %58, i64* %56, align 8
  %59 = load %struct.mlx5_flow_table_attr*, %struct.mlx5_flow_table_attr** %7, align 8
  %60 = getelementptr inbounds %struct.mlx5_flow_table_attr, %struct.mlx5_flow_table_attr* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i32, i32* %9, align 4
  %63 = load %struct.mlx5_flow_table_attr*, %struct.mlx5_flow_table_attr** %7, align 8
  %64 = getelementptr inbounds %struct.mlx5_flow_table_attr, %struct.mlx5_flow_table_attr* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %51
  %68 = load %struct.mlx5_flow_table_attr*, %struct.mlx5_flow_table_attr** %7, align 8
  %69 = getelementptr inbounds %struct.mlx5_flow_table_attr, %struct.mlx5_flow_table_attr* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = call i32 @roundup_pow_of_two(i64 %70)
  br label %73

72:                                               ; preds = %51
  br label %73

73:                                               ; preds = %72, %67
  %74 = phi i32 [ %71, %67 ], [ 0, %72 ]
  %75 = load %struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_root_namespace** %10, align 8
  %76 = getelementptr inbounds %struct.mlx5_flow_root_namespace, %struct.mlx5_flow_root_namespace* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %8, align 4
  %79 = load %struct.mlx5_flow_table_attr*, %struct.mlx5_flow_table_attr** %7, align 8
  %80 = getelementptr inbounds %struct.mlx5_flow_table_attr, %struct.mlx5_flow_table_attr* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = call %struct.mlx5_flow_table* @alloc_flow_table(i64 %61, i32 %62, i32 %74, i32 %77, i32 %78, i32 %81)
  store %struct.mlx5_flow_table* %82, %struct.mlx5_flow_table** %13, align 8
  %83 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %13, align 8
  %84 = call i64 @IS_ERR(%struct.mlx5_flow_table* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %73
  %87 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %13, align 8
  %88 = call i32 @PTR_ERR(%struct.mlx5_flow_table* %87)
  store i32 %88, i32* %15, align 4
  br label %177

89:                                               ; preds = %73
  %90 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %13, align 8
  %91 = getelementptr inbounds %struct.mlx5_flow_table, %struct.mlx5_flow_table* %90, i32 0, i32 0
  %92 = load i32, i32* @del_hw_flow_table, align 4
  %93 = load i32, i32* @del_sw_flow_table, align 4
  %94 = call i32 @tree_init_node(%struct.TYPE_5__* %91, i32 %92, i32 %93)
  %95 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %13, align 8
  %96 = getelementptr inbounds %struct.mlx5_flow_table, %struct.mlx5_flow_table* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %89
  %100 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %13, align 8
  %101 = getelementptr inbounds %struct.mlx5_flow_table, %struct.mlx5_flow_table* %100, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  %103 = call i32 @ilog2(i64 %102)
  br label %105

104:                                              ; preds = %89
  br label %105

105:                                              ; preds = %104, %99
  %106 = phi i32 [ %103, %99 ], [ 0, %104 ]
  store i32 %106, i32* %14, align 4
  %107 = load %struct.fs_prio*, %struct.fs_prio** %12, align 8
  %108 = call %struct.mlx5_flow_table* @find_next_chained_ft(%struct.fs_prio* %107)
  store %struct.mlx5_flow_table* %108, %struct.mlx5_flow_table** %11, align 8
  %109 = load %struct.mlx5_flow_namespace*, %struct.mlx5_flow_namespace** %6, align 8
  %110 = getelementptr inbounds %struct.mlx5_flow_namespace, %struct.mlx5_flow_namespace* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %13, align 8
  %113 = getelementptr inbounds %struct.mlx5_flow_table, %struct.mlx5_flow_table* %112, i32 0, i32 1
  store i32 %111, i32* %113, align 4
  %114 = load %struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_root_namespace** %10, align 8
  %115 = getelementptr inbounds %struct.mlx5_flow_root_namespace, %struct.mlx5_flow_root_namespace* %114, i32 0, i32 1
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 0
  %118 = load i32 (%struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_table*, i32, %struct.mlx5_flow_table*)*, i32 (%struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_table*, i32, %struct.mlx5_flow_table*)** %117, align 8
  %119 = load %struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_root_namespace** %10, align 8
  %120 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %13, align 8
  %121 = load i32, i32* %14, align 4
  %122 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %11, align 8
  %123 = call i32 %118(%struct.mlx5_flow_root_namespace* %119, %struct.mlx5_flow_table* %120, i32 %121, %struct.mlx5_flow_table* %122)
  store i32 %123, i32* %15, align 4
  %124 = load i32, i32* %15, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %105
  br label %174

127:                                              ; preds = %105
  %128 = load %struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_root_namespace** %10, align 8
  %129 = getelementptr inbounds %struct.mlx5_flow_root_namespace, %struct.mlx5_flow_root_namespace* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %13, align 8
  %132 = load %struct.fs_prio*, %struct.fs_prio** %12, align 8
  %133 = call i32 @connect_flow_table(i32 %130, %struct.mlx5_flow_table* %131, %struct.fs_prio* %132)
  store i32 %133, i32* %15, align 4
  %134 = load i32, i32* %15, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %127
  br label %165

137:                                              ; preds = %127
  %138 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %13, align 8
  %139 = getelementptr inbounds %struct.mlx5_flow_table, %struct.mlx5_flow_table* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 0
  store i32 1, i32* %140, align 8
  %141 = load %struct.fs_prio*, %struct.fs_prio** %12, align 8
  %142 = getelementptr inbounds %struct.fs_prio, %struct.fs_prio* %141, i32 0, i32 2
  %143 = call i32 @down_write_ref_node(i32* %142, i32 0)
  %144 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %13, align 8
  %145 = getelementptr inbounds %struct.mlx5_flow_table, %struct.mlx5_flow_table* %144, i32 0, i32 0
  %146 = load %struct.fs_prio*, %struct.fs_prio** %12, align 8
  %147 = getelementptr inbounds %struct.fs_prio, %struct.fs_prio* %146, i32 0, i32 2
  %148 = call i32 @tree_add_node(%struct.TYPE_5__* %145, i32* %147)
  %149 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %13, align 8
  %150 = load %struct.fs_prio*, %struct.fs_prio** %12, align 8
  %151 = call i32 @list_add_flow_table(%struct.mlx5_flow_table* %149, %struct.fs_prio* %150)
  %152 = load %struct.fs_prio*, %struct.fs_prio** %12, align 8
  %153 = getelementptr inbounds %struct.fs_prio, %struct.fs_prio* %152, i32 0, i32 3
  %154 = load i32, i32* %153, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %153, align 4
  %156 = load %struct.fs_prio*, %struct.fs_prio** %12, align 8
  %157 = getelementptr inbounds %struct.fs_prio, %struct.fs_prio* %156, i32 0, i32 2
  %158 = call i32 @up_write_ref_node(i32* %157, i32 0)
  %159 = load %struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_root_namespace** %10, align 8
  %160 = getelementptr inbounds %struct.mlx5_flow_root_namespace, %struct.mlx5_flow_root_namespace* %159, i32 0, i32 0
  %161 = call i32 @mutex_unlock(i32* %160)
  %162 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %13, align 8
  %163 = call i32 @trace_mlx5_fs_add_ft(%struct.mlx5_flow_table* %162)
  %164 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %13, align 8
  store %struct.mlx5_flow_table* %164, %struct.mlx5_flow_table** %5, align 8
  br label %183

165:                                              ; preds = %136
  %166 = load %struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_root_namespace** %10, align 8
  %167 = getelementptr inbounds %struct.mlx5_flow_root_namespace, %struct.mlx5_flow_root_namespace* %166, i32 0, i32 1
  %168 = load %struct.TYPE_4__*, %struct.TYPE_4__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 1
  %170 = load i32 (%struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_table*)*, i32 (%struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_table*)** %169, align 8
  %171 = load %struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_root_namespace** %10, align 8
  %172 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %13, align 8
  %173 = call i32 %170(%struct.mlx5_flow_root_namespace* %171, %struct.mlx5_flow_table* %172)
  br label %174

174:                                              ; preds = %165, %126
  %175 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %13, align 8
  %176 = call i32 @kfree(%struct.mlx5_flow_table* %175)
  br label %177

177:                                              ; preds = %174, %86, %48, %37
  %178 = load %struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_root_namespace** %10, align 8
  %179 = getelementptr inbounds %struct.mlx5_flow_root_namespace, %struct.mlx5_flow_root_namespace* %178, i32 0, i32 0
  %180 = call i32 @mutex_unlock(i32* %179)
  %181 = load i32, i32* %15, align 4
  %182 = call %struct.mlx5_flow_table* @ERR_PTR(i32 %181)
  store %struct.mlx5_flow_table* %182, %struct.mlx5_flow_table** %5, align 8
  br label %183

183:                                              ; preds = %177, %137, %21
  %184 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %5, align 8
  ret %struct.mlx5_flow_table* %184
}

declare dso_local %struct.mlx5_flow_root_namespace* @find_root(i32*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local %struct.mlx5_flow_table* @ERR_PTR(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.fs_prio* @find_prio(%struct.mlx5_flow_namespace*, i32) #1

declare dso_local %struct.mlx5_flow_table* @alloc_flow_table(i64, i32, i32, i32, i32, i32) #1

declare dso_local i32 @roundup_pow_of_two(i64) #1

declare dso_local i64 @IS_ERR(%struct.mlx5_flow_table*) #1

declare dso_local i32 @PTR_ERR(%struct.mlx5_flow_table*) #1

declare dso_local i32 @tree_init_node(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @ilog2(i64) #1

declare dso_local %struct.mlx5_flow_table* @find_next_chained_ft(%struct.fs_prio*) #1

declare dso_local i32 @connect_flow_table(i32, %struct.mlx5_flow_table*, %struct.fs_prio*) #1

declare dso_local i32 @down_write_ref_node(i32*, i32) #1

declare dso_local i32 @tree_add_node(%struct.TYPE_5__*, i32*) #1

declare dso_local i32 @list_add_flow_table(%struct.mlx5_flow_table*, %struct.fs_prio*) #1

declare dso_local i32 @up_write_ref_node(i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @trace_mlx5_fs_add_ft(%struct.mlx5_flow_table*) #1

declare dso_local i32 @kfree(%struct.mlx5_flow_table*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
