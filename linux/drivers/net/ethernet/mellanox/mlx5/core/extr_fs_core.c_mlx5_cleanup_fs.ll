; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_fs_core.c_mlx5_cleanup_fs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_fs_core.c_mlx5_cleanup_fs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.mlx5_flow_steering* }
%struct.mlx5_flow_steering = type { i32, i32, i32*, i32*, i32*, i32*, %struct.mlx5_flow_steering*, i32*, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx5_cleanup_fs(%struct.mlx5_core_dev* %0) #0 {
  %2 = alloca %struct.mlx5_core_dev*, align 8
  %3 = alloca %struct.mlx5_flow_steering*, align 8
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %2, align 8
  %4 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %5 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load %struct.mlx5_flow_steering*, %struct.mlx5_flow_steering** %6, align 8
  store %struct.mlx5_flow_steering* %7, %struct.mlx5_flow_steering** %3, align 8
  %8 = load %struct.mlx5_flow_steering*, %struct.mlx5_flow_steering** %3, align 8
  %9 = getelementptr inbounds %struct.mlx5_flow_steering, %struct.mlx5_flow_steering* %8, i32 0, i32 8
  %10 = load i32*, i32** %9, align 8
  %11 = call i32 @cleanup_root_ns(i32* %10)
  %12 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %13 = call i32 @cleanup_egress_acls_root_ns(%struct.mlx5_core_dev* %12)
  %14 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %15 = call i32 @cleanup_ingress_acls_root_ns(%struct.mlx5_core_dev* %14)
  %16 = load %struct.mlx5_flow_steering*, %struct.mlx5_flow_steering** %3, align 8
  %17 = getelementptr inbounds %struct.mlx5_flow_steering, %struct.mlx5_flow_steering* %16, i32 0, i32 7
  %18 = load i32*, i32** %17, align 8
  %19 = call i32 @cleanup_root_ns(i32* %18)
  %20 = load %struct.mlx5_flow_steering*, %struct.mlx5_flow_steering** %3, align 8
  %21 = getelementptr inbounds %struct.mlx5_flow_steering, %struct.mlx5_flow_steering* %20, i32 0, i32 7
  store i32* null, i32** %21, align 8
  %22 = load %struct.mlx5_flow_steering*, %struct.mlx5_flow_steering** %3, align 8
  %23 = getelementptr inbounds %struct.mlx5_flow_steering, %struct.mlx5_flow_steering* %22, i32 0, i32 6
  %24 = load %struct.mlx5_flow_steering*, %struct.mlx5_flow_steering** %23, align 8
  %25 = call i32 @kfree(%struct.mlx5_flow_steering* %24)
  %26 = load %struct.mlx5_flow_steering*, %struct.mlx5_flow_steering** %3, align 8
  %27 = getelementptr inbounds %struct.mlx5_flow_steering, %struct.mlx5_flow_steering* %26, i32 0, i32 6
  store %struct.mlx5_flow_steering* null, %struct.mlx5_flow_steering** %27, align 8
  %28 = load %struct.mlx5_flow_steering*, %struct.mlx5_flow_steering** %3, align 8
  %29 = getelementptr inbounds %struct.mlx5_flow_steering, %struct.mlx5_flow_steering* %28, i32 0, i32 5
  %30 = load i32*, i32** %29, align 8
  %31 = call i32 @cleanup_root_ns(i32* %30)
  %32 = load %struct.mlx5_flow_steering*, %struct.mlx5_flow_steering** %3, align 8
  %33 = getelementptr inbounds %struct.mlx5_flow_steering, %struct.mlx5_flow_steering* %32, i32 0, i32 4
  %34 = load i32*, i32** %33, align 8
  %35 = call i32 @cleanup_root_ns(i32* %34)
  %36 = load %struct.mlx5_flow_steering*, %struct.mlx5_flow_steering** %3, align 8
  %37 = getelementptr inbounds %struct.mlx5_flow_steering, %struct.mlx5_flow_steering* %36, i32 0, i32 3
  %38 = load i32*, i32** %37, align 8
  %39 = call i32 @cleanup_root_ns(i32* %38)
  %40 = load %struct.mlx5_flow_steering*, %struct.mlx5_flow_steering** %3, align 8
  %41 = getelementptr inbounds %struct.mlx5_flow_steering, %struct.mlx5_flow_steering* %40, i32 0, i32 2
  %42 = load i32*, i32** %41, align 8
  %43 = call i32 @cleanup_root_ns(i32* %42)
  %44 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %45 = call i32 @mlx5_cleanup_fc_stats(%struct.mlx5_core_dev* %44)
  %46 = load %struct.mlx5_flow_steering*, %struct.mlx5_flow_steering** %3, align 8
  %47 = getelementptr inbounds %struct.mlx5_flow_steering, %struct.mlx5_flow_steering* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @kmem_cache_destroy(i32 %48)
  %50 = load %struct.mlx5_flow_steering*, %struct.mlx5_flow_steering** %3, align 8
  %51 = getelementptr inbounds %struct.mlx5_flow_steering, %struct.mlx5_flow_steering* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @kmem_cache_destroy(i32 %52)
  %54 = load %struct.mlx5_flow_steering*, %struct.mlx5_flow_steering** %3, align 8
  %55 = call i32 @kfree(%struct.mlx5_flow_steering* %54)
  ret void
}

declare dso_local i32 @cleanup_root_ns(i32*) #1

declare dso_local i32 @cleanup_egress_acls_root_ns(%struct.mlx5_core_dev*) #1

declare dso_local i32 @cleanup_ingress_acls_root_ns(%struct.mlx5_core_dev*) #1

declare dso_local i32 @kfree(%struct.mlx5_flow_steering*) #1

declare dso_local i32 @mlx5_cleanup_fc_stats(%struct.mlx5_core_dev*) #1

declare dso_local i32 @kmem_cache_destroy(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
