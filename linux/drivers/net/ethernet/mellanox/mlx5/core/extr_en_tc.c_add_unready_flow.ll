; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_tc.c_add_unready_flow.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_tc.c_add_unready_flow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_tc_flow = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.mlx5_eswitch* }
%struct.mlx5_eswitch = type { i32 }
%struct.mlx5_rep_uplink_priv = type { i32, i32 }
%struct.mlx5e_rep_priv = type { %struct.mlx5_rep_uplink_priv }

@REP_ETH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5e_tc_flow*)* @add_unready_flow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_unready_flow(%struct.mlx5e_tc_flow* %0) #0 {
  %2 = alloca %struct.mlx5e_tc_flow*, align 8
  %3 = alloca %struct.mlx5_rep_uplink_priv*, align 8
  %4 = alloca %struct.mlx5e_rep_priv*, align 8
  %5 = alloca %struct.mlx5_eswitch*, align 8
  store %struct.mlx5e_tc_flow* %0, %struct.mlx5e_tc_flow** %2, align 8
  %6 = load %struct.mlx5e_tc_flow*, %struct.mlx5e_tc_flow** %2, align 8
  %7 = getelementptr inbounds %struct.mlx5e_tc_flow, %struct.mlx5e_tc_flow* %6, i32 0, i32 0
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %12, align 8
  store %struct.mlx5_eswitch* %13, %struct.mlx5_eswitch** %5, align 8
  %14 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %5, align 8
  %15 = load i32, i32* @REP_ETH, align 4
  %16 = call %struct.mlx5e_rep_priv* @mlx5_eswitch_get_uplink_priv(%struct.mlx5_eswitch* %14, i32 %15)
  store %struct.mlx5e_rep_priv* %16, %struct.mlx5e_rep_priv** %4, align 8
  %17 = load %struct.mlx5e_rep_priv*, %struct.mlx5e_rep_priv** %4, align 8
  %18 = getelementptr inbounds %struct.mlx5e_rep_priv, %struct.mlx5e_rep_priv* %17, i32 0, i32 0
  store %struct.mlx5_rep_uplink_priv* %18, %struct.mlx5_rep_uplink_priv** %3, align 8
  %19 = load %struct.mlx5_rep_uplink_priv*, %struct.mlx5_rep_uplink_priv** %3, align 8
  %20 = getelementptr inbounds %struct.mlx5_rep_uplink_priv, %struct.mlx5_rep_uplink_priv* %19, i32 0, i32 0
  %21 = call i32 @mutex_lock(i32* %20)
  %22 = load %struct.mlx5e_tc_flow*, %struct.mlx5e_tc_flow** %2, align 8
  %23 = load %struct.mlx5_rep_uplink_priv*, %struct.mlx5_rep_uplink_priv** %3, align 8
  %24 = getelementptr inbounds %struct.mlx5_rep_uplink_priv, %struct.mlx5_rep_uplink_priv* %23, i32 0, i32 1
  %25 = call i32 @unready_flow_add(%struct.mlx5e_tc_flow* %22, i32* %24)
  %26 = load %struct.mlx5_rep_uplink_priv*, %struct.mlx5_rep_uplink_priv** %3, align 8
  %27 = getelementptr inbounds %struct.mlx5_rep_uplink_priv, %struct.mlx5_rep_uplink_priv* %26, i32 0, i32 0
  %28 = call i32 @mutex_unlock(i32* %27)
  ret void
}

declare dso_local %struct.mlx5e_rep_priv* @mlx5_eswitch_get_uplink_priv(%struct.mlx5_eswitch*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @unready_flow_add(%struct.mlx5e_tc_flow*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
