; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_fs_core.c_del_sw_fte.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_fs_core.c_del_sw_fte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fs_node = type { i32 }
%struct.mlx5_flow_steering = type { i32 }
%struct.mlx5_flow_group = type { i64, i64, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.fs_node* }
%struct.fs_fte = type { i64, i64, i32, i32, i32, %struct.TYPE_2__ }

@rhash_fte = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fs_node*)* @del_sw_fte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @del_sw_fte(%struct.fs_node* %0) #0 {
  %2 = alloca %struct.fs_node*, align 8
  %3 = alloca %struct.mlx5_flow_steering*, align 8
  %4 = alloca %struct.mlx5_flow_group*, align 8
  %5 = alloca %struct.fs_fte*, align 8
  %6 = alloca i32, align 4
  store %struct.fs_node* %0, %struct.fs_node** %2, align 8
  %7 = load %struct.fs_node*, %struct.fs_node** %2, align 8
  %8 = call %struct.mlx5_flow_steering* @get_steering(%struct.fs_node* %7)
  store %struct.mlx5_flow_steering* %8, %struct.mlx5_flow_steering** %3, align 8
  %9 = load %struct.fs_fte*, %struct.fs_fte** %5, align 8
  %10 = bitcast %struct.fs_fte* %9 to %struct.mlx5_flow_group*
  %11 = load %struct.fs_node*, %struct.fs_node** %2, align 8
  %12 = call i32 @fs_get_obj(%struct.mlx5_flow_group* %10, %struct.fs_node* %11)
  %13 = load %struct.mlx5_flow_group*, %struct.mlx5_flow_group** %4, align 8
  %14 = load %struct.fs_fte*, %struct.fs_fte** %5, align 8
  %15 = getelementptr inbounds %struct.fs_fte, %struct.fs_fte* %14, i32 0, i32 5
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.fs_node*, %struct.fs_node** %16, align 8
  %18 = call i32 @fs_get_obj(%struct.mlx5_flow_group* %13, %struct.fs_node* %17)
  %19 = load %struct.mlx5_flow_group*, %struct.mlx5_flow_group** %4, align 8
  %20 = getelementptr inbounds %struct.mlx5_flow_group, %struct.mlx5_flow_group* %19, i32 0, i32 4
  %21 = load %struct.fs_fte*, %struct.fs_fte** %5, align 8
  %22 = getelementptr inbounds %struct.fs_fte, %struct.fs_fte* %21, i32 0, i32 3
  %23 = load i32, i32* @rhash_fte, align 4
  %24 = call i32 @rhashtable_remove_fast(i32* %20, i32* %22, i32 %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @WARN_ON(i32 %25)
  %27 = load %struct.mlx5_flow_group*, %struct.mlx5_flow_group** %4, align 8
  %28 = getelementptr inbounds %struct.mlx5_flow_group, %struct.mlx5_flow_group* %27, i32 0, i32 2
  %29 = load %struct.fs_fte*, %struct.fs_fte** %5, align 8
  %30 = getelementptr inbounds %struct.fs_fte, %struct.fs_fte* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.mlx5_flow_group*, %struct.mlx5_flow_group** %4, align 8
  %33 = getelementptr inbounds %struct.mlx5_flow_group, %struct.mlx5_flow_group* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = sub nsw i64 %31, %34
  %36 = call i32 @ida_simple_remove(i32* %28, i64 %35)
  %37 = load %struct.mlx5_flow_steering*, %struct.mlx5_flow_steering** %3, align 8
  %38 = getelementptr inbounds %struct.mlx5_flow_steering, %struct.mlx5_flow_steering* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.fs_fte*, %struct.fs_fte** %5, align 8
  %41 = bitcast %struct.fs_fte* %40 to %struct.mlx5_flow_group*
  %42 = call i32 @kmem_cache_free(i32 %39, %struct.mlx5_flow_group* %41)
  ret void
}

declare dso_local %struct.mlx5_flow_steering* @get_steering(%struct.fs_node*) #1

declare dso_local i32 @fs_get_obj(%struct.mlx5_flow_group*, %struct.fs_node*) #1

declare dso_local i32 @rhashtable_remove_fast(i32*, i32*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @ida_simple_remove(i32*, i64) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.mlx5_flow_group*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
