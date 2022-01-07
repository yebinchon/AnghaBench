; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum.c_mlxsw_sp_port_del_cls_matchall.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum.c_mlxsw_sp_port_del_cls_matchall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_port = type { i32 }
%struct.tc_cls_matchall_offload = type { i32 }
%struct.mlxsw_sp_port_mall_tc_entry = type { i32, i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"tc entry not found on port\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlxsw_sp_port*, %struct.tc_cls_matchall_offload*)* @mlxsw_sp_port_del_cls_matchall to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxsw_sp_port_del_cls_matchall(%struct.mlxsw_sp_port* %0, %struct.tc_cls_matchall_offload* %1) #0 {
  %3 = alloca %struct.mlxsw_sp_port*, align 8
  %4 = alloca %struct.tc_cls_matchall_offload*, align 8
  %5 = alloca %struct.mlxsw_sp_port_mall_tc_entry*, align 8
  store %struct.mlxsw_sp_port* %0, %struct.mlxsw_sp_port** %3, align 8
  store %struct.tc_cls_matchall_offload* %1, %struct.tc_cls_matchall_offload** %4, align 8
  %6 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %3, align 8
  %7 = load %struct.tc_cls_matchall_offload*, %struct.tc_cls_matchall_offload** %4, align 8
  %8 = getelementptr inbounds %struct.tc_cls_matchall_offload, %struct.tc_cls_matchall_offload* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.mlxsw_sp_port_mall_tc_entry* @mlxsw_sp_port_mall_tc_entry_find(%struct.mlxsw_sp_port* %6, i32 %9)
  store %struct.mlxsw_sp_port_mall_tc_entry* %10, %struct.mlxsw_sp_port_mall_tc_entry** %5, align 8
  %11 = load %struct.mlxsw_sp_port_mall_tc_entry*, %struct.mlxsw_sp_port_mall_tc_entry** %5, align 8
  %12 = icmp ne %struct.mlxsw_sp_port_mall_tc_entry* %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %2
  %14 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %3, align 8
  %15 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @netdev_dbg(i32 %16, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %38

18:                                               ; preds = %2
  %19 = load %struct.mlxsw_sp_port_mall_tc_entry*, %struct.mlxsw_sp_port_mall_tc_entry** %5, align 8
  %20 = getelementptr inbounds %struct.mlxsw_sp_port_mall_tc_entry, %struct.mlxsw_sp_port_mall_tc_entry* %19, i32 0, i32 2
  %21 = call i32 @list_del(i32* %20)
  %22 = load %struct.mlxsw_sp_port_mall_tc_entry*, %struct.mlxsw_sp_port_mall_tc_entry** %5, align 8
  %23 = getelementptr inbounds %struct.mlxsw_sp_port_mall_tc_entry, %struct.mlxsw_sp_port_mall_tc_entry* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  switch i32 %24, label %33 [
    i32 129, label %25
    i32 128, label %30
  ]

25:                                               ; preds = %18
  %26 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %3, align 8
  %27 = load %struct.mlxsw_sp_port_mall_tc_entry*, %struct.mlxsw_sp_port_mall_tc_entry** %5, align 8
  %28 = getelementptr inbounds %struct.mlxsw_sp_port_mall_tc_entry, %struct.mlxsw_sp_port_mall_tc_entry* %27, i32 0, i32 1
  %29 = call i32 @mlxsw_sp_port_del_cls_matchall_mirror(%struct.mlxsw_sp_port* %26, i32* %28)
  br label %35

30:                                               ; preds = %18
  %31 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %3, align 8
  %32 = call i32 @mlxsw_sp_port_del_cls_matchall_sample(%struct.mlxsw_sp_port* %31)
  br label %35

33:                                               ; preds = %18
  %34 = call i32 @WARN_ON(i32 1)
  br label %35

35:                                               ; preds = %33, %30, %25
  %36 = load %struct.mlxsw_sp_port_mall_tc_entry*, %struct.mlxsw_sp_port_mall_tc_entry** %5, align 8
  %37 = call i32 @kfree(%struct.mlxsw_sp_port_mall_tc_entry* %36)
  br label %38

38:                                               ; preds = %35, %13
  ret void
}

declare dso_local %struct.mlxsw_sp_port_mall_tc_entry* @mlxsw_sp_port_mall_tc_entry_find(%struct.mlxsw_sp_port*, i32) #1

declare dso_local i32 @netdev_dbg(i32, i8*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @mlxsw_sp_port_del_cls_matchall_mirror(%struct.mlxsw_sp_port*, i32*) #1

declare dso_local i32 @mlxsw_sp_port_del_cls_matchall_sample(%struct.mlxsw_sp_port*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @kfree(%struct.mlxsw_sp_port_mall_tc_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
