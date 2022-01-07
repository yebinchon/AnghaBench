; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_fs_core.c_init_fdb_root_ns.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_fs_core.c_init_fdb_root_ns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_flow_steering = type { %struct.TYPE_4__*, %struct.mlx5_flow_namespace** }
%struct.TYPE_4__ = type { %struct.mlx5_flow_namespace }
%struct.mlx5_flow_namespace = type { i32 }
%struct.fs_prio = type opaque

@FS_FT_FDB = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@FDB_MAX_CHAIN = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@FDB_BYPASS_PATH = common dso_local global i32 0, align 4
@FDB_MAX_PRIO = common dso_local global i32 0, align 4
@FDB_FAST_PATH = common dso_local global i32 0, align 4
@MLX5_FLOW_TABLE_MISS_ACTION_DEF = common dso_local global i32 0, align 4
@FDB_SLOW_PATH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_flow_steering*)* @init_fdb_root_ns to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_fdb_root_ns(%struct.mlx5_flow_steering* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx5_flow_steering*, align 8
  %4 = alloca %struct.mlx5_flow_namespace*, align 8
  %5 = alloca %struct.fs_prio*, align 8
  %6 = alloca %struct.fs_prio*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.mlx5_flow_steering* %0, %struct.mlx5_flow_steering** %3, align 8
  %11 = load %struct.mlx5_flow_steering*, %struct.mlx5_flow_steering** %3, align 8
  %12 = load i32, i32* @FS_FT_FDB, align 4
  %13 = call %struct.TYPE_4__* @create_root_ns(%struct.mlx5_flow_steering* %11, i32 %12)
  %14 = load %struct.mlx5_flow_steering*, %struct.mlx5_flow_steering** %3, align 8
  %15 = getelementptr inbounds %struct.mlx5_flow_steering, %struct.mlx5_flow_steering* %14, i32 0, i32 0
  store %struct.TYPE_4__* %13, %struct.TYPE_4__** %15, align 8
  %16 = load %struct.mlx5_flow_steering*, %struct.mlx5_flow_steering** %3, align 8
  %17 = getelementptr inbounds %struct.mlx5_flow_steering, %struct.mlx5_flow_steering* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = icmp ne %struct.TYPE_4__* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %165

23:                                               ; preds = %1
  %24 = load i32, i32* @FDB_MAX_CHAIN, align 4
  %25 = add nsw i32 %24, 1
  %26 = sext i32 %25 to i64
  %27 = mul i64 8, %26
  %28 = trunc i64 %27 to i32
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call %struct.mlx5_flow_namespace** @kzalloc(i32 %28, i32 %29)
  %31 = load %struct.mlx5_flow_steering*, %struct.mlx5_flow_steering** %3, align 8
  %32 = getelementptr inbounds %struct.mlx5_flow_steering, %struct.mlx5_flow_steering* %31, i32 0, i32 1
  store %struct.mlx5_flow_namespace** %30, %struct.mlx5_flow_namespace*** %32, align 8
  %33 = load %struct.mlx5_flow_steering*, %struct.mlx5_flow_steering** %3, align 8
  %34 = getelementptr inbounds %struct.mlx5_flow_steering, %struct.mlx5_flow_steering* %33, i32 0, i32 1
  %35 = load %struct.mlx5_flow_namespace**, %struct.mlx5_flow_namespace*** %34, align 8
  %36 = icmp ne %struct.mlx5_flow_namespace** %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %23
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %165

40:                                               ; preds = %23
  %41 = load %struct.mlx5_flow_steering*, %struct.mlx5_flow_steering** %3, align 8
  %42 = getelementptr inbounds %struct.mlx5_flow_steering, %struct.mlx5_flow_steering* %41, i32 0, i32 0
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* @FDB_BYPASS_PATH, align 4
  %46 = call %struct.mlx5_flow_namespace* @fs_create_prio(%struct.mlx5_flow_namespace* %44, i32 %45, i32 1)
  %47 = bitcast %struct.mlx5_flow_namespace* %46 to %struct.fs_prio*
  store %struct.fs_prio* %47, %struct.fs_prio** %5, align 8
  %48 = load %struct.fs_prio*, %struct.fs_prio** %5, align 8
  %49 = bitcast %struct.fs_prio* %48 to %struct.mlx5_flow_namespace*
  %50 = call i64 @IS_ERR(%struct.mlx5_flow_namespace* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %40
  %53 = load %struct.fs_prio*, %struct.fs_prio** %5, align 8
  %54 = bitcast %struct.fs_prio* %53 to %struct.mlx5_flow_namespace*
  %55 = call i32 @PTR_ERR(%struct.mlx5_flow_namespace* %54)
  store i32 %55, i32* %10, align 4
  br label %151

56:                                               ; preds = %40
  %57 = load i32, i32* @FDB_MAX_PRIO, align 4
  %58 = mul nsw i32 2, %57
  %59 = load i32, i32* @FDB_MAX_CHAIN, align 4
  %60 = add nsw i32 %59, 1
  %61 = mul nsw i32 %58, %60
  store i32 %61, i32* %7, align 4
  %62 = load %struct.mlx5_flow_steering*, %struct.mlx5_flow_steering** %3, align 8
  %63 = getelementptr inbounds %struct.mlx5_flow_steering, %struct.mlx5_flow_steering* %62, i32 0, i32 0
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i32, i32* @FDB_FAST_PATH, align 4
  %67 = load i32, i32* %7, align 4
  %68 = call %struct.mlx5_flow_namespace* @fs_create_prio_chained(%struct.mlx5_flow_namespace* %65, i32 %66, i32 %67)
  %69 = bitcast %struct.mlx5_flow_namespace* %68 to %struct.fs_prio*
  store %struct.fs_prio* %69, %struct.fs_prio** %5, align 8
  %70 = load %struct.fs_prio*, %struct.fs_prio** %5, align 8
  %71 = bitcast %struct.fs_prio* %70 to %struct.mlx5_flow_namespace*
  %72 = call i64 @IS_ERR(%struct.mlx5_flow_namespace* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %56
  %75 = load %struct.fs_prio*, %struct.fs_prio** %5, align 8
  %76 = bitcast %struct.fs_prio* %75 to %struct.mlx5_flow_namespace*
  %77 = call i32 @PTR_ERR(%struct.mlx5_flow_namespace* %76)
  store i32 %77, i32* %10, align 4
  br label %151

78:                                               ; preds = %56
  store i32 0, i32* %8, align 4
  br label %79

79:                                               ; preds = %127, %78
  %80 = load i32, i32* %8, align 4
  %81 = load i32, i32* @FDB_MAX_CHAIN, align 4
  %82 = icmp sle i32 %80, %81
  br i1 %82, label %83, label %130

83:                                               ; preds = %79
  %84 = load %struct.fs_prio*, %struct.fs_prio** %5, align 8
  %85 = bitcast %struct.fs_prio* %84 to %struct.mlx5_flow_namespace*
  %86 = load i32, i32* @MLX5_FLOW_TABLE_MISS_ACTION_DEF, align 4
  %87 = call %struct.mlx5_flow_namespace* @fs_create_namespace(%struct.mlx5_flow_namespace* %85, i32 %86)
  store %struct.mlx5_flow_namespace* %87, %struct.mlx5_flow_namespace** %4, align 8
  %88 = load %struct.mlx5_flow_namespace*, %struct.mlx5_flow_namespace** %4, align 8
  %89 = call i64 @IS_ERR(%struct.mlx5_flow_namespace* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %83
  %92 = load %struct.mlx5_flow_namespace*, %struct.mlx5_flow_namespace** %4, align 8
  %93 = call i32 @PTR_ERR(%struct.mlx5_flow_namespace* %92)
  store i32 %93, i32* %10, align 4
  br label %151

94:                                               ; preds = %83
  store i32 0, i32* %9, align 4
  br label %95

95:                                               ; preds = %116, %94
  %96 = load i32, i32* %9, align 4
  %97 = load i32, i32* @FDB_MAX_PRIO, align 4
  %98 = load i32, i32* %8, align 4
  %99 = add nsw i32 %98, 1
  %100 = mul nsw i32 %97, %99
  %101 = icmp slt i32 %96, %100
  br i1 %101, label %102, label %119

102:                                              ; preds = %95
  %103 = load %struct.mlx5_flow_namespace*, %struct.mlx5_flow_namespace** %4, align 8
  %104 = load i32, i32* %9, align 4
  %105 = call %struct.mlx5_flow_namespace* @fs_create_prio(%struct.mlx5_flow_namespace* %103, i32 %104, i32 2)
  %106 = bitcast %struct.mlx5_flow_namespace* %105 to %struct.fs_prio*
  store %struct.fs_prio* %106, %struct.fs_prio** %6, align 8
  %107 = load %struct.fs_prio*, %struct.fs_prio** %6, align 8
  %108 = bitcast %struct.fs_prio* %107 to %struct.mlx5_flow_namespace*
  %109 = call i64 @IS_ERR(%struct.mlx5_flow_namespace* %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %102
  %112 = load %struct.fs_prio*, %struct.fs_prio** %6, align 8
  %113 = bitcast %struct.fs_prio* %112 to %struct.mlx5_flow_namespace*
  %114 = call i32 @PTR_ERR(%struct.mlx5_flow_namespace* %113)
  store i32 %114, i32* %10, align 4
  br label %151

115:                                              ; preds = %102
  br label %116

116:                                              ; preds = %115
  %117 = load i32, i32* %9, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %9, align 4
  br label %95

119:                                              ; preds = %95
  %120 = load %struct.mlx5_flow_namespace*, %struct.mlx5_flow_namespace** %4, align 8
  %121 = load %struct.mlx5_flow_steering*, %struct.mlx5_flow_steering** %3, align 8
  %122 = getelementptr inbounds %struct.mlx5_flow_steering, %struct.mlx5_flow_steering* %121, i32 0, i32 1
  %123 = load %struct.mlx5_flow_namespace**, %struct.mlx5_flow_namespace*** %122, align 8
  %124 = load i32, i32* %8, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.mlx5_flow_namespace*, %struct.mlx5_flow_namespace** %123, i64 %125
  store %struct.mlx5_flow_namespace* %120, %struct.mlx5_flow_namespace** %126, align 8
  br label %127

127:                                              ; preds = %119
  %128 = load i32, i32* %8, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %8, align 4
  br label %79

130:                                              ; preds = %79
  %131 = load %struct.mlx5_flow_steering*, %struct.mlx5_flow_steering** %3, align 8
  %132 = getelementptr inbounds %struct.mlx5_flow_steering, %struct.mlx5_flow_steering* %131, i32 0, i32 0
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 0
  %135 = load i32, i32* @FDB_SLOW_PATH, align 4
  %136 = call %struct.mlx5_flow_namespace* @fs_create_prio(%struct.mlx5_flow_namespace* %134, i32 %135, i32 1)
  %137 = bitcast %struct.mlx5_flow_namespace* %136 to %struct.fs_prio*
  store %struct.fs_prio* %137, %struct.fs_prio** %5, align 8
  %138 = load %struct.fs_prio*, %struct.fs_prio** %5, align 8
  %139 = bitcast %struct.fs_prio* %138 to %struct.mlx5_flow_namespace*
  %140 = call i64 @IS_ERR(%struct.mlx5_flow_namespace* %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %146

142:                                              ; preds = %130
  %143 = load %struct.fs_prio*, %struct.fs_prio** %5, align 8
  %144 = bitcast %struct.fs_prio* %143 to %struct.mlx5_flow_namespace*
  %145 = call i32 @PTR_ERR(%struct.mlx5_flow_namespace* %144)
  store i32 %145, i32* %10, align 4
  br label %151

146:                                              ; preds = %130
  %147 = load %struct.mlx5_flow_steering*, %struct.mlx5_flow_steering** %3, align 8
  %148 = getelementptr inbounds %struct.mlx5_flow_steering, %struct.mlx5_flow_steering* %147, i32 0, i32 0
  %149 = load %struct.TYPE_4__*, %struct.TYPE_4__** %148, align 8
  %150 = call i32 @set_prio_attrs(%struct.TYPE_4__* %149)
  store i32 0, i32* %2, align 4
  br label %165

151:                                              ; preds = %142, %111, %91, %74, %52
  %152 = load %struct.mlx5_flow_steering*, %struct.mlx5_flow_steering** %3, align 8
  %153 = getelementptr inbounds %struct.mlx5_flow_steering, %struct.mlx5_flow_steering* %152, i32 0, i32 0
  %154 = load %struct.TYPE_4__*, %struct.TYPE_4__** %153, align 8
  %155 = call i32 @cleanup_root_ns(%struct.TYPE_4__* %154)
  %156 = load %struct.mlx5_flow_steering*, %struct.mlx5_flow_steering** %3, align 8
  %157 = getelementptr inbounds %struct.mlx5_flow_steering, %struct.mlx5_flow_steering* %156, i32 0, i32 1
  %158 = load %struct.mlx5_flow_namespace**, %struct.mlx5_flow_namespace*** %157, align 8
  %159 = call i32 @kfree(%struct.mlx5_flow_namespace** %158)
  %160 = load %struct.mlx5_flow_steering*, %struct.mlx5_flow_steering** %3, align 8
  %161 = getelementptr inbounds %struct.mlx5_flow_steering, %struct.mlx5_flow_steering* %160, i32 0, i32 1
  store %struct.mlx5_flow_namespace** null, %struct.mlx5_flow_namespace*** %161, align 8
  %162 = load %struct.mlx5_flow_steering*, %struct.mlx5_flow_steering** %3, align 8
  %163 = getelementptr inbounds %struct.mlx5_flow_steering, %struct.mlx5_flow_steering* %162, i32 0, i32 0
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %163, align 8
  %164 = load i32, i32* %10, align 4
  store i32 %164, i32* %2, align 4
  br label %165

165:                                              ; preds = %151, %146, %37, %20
  %166 = load i32, i32* %2, align 4
  ret i32 %166
}

declare dso_local %struct.TYPE_4__* @create_root_ns(%struct.mlx5_flow_steering*, i32) #1

declare dso_local %struct.mlx5_flow_namespace** @kzalloc(i32, i32) #1

declare dso_local %struct.mlx5_flow_namespace* @fs_create_prio(%struct.mlx5_flow_namespace*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.mlx5_flow_namespace*) #1

declare dso_local i32 @PTR_ERR(%struct.mlx5_flow_namespace*) #1

declare dso_local %struct.mlx5_flow_namespace* @fs_create_prio_chained(%struct.mlx5_flow_namespace*, i32, i32) #1

declare dso_local %struct.mlx5_flow_namespace* @fs_create_namespace(%struct.mlx5_flow_namespace*, i32) #1

declare dso_local i32 @set_prio_attrs(%struct.TYPE_4__*) #1

declare dso_local i32 @cleanup_root_ns(%struct.TYPE_4__*) #1

declare dso_local i32 @kfree(%struct.mlx5_flow_namespace**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
