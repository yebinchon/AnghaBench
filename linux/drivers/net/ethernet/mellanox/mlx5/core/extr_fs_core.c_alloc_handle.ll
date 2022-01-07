; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_fs_core.c_alloc_handle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_fs_core.c_alloc_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_flow_handle = type { i32 }

@rule = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mlx5_flow_handle* (i32)* @alloc_handle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mlx5_flow_handle* @alloc_handle(i32 %0) #0 {
  %2 = alloca %struct.mlx5_flow_handle*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx5_flow_handle*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load %struct.mlx5_flow_handle*, %struct.mlx5_flow_handle** %4, align 8
  %6 = load i32, i32* @rule, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @struct_size(%struct.mlx5_flow_handle* %5, i32 %6, i32 %7)
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.mlx5_flow_handle* @kzalloc(i32 %8, i32 %9)
  store %struct.mlx5_flow_handle* %10, %struct.mlx5_flow_handle** %4, align 8
  %11 = load %struct.mlx5_flow_handle*, %struct.mlx5_flow_handle** %4, align 8
  %12 = icmp ne %struct.mlx5_flow_handle* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  store %struct.mlx5_flow_handle* null, %struct.mlx5_flow_handle** %2, align 8
  br label %19

14:                                               ; preds = %1
  %15 = load i32, i32* %3, align 4
  %16 = load %struct.mlx5_flow_handle*, %struct.mlx5_flow_handle** %4, align 8
  %17 = getelementptr inbounds %struct.mlx5_flow_handle, %struct.mlx5_flow_handle* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  %18 = load %struct.mlx5_flow_handle*, %struct.mlx5_flow_handle** %4, align 8
  store %struct.mlx5_flow_handle* %18, %struct.mlx5_flow_handle** %2, align 8
  br label %19

19:                                               ; preds = %14, %13
  %20 = load %struct.mlx5_flow_handle*, %struct.mlx5_flow_handle** %2, align 8
  ret %struct.mlx5_flow_handle* %20
}

declare dso_local %struct.mlx5_flow_handle* @kzalloc(i32, i32) #1

declare dso_local i32 @struct_size(%struct.mlx5_flow_handle*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
