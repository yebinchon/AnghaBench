; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_tc.c_mlx5e_tc_offload_fdb_rules.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_tc.c_mlx5e_tc_offload_fdb_rules.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_flow_handle = type { i32 }
%struct.mlx5_eswitch = type { i32 }
%struct.mlx5e_tc_flow = type { %struct.mlx5_flow_handle** }
%struct.mlx5_flow_spec = type { i32 }
%struct.mlx5_esw_flow_attr = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mlx5_flow_handle* (%struct.mlx5_eswitch*, %struct.mlx5e_tc_flow*, %struct.mlx5_flow_spec*, %struct.mlx5_esw_flow_attr*)* @mlx5e_tc_offload_fdb_rules to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mlx5_flow_handle* @mlx5e_tc_offload_fdb_rules(%struct.mlx5_eswitch* %0, %struct.mlx5e_tc_flow* %1, %struct.mlx5_flow_spec* %2, %struct.mlx5_esw_flow_attr* %3) #0 {
  %5 = alloca %struct.mlx5_flow_handle*, align 8
  %6 = alloca %struct.mlx5_eswitch*, align 8
  %7 = alloca %struct.mlx5e_tc_flow*, align 8
  %8 = alloca %struct.mlx5_flow_spec*, align 8
  %9 = alloca %struct.mlx5_esw_flow_attr*, align 8
  %10 = alloca %struct.mlx5_flow_handle*, align 8
  store %struct.mlx5_eswitch* %0, %struct.mlx5_eswitch** %6, align 8
  store %struct.mlx5e_tc_flow* %1, %struct.mlx5e_tc_flow** %7, align 8
  store %struct.mlx5_flow_spec* %2, %struct.mlx5_flow_spec** %8, align 8
  store %struct.mlx5_esw_flow_attr* %3, %struct.mlx5_esw_flow_attr** %9, align 8
  %11 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %6, align 8
  %12 = load %struct.mlx5_flow_spec*, %struct.mlx5_flow_spec** %8, align 8
  %13 = load %struct.mlx5_esw_flow_attr*, %struct.mlx5_esw_flow_attr** %9, align 8
  %14 = call %struct.mlx5_flow_handle* @mlx5_eswitch_add_offloaded_rule(%struct.mlx5_eswitch* %11, %struct.mlx5_flow_spec* %12, %struct.mlx5_esw_flow_attr* %13)
  store %struct.mlx5_flow_handle* %14, %struct.mlx5_flow_handle** %10, align 8
  %15 = load %struct.mlx5_flow_handle*, %struct.mlx5_flow_handle** %10, align 8
  %16 = call i64 @IS_ERR(%struct.mlx5_flow_handle* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = load %struct.mlx5_flow_handle*, %struct.mlx5_flow_handle** %10, align 8
  store %struct.mlx5_flow_handle* %19, %struct.mlx5_flow_handle** %5, align 8
  br label %54

20:                                               ; preds = %4
  %21 = load %struct.mlx5_esw_flow_attr*, %struct.mlx5_esw_flow_attr** %9, align 8
  %22 = getelementptr inbounds %struct.mlx5_esw_flow_attr, %struct.mlx5_esw_flow_attr* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %52

25:                                               ; preds = %20
  %26 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %6, align 8
  %27 = load %struct.mlx5_flow_spec*, %struct.mlx5_flow_spec** %8, align 8
  %28 = load %struct.mlx5_esw_flow_attr*, %struct.mlx5_esw_flow_attr** %9, align 8
  %29 = call %struct.mlx5_flow_handle* @mlx5_eswitch_add_fwd_rule(%struct.mlx5_eswitch* %26, %struct.mlx5_flow_spec* %27, %struct.mlx5_esw_flow_attr* %28)
  %30 = load %struct.mlx5e_tc_flow*, %struct.mlx5e_tc_flow** %7, align 8
  %31 = getelementptr inbounds %struct.mlx5e_tc_flow, %struct.mlx5e_tc_flow* %30, i32 0, i32 0
  %32 = load %struct.mlx5_flow_handle**, %struct.mlx5_flow_handle*** %31, align 8
  %33 = getelementptr inbounds %struct.mlx5_flow_handle*, %struct.mlx5_flow_handle** %32, i64 1
  store %struct.mlx5_flow_handle* %29, %struct.mlx5_flow_handle** %33, align 8
  %34 = load %struct.mlx5e_tc_flow*, %struct.mlx5e_tc_flow** %7, align 8
  %35 = getelementptr inbounds %struct.mlx5e_tc_flow, %struct.mlx5e_tc_flow* %34, i32 0, i32 0
  %36 = load %struct.mlx5_flow_handle**, %struct.mlx5_flow_handle*** %35, align 8
  %37 = getelementptr inbounds %struct.mlx5_flow_handle*, %struct.mlx5_flow_handle** %36, i64 1
  %38 = load %struct.mlx5_flow_handle*, %struct.mlx5_flow_handle** %37, align 8
  %39 = call i64 @IS_ERR(%struct.mlx5_flow_handle* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %25
  %42 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %6, align 8
  %43 = load %struct.mlx5_flow_handle*, %struct.mlx5_flow_handle** %10, align 8
  %44 = load %struct.mlx5_esw_flow_attr*, %struct.mlx5_esw_flow_attr** %9, align 8
  %45 = call i32 @mlx5_eswitch_del_offloaded_rule(%struct.mlx5_eswitch* %42, %struct.mlx5_flow_handle* %43, %struct.mlx5_esw_flow_attr* %44)
  %46 = load %struct.mlx5e_tc_flow*, %struct.mlx5e_tc_flow** %7, align 8
  %47 = getelementptr inbounds %struct.mlx5e_tc_flow, %struct.mlx5e_tc_flow* %46, i32 0, i32 0
  %48 = load %struct.mlx5_flow_handle**, %struct.mlx5_flow_handle*** %47, align 8
  %49 = getelementptr inbounds %struct.mlx5_flow_handle*, %struct.mlx5_flow_handle** %48, i64 1
  %50 = load %struct.mlx5_flow_handle*, %struct.mlx5_flow_handle** %49, align 8
  store %struct.mlx5_flow_handle* %50, %struct.mlx5_flow_handle** %5, align 8
  br label %54

51:                                               ; preds = %25
  br label %52

52:                                               ; preds = %51, %20
  %53 = load %struct.mlx5_flow_handle*, %struct.mlx5_flow_handle** %10, align 8
  store %struct.mlx5_flow_handle* %53, %struct.mlx5_flow_handle** %5, align 8
  br label %54

54:                                               ; preds = %52, %41, %18
  %55 = load %struct.mlx5_flow_handle*, %struct.mlx5_flow_handle** %5, align 8
  ret %struct.mlx5_flow_handle* %55
}

declare dso_local %struct.mlx5_flow_handle* @mlx5_eswitch_add_offloaded_rule(%struct.mlx5_eswitch*, %struct.mlx5_flow_spec*, %struct.mlx5_esw_flow_attr*) #1

declare dso_local i64 @IS_ERR(%struct.mlx5_flow_handle*) #1

declare dso_local %struct.mlx5_flow_handle* @mlx5_eswitch_add_fwd_rule(%struct.mlx5_eswitch*, %struct.mlx5_flow_spec*, %struct.mlx5_esw_flow_attr*) #1

declare dso_local i32 @mlx5_eswitch_del_offloaded_rule(%struct.mlx5_eswitch*, %struct.mlx5_flow_handle*, %struct.mlx5_esw_flow_attr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
