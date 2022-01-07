; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_rep.c_mlx5e_rep_update_sw_counters.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_rep.c_mlx5e_rep_update_sw_counters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.mlx5e_sw_stats }
%struct.mlx5e_sw_stats = type { i32, i32, i32, i32, i32 }
%struct.rtnl_link_stats64 = type { i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5e_priv*)* @mlx5e_rep_update_sw_counters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5e_rep_update_sw_counters(%struct.mlx5e_priv* %0) #0 {
  %2 = alloca %struct.mlx5e_priv*, align 8
  %3 = alloca %struct.mlx5e_sw_stats*, align 8
  %4 = alloca %struct.rtnl_link_stats64, align 4
  store %struct.mlx5e_priv* %0, %struct.mlx5e_priv** %2, align 8
  %5 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %6 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  store %struct.mlx5e_sw_stats* %7, %struct.mlx5e_sw_stats** %3, align 8
  %8 = bitcast %struct.rtnl_link_stats64* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %8, i8 0, i64 20, i1 false)
  %9 = load %struct.mlx5e_sw_stats*, %struct.mlx5e_sw_stats** %3, align 8
  %10 = call i32 @memset(%struct.mlx5e_sw_stats* %9, i32 0, i32 20)
  %11 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %12 = call i32 @mlx5e_fold_sw_stats64(%struct.mlx5e_priv* %11, %struct.rtnl_link_stats64* %4)
  %13 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %4, i32 0, i32 4
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.mlx5e_sw_stats*, %struct.mlx5e_sw_stats** %3, align 8
  %16 = getelementptr inbounds %struct.mlx5e_sw_stats, %struct.mlx5e_sw_stats* %15, i32 0, i32 4
  store i32 %14, i32* %16, align 4
  %17 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %4, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.mlx5e_sw_stats*, %struct.mlx5e_sw_stats** %3, align 8
  %20 = getelementptr inbounds %struct.mlx5e_sw_stats, %struct.mlx5e_sw_stats* %19, i32 0, i32 3
  store i32 %18, i32* %20, align 4
  %21 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %4, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.mlx5e_sw_stats*, %struct.mlx5e_sw_stats** %3, align 8
  %24 = getelementptr inbounds %struct.mlx5e_sw_stats, %struct.mlx5e_sw_stats* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 4
  %25 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %4, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.mlx5e_sw_stats*, %struct.mlx5e_sw_stats** %3, align 8
  %28 = getelementptr inbounds %struct.mlx5e_sw_stats, %struct.mlx5e_sw_stats* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %4, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.mlx5e_sw_stats*, %struct.mlx5e_sw_stats** %3, align 8
  %32 = getelementptr inbounds %struct.mlx5e_sw_stats, %struct.mlx5e_sw_stats* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @memset(%struct.mlx5e_sw_stats*, i32, i32) #2

declare dso_local i32 @mlx5e_fold_sw_stats64(%struct.mlx5e_priv*, %struct.rtnl_link_stats64*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
