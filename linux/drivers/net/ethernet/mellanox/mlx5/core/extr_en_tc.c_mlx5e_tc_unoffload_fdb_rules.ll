; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_tc.c_mlx5e_tc_unoffload_fdb_rules.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_tc.c_mlx5e_tc_unoffload_fdb_rules.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_eswitch = type { i32 }
%struct.mlx5e_tc_flow = type { i32* }
%struct.mlx5_esw_flow_attr = type { i64 }

@OFFLOADED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5_eswitch*, %struct.mlx5e_tc_flow*, %struct.mlx5_esw_flow_attr*)* @mlx5e_tc_unoffload_fdb_rules to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5e_tc_unoffload_fdb_rules(%struct.mlx5_eswitch* %0, %struct.mlx5e_tc_flow* %1, %struct.mlx5_esw_flow_attr* %2) #0 {
  %4 = alloca %struct.mlx5_eswitch*, align 8
  %5 = alloca %struct.mlx5e_tc_flow*, align 8
  %6 = alloca %struct.mlx5_esw_flow_attr*, align 8
  store %struct.mlx5_eswitch* %0, %struct.mlx5_eswitch** %4, align 8
  store %struct.mlx5e_tc_flow* %1, %struct.mlx5e_tc_flow** %5, align 8
  store %struct.mlx5_esw_flow_attr* %2, %struct.mlx5_esw_flow_attr** %6, align 8
  %7 = load %struct.mlx5e_tc_flow*, %struct.mlx5e_tc_flow** %5, align 8
  %8 = load i32, i32* @OFFLOADED, align 4
  %9 = call i32 @flow_flag_clear(%struct.mlx5e_tc_flow* %7, i32 %8)
  %10 = load %struct.mlx5_esw_flow_attr*, %struct.mlx5_esw_flow_attr** %6, align 8
  %11 = getelementptr inbounds %struct.mlx5_esw_flow_attr, %struct.mlx5_esw_flow_attr* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %3
  %15 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %4, align 8
  %16 = load %struct.mlx5e_tc_flow*, %struct.mlx5e_tc_flow** %5, align 8
  %17 = getelementptr inbounds %struct.mlx5e_tc_flow, %struct.mlx5e_tc_flow* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.mlx5_esw_flow_attr*, %struct.mlx5_esw_flow_attr** %6, align 8
  %22 = call i32 @mlx5_eswitch_del_fwd_rule(%struct.mlx5_eswitch* %15, i32 %20, %struct.mlx5_esw_flow_attr* %21)
  br label %23

23:                                               ; preds = %14, %3
  %24 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %4, align 8
  %25 = load %struct.mlx5e_tc_flow*, %struct.mlx5e_tc_flow** %5, align 8
  %26 = getelementptr inbounds %struct.mlx5e_tc_flow, %struct.mlx5e_tc_flow* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.mlx5_esw_flow_attr*, %struct.mlx5_esw_flow_attr** %6, align 8
  %31 = call i32 @mlx5_eswitch_del_offloaded_rule(%struct.mlx5_eswitch* %24, i32 %29, %struct.mlx5_esw_flow_attr* %30)
  ret void
}

declare dso_local i32 @flow_flag_clear(%struct.mlx5e_tc_flow*, i32) #1

declare dso_local i32 @mlx5_eswitch_del_fwd_rule(%struct.mlx5_eswitch*, i32, %struct.mlx5_esw_flow_attr*) #1

declare dso_local i32 @mlx5_eswitch_del_offloaded_rule(%struct.mlx5_eswitch*, i32, %struct.mlx5_esw_flow_attr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
