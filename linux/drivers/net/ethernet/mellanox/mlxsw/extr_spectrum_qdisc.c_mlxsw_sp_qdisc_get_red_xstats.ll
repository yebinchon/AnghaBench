; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_qdisc.c_mlxsw_sp_qdisc_get_red_xstats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_qdisc.c_mlxsw_sp_qdisc_get_red_xstats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_port = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.mlxsw_sp_port_xstats }
%struct.mlxsw_sp_port_xstats = type { i32*, i32, i32* }
%struct.mlxsw_sp_qdisc = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.red_stats }
%struct.red_stats = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp_port*, %struct.mlxsw_sp_qdisc*, i8*)* @mlxsw_sp_qdisc_get_red_xstats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_qdisc_get_red_xstats(%struct.mlxsw_sp_port* %0, %struct.mlxsw_sp_qdisc* %1, i8* %2) #0 {
  %4 = alloca %struct.mlxsw_sp_port*, align 8
  %5 = alloca %struct.mlxsw_sp_qdisc*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.red_stats*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.mlxsw_sp_port_xstats*, align 8
  %10 = alloca %struct.red_stats*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.mlxsw_sp_port* %0, %struct.mlxsw_sp_port** %4, align 8
  store %struct.mlxsw_sp_qdisc* %1, %struct.mlxsw_sp_qdisc** %5, align 8
  store i8* %2, i8** %6, align 8
  %14 = load %struct.mlxsw_sp_qdisc*, %struct.mlxsw_sp_qdisc** %5, align 8
  %15 = getelementptr inbounds %struct.mlxsw_sp_qdisc, %struct.mlxsw_sp_qdisc* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  store %struct.red_stats* %16, %struct.red_stats** %7, align 8
  %17 = load %struct.mlxsw_sp_qdisc*, %struct.mlxsw_sp_qdisc** %5, align 8
  %18 = getelementptr inbounds %struct.mlxsw_sp_qdisc, %struct.mlxsw_sp_qdisc* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %8, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = bitcast i8* %20 to %struct.red_stats*
  store %struct.red_stats* %21, %struct.red_stats** %10, align 8
  %22 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %4, align 8
  %23 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  store %struct.mlxsw_sp_port_xstats* %24, %struct.mlxsw_sp_port_xstats** %9, align 8
  %25 = load %struct.mlxsw_sp_port_xstats*, %struct.mlxsw_sp_port_xstats** %9, align 8
  %26 = getelementptr inbounds %struct.mlxsw_sp_port_xstats, %struct.mlxsw_sp_port_xstats* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load i64, i64* %8, align 8
  %29 = getelementptr inbounds i32, i32* %27, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.red_stats*, %struct.red_stats** %7, align 8
  %32 = getelementptr inbounds %struct.red_stats, %struct.red_stats* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = sub nsw i32 %30, %33
  store i32 %34, i32* %11, align 4
  %35 = load %struct.mlxsw_sp_port_xstats*, %struct.mlxsw_sp_port_xstats** %9, align 8
  %36 = getelementptr inbounds %struct.mlxsw_sp_port_xstats, %struct.mlxsw_sp_port_xstats* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.red_stats*, %struct.red_stats** %7, align 8
  %39 = getelementptr inbounds %struct.red_stats, %struct.red_stats* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = sub nsw i32 %37, %40
  store i32 %41, i32* %12, align 4
  %42 = load %struct.mlxsw_sp_port_xstats*, %struct.mlxsw_sp_port_xstats** %9, align 8
  %43 = getelementptr inbounds %struct.mlxsw_sp_port_xstats, %struct.mlxsw_sp_port_xstats* %42, i32 0, i32 2
  %44 = load i32*, i32** %43, align 8
  %45 = load i64, i64* %8, align 8
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.red_stats*, %struct.red_stats** %7, align 8
  %49 = getelementptr inbounds %struct.red_stats, %struct.red_stats* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = sub nsw i32 %47, %50
  store i32 %51, i32* %13, align 4
  %52 = load i32, i32* %13, align 4
  %53 = load %struct.red_stats*, %struct.red_stats** %10, align 8
  %54 = getelementptr inbounds %struct.red_stats, %struct.red_stats* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %55, %52
  store i32 %56, i32* %54, align 4
  %57 = load i32, i32* %11, align 4
  %58 = load %struct.red_stats*, %struct.red_stats** %10, align 8
  %59 = getelementptr inbounds %struct.red_stats, %struct.red_stats* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %60, %57
  store i32 %61, i32* %59, align 4
  %62 = load i32, i32* %12, align 4
  %63 = load %struct.red_stats*, %struct.red_stats** %10, align 8
  %64 = getelementptr inbounds %struct.red_stats, %struct.red_stats* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = add nsw i32 %65, %62
  store i32 %66, i32* %64, align 4
  %67 = load i32, i32* %13, align 4
  %68 = load %struct.red_stats*, %struct.red_stats** %7, align 8
  %69 = getelementptr inbounds %struct.red_stats, %struct.red_stats* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = add nsw i32 %70, %67
  store i32 %71, i32* %69, align 4
  %72 = load i32, i32* %11, align 4
  %73 = load %struct.red_stats*, %struct.red_stats** %7, align 8
  %74 = getelementptr inbounds %struct.red_stats, %struct.red_stats* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = add nsw i32 %75, %72
  store i32 %76, i32* %74, align 4
  %77 = load i32, i32* %12, align 4
  %78 = load %struct.red_stats*, %struct.red_stats** %7, align 8
  %79 = getelementptr inbounds %struct.red_stats, %struct.red_stats* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = add nsw i32 %80, %77
  store i32 %81, i32* %79, align 4
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
