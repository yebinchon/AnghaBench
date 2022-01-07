; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_qdisc.c_mlxsw_sp_setup_tc_qdisc_prio_clean_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_qdisc.c_mlxsw_sp_setup_tc_qdisc_prio_clean_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_port = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.rtnl_link_stats64, %struct.mlxsw_sp_port_xstats }
%struct.rtnl_link_stats64 = type { i32, i32 }
%struct.mlxsw_sp_port_xstats = type { i64*, i64* }
%struct.mlxsw_sp_qdisc = type { %struct.mlxsw_sp_qdisc_stats }
%struct.mlxsw_sp_qdisc_stats = type { i64, i64, i32, i32 }

@IEEE_8021QAZ_MAX_TCS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlxsw_sp_port*, %struct.mlxsw_sp_qdisc*)* @mlxsw_sp_setup_tc_qdisc_prio_clean_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxsw_sp_setup_tc_qdisc_prio_clean_stats(%struct.mlxsw_sp_port* %0, %struct.mlxsw_sp_qdisc* %1) #0 {
  %3 = alloca %struct.mlxsw_sp_port*, align 8
  %4 = alloca %struct.mlxsw_sp_qdisc*, align 8
  %5 = alloca %struct.mlxsw_sp_qdisc_stats*, align 8
  %6 = alloca %struct.mlxsw_sp_port_xstats*, align 8
  %7 = alloca %struct.rtnl_link_stats64*, align 8
  %8 = alloca i32, align 4
  store %struct.mlxsw_sp_port* %0, %struct.mlxsw_sp_port** %3, align 8
  store %struct.mlxsw_sp_qdisc* %1, %struct.mlxsw_sp_qdisc** %4, align 8
  %9 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %3, align 8
  %10 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  store %struct.mlxsw_sp_port_xstats* %11, %struct.mlxsw_sp_port_xstats** %6, align 8
  %12 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %3, align 8
  %13 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store %struct.rtnl_link_stats64* %14, %struct.rtnl_link_stats64** %7, align 8
  %15 = load %struct.mlxsw_sp_qdisc*, %struct.mlxsw_sp_qdisc** %4, align 8
  %16 = getelementptr inbounds %struct.mlxsw_sp_qdisc, %struct.mlxsw_sp_qdisc* %15, i32 0, i32 0
  store %struct.mlxsw_sp_qdisc_stats* %16, %struct.mlxsw_sp_qdisc_stats** %5, align 8
  %17 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %7, align 8
  %18 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.mlxsw_sp_qdisc_stats*, %struct.mlxsw_sp_qdisc_stats** %5, align 8
  %21 = getelementptr inbounds %struct.mlxsw_sp_qdisc_stats, %struct.mlxsw_sp_qdisc_stats* %20, i32 0, i32 3
  store i32 %19, i32* %21, align 4
  %22 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %7, align 8
  %23 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.mlxsw_sp_qdisc_stats*, %struct.mlxsw_sp_qdisc_stats** %5, align 8
  %26 = getelementptr inbounds %struct.mlxsw_sp_qdisc_stats, %struct.mlxsw_sp_qdisc_stats* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 8
  %27 = load %struct.mlxsw_sp_qdisc_stats*, %struct.mlxsw_sp_qdisc_stats** %5, align 8
  %28 = getelementptr inbounds %struct.mlxsw_sp_qdisc_stats, %struct.mlxsw_sp_qdisc_stats* %27, i32 0, i32 1
  store i64 0, i64* %28, align 8
  store i32 0, i32* %8, align 4
  br label %29

29:                                               ; preds = %56, %2
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @IEEE_8021QAZ_MAX_TCS, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %59

33:                                               ; preds = %29
  %34 = load %struct.mlxsw_sp_port_xstats*, %struct.mlxsw_sp_port_xstats** %6, align 8
  %35 = getelementptr inbounds %struct.mlxsw_sp_port_xstats, %struct.mlxsw_sp_port_xstats* %34, i32 0, i32 1
  %36 = load i64*, i64** %35, align 8
  %37 = load i32, i32* %8, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i64, i64* %36, i64 %38
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.mlxsw_sp_qdisc_stats*, %struct.mlxsw_sp_qdisc_stats** %5, align 8
  %42 = getelementptr inbounds %struct.mlxsw_sp_qdisc_stats, %struct.mlxsw_sp_qdisc_stats* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 %43, %40
  store i64 %44, i64* %42, align 8
  %45 = load %struct.mlxsw_sp_port_xstats*, %struct.mlxsw_sp_port_xstats** %6, align 8
  %46 = getelementptr inbounds %struct.mlxsw_sp_port_xstats, %struct.mlxsw_sp_port_xstats* %45, i32 0, i32 0
  %47 = load i64*, i64** %46, align 8
  %48 = load i32, i32* %8, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i64, i64* %47, i64 %49
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.mlxsw_sp_qdisc_stats*, %struct.mlxsw_sp_qdisc_stats** %5, align 8
  %53 = getelementptr inbounds %struct.mlxsw_sp_qdisc_stats, %struct.mlxsw_sp_qdisc_stats* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = add nsw i64 %54, %51
  store i64 %55, i64* %53, align 8
  br label %56

56:                                               ; preds = %33
  %57 = load i32, i32* %8, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %8, align 4
  br label %29

59:                                               ; preds = %29
  %60 = load %struct.mlxsw_sp_qdisc*, %struct.mlxsw_sp_qdisc** %4, align 8
  %61 = getelementptr inbounds %struct.mlxsw_sp_qdisc, %struct.mlxsw_sp_qdisc* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.mlxsw_sp_qdisc_stats, %struct.mlxsw_sp_qdisc_stats* %61, i32 0, i32 0
  store i64 0, i64* %62, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
