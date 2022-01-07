; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_fs_core.c_alloc_fte.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_fs_core.c_alloc_fte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fs_fte = type { %struct.TYPE_2__, i32, %struct.mlx5_flow_act, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.mlx5_flow_act = type { i32 }
%struct.mlx5_flow_table = type { i32 }
%struct.mlx5_flow_spec = type { i32, i32 }
%struct.mlx5_flow_steering = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@FS_TYPE_FLOW_ENTRY = common dso_local global i32 0, align 4
@del_sw_fte = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.fs_fte* (%struct.mlx5_flow_table*, %struct.mlx5_flow_spec*, %struct.mlx5_flow_act*)* @alloc_fte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fs_fte* @alloc_fte(%struct.mlx5_flow_table* %0, %struct.mlx5_flow_spec* %1, %struct.mlx5_flow_act* %2) #0 {
  %4 = alloca %struct.fs_fte*, align 8
  %5 = alloca %struct.mlx5_flow_table*, align 8
  %6 = alloca %struct.mlx5_flow_spec*, align 8
  %7 = alloca %struct.mlx5_flow_act*, align 8
  %8 = alloca %struct.mlx5_flow_steering*, align 8
  %9 = alloca %struct.fs_fte*, align 8
  store %struct.mlx5_flow_table* %0, %struct.mlx5_flow_table** %5, align 8
  store %struct.mlx5_flow_spec* %1, %struct.mlx5_flow_spec** %6, align 8
  store %struct.mlx5_flow_act* %2, %struct.mlx5_flow_act** %7, align 8
  %10 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %5, align 8
  %11 = getelementptr inbounds %struct.mlx5_flow_table, %struct.mlx5_flow_table* %10, i32 0, i32 0
  %12 = call %struct.mlx5_flow_steering* @get_steering(i32* %11)
  store %struct.mlx5_flow_steering* %12, %struct.mlx5_flow_steering** %8, align 8
  %13 = load %struct.mlx5_flow_steering*, %struct.mlx5_flow_steering** %8, align 8
  %14 = getelementptr inbounds %struct.mlx5_flow_steering, %struct.mlx5_flow_steering* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.fs_fte* @kmem_cache_zalloc(i32 %15, i32 %16)
  store %struct.fs_fte* %17, %struct.fs_fte** %9, align 8
  %18 = load %struct.fs_fte*, %struct.fs_fte** %9, align 8
  %19 = icmp ne %struct.fs_fte* %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %3
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  %23 = call %struct.fs_fte* @ERR_PTR(i32 %22)
  store %struct.fs_fte* %23, %struct.fs_fte** %4, align 8
  br label %50

24:                                               ; preds = %3
  %25 = load %struct.fs_fte*, %struct.fs_fte** %9, align 8
  %26 = getelementptr inbounds %struct.fs_fte, %struct.fs_fte* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.mlx5_flow_spec*, %struct.mlx5_flow_spec** %6, align 8
  %29 = getelementptr inbounds %struct.mlx5_flow_spec, %struct.mlx5_flow_spec* %28, i32 0, i32 1
  %30 = call i32 @memcpy(i32 %27, i32* %29, i32 4)
  %31 = load i32, i32* @FS_TYPE_FLOW_ENTRY, align 4
  %32 = load %struct.fs_fte*, %struct.fs_fte** %9, align 8
  %33 = getelementptr inbounds %struct.fs_fte, %struct.fs_fte* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  store i32 %31, i32* %34, align 4
  %35 = load %struct.fs_fte*, %struct.fs_fte** %9, align 8
  %36 = getelementptr inbounds %struct.fs_fte, %struct.fs_fte* %35, i32 0, i32 2
  %37 = load %struct.mlx5_flow_act*, %struct.mlx5_flow_act** %7, align 8
  %38 = bitcast %struct.mlx5_flow_act* %36 to i8*
  %39 = bitcast %struct.mlx5_flow_act* %37 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %38, i8* align 4 %39, i64 4, i1 false)
  %40 = load %struct.mlx5_flow_spec*, %struct.mlx5_flow_spec** %6, align 8
  %41 = getelementptr inbounds %struct.mlx5_flow_spec, %struct.mlx5_flow_spec* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.fs_fte*, %struct.fs_fte** %9, align 8
  %44 = getelementptr inbounds %struct.fs_fte, %struct.fs_fte* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = load %struct.fs_fte*, %struct.fs_fte** %9, align 8
  %46 = getelementptr inbounds %struct.fs_fte, %struct.fs_fte* %45, i32 0, i32 0
  %47 = load i32, i32* @del_sw_fte, align 4
  %48 = call i32 @tree_init_node(%struct.TYPE_2__* %46, i32* null, i32 %47)
  %49 = load %struct.fs_fte*, %struct.fs_fte** %9, align 8
  store %struct.fs_fte* %49, %struct.fs_fte** %4, align 8
  br label %50

50:                                               ; preds = %24, %20
  %51 = load %struct.fs_fte*, %struct.fs_fte** %4, align 8
  ret %struct.fs_fte* %51
}

declare dso_local %struct.mlx5_flow_steering* @get_steering(i32*) #1

declare dso_local %struct.fs_fte* @kmem_cache_zalloc(i32, i32) #1

declare dso_local %struct.fs_fte* @ERR_PTR(i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @tree_init_node(%struct.TYPE_2__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
