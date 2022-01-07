; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_fs_core.c_create_auto_flow_group.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_fs_core.c_create_auto_flow_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_flow_table = type { i32 }
%struct.mlx5_flow_group = type { i32, i32, %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32* }
%struct.mlx5_flow_root_namespace = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_table*, i32*, %struct.mlx5_flow_group*)* }

@create_flow_group_in = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@match_criteria_enable = common dso_local global i32 0, align 4
@start_flow_index = common dso_local global i32 0, align 4
@end_flow_index = common dso_local global i32 0, align 4
@fte_match_param = common dso_local global i32 0, align 4
@misc_parameters = common dso_local global i32 0, align 4
@fte_match_set_misc = common dso_local global i32 0, align 4
@source_eswitch_owner_vhca_id = common dso_local global i32 0, align 4
@source_eswitch_owner_vhca_id_valid = common dso_local global i32 0, align 4
@match_criteria = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_flow_table*, %struct.mlx5_flow_group*)* @create_auto_flow_group to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_auto_flow_group(%struct.mlx5_flow_table* %0, %struct.mlx5_flow_group* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx5_flow_table*, align 8
  %5 = alloca %struct.mlx5_flow_group*, align 8
  %6 = alloca %struct.mlx5_flow_root_namespace*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store %struct.mlx5_flow_table* %0, %struct.mlx5_flow_table** %4, align 8
  store %struct.mlx5_flow_group* %1, %struct.mlx5_flow_group** %5, align 8
  %13 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %4, align 8
  %14 = getelementptr inbounds %struct.mlx5_flow_table, %struct.mlx5_flow_table* %13, i32 0, i32 0
  %15 = call %struct.mlx5_flow_root_namespace* @find_root(i32* %14)
  store %struct.mlx5_flow_root_namespace* %15, %struct.mlx5_flow_root_namespace** %6, align 8
  %16 = load i32, i32* @create_flow_group_in, align 4
  %17 = call i32 @MLX5_ST_SZ_BYTES(i32 %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call i32* @kvzalloc(i32 %18, i32 %19)
  store i32* %20, i32** %12, align 8
  %21 = load i32*, i32** %12, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %2
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %106

26:                                               ; preds = %2
  %27 = load i32, i32* @create_flow_group_in, align 4
  %28 = load i32*, i32** %12, align 8
  %29 = load i32, i32* @match_criteria_enable, align 4
  %30 = load %struct.mlx5_flow_group*, %struct.mlx5_flow_group** %5, align 8
  %31 = getelementptr inbounds %struct.mlx5_flow_group, %struct.mlx5_flow_group* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @MLX5_SET(i32 %27, i32* %28, i32 %29, i32 %33)
  %35 = load i32, i32* @create_flow_group_in, align 4
  %36 = load i32*, i32** %12, align 8
  %37 = load i32, i32* @start_flow_index, align 4
  %38 = load %struct.mlx5_flow_group*, %struct.mlx5_flow_group** %5, align 8
  %39 = getelementptr inbounds %struct.mlx5_flow_group, %struct.mlx5_flow_group* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @MLX5_SET(i32 %35, i32* %36, i32 %37, i32 %40)
  %42 = load i32, i32* @create_flow_group_in, align 4
  %43 = load i32*, i32** %12, align 8
  %44 = load i32, i32* @end_flow_index, align 4
  %45 = load %struct.mlx5_flow_group*, %struct.mlx5_flow_group** %5, align 8
  %46 = getelementptr inbounds %struct.mlx5_flow_group, %struct.mlx5_flow_group* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.mlx5_flow_group*, %struct.mlx5_flow_group** %5, align 8
  %49 = getelementptr inbounds %struct.mlx5_flow_group, %struct.mlx5_flow_group* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %47, %50
  %52 = sub nsw i32 %51, 1
  %53 = call i32 @MLX5_SET(i32 %42, i32* %43, i32 %44, i32 %52)
  %54 = load i32, i32* @fte_match_param, align 4
  %55 = load %struct.mlx5_flow_group*, %struct.mlx5_flow_group** %5, align 8
  %56 = getelementptr inbounds %struct.mlx5_flow_group, %struct.mlx5_flow_group* %55, i32 0, i32 3
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* @misc_parameters, align 4
  %60 = call i8* @MLX5_ADDR_OF(i32 %54, i32* %58, i32 %59)
  store i8* %60, i8** %10, align 8
  %61 = load i32, i32* @fte_match_set_misc, align 4
  %62 = load i8*, i8** %10, align 8
  %63 = load i32, i32* @source_eswitch_owner_vhca_id, align 4
  %64 = call i32 @MLX5_GET(i32 %61, i8* %62, i32 %63)
  %65 = icmp ne i32 %64, 0
  %66 = xor i1 %65, true
  %67 = xor i1 %66, true
  %68 = zext i1 %67 to i32
  store i32 %68, i32* %9, align 4
  %69 = load i32, i32* @create_flow_group_in, align 4
  %70 = load i32*, i32** %12, align 8
  %71 = load i32, i32* @source_eswitch_owner_vhca_id_valid, align 4
  %72 = load i32, i32* %9, align 4
  %73 = call i32 @MLX5_SET(i32 %69, i32* %70, i32 %71, i32 %72)
  %74 = load i32, i32* @create_flow_group_in, align 4
  %75 = load i32*, i32** %12, align 8
  %76 = load i32, i32* @match_criteria, align 4
  %77 = call i8* @MLX5_ADDR_OF(i32 %74, i32* %75, i32 %76)
  store i8* %77, i8** %8, align 8
  %78 = load i8*, i8** %8, align 8
  %79 = load %struct.mlx5_flow_group*, %struct.mlx5_flow_group** %5, align 8
  %80 = getelementptr inbounds %struct.mlx5_flow_group, %struct.mlx5_flow_group* %79, i32 0, i32 3
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = call i32 @memcpy(i8* %78, i32* %82, i32 8)
  %84 = load %struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_root_namespace** %6, align 8
  %85 = getelementptr inbounds %struct.mlx5_flow_root_namespace, %struct.mlx5_flow_root_namespace* %84, i32 0, i32 0
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  %88 = load i32 (%struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_table*, i32*, %struct.mlx5_flow_group*)*, i32 (%struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_table*, i32*, %struct.mlx5_flow_group*)** %87, align 8
  %89 = load %struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_root_namespace** %6, align 8
  %90 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %4, align 8
  %91 = load i32*, i32** %12, align 8
  %92 = load %struct.mlx5_flow_group*, %struct.mlx5_flow_group** %5, align 8
  %93 = call i32 %88(%struct.mlx5_flow_root_namespace* %89, %struct.mlx5_flow_table* %90, i32* %91, %struct.mlx5_flow_group* %92)
  store i32 %93, i32* %11, align 4
  %94 = load i32, i32* %11, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %102, label %96

96:                                               ; preds = %26
  %97 = load %struct.mlx5_flow_group*, %struct.mlx5_flow_group** %5, align 8
  %98 = getelementptr inbounds %struct.mlx5_flow_group, %struct.mlx5_flow_group* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  store i32 1, i32* %99, align 8
  %100 = load %struct.mlx5_flow_group*, %struct.mlx5_flow_group** %5, align 8
  %101 = call i32 @trace_mlx5_fs_add_fg(%struct.mlx5_flow_group* %100)
  br label %102

102:                                              ; preds = %96, %26
  %103 = load i32*, i32** %12, align 8
  %104 = call i32 @kvfree(i32* %103)
  %105 = load i32, i32* %11, align 4
  store i32 %105, i32* %3, align 4
  br label %106

106:                                              ; preds = %102, %23
  %107 = load i32, i32* %3, align 4
  ret i32 %107
}

declare dso_local %struct.mlx5_flow_root_namespace* @find_root(i32*) #1

declare dso_local i32 @MLX5_ST_SZ_BYTES(i32) #1

declare dso_local i32* @kvzalloc(i32, i32) #1

declare dso_local i32 @MLX5_SET(i32, i32*, i32, i32) #1

declare dso_local i8* @MLX5_ADDR_OF(i32, i32*, i32) #1

declare dso_local i32 @MLX5_GET(i32, i8*, i32) #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

declare dso_local i32 @trace_mlx5_fs_add_fg(%struct.mlx5_flow_group*) #1

declare dso_local i32 @kvfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
