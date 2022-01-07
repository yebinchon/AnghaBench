; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_qdisc.c_mlxsw_sp_setup_tc_qdisc_red_clean_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_qdisc.c_mlxsw_sp_setup_tc_qdisc_red_clean_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_port = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.mlxsw_sp_port_xstats }
%struct.mlxsw_sp_port_xstats = type { i64*, i64*, i64 }
%struct.mlxsw_sp_qdisc = type { i64, i32, %struct.TYPE_4__, %struct.mlxsw_sp_qdisc_stats }
%struct.TYPE_4__ = type { %struct.red_stats }
%struct.red_stats = type { i64, i64, i64 }
%struct.mlxsw_sp_qdisc_stats = type { i64, i64, i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlxsw_sp_port*, %struct.mlxsw_sp_qdisc*)* @mlxsw_sp_setup_tc_qdisc_red_clean_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxsw_sp_setup_tc_qdisc_red_clean_stats(%struct.mlxsw_sp_port* %0, %struct.mlxsw_sp_qdisc* %1) #0 {
  %3 = alloca %struct.mlxsw_sp_port*, align 8
  %4 = alloca %struct.mlxsw_sp_qdisc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.mlxsw_sp_qdisc_stats*, align 8
  %7 = alloca %struct.mlxsw_sp_port_xstats*, align 8
  %8 = alloca %struct.red_stats*, align 8
  store %struct.mlxsw_sp_port* %0, %struct.mlxsw_sp_port** %3, align 8
  store %struct.mlxsw_sp_qdisc* %1, %struct.mlxsw_sp_qdisc** %4, align 8
  %9 = load %struct.mlxsw_sp_qdisc*, %struct.mlxsw_sp_qdisc** %4, align 8
  %10 = getelementptr inbounds %struct.mlxsw_sp_qdisc, %struct.mlxsw_sp_qdisc* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %5, align 8
  %12 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %3, align 8
  %13 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  store %struct.mlxsw_sp_port_xstats* %14, %struct.mlxsw_sp_port_xstats** %7, align 8
  %15 = load %struct.mlxsw_sp_qdisc*, %struct.mlxsw_sp_qdisc** %4, align 8
  %16 = getelementptr inbounds %struct.mlxsw_sp_qdisc, %struct.mlxsw_sp_qdisc* %15, i32 0, i32 3
  store %struct.mlxsw_sp_qdisc_stats* %16, %struct.mlxsw_sp_qdisc_stats** %6, align 8
  %17 = load %struct.mlxsw_sp_qdisc*, %struct.mlxsw_sp_qdisc** %4, align 8
  %18 = getelementptr inbounds %struct.mlxsw_sp_qdisc, %struct.mlxsw_sp_qdisc* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  store %struct.red_stats* %19, %struct.red_stats** %8, align 8
  %20 = load %struct.mlxsw_sp_port_xstats*, %struct.mlxsw_sp_port_xstats** %7, align 8
  %21 = load %struct.mlxsw_sp_qdisc*, %struct.mlxsw_sp_qdisc** %4, align 8
  %22 = getelementptr inbounds %struct.mlxsw_sp_qdisc, %struct.mlxsw_sp_qdisc* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.mlxsw_sp_qdisc_stats*, %struct.mlxsw_sp_qdisc_stats** %6, align 8
  %25 = getelementptr inbounds %struct.mlxsw_sp_qdisc_stats, %struct.mlxsw_sp_qdisc_stats* %24, i32 0, i32 4
  %26 = load %struct.mlxsw_sp_qdisc_stats*, %struct.mlxsw_sp_qdisc_stats** %6, align 8
  %27 = getelementptr inbounds %struct.mlxsw_sp_qdisc_stats, %struct.mlxsw_sp_qdisc_stats* %26, i32 0, i32 3
  %28 = call i32 @mlxsw_sp_qdisc_bstats_per_priority_get(%struct.mlxsw_sp_port_xstats* %20, i32 %23, i32* %25, i32* %27)
  %29 = load %struct.mlxsw_sp_port_xstats*, %struct.mlxsw_sp_port_xstats** %7, align 8
  %30 = getelementptr inbounds %struct.mlxsw_sp_port_xstats, %struct.mlxsw_sp_port_xstats* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.red_stats*, %struct.red_stats** %8, align 8
  %33 = getelementptr inbounds %struct.red_stats, %struct.red_stats* %32, i32 0, i32 2
  store i64 %31, i64* %33, align 8
  %34 = load %struct.mlxsw_sp_port_xstats*, %struct.mlxsw_sp_port_xstats** %7, align 8
  %35 = getelementptr inbounds %struct.mlxsw_sp_port_xstats, %struct.mlxsw_sp_port_xstats* %34, i32 0, i32 1
  %36 = load i64*, i64** %35, align 8
  %37 = load i64, i64* %5, align 8
  %38 = getelementptr inbounds i64, i64* %36, i64 %37
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.red_stats*, %struct.red_stats** %8, align 8
  %41 = getelementptr inbounds %struct.red_stats, %struct.red_stats* %40, i32 0, i32 1
  store i64 %39, i64* %41, align 8
  %42 = load %struct.mlxsw_sp_port_xstats*, %struct.mlxsw_sp_port_xstats** %7, align 8
  %43 = getelementptr inbounds %struct.mlxsw_sp_port_xstats, %struct.mlxsw_sp_port_xstats* %42, i32 0, i32 0
  %44 = load i64*, i64** %43, align 8
  %45 = load i64, i64* %5, align 8
  %46 = getelementptr inbounds i64, i64* %44, i64 %45
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.red_stats*, %struct.red_stats** %8, align 8
  %49 = getelementptr inbounds %struct.red_stats, %struct.red_stats* %48, i32 0, i32 0
  store i64 %47, i64* %49, align 8
  %50 = load %struct.red_stats*, %struct.red_stats** %8, align 8
  %51 = getelementptr inbounds %struct.red_stats, %struct.red_stats* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.red_stats*, %struct.red_stats** %8, align 8
  %54 = getelementptr inbounds %struct.red_stats, %struct.red_stats* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = add nsw i64 %52, %55
  %57 = load %struct.mlxsw_sp_qdisc_stats*, %struct.mlxsw_sp_qdisc_stats** %6, align 8
  %58 = getelementptr inbounds %struct.mlxsw_sp_qdisc_stats, %struct.mlxsw_sp_qdisc_stats* %57, i32 0, i32 2
  store i64 %56, i64* %58, align 8
  %59 = load %struct.red_stats*, %struct.red_stats** %8, align 8
  %60 = getelementptr inbounds %struct.red_stats, %struct.red_stats* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.red_stats*, %struct.red_stats** %8, align 8
  %63 = getelementptr inbounds %struct.red_stats, %struct.red_stats* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = add nsw i64 %61, %64
  %66 = load %struct.mlxsw_sp_qdisc_stats*, %struct.mlxsw_sp_qdisc_stats** %6, align 8
  %67 = getelementptr inbounds %struct.mlxsw_sp_qdisc_stats, %struct.mlxsw_sp_qdisc_stats* %66, i32 0, i32 1
  store i64 %65, i64* %67, align 8
  %68 = load %struct.mlxsw_sp_qdisc_stats*, %struct.mlxsw_sp_qdisc_stats** %6, align 8
  %69 = getelementptr inbounds %struct.mlxsw_sp_qdisc_stats, %struct.mlxsw_sp_qdisc_stats* %68, i32 0, i32 0
  store i64 0, i64* %69, align 8
  ret void
}

declare dso_local i32 @mlxsw_sp_qdisc_bstats_per_priority_get(%struct.mlxsw_sp_port_xstats*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
