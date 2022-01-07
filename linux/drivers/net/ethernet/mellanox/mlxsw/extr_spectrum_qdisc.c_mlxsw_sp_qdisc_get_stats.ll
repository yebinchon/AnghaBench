; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_qdisc.c_mlxsw_sp_qdisc_get_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_qdisc.c_mlxsw_sp_qdisc_get_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_port = type { i32 }
%struct.mlxsw_sp_qdisc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }
%struct.tc_qopt_offload_stats = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp_port*, %struct.mlxsw_sp_qdisc*, %struct.tc_qopt_offload_stats*)* @mlxsw_sp_qdisc_get_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_qdisc_get_stats(%struct.mlxsw_sp_port* %0, %struct.mlxsw_sp_qdisc* %1, %struct.tc_qopt_offload_stats* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlxsw_sp_port*, align 8
  %6 = alloca %struct.mlxsw_sp_qdisc*, align 8
  %7 = alloca %struct.tc_qopt_offload_stats*, align 8
  store %struct.mlxsw_sp_port* %0, %struct.mlxsw_sp_port** %5, align 8
  store %struct.mlxsw_sp_qdisc* %1, %struct.mlxsw_sp_qdisc** %6, align 8
  store %struct.tc_qopt_offload_stats* %2, %struct.tc_qopt_offload_stats** %7, align 8
  %8 = load %struct.mlxsw_sp_qdisc*, %struct.mlxsw_sp_qdisc** %6, align 8
  %9 = icmp ne %struct.mlxsw_sp_qdisc* %8, null
  br i1 %9, label %10, label %34

10:                                               ; preds = %3
  %11 = load %struct.mlxsw_sp_qdisc*, %struct.mlxsw_sp_qdisc** %6, align 8
  %12 = getelementptr inbounds %struct.mlxsw_sp_qdisc, %struct.mlxsw_sp_qdisc* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = icmp ne %struct.TYPE_2__* %13, null
  br i1 %14, label %15, label %34

15:                                               ; preds = %10
  %16 = load %struct.mlxsw_sp_qdisc*, %struct.mlxsw_sp_qdisc** %6, align 8
  %17 = getelementptr inbounds %struct.mlxsw_sp_qdisc, %struct.mlxsw_sp_qdisc* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = bitcast {}** %19 to i32 (%struct.mlxsw_sp_port*, %struct.mlxsw_sp_qdisc*, %struct.tc_qopt_offload_stats*)**
  %21 = load i32 (%struct.mlxsw_sp_port*, %struct.mlxsw_sp_qdisc*, %struct.tc_qopt_offload_stats*)*, i32 (%struct.mlxsw_sp_port*, %struct.mlxsw_sp_qdisc*, %struct.tc_qopt_offload_stats*)** %20, align 8
  %22 = icmp ne i32 (%struct.mlxsw_sp_port*, %struct.mlxsw_sp_qdisc*, %struct.tc_qopt_offload_stats*)* %21, null
  br i1 %22, label %23, label %34

23:                                               ; preds = %15
  %24 = load %struct.mlxsw_sp_qdisc*, %struct.mlxsw_sp_qdisc** %6, align 8
  %25 = getelementptr inbounds %struct.mlxsw_sp_qdisc, %struct.mlxsw_sp_qdisc* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = bitcast {}** %27 to i32 (%struct.mlxsw_sp_port*, %struct.mlxsw_sp_qdisc*, %struct.tc_qopt_offload_stats*)**
  %29 = load i32 (%struct.mlxsw_sp_port*, %struct.mlxsw_sp_qdisc*, %struct.tc_qopt_offload_stats*)*, i32 (%struct.mlxsw_sp_port*, %struct.mlxsw_sp_qdisc*, %struct.tc_qopt_offload_stats*)** %28, align 8
  %30 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %5, align 8
  %31 = load %struct.mlxsw_sp_qdisc*, %struct.mlxsw_sp_qdisc** %6, align 8
  %32 = load %struct.tc_qopt_offload_stats*, %struct.tc_qopt_offload_stats** %7, align 8
  %33 = call i32 %29(%struct.mlxsw_sp_port* %30, %struct.mlxsw_sp_qdisc* %31, %struct.tc_qopt_offload_stats* %32)
  store i32 %33, i32* %4, align 4
  br label %37

34:                                               ; preds = %15, %10, %3
  %35 = load i32, i32* @EOPNOTSUPP, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %37

37:                                               ; preds = %34, %23
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
