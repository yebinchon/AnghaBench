; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_qdisc.c_mlxsw_sp_qdisc_get_red_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_qdisc.c_mlxsw_sp_qdisc_get_red_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_port = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.mlxsw_sp_port_xstats }
%struct.mlxsw_sp_port_xstats = type { i64*, i64*, i64*, i64 }
%struct.mlxsw_sp_qdisc = type { i64, i32, %struct.mlxsw_sp_qdisc_stats }
%struct.mlxsw_sp_qdisc_stats = type { i64, i64, i64, i64, i64 }
%struct.tc_qopt_offload_stats = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp_port*, %struct.mlxsw_sp_qdisc*, %struct.tc_qopt_offload_stats*)* @mlxsw_sp_qdisc_get_red_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_qdisc_get_red_stats(%struct.mlxsw_sp_port* %0, %struct.mlxsw_sp_qdisc* %1, %struct.tc_qopt_offload_stats* %2) #0 {
  %4 = alloca %struct.mlxsw_sp_port*, align 8
  %5 = alloca %struct.mlxsw_sp_qdisc*, align 8
  %6 = alloca %struct.tc_qopt_offload_stats*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.mlxsw_sp_qdisc_stats*, align 8
  %14 = alloca %struct.mlxsw_sp_port_xstats*, align 8
  store %struct.mlxsw_sp_port* %0, %struct.mlxsw_sp_port** %4, align 8
  store %struct.mlxsw_sp_qdisc* %1, %struct.mlxsw_sp_qdisc** %5, align 8
  store %struct.tc_qopt_offload_stats* %2, %struct.tc_qopt_offload_stats** %6, align 8
  %15 = load %struct.mlxsw_sp_qdisc*, %struct.mlxsw_sp_qdisc** %5, align 8
  %16 = getelementptr inbounds %struct.mlxsw_sp_qdisc, %struct.mlxsw_sp_qdisc* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %12, align 8
  %18 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %4, align 8
  %19 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  store %struct.mlxsw_sp_port_xstats* %20, %struct.mlxsw_sp_port_xstats** %14, align 8
  %21 = load %struct.mlxsw_sp_qdisc*, %struct.mlxsw_sp_qdisc** %5, align 8
  %22 = getelementptr inbounds %struct.mlxsw_sp_qdisc, %struct.mlxsw_sp_qdisc* %21, i32 0, i32 2
  store %struct.mlxsw_sp_qdisc_stats* %22, %struct.mlxsw_sp_qdisc_stats** %13, align 8
  %23 = load %struct.mlxsw_sp_port_xstats*, %struct.mlxsw_sp_port_xstats** %14, align 8
  %24 = load %struct.mlxsw_sp_qdisc*, %struct.mlxsw_sp_qdisc** %5, align 8
  %25 = getelementptr inbounds %struct.mlxsw_sp_qdisc, %struct.mlxsw_sp_qdisc* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @mlxsw_sp_qdisc_bstats_per_priority_get(%struct.mlxsw_sp_port_xstats* %23, i32 %26, i64* %8, i64* %7)
  %28 = load i64, i64* %7, align 8
  %29 = load %struct.mlxsw_sp_qdisc_stats*, %struct.mlxsw_sp_qdisc_stats** %13, align 8
  %30 = getelementptr inbounds %struct.mlxsw_sp_qdisc_stats, %struct.mlxsw_sp_qdisc_stats* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = sub nsw i64 %28, %31
  store i64 %32, i64* %7, align 8
  %33 = load i64, i64* %8, align 8
  %34 = load %struct.mlxsw_sp_qdisc_stats*, %struct.mlxsw_sp_qdisc_stats** %13, align 8
  %35 = getelementptr inbounds %struct.mlxsw_sp_qdisc_stats, %struct.mlxsw_sp_qdisc_stats* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = sub nsw i64 %33, %36
  store i64 %37, i64* %8, align 8
  %38 = load %struct.mlxsw_sp_port_xstats*, %struct.mlxsw_sp_port_xstats** %14, align 8
  %39 = getelementptr inbounds %struct.mlxsw_sp_port_xstats, %struct.mlxsw_sp_port_xstats* %38, i32 0, i32 2
  %40 = load i64*, i64** %39, align 8
  %41 = load i64, i64* %12, align 8
  %42 = getelementptr inbounds i64, i64* %40, i64 %41
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.mlxsw_sp_port_xstats*, %struct.mlxsw_sp_port_xstats** %14, align 8
  %45 = getelementptr inbounds %struct.mlxsw_sp_port_xstats, %struct.mlxsw_sp_port_xstats* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  %47 = add nsw i64 %43, %46
  %48 = load %struct.mlxsw_sp_qdisc_stats*, %struct.mlxsw_sp_qdisc_stats** %13, align 8
  %49 = getelementptr inbounds %struct.mlxsw_sp_qdisc_stats, %struct.mlxsw_sp_qdisc_stats* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = sub nsw i64 %47, %50
  store i64 %51, i64* %9, align 8
  %52 = load %struct.mlxsw_sp_port_xstats*, %struct.mlxsw_sp_port_xstats** %14, align 8
  %53 = getelementptr inbounds %struct.mlxsw_sp_port_xstats, %struct.mlxsw_sp_port_xstats* %52, i32 0, i32 2
  %54 = load i64*, i64** %53, align 8
  %55 = load i64, i64* %12, align 8
  %56 = getelementptr inbounds i64, i64* %54, i64 %55
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.mlxsw_sp_port_xstats*, %struct.mlxsw_sp_port_xstats** %14, align 8
  %59 = getelementptr inbounds %struct.mlxsw_sp_port_xstats, %struct.mlxsw_sp_port_xstats* %58, i32 0, i32 1
  %60 = load i64*, i64** %59, align 8
  %61 = load i64, i64* %12, align 8
  %62 = getelementptr inbounds i64, i64* %60, i64 %61
  %63 = load i64, i64* %62, align 8
  %64 = add nsw i64 %57, %63
  %65 = load %struct.mlxsw_sp_qdisc_stats*, %struct.mlxsw_sp_qdisc_stats** %13, align 8
  %66 = getelementptr inbounds %struct.mlxsw_sp_qdisc_stats, %struct.mlxsw_sp_qdisc_stats* %65, i32 0, i32 3
  %67 = load i64, i64* %66, align 8
  %68 = sub nsw i64 %64, %67
  store i64 %68, i64* %10, align 8
  %69 = load %struct.mlxsw_sp_port_xstats*, %struct.mlxsw_sp_port_xstats** %14, align 8
  %70 = getelementptr inbounds %struct.mlxsw_sp_port_xstats, %struct.mlxsw_sp_port_xstats* %69, i32 0, i32 0
  %71 = load i64*, i64** %70, align 8
  %72 = load i64, i64* %12, align 8
  %73 = getelementptr inbounds i64, i64* %71, i64 %72
  %74 = load i64, i64* %73, align 8
  store i64 %74, i64* %11, align 8
  %75 = load %struct.tc_qopt_offload_stats*, %struct.tc_qopt_offload_stats** %6, align 8
  %76 = getelementptr inbounds %struct.tc_qopt_offload_stats, %struct.tc_qopt_offload_stats* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = load i64, i64* %7, align 8
  %79 = load i64, i64* %8, align 8
  %80 = call i32 @_bstats_update(i32 %77, i64 %78, i64 %79)
  %81 = load i64, i64* %9, align 8
  %82 = load %struct.tc_qopt_offload_stats*, %struct.tc_qopt_offload_stats** %6, align 8
  %83 = getelementptr inbounds %struct.tc_qopt_offload_stats, %struct.tc_qopt_offload_stats* %82, i32 0, i32 0
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = sext i32 %86 to i64
  %88 = add nsw i64 %87, %81
  %89 = trunc i64 %88 to i32
  store i32 %89, i32* %85, align 4
  %90 = load i64, i64* %10, align 8
  %91 = load %struct.tc_qopt_offload_stats*, %struct.tc_qopt_offload_stats** %6, align 8
  %92 = getelementptr inbounds %struct.tc_qopt_offload_stats, %struct.tc_qopt_offload_stats* %91, i32 0, i32 0
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = sext i32 %95 to i64
  %97 = add nsw i64 %96, %90
  %98 = trunc i64 %97 to i32
  store i32 %98, i32* %94, align 4
  %99 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %4, align 8
  %100 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load i64, i64* %11, align 8
  %103 = call i64 @mlxsw_sp_cells_bytes(i32 %101, i64 %102)
  %104 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %4, align 8
  %105 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.mlxsw_sp_qdisc_stats*, %struct.mlxsw_sp_qdisc_stats** %13, align 8
  %108 = getelementptr inbounds %struct.mlxsw_sp_qdisc_stats, %struct.mlxsw_sp_qdisc_stats* %107, i32 0, i32 4
  %109 = load i64, i64* %108, align 8
  %110 = call i64 @mlxsw_sp_cells_bytes(i32 %106, i64 %109)
  %111 = sub nsw i64 %103, %110
  %112 = load %struct.tc_qopt_offload_stats*, %struct.tc_qopt_offload_stats** %6, align 8
  %113 = getelementptr inbounds %struct.tc_qopt_offload_stats, %struct.tc_qopt_offload_stats* %112, i32 0, i32 0
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = sext i32 %116 to i64
  %118 = add nsw i64 %117, %111
  %119 = trunc i64 %118 to i32
  store i32 %119, i32* %115, align 4
  %120 = load i64, i64* %11, align 8
  %121 = load %struct.mlxsw_sp_qdisc_stats*, %struct.mlxsw_sp_qdisc_stats** %13, align 8
  %122 = getelementptr inbounds %struct.mlxsw_sp_qdisc_stats, %struct.mlxsw_sp_qdisc_stats* %121, i32 0, i32 4
  store i64 %120, i64* %122, align 8
  %123 = load i64, i64* %10, align 8
  %124 = load %struct.mlxsw_sp_qdisc_stats*, %struct.mlxsw_sp_qdisc_stats** %13, align 8
  %125 = getelementptr inbounds %struct.mlxsw_sp_qdisc_stats, %struct.mlxsw_sp_qdisc_stats* %124, i32 0, i32 3
  %126 = load i64, i64* %125, align 8
  %127 = add nsw i64 %126, %123
  store i64 %127, i64* %125, align 8
  %128 = load i64, i64* %9, align 8
  %129 = load %struct.mlxsw_sp_qdisc_stats*, %struct.mlxsw_sp_qdisc_stats** %13, align 8
  %130 = getelementptr inbounds %struct.mlxsw_sp_qdisc_stats, %struct.mlxsw_sp_qdisc_stats* %129, i32 0, i32 2
  %131 = load i64, i64* %130, align 8
  %132 = add nsw i64 %131, %128
  store i64 %132, i64* %130, align 8
  %133 = load i64, i64* %7, align 8
  %134 = load %struct.mlxsw_sp_qdisc_stats*, %struct.mlxsw_sp_qdisc_stats** %13, align 8
  %135 = getelementptr inbounds %struct.mlxsw_sp_qdisc_stats, %struct.mlxsw_sp_qdisc_stats* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = add nsw i64 %136, %133
  store i64 %137, i64* %135, align 8
  %138 = load i64, i64* %8, align 8
  %139 = load %struct.mlxsw_sp_qdisc_stats*, %struct.mlxsw_sp_qdisc_stats** %13, align 8
  %140 = getelementptr inbounds %struct.mlxsw_sp_qdisc_stats, %struct.mlxsw_sp_qdisc_stats* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = add nsw i64 %141, %138
  store i64 %142, i64* %140, align 8
  ret i32 0
}

declare dso_local i32 @mlxsw_sp_qdisc_bstats_per_priority_get(%struct.mlxsw_sp_port_xstats*, i32, i64*, i64*) #1

declare dso_local i32 @_bstats_update(i32, i64, i64) #1

declare dso_local i64 @mlxsw_sp_cells_bytes(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
