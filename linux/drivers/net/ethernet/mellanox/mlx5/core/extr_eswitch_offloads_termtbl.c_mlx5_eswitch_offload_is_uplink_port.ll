; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_eswitch_offloads_termtbl.c_mlx5_eswitch_offload_is_uplink_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_eswitch_offloads_termtbl.c_mlx5_eswitch_offload_is_uplink_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.mlx5_eswitch = type { i32 }
%struct.mlx5_flow_spec = type { i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@flow_source = common dso_local global i32 0, align 4
@MLX5_FLOW_CONTEXT_FLOW_SOURCE_UPLINK = common dso_local global i64 0, align 8
@fte_match_param = common dso_local global i32 0, align 4
@misc_parameters = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@MLX5_VPORT_UPLINK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_eswitch*, %struct.mlx5_flow_spec*)* @mlx5_eswitch_offload_is_uplink_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5_eswitch_offload_is_uplink_port(%struct.mlx5_eswitch* %0, %struct.mlx5_flow_spec* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx5_eswitch*, align 8
  %5 = alloca %struct.mlx5_flow_spec*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mlx5_eswitch* %0, %struct.mlx5_eswitch** %4, align 8
  store %struct.mlx5_flow_spec* %1, %struct.mlx5_flow_spec** %5, align 8
  %8 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %4, align 8
  %9 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @flow_source, align 4
  %12 = call i64 @MLX5_CAP_ESW_FLOWTABLE(i32 %10, i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %2
  %15 = load %struct.mlx5_flow_spec*, %struct.mlx5_flow_spec** %5, align 8
  %16 = getelementptr inbounds %struct.mlx5_flow_spec, %struct.mlx5_flow_spec* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @MLX5_FLOW_CONTEXT_FLOW_SOURCE_UPLINK, align 8
  %20 = icmp eq i64 %18, %19
  %21 = zext i1 %20 to i32
  store i32 %21, i32* %3, align 4
  br label %42

22:                                               ; preds = %2
  %23 = load i32, i32* @fte_match_param, align 4
  %24 = load %struct.mlx5_flow_spec*, %struct.mlx5_flow_spec** %5, align 8
  %25 = getelementptr inbounds %struct.mlx5_flow_spec, %struct.mlx5_flow_spec* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @misc_parameters, i32 0, i32 0), align 4
  %28 = call i32 @MLX5_GET(i32 %23, i32 %26, i32 %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* @fte_match_param, align 4
  %30 = load %struct.mlx5_flow_spec*, %struct.mlx5_flow_spec** %5, align 8
  %31 = getelementptr inbounds %struct.mlx5_flow_spec, %struct.mlx5_flow_spec* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @misc_parameters, i32 0, i32 0), align 4
  %34 = call i32 @MLX5_GET(i32 %29, i32 %32, i32 %33)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* %7, align 4
  %37 = and i32 %35, %36
  %38 = and i32 %37, 65535
  %39 = load i32, i32* @MLX5_VPORT_UPLINK, align 4
  %40 = icmp eq i32 %38, %39
  %41 = zext i1 %40 to i32
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %22, %14
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i64 @MLX5_CAP_ESW_FLOWTABLE(i32, i32) #1

declare dso_local i32 @MLX5_GET(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
