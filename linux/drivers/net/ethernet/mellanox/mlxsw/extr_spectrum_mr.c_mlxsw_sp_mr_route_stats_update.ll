; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_mr.c_mlxsw_sp_mr_route_stats_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_mr.c_mlxsw_sp_mr_route_stats_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { %struct.mlxsw_sp_mr* }
%struct.mlxsw_sp_mr = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.mlxsw_sp*, i32, i64*, i64*)* }
%struct.mlxsw_sp_mr_route = type { i64, %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i64, i32 }

@MLXSW_SP_MR_ROUTE_ACTION_TRAP = common dso_local global i64 0, align 8
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlxsw_sp*, %struct.mlxsw_sp_mr_route*)* @mlxsw_sp_mr_route_stats_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxsw_sp_mr_route_stats_update(%struct.mlxsw_sp* %0, %struct.mlxsw_sp_mr_route* %1) #0 {
  %3 = alloca %struct.mlxsw_sp*, align 8
  %4 = alloca %struct.mlxsw_sp_mr_route*, align 8
  %5 = alloca %struct.mlxsw_sp_mr*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %3, align 8
  store %struct.mlxsw_sp_mr_route* %1, %struct.mlxsw_sp_mr_route** %4, align 8
  %8 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %9 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %8, i32 0, i32 0
  %10 = load %struct.mlxsw_sp_mr*, %struct.mlxsw_sp_mr** %9, align 8
  store %struct.mlxsw_sp_mr* %10, %struct.mlxsw_sp_mr** %5, align 8
  %11 = load %struct.mlxsw_sp_mr_route*, %struct.mlxsw_sp_mr_route** %4, align 8
  %12 = getelementptr inbounds %struct.mlxsw_sp_mr_route, %struct.mlxsw_sp_mr_route* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @MLXSW_SP_MR_ROUTE_ACTION_TRAP, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %60

17:                                               ; preds = %2
  %18 = load %struct.mlxsw_sp_mr*, %struct.mlxsw_sp_mr** %5, align 8
  %19 = getelementptr inbounds %struct.mlxsw_sp_mr, %struct.mlxsw_sp_mr* %18, i32 0, i32 0
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32 (%struct.mlxsw_sp*, i32, i64*, i64*)*, i32 (%struct.mlxsw_sp*, i32, i64*, i64*)** %21, align 8
  %23 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %24 = load %struct.mlxsw_sp_mr_route*, %struct.mlxsw_sp_mr_route** %4, align 8
  %25 = getelementptr inbounds %struct.mlxsw_sp_mr_route, %struct.mlxsw_sp_mr_route* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = call i32 %22(%struct.mlxsw_sp* %23, i32 %26, i64* %6, i64* %7)
  %28 = load %struct.mlxsw_sp_mr_route*, %struct.mlxsw_sp_mr_route** %4, align 8
  %29 = getelementptr inbounds %struct.mlxsw_sp_mr_route, %struct.mlxsw_sp_mr_route* %28, i32 0, i32 1
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* %6, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %45

37:                                               ; preds = %17
  %38 = load i32, i32* @jiffies, align 4
  %39 = load %struct.mlxsw_sp_mr_route*, %struct.mlxsw_sp_mr_route** %4, align 8
  %40 = getelementptr inbounds %struct.mlxsw_sp_mr_route, %struct.mlxsw_sp_mr_route* %39, i32 0, i32 1
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 2
  store i32 %38, i32* %44, align 8
  br label %45

45:                                               ; preds = %37, %17
  %46 = load i64, i64* %6, align 8
  %47 = load %struct.mlxsw_sp_mr_route*, %struct.mlxsw_sp_mr_route** %4, align 8
  %48 = getelementptr inbounds %struct.mlxsw_sp_mr_route, %struct.mlxsw_sp_mr_route* %47, i32 0, i32 1
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  store i64 %46, i64* %52, align 8
  %53 = load i64, i64* %7, align 8
  %54 = load %struct.mlxsw_sp_mr_route*, %struct.mlxsw_sp_mr_route** %4, align 8
  %55 = getelementptr inbounds %struct.mlxsw_sp_mr_route, %struct.mlxsw_sp_mr_route* %54, i32 0, i32 1
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 1
  store i64 %53, i64* %59, align 8
  br label %60

60:                                               ; preds = %45, %16
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
