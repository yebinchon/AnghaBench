; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_fs_core.c_init_root_tree_recursive.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_fs_core.c_init_root_tree_recursive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.mlx5_flow_steering = type { i32 }
%struct.fs_node = type { i32 }
%struct.init_tree_node = type { i64, i32, i32, i64, %struct.init_tree_node*, i32, i32, i32 }
%struct.mlx5_flow_namespace = type { %struct.fs_node }
%struct.fs_prio = type { %struct.fs_node }

@flow_table_properties_nic_receive = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@FS_TYPE_PRIO = common dso_local global i64 0, align 8
@FS_TYPE_NAMESPACE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_flow_steering*, %struct.init_tree_node*, %struct.fs_node*, %struct.init_tree_node*, i32)* @init_root_tree_recursive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_root_tree_recursive(%struct.mlx5_flow_steering* %0, %struct.init_tree_node* %1, %struct.fs_node* %2, %struct.init_tree_node* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlx5_flow_steering*, align 8
  %8 = alloca %struct.init_tree_node*, align 8
  %9 = alloca %struct.fs_node*, align 8
  %10 = alloca %struct.init_tree_node*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.mlx5_flow_namespace*, align 8
  %14 = alloca %struct.fs_prio*, align 8
  %15 = alloca %struct.fs_node*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.mlx5_flow_steering* %0, %struct.mlx5_flow_steering** %7, align 8
  store %struct.init_tree_node* %1, %struct.init_tree_node** %8, align 8
  store %struct.fs_node* %2, %struct.fs_node** %9, align 8
  store %struct.init_tree_node* %3, %struct.init_tree_node** %10, align 8
  store i32 %4, i32* %11, align 4
  %18 = load %struct.mlx5_flow_steering*, %struct.mlx5_flow_steering** %7, align 8
  %19 = getelementptr inbounds %struct.mlx5_flow_steering, %struct.mlx5_flow_steering* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @flow_table_properties_nic_receive, i32 0, i32 0), align 4
  %22 = call i32 @MLX5_CAP_FLOWTABLE(i32 %20, i32 %21)
  store i32 %22, i32* %12, align 4
  %23 = load %struct.init_tree_node*, %struct.init_tree_node** %8, align 8
  %24 = getelementptr inbounds %struct.init_tree_node, %struct.init_tree_node* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @FS_TYPE_PRIO, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %75

28:                                               ; preds = %5
  %29 = load %struct.init_tree_node*, %struct.init_tree_node** %8, align 8
  %30 = getelementptr inbounds %struct.init_tree_node, %struct.init_tree_node* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* %12, align 4
  %33 = icmp sgt i32 %31, %32
  br i1 %33, label %42, label %34

34:                                               ; preds = %28
  %35 = load %struct.mlx5_flow_steering*, %struct.mlx5_flow_steering** %7, align 8
  %36 = getelementptr inbounds %struct.mlx5_flow_steering, %struct.mlx5_flow_steering* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.init_tree_node*, %struct.init_tree_node** %8, align 8
  %39 = getelementptr inbounds %struct.init_tree_node, %struct.init_tree_node* %38, i32 0, i32 7
  %40 = call i32 @has_required_caps(i32 %37, i32* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %34, %28
  store i32 0, i32* %6, align 4
  br label %167

43:                                               ; preds = %34
  %44 = load %struct.mlx5_flow_namespace*, %struct.mlx5_flow_namespace** %13, align 8
  %45 = load %struct.fs_node*, %struct.fs_node** %9, align 8
  %46 = call i32 @fs_get_obj(%struct.mlx5_flow_namespace* %44, %struct.fs_node* %45)
  %47 = load %struct.init_tree_node*, %struct.init_tree_node** %8, align 8
  %48 = getelementptr inbounds %struct.init_tree_node, %struct.init_tree_node* %47, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %43
  %52 = load %struct.mlx5_flow_namespace*, %struct.mlx5_flow_namespace** %13, align 8
  %53 = load i32, i32* %11, align 4
  %54 = load %struct.init_tree_node*, %struct.init_tree_node** %8, align 8
  %55 = call i32 @create_leaf_prios(%struct.mlx5_flow_namespace* %52, i32 %53, %struct.init_tree_node* %54)
  store i32 %55, i32* %6, align 4
  br label %167

56:                                               ; preds = %43
  %57 = load %struct.mlx5_flow_namespace*, %struct.mlx5_flow_namespace** %13, align 8
  %58 = load i32, i32* %11, align 4
  %59 = load %struct.init_tree_node*, %struct.init_tree_node** %8, align 8
  %60 = getelementptr inbounds %struct.init_tree_node, %struct.init_tree_node* %59, i32 0, i32 6
  %61 = load i32, i32* %60, align 4
  %62 = call %struct.mlx5_flow_namespace* @fs_create_prio(%struct.mlx5_flow_namespace* %57, i32 %58, i32 %61)
  %63 = bitcast %struct.mlx5_flow_namespace* %62 to %struct.fs_prio*
  store %struct.fs_prio* %63, %struct.fs_prio** %14, align 8
  %64 = load %struct.fs_prio*, %struct.fs_prio** %14, align 8
  %65 = bitcast %struct.fs_prio* %64 to %struct.mlx5_flow_namespace*
  %66 = call i64 @IS_ERR(%struct.mlx5_flow_namespace* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %56
  %69 = load %struct.fs_prio*, %struct.fs_prio** %14, align 8
  %70 = bitcast %struct.fs_prio* %69 to %struct.mlx5_flow_namespace*
  %71 = call i32 @PTR_ERR(%struct.mlx5_flow_namespace* %70)
  store i32 %71, i32* %6, align 4
  br label %167

72:                                               ; preds = %56
  %73 = load %struct.fs_prio*, %struct.fs_prio** %14, align 8
  %74 = getelementptr inbounds %struct.fs_prio, %struct.fs_prio* %73, i32 0, i32 0
  store %struct.fs_node* %74, %struct.fs_node** %15, align 8
  br label %105

75:                                               ; preds = %5
  %76 = load %struct.init_tree_node*, %struct.init_tree_node** %8, align 8
  %77 = getelementptr inbounds %struct.init_tree_node, %struct.init_tree_node* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @FS_TYPE_NAMESPACE, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %101

81:                                               ; preds = %75
  %82 = load %struct.fs_prio*, %struct.fs_prio** %14, align 8
  %83 = bitcast %struct.fs_prio* %82 to %struct.mlx5_flow_namespace*
  %84 = load %struct.fs_node*, %struct.fs_node** %9, align 8
  %85 = call i32 @fs_get_obj(%struct.mlx5_flow_namespace* %83, %struct.fs_node* %84)
  %86 = load %struct.fs_prio*, %struct.fs_prio** %14, align 8
  %87 = bitcast %struct.fs_prio* %86 to %struct.mlx5_flow_namespace*
  %88 = load %struct.init_tree_node*, %struct.init_tree_node** %8, align 8
  %89 = getelementptr inbounds %struct.init_tree_node, %struct.init_tree_node* %88, i32 0, i32 5
  %90 = load i32, i32* %89, align 8
  %91 = call %struct.mlx5_flow_namespace* @fs_create_namespace(%struct.mlx5_flow_namespace* %87, i32 %90)
  store %struct.mlx5_flow_namespace* %91, %struct.mlx5_flow_namespace** %13, align 8
  %92 = load %struct.mlx5_flow_namespace*, %struct.mlx5_flow_namespace** %13, align 8
  %93 = call i64 @IS_ERR(%struct.mlx5_flow_namespace* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %81
  %96 = load %struct.mlx5_flow_namespace*, %struct.mlx5_flow_namespace** %13, align 8
  %97 = call i32 @PTR_ERR(%struct.mlx5_flow_namespace* %96)
  store i32 %97, i32* %6, align 4
  br label %167

98:                                               ; preds = %81
  %99 = load %struct.mlx5_flow_namespace*, %struct.mlx5_flow_namespace** %13, align 8
  %100 = getelementptr inbounds %struct.mlx5_flow_namespace, %struct.mlx5_flow_namespace* %99, i32 0, i32 0
  store %struct.fs_node* %100, %struct.fs_node** %15, align 8
  br label %104

101:                                              ; preds = %75
  %102 = load i32, i32* @EINVAL, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %6, align 4
  br label %167

104:                                              ; preds = %98
  br label %105

105:                                              ; preds = %104, %72
  store i32 0, i32* %11, align 4
  store i32 0, i32* %16, align 4
  br label %106

106:                                              ; preds = %163, %105
  %107 = load i32, i32* %16, align 4
  %108 = load %struct.init_tree_node*, %struct.init_tree_node** %8, align 8
  %109 = getelementptr inbounds %struct.init_tree_node, %struct.init_tree_node* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = icmp slt i32 %107, %110
  br i1 %111, label %112, label %166

112:                                              ; preds = %106
  %113 = load %struct.mlx5_flow_steering*, %struct.mlx5_flow_steering** %7, align 8
  %114 = load %struct.init_tree_node*, %struct.init_tree_node** %8, align 8
  %115 = getelementptr inbounds %struct.init_tree_node, %struct.init_tree_node* %114, i32 0, i32 4
  %116 = load %struct.init_tree_node*, %struct.init_tree_node** %115, align 8
  %117 = load i32, i32* %16, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.init_tree_node, %struct.init_tree_node* %116, i64 %118
  %120 = load %struct.fs_node*, %struct.fs_node** %15, align 8
  %121 = load %struct.init_tree_node*, %struct.init_tree_node** %8, align 8
  %122 = load i32, i32* %11, align 4
  %123 = call i32 @init_root_tree_recursive(%struct.mlx5_flow_steering* %113, %struct.init_tree_node* %119, %struct.fs_node* %120, %struct.init_tree_node* %121, i32 %122)
  store i32 %123, i32* %17, align 4
  %124 = load i32, i32* %17, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %112
  %127 = load i32, i32* %17, align 4
  store i32 %127, i32* %6, align 4
  br label %167

128:                                              ; preds = %112
  %129 = load %struct.init_tree_node*, %struct.init_tree_node** %8, align 8
  %130 = getelementptr inbounds %struct.init_tree_node, %struct.init_tree_node* %129, i32 0, i32 4
  %131 = load %struct.init_tree_node*, %struct.init_tree_node** %130, align 8
  %132 = load i32, i32* %16, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.init_tree_node, %struct.init_tree_node* %131, i64 %133
  %135 = getelementptr inbounds %struct.init_tree_node, %struct.init_tree_node* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @FS_TYPE_PRIO, align 8
  %138 = icmp eq i64 %136, %137
  br i1 %138, label %139, label %162

139:                                              ; preds = %128
  %140 = load %struct.init_tree_node*, %struct.init_tree_node** %8, align 8
  %141 = getelementptr inbounds %struct.init_tree_node, %struct.init_tree_node* %140, i32 0, i32 4
  %142 = load %struct.init_tree_node*, %struct.init_tree_node** %141, align 8
  %143 = load i32, i32* %16, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.init_tree_node, %struct.init_tree_node* %142, i64 %144
  %146 = getelementptr inbounds %struct.init_tree_node, %struct.init_tree_node* %145, i32 0, i32 3
  %147 = load i64, i64* %146, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %162

149:                                              ; preds = %139
  %150 = load %struct.init_tree_node*, %struct.init_tree_node** %8, align 8
  %151 = getelementptr inbounds %struct.init_tree_node, %struct.init_tree_node* %150, i32 0, i32 4
  %152 = load %struct.init_tree_node*, %struct.init_tree_node** %151, align 8
  %153 = load i32, i32* %16, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.init_tree_node, %struct.init_tree_node* %152, i64 %154
  %156 = getelementptr inbounds %struct.init_tree_node, %struct.init_tree_node* %155, i32 0, i32 3
  %157 = load i64, i64* %156, align 8
  %158 = load i32, i32* %11, align 4
  %159 = sext i32 %158 to i64
  %160 = add nsw i64 %159, %157
  %161 = trunc i64 %160 to i32
  store i32 %161, i32* %11, align 4
  br label %162

162:                                              ; preds = %149, %139, %128
  br label %163

163:                                              ; preds = %162
  %164 = load i32, i32* %16, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %16, align 4
  br label %106

166:                                              ; preds = %106
  store i32 0, i32* %6, align 4
  br label %167

167:                                              ; preds = %166, %126, %101, %95, %68, %51, %42
  %168 = load i32, i32* %6, align 4
  ret i32 %168
}

declare dso_local i32 @MLX5_CAP_FLOWTABLE(i32, i32) #1

declare dso_local i32 @has_required_caps(i32, i32*) #1

declare dso_local i32 @fs_get_obj(%struct.mlx5_flow_namespace*, %struct.fs_node*) #1

declare dso_local i32 @create_leaf_prios(%struct.mlx5_flow_namespace*, i32, %struct.init_tree_node*) #1

declare dso_local %struct.mlx5_flow_namespace* @fs_create_prio(%struct.mlx5_flow_namespace*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.mlx5_flow_namespace*) #1

declare dso_local i32 @PTR_ERR(%struct.mlx5_flow_namespace*) #1

declare dso_local %struct.mlx5_flow_namespace* @fs_create_namespace(%struct.mlx5_flow_namespace*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
