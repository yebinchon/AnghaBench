; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum.c_mlxsw_sp_port_add_cls_matchall_mirror.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum.c_mlxsw_sp_port_add_cls_matchall_mirror.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_port = type { i32 }
%struct.mlxsw_sp_port_mall_mirror_tc_entry = type { i32, i32 }
%struct.flow_action_entry = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"Could not find requested device\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@MLXSW_SP_SPAN_INGRESS = common dso_local global i32 0, align 4
@MLXSW_SP_SPAN_EGRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp_port*, %struct.mlxsw_sp_port_mall_mirror_tc_entry*, %struct.flow_action_entry*, i32)* @mlxsw_sp_port_add_cls_matchall_mirror to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_port_add_cls_matchall_mirror(%struct.mlxsw_sp_port* %0, %struct.mlxsw_sp_port_mall_mirror_tc_entry* %1, %struct.flow_action_entry* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlxsw_sp_port*, align 8
  %7 = alloca %struct.mlxsw_sp_port_mall_mirror_tc_entry*, align 8
  %8 = alloca %struct.flow_action_entry*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.mlxsw_sp_port* %0, %struct.mlxsw_sp_port** %6, align 8
  store %struct.mlxsw_sp_port_mall_mirror_tc_entry* %1, %struct.mlxsw_sp_port_mall_mirror_tc_entry** %7, align 8
  store %struct.flow_action_entry* %2, %struct.flow_action_entry** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.flow_action_entry*, %struct.flow_action_entry** %8, align 8
  %12 = getelementptr inbounds %struct.flow_action_entry, %struct.flow_action_entry* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %22, label %15

15:                                               ; preds = %4
  %16 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %6, align 8
  %17 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @netdev_err(i32 %18, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %42

22:                                               ; preds = %4
  %23 = load i32, i32* %9, align 4
  %24 = load %struct.mlxsw_sp_port_mall_mirror_tc_entry*, %struct.mlxsw_sp_port_mall_mirror_tc_entry** %7, align 8
  %25 = getelementptr inbounds %struct.mlxsw_sp_port_mall_mirror_tc_entry, %struct.mlxsw_sp_port_mall_mirror_tc_entry* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = load i32, i32* @MLXSW_SP_SPAN_INGRESS, align 4
  br label %32

30:                                               ; preds = %22
  %31 = load i32, i32* @MLXSW_SP_SPAN_EGRESS, align 4
  br label %32

32:                                               ; preds = %30, %28
  %33 = phi i32 [ %29, %28 ], [ %31, %30 ]
  store i32 %33, i32* %10, align 4
  %34 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %6, align 8
  %35 = load %struct.flow_action_entry*, %struct.flow_action_entry** %8, align 8
  %36 = getelementptr inbounds %struct.flow_action_entry, %struct.flow_action_entry* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %10, align 4
  %39 = load %struct.mlxsw_sp_port_mall_mirror_tc_entry*, %struct.mlxsw_sp_port_mall_mirror_tc_entry** %7, align 8
  %40 = getelementptr inbounds %struct.mlxsw_sp_port_mall_mirror_tc_entry, %struct.mlxsw_sp_port_mall_mirror_tc_entry* %39, i32 0, i32 1
  %41 = call i32 @mlxsw_sp_span_mirror_add(%struct.mlxsw_sp_port* %34, i32 %37, i32 %38, i32 1, i32* %40)
  store i32 %41, i32* %5, align 4
  br label %42

42:                                               ; preds = %32, %15
  %43 = load i32, i32* %5, align 4
  ret i32 %43
}

declare dso_local i32 @netdev_err(i32, i8*) #1

declare dso_local i32 @mlxsw_sp_span_mirror_add(%struct.mlxsw_sp_port*, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
