; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_eswitch_offloads.c_mlx5_esw_offloads_set_ns_peer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_eswitch_offloads.c_mlx5_esw_offloads_set_ns_peer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_eswitch = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.mlx5_flow_root_namespace* }
%struct.mlx5_flow_root_namespace = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_eswitch*, %struct.mlx5_eswitch*, i32)* @mlx5_esw_offloads_set_ns_peer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5_esw_offloads_set_ns_peer(%struct.mlx5_eswitch* %0, %struct.mlx5_eswitch* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx5_eswitch*, align 8
  %6 = alloca %struct.mlx5_eswitch*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlx5_flow_root_namespace*, align 8
  %9 = alloca %struct.mlx5_flow_root_namespace*, align 8
  %10 = alloca i32, align 4
  store %struct.mlx5_eswitch* %0, %struct.mlx5_eswitch** %5, align 8
  store %struct.mlx5_eswitch* %1, %struct.mlx5_eswitch** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %6, align 8
  %12 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %11, i32 0, i32 0
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_root_namespace** %17, align 8
  store %struct.mlx5_flow_root_namespace* %18, %struct.mlx5_flow_root_namespace** %8, align 8
  %19 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %5, align 8
  %20 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %19, i32 0, i32 0
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load %struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_root_namespace** %25, align 8
  store %struct.mlx5_flow_root_namespace* %26, %struct.mlx5_flow_root_namespace** %9, align 8
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %48

29:                                               ; preds = %3
  %30 = load %struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_root_namespace** %9, align 8
  %31 = load %struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_root_namespace** %8, align 8
  %32 = call i32 @mlx5_flow_namespace_set_peer(%struct.mlx5_flow_root_namespace* %30, %struct.mlx5_flow_root_namespace* %31)
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = load i32, i32* %10, align 4
  store i32 %36, i32* %4, align 4
  br label %54

37:                                               ; preds = %29
  %38 = load %struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_root_namespace** %8, align 8
  %39 = load %struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_root_namespace** %9, align 8
  %40 = call i32 @mlx5_flow_namespace_set_peer(%struct.mlx5_flow_root_namespace* %38, %struct.mlx5_flow_root_namespace* %39)
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %10, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %37
  %44 = load %struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_root_namespace** %9, align 8
  %45 = call i32 @mlx5_flow_namespace_set_peer(%struct.mlx5_flow_root_namespace* %44, %struct.mlx5_flow_root_namespace* null)
  %46 = load i32, i32* %10, align 4
  store i32 %46, i32* %4, align 4
  br label %54

47:                                               ; preds = %37
  br label %53

48:                                               ; preds = %3
  %49 = load %struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_root_namespace** %9, align 8
  %50 = call i32 @mlx5_flow_namespace_set_peer(%struct.mlx5_flow_root_namespace* %49, %struct.mlx5_flow_root_namespace* null)
  %51 = load %struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_root_namespace** %8, align 8
  %52 = call i32 @mlx5_flow_namespace_set_peer(%struct.mlx5_flow_root_namespace* %51, %struct.mlx5_flow_root_namespace* null)
  br label %53

53:                                               ; preds = %48, %47
  store i32 0, i32* %4, align 4
  br label %54

54:                                               ; preds = %53, %43, %35
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local i32 @mlx5_flow_namespace_set_peer(%struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_root_namespace*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
