; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_sriov.c_mlx5_get_max_vfs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_sriov.c_mlx5_get_max_vfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.mlx5_core_dev = type { i32 }

@query_esw_functions_out = common dso_local global i32 0, align 4
@host_params_context = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.mlx5_core_dev*)* @mlx5_get_max_vfs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mlx5_get_max_vfs(%struct.mlx5_core_dev* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.mlx5_core_dev*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %3, align 8
  %6 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %7 = call i64 @mlx5_core_is_ecpf_esw_manager(%struct.mlx5_core_dev* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %28

9:                                                ; preds = %1
  %10 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %11 = call i32* @mlx5_esw_query_functions(%struct.mlx5_core_dev* %10)
  store i32* %11, i32** %5, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = call i64 @IS_ERR(i32* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %9
  br label %29

16:                                               ; preds = %9
  %17 = load i32, i32* @query_esw_functions_out, align 4
  %18 = load i32*, i32** %5, align 8
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @host_params_context, i32 0, i32 0), align 4
  %20 = call i64 @MLX5_GET(i32 %17, i32* %18, i32 %19)
  store i64 %20, i64* %4, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = call i32 @kvfree(i32* %21)
  %23 = load i64, i64* %4, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %16
  %26 = load i64, i64* %4, align 8
  store i64 %26, i64* %2, align 8
  br label %34

27:                                               ; preds = %16
  br label %28

28:                                               ; preds = %27, %1
  br label %29

29:                                               ; preds = %28, %15
  %30 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %31 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @pci_sriov_get_totalvfs(i32 %32)
  store i64 %33, i64* %2, align 8
  br label %34

34:                                               ; preds = %29, %25
  %35 = load i64, i64* %2, align 8
  ret i64 %35
}

declare dso_local i64 @mlx5_core_is_ecpf_esw_manager(%struct.mlx5_core_dev*) #1

declare dso_local i32* @mlx5_esw_query_functions(%struct.mlx5_core_dev*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i64 @MLX5_GET(i32, i32*, i32) #1

declare dso_local i32 @kvfree(i32*) #1

declare dso_local i64 @pci_sriov_get_totalvfs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
