; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_tc.c_is_peer_flow_needed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_tc.c_is_peer_flow_needed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_tc_flow = type { %struct.mlx5_esw_flow_attr* }
%struct.mlx5_esw_flow_attr = type { i32, %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i64 }

@MLX5_VPORT_UPLINK = common dso_local global i64 0, align 8
@INGRESS = common dso_local global i32 0, align 4
@MLX5_FLOW_CONTEXT_ACTION_PACKET_REFORMAT = common dso_local global i32 0, align 4
@MLX5_DEVCOM_ESW_OFFLOADS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5e_tc_flow*)* @is_peer_flow_needed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_peer_flow_needed(%struct.mlx5e_tc_flow* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx5e_tc_flow*, align 8
  %4 = alloca %struct.mlx5_esw_flow_attr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mlx5e_tc_flow* %0, %struct.mlx5e_tc_flow** %3, align 8
  %8 = load %struct.mlx5e_tc_flow*, %struct.mlx5e_tc_flow** %3, align 8
  %9 = getelementptr inbounds %struct.mlx5e_tc_flow, %struct.mlx5e_tc_flow* %8, i32 0, i32 0
  %10 = load %struct.mlx5_esw_flow_attr*, %struct.mlx5_esw_flow_attr** %9, align 8
  store %struct.mlx5_esw_flow_attr* %10, %struct.mlx5_esw_flow_attr** %4, align 8
  %11 = load %struct.mlx5_esw_flow_attr*, %struct.mlx5_esw_flow_attr** %4, align 8
  %12 = getelementptr inbounds %struct.mlx5_esw_flow_attr, %struct.mlx5_esw_flow_attr* %11, i32 0, i32 2
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @MLX5_VPORT_UPLINK, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %1
  %19 = load %struct.mlx5e_tc_flow*, %struct.mlx5e_tc_flow** %3, align 8
  %20 = load i32, i32* @INGRESS, align 4
  %21 = call i64 @flow_flag_test(%struct.mlx5e_tc_flow* %19, i32 %20)
  %22 = icmp ne i64 %21, 0
  br label %23

23:                                               ; preds = %18, %1
  %24 = phi i1 [ false, %1 ], [ %22, %18 ]
  %25 = zext i1 %24 to i32
  store i32 %25, i32* %5, align 4
  %26 = load %struct.mlx5_esw_flow_attr*, %struct.mlx5_esw_flow_attr** %4, align 8
  %27 = getelementptr inbounds %struct.mlx5_esw_flow_attr, %struct.mlx5_esw_flow_attr* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @MLX5_FLOW_CONTEXT_ACTION_PACKET_REFORMAT, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  store i32 %34, i32* %6, align 4
  %35 = load %struct.mlx5_esw_flow_attr*, %struct.mlx5_esw_flow_attr** %4, align 8
  %36 = getelementptr inbounds %struct.mlx5_esw_flow_attr, %struct.mlx5_esw_flow_attr* %35, i32 0, i32 1
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @MLX5_DEVCOM_ESW_OFFLOADS, align 4
  %42 = call i32 @mlx5_devcom_is_paired(i32 %40, i32 %41)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %23
  store i32 0, i32* %2, align 4
  br label %66

46:                                               ; preds = %23
  %47 = load %struct.mlx5_esw_flow_attr*, %struct.mlx5_esw_flow_attr** %4, align 8
  %48 = getelementptr inbounds %struct.mlx5_esw_flow_attr, %struct.mlx5_esw_flow_attr* %47, i32 0, i32 1
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %48, align 8
  %50 = call i64 @mlx5_lag_is_sriov(%struct.TYPE_7__* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %58, label %52

52:                                               ; preds = %46
  %53 = load %struct.mlx5_esw_flow_attr*, %struct.mlx5_esw_flow_attr** %4, align 8
  %54 = getelementptr inbounds %struct.mlx5_esw_flow_attr, %struct.mlx5_esw_flow_attr* %53, i32 0, i32 1
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %54, align 8
  %56 = call i64 @mlx5_lag_is_multipath(%struct.TYPE_7__* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %52, %46
  %59 = load i32, i32* %5, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %58
  %62 = load i32, i32* %6, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %61, %58
  store i32 1, i32* %2, align 4
  br label %66

65:                                               ; preds = %61, %52
  store i32 0, i32* %2, align 4
  br label %66

66:                                               ; preds = %65, %64, %45
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local i64 @flow_flag_test(%struct.mlx5e_tc_flow*, i32) #1

declare dso_local i32 @mlx5_devcom_is_paired(i32, i32) #1

declare dso_local i64 @mlx5_lag_is_sriov(%struct.TYPE_7__*) #1

declare dso_local i64 @mlx5_lag_is_multipath(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
