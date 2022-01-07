; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_qdisc.c_mlxsw_sp_qdisc_get_prio_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_qdisc.c_mlxsw_sp_qdisc_get_prio_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_port = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.rtnl_link_stats64, %struct.mlxsw_sp_port_xstats }
%struct.rtnl_link_stats64 = type { i64, i64 }
%struct.mlxsw_sp_port_xstats = type { i64*, i64*, i64* }
%struct.mlxsw_sp_qdisc = type { %struct.mlxsw_sp_qdisc_stats }
%struct.mlxsw_sp_qdisc_stats = type { i64, i64, i64, i64 }
%struct.tc_qopt_offload_stats = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@IEEE_8021QAZ_MAX_TCS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp_port*, %struct.mlxsw_sp_qdisc*, %struct.tc_qopt_offload_stats*)* @mlxsw_sp_qdisc_get_prio_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_qdisc_get_prio_stats(%struct.mlxsw_sp_port* %0, %struct.mlxsw_sp_qdisc* %1, %struct.tc_qopt_offload_stats* %2) #0 {
  %4 = alloca %struct.mlxsw_sp_port*, align 8
  %5 = alloca %struct.mlxsw_sp_qdisc*, align 8
  %6 = alloca %struct.tc_qopt_offload_stats*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.mlxsw_sp_qdisc_stats*, align 8
  %12 = alloca %struct.mlxsw_sp_port_xstats*, align 8
  %13 = alloca %struct.rtnl_link_stats64*, align 8
  %14 = alloca i32, align 4
  store %struct.mlxsw_sp_port* %0, %struct.mlxsw_sp_port** %4, align 8
  store %struct.mlxsw_sp_qdisc* %1, %struct.mlxsw_sp_qdisc** %5, align 8
  store %struct.tc_qopt_offload_stats* %2, %struct.tc_qopt_offload_stats** %6, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  %15 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %4, align 8
  %16 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  store %struct.mlxsw_sp_port_xstats* %17, %struct.mlxsw_sp_port_xstats** %12, align 8
  %18 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %4, align 8
  %19 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  store %struct.rtnl_link_stats64* %20, %struct.rtnl_link_stats64** %13, align 8
  %21 = load %struct.mlxsw_sp_qdisc*, %struct.mlxsw_sp_qdisc** %5, align 8
  %22 = getelementptr inbounds %struct.mlxsw_sp_qdisc, %struct.mlxsw_sp_qdisc* %21, i32 0, i32 0
  store %struct.mlxsw_sp_qdisc_stats* %22, %struct.mlxsw_sp_qdisc_stats** %11, align 8
  %23 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %13, align 8
  %24 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.mlxsw_sp_qdisc_stats*, %struct.mlxsw_sp_qdisc_stats** %11, align 8
  %27 = getelementptr inbounds %struct.mlxsw_sp_qdisc_stats, %struct.mlxsw_sp_qdisc_stats* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = sub nsw i64 %25, %28
  store i64 %29, i64* %7, align 8
  %30 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %13, align 8
  %31 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.mlxsw_sp_qdisc_stats*, %struct.mlxsw_sp_qdisc_stats** %11, align 8
  %34 = getelementptr inbounds %struct.mlxsw_sp_qdisc_stats, %struct.mlxsw_sp_qdisc_stats* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = sub nsw i64 %32, %35
  store i64 %36, i64* %8, align 8
  store i32 0, i32* %14, align 4
  br label %37

37:                                               ; preds = %69, %3
  %38 = load i32, i32* %14, align 4
  %39 = load i32, i32* @IEEE_8021QAZ_MAX_TCS, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %72

41:                                               ; preds = %37
  %42 = load %struct.mlxsw_sp_port_xstats*, %struct.mlxsw_sp_port_xstats** %12, align 8
  %43 = getelementptr inbounds %struct.mlxsw_sp_port_xstats, %struct.mlxsw_sp_port_xstats* %42, i32 0, i32 2
  %44 = load i64*, i64** %43, align 8
  %45 = load i32, i32* %14, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i64, i64* %44, i64 %46
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* %9, align 8
  %50 = add nsw i64 %49, %48
  store i64 %50, i64* %9, align 8
  %51 = load %struct.mlxsw_sp_port_xstats*, %struct.mlxsw_sp_port_xstats** %12, align 8
  %52 = getelementptr inbounds %struct.mlxsw_sp_port_xstats, %struct.mlxsw_sp_port_xstats* %51, i32 0, i32 1
  %53 = load i64*, i64** %52, align 8
  %54 = load i32, i32* %14, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i64, i64* %53, i64 %55
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* %9, align 8
  %59 = add nsw i64 %58, %57
  store i64 %59, i64* %9, align 8
  %60 = load %struct.mlxsw_sp_port_xstats*, %struct.mlxsw_sp_port_xstats** %12, align 8
  %61 = getelementptr inbounds %struct.mlxsw_sp_port_xstats, %struct.mlxsw_sp_port_xstats* %60, i32 0, i32 0
  %62 = load i64*, i64** %61, align 8
  %63 = load i32, i32* %14, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i64, i64* %62, i64 %64
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* %10, align 8
  %68 = add nsw i64 %67, %66
  store i64 %68, i64* %10, align 8
  br label %69

69:                                               ; preds = %41
  %70 = load i32, i32* %14, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %14, align 4
  br label %37

72:                                               ; preds = %37
  %73 = load i64, i64* %9, align 8
  %74 = load %struct.mlxsw_sp_qdisc_stats*, %struct.mlxsw_sp_qdisc_stats** %11, align 8
  %75 = getelementptr inbounds %struct.mlxsw_sp_qdisc_stats, %struct.mlxsw_sp_qdisc_stats* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = sub nsw i64 %73, %76
  store i64 %77, i64* %9, align 8
  %78 = load %struct.tc_qopt_offload_stats*, %struct.tc_qopt_offload_stats** %6, align 8
  %79 = getelementptr inbounds %struct.tc_qopt_offload_stats, %struct.tc_qopt_offload_stats* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = load i64, i64* %7, align 8
  %82 = load i64, i64* %8, align 8
  %83 = call i32 @_bstats_update(i32 %80, i64 %81, i64 %82)
  %84 = load i64, i64* %9, align 8
  %85 = load %struct.tc_qopt_offload_stats*, %struct.tc_qopt_offload_stats** %6, align 8
  %86 = getelementptr inbounds %struct.tc_qopt_offload_stats, %struct.tc_qopt_offload_stats* %85, i32 0, i32 0
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = sext i32 %89 to i64
  %91 = add nsw i64 %90, %84
  %92 = trunc i64 %91 to i32
  store i32 %92, i32* %88, align 4
  %93 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %4, align 8
  %94 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i64, i64* %10, align 8
  %97 = call i64 @mlxsw_sp_cells_bytes(i32 %95, i64 %96)
  %98 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %4, align 8
  %99 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.mlxsw_sp_qdisc_stats*, %struct.mlxsw_sp_qdisc_stats** %11, align 8
  %102 = getelementptr inbounds %struct.mlxsw_sp_qdisc_stats, %struct.mlxsw_sp_qdisc_stats* %101, i32 0, i32 3
  %103 = load i64, i64* %102, align 8
  %104 = call i64 @mlxsw_sp_cells_bytes(i32 %100, i64 %103)
  %105 = sub nsw i64 %97, %104
  %106 = load %struct.tc_qopt_offload_stats*, %struct.tc_qopt_offload_stats** %6, align 8
  %107 = getelementptr inbounds %struct.tc_qopt_offload_stats, %struct.tc_qopt_offload_stats* %106, i32 0, i32 0
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = sext i32 %110 to i64
  %112 = add nsw i64 %111, %105
  %113 = trunc i64 %112 to i32
  store i32 %113, i32* %109, align 4
  %114 = load i64, i64* %10, align 8
  %115 = load %struct.mlxsw_sp_qdisc_stats*, %struct.mlxsw_sp_qdisc_stats** %11, align 8
  %116 = getelementptr inbounds %struct.mlxsw_sp_qdisc_stats, %struct.mlxsw_sp_qdisc_stats* %115, i32 0, i32 3
  store i64 %114, i64* %116, align 8
  %117 = load i64, i64* %9, align 8
  %118 = load %struct.mlxsw_sp_qdisc_stats*, %struct.mlxsw_sp_qdisc_stats** %11, align 8
  %119 = getelementptr inbounds %struct.mlxsw_sp_qdisc_stats, %struct.mlxsw_sp_qdisc_stats* %118, i32 0, i32 2
  %120 = load i64, i64* %119, align 8
  %121 = add nsw i64 %120, %117
  store i64 %121, i64* %119, align 8
  %122 = load i64, i64* %7, align 8
  %123 = load %struct.mlxsw_sp_qdisc_stats*, %struct.mlxsw_sp_qdisc_stats** %11, align 8
  %124 = getelementptr inbounds %struct.mlxsw_sp_qdisc_stats, %struct.mlxsw_sp_qdisc_stats* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = add nsw i64 %125, %122
  store i64 %126, i64* %124, align 8
  %127 = load i64, i64* %8, align 8
  %128 = load %struct.mlxsw_sp_qdisc_stats*, %struct.mlxsw_sp_qdisc_stats** %11, align 8
  %129 = getelementptr inbounds %struct.mlxsw_sp_qdisc_stats, %struct.mlxsw_sp_qdisc_stats* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = add nsw i64 %130, %127
  store i64 %131, i64* %129, align 8
  ret i32 0
}

declare dso_local i32 @_bstats_update(i32, i64, i64) #1

declare dso_local i64 @mlxsw_sp_cells_bytes(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
