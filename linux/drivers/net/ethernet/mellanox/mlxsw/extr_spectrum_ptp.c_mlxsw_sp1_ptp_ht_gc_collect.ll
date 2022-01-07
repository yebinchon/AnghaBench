; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_ptp.c_mlxsw_sp1_ptp_ht_gc_collect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_ptp.c_mlxsw_sp1_ptp_ht_gc_collect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_ptp_state = type { %struct.TYPE_8__*, i32, i32 }
%struct.TYPE_8__ = type { %struct.mlxsw_sp_port** }
%struct.mlxsw_sp_port = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.mlxsw_sp_ptp_port_dir_stats, %struct.mlxsw_sp_ptp_port_dir_stats }
%struct.mlxsw_sp_ptp_port_dir_stats = type { i32, i32 }
%struct.mlxsw_sp1_ptp_unmatched = type { i64, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i64, i64 }

@mlxsw_sp1_ptp_unmatched_ht_params = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlxsw_sp_ptp_state*, %struct.mlxsw_sp1_ptp_unmatched*)* @mlxsw_sp1_ptp_ht_gc_collect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxsw_sp1_ptp_ht_gc_collect(%struct.mlxsw_sp_ptp_state* %0, %struct.mlxsw_sp1_ptp_unmatched* %1) #0 {
  %3 = alloca %struct.mlxsw_sp_ptp_state*, align 8
  %4 = alloca %struct.mlxsw_sp1_ptp_unmatched*, align 8
  %5 = alloca %struct.mlxsw_sp_ptp_port_dir_stats*, align 8
  %6 = alloca %struct.mlxsw_sp_port*, align 8
  %7 = alloca i32, align 4
  store %struct.mlxsw_sp_ptp_state* %0, %struct.mlxsw_sp_ptp_state** %3, align 8
  store %struct.mlxsw_sp1_ptp_unmatched* %1, %struct.mlxsw_sp1_ptp_unmatched** %4, align 8
  %8 = call i32 (...) @local_bh_disable()
  %9 = load %struct.mlxsw_sp_ptp_state*, %struct.mlxsw_sp_ptp_state** %3, align 8
  %10 = getelementptr inbounds %struct.mlxsw_sp_ptp_state, %struct.mlxsw_sp_ptp_state* %9, i32 0, i32 1
  %11 = call i32 @spin_lock(i32* %10)
  %12 = load %struct.mlxsw_sp_ptp_state*, %struct.mlxsw_sp_ptp_state** %3, align 8
  %13 = getelementptr inbounds %struct.mlxsw_sp_ptp_state, %struct.mlxsw_sp_ptp_state* %12, i32 0, i32 2
  %14 = load %struct.mlxsw_sp1_ptp_unmatched*, %struct.mlxsw_sp1_ptp_unmatched** %4, align 8
  %15 = getelementptr inbounds %struct.mlxsw_sp1_ptp_unmatched, %struct.mlxsw_sp1_ptp_unmatched* %14, i32 0, i32 2
  %16 = load i32, i32* @mlxsw_sp1_ptp_unmatched_ht_params, align 4
  %17 = call i32 @rhltable_remove(i32* %13, i32* %15, i32 %16)
  store i32 %17, i32* %7, align 4
  %18 = load %struct.mlxsw_sp_ptp_state*, %struct.mlxsw_sp_ptp_state** %3, align 8
  %19 = getelementptr inbounds %struct.mlxsw_sp_ptp_state, %struct.mlxsw_sp_ptp_state* %18, i32 0, i32 1
  %20 = call i32 @spin_unlock(i32* %19)
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  br label %77

24:                                               ; preds = %2
  %25 = load %struct.mlxsw_sp_ptp_state*, %struct.mlxsw_sp_ptp_state** %3, align 8
  %26 = getelementptr inbounds %struct.mlxsw_sp_ptp_state, %struct.mlxsw_sp_ptp_state* %25, i32 0, i32 0
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load %struct.mlxsw_sp_port**, %struct.mlxsw_sp_port*** %28, align 8
  %30 = load %struct.mlxsw_sp1_ptp_unmatched*, %struct.mlxsw_sp1_ptp_unmatched** %4, align 8
  %31 = getelementptr inbounds %struct.mlxsw_sp1_ptp_unmatched, %struct.mlxsw_sp1_ptp_unmatched* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %29, i64 %33
  %35 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %34, align 8
  store %struct.mlxsw_sp_port* %35, %struct.mlxsw_sp_port** %6, align 8
  %36 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %6, align 8
  %37 = icmp ne %struct.mlxsw_sp_port* %36, null
  br i1 %37, label %38, label %71

38:                                               ; preds = %24
  %39 = load %struct.mlxsw_sp1_ptp_unmatched*, %struct.mlxsw_sp1_ptp_unmatched** %4, align 8
  %40 = getelementptr inbounds %struct.mlxsw_sp1_ptp_unmatched, %struct.mlxsw_sp1_ptp_unmatched* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %38
  %45 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %6, align 8
  %46 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 1
  br label %54

49:                                               ; preds = %38
  %50 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %6, align 8
  %51 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  br label %54

54:                                               ; preds = %49, %44
  %55 = phi %struct.mlxsw_sp_ptp_port_dir_stats* [ %48, %44 ], [ %53, %49 ]
  store %struct.mlxsw_sp_ptp_port_dir_stats* %55, %struct.mlxsw_sp_ptp_port_dir_stats** %5, align 8
  %56 = load %struct.mlxsw_sp1_ptp_unmatched*, %struct.mlxsw_sp1_ptp_unmatched** %4, align 8
  %57 = getelementptr inbounds %struct.mlxsw_sp1_ptp_unmatched, %struct.mlxsw_sp1_ptp_unmatched* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %54
  %61 = load %struct.mlxsw_sp_ptp_port_dir_stats*, %struct.mlxsw_sp_ptp_port_dir_stats** %5, align 8
  %62 = getelementptr inbounds %struct.mlxsw_sp_ptp_port_dir_stats, %struct.mlxsw_sp_ptp_port_dir_stats* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %62, align 4
  br label %70

65:                                               ; preds = %54
  %66 = load %struct.mlxsw_sp_ptp_port_dir_stats*, %struct.mlxsw_sp_ptp_port_dir_stats** %5, align 8
  %67 = getelementptr inbounds %struct.mlxsw_sp_ptp_port_dir_stats, %struct.mlxsw_sp_ptp_port_dir_stats* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %67, align 4
  br label %70

70:                                               ; preds = %65, %60
  br label %71

71:                                               ; preds = %70, %24
  %72 = load %struct.mlxsw_sp_ptp_state*, %struct.mlxsw_sp_ptp_state** %3, align 8
  %73 = getelementptr inbounds %struct.mlxsw_sp_ptp_state, %struct.mlxsw_sp_ptp_state* %72, i32 0, i32 0
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %73, align 8
  %75 = load %struct.mlxsw_sp1_ptp_unmatched*, %struct.mlxsw_sp1_ptp_unmatched** %4, align 8
  %76 = call i32 @mlxsw_sp1_ptp_unmatched_finish(%struct.TYPE_8__* %74, %struct.mlxsw_sp1_ptp_unmatched* %75)
  br label %77

77:                                               ; preds = %71, %23
  %78 = call i32 (...) @local_bh_enable()
  ret void
}

declare dso_local i32 @local_bh_disable(...) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @rhltable_remove(i32*, i32*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @mlxsw_sp1_ptp_unmatched_finish(%struct.TYPE_8__*, %struct.mlxsw_sp1_ptp_unmatched*) #1

declare dso_local i32 @local_bh_enable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
