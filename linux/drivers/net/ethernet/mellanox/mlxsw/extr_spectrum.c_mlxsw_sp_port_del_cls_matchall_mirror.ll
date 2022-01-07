; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum.c_mlxsw_sp_port_del_cls_matchall_mirror.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum.c_mlxsw_sp_port_del_cls_matchall_mirror.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_port = type { i32 }
%struct.mlxsw_sp_port_mall_mirror_tc_entry = type { i32, i64 }

@MLXSW_SP_SPAN_INGRESS = common dso_local global i32 0, align 4
@MLXSW_SP_SPAN_EGRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlxsw_sp_port*, %struct.mlxsw_sp_port_mall_mirror_tc_entry*)* @mlxsw_sp_port_del_cls_matchall_mirror to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxsw_sp_port_del_cls_matchall_mirror(%struct.mlxsw_sp_port* %0, %struct.mlxsw_sp_port_mall_mirror_tc_entry* %1) #0 {
  %3 = alloca %struct.mlxsw_sp_port*, align 8
  %4 = alloca %struct.mlxsw_sp_port_mall_mirror_tc_entry*, align 8
  %5 = alloca i32, align 4
  store %struct.mlxsw_sp_port* %0, %struct.mlxsw_sp_port** %3, align 8
  store %struct.mlxsw_sp_port_mall_mirror_tc_entry* %1, %struct.mlxsw_sp_port_mall_mirror_tc_entry** %4, align 8
  %6 = load %struct.mlxsw_sp_port_mall_mirror_tc_entry*, %struct.mlxsw_sp_port_mall_mirror_tc_entry** %4, align 8
  %7 = getelementptr inbounds %struct.mlxsw_sp_port_mall_mirror_tc_entry, %struct.mlxsw_sp_port_mall_mirror_tc_entry* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load i32, i32* @MLXSW_SP_SPAN_INGRESS, align 4
  br label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @MLXSW_SP_SPAN_EGRESS, align 4
  br label %14

14:                                               ; preds = %12, %10
  %15 = phi i32 [ %11, %10 ], [ %13, %12 ]
  store i32 %15, i32* %5, align 4
  %16 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %3, align 8
  %17 = load %struct.mlxsw_sp_port_mall_mirror_tc_entry*, %struct.mlxsw_sp_port_mall_mirror_tc_entry** %4, align 8
  %18 = getelementptr inbounds %struct.mlxsw_sp_port_mall_mirror_tc_entry, %struct.mlxsw_sp_port_mall_mirror_tc_entry* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @mlxsw_sp_span_mirror_del(%struct.mlxsw_sp_port* %16, i32 %19, i32 %20, i32 1)
  ret void
}

declare dso_local i32 @mlxsw_sp_span_mirror_del(%struct.mlxsw_sp_port*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
