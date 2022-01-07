; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_rep.c_mlx5e_uplink_rep_update_hw_counters.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_rep.c_mlx5e_uplink_rep_update_hw_counters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.rtnl_link_stats64, %struct.mlx5e_pport_stats }
%struct.rtnl_link_stats64 = type { i8*, i8*, i8*, i8* }
%struct.mlx5e_pport_stats = type { i32 }

@a_frames_received_ok = common dso_local global i32 0, align 4
@a_octets_received_ok = common dso_local global i32 0, align 4
@a_frames_transmitted_ok = common dso_local global i32 0, align 4
@a_octets_transmitted_ok = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5e_priv*)* @mlx5e_uplink_rep_update_hw_counters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5e_uplink_rep_update_hw_counters(%struct.mlx5e_priv* %0) #0 {
  %2 = alloca %struct.mlx5e_priv*, align 8
  %3 = alloca %struct.mlx5e_pport_stats*, align 8
  %4 = alloca %struct.rtnl_link_stats64*, align 8
  store %struct.mlx5e_priv* %0, %struct.mlx5e_priv** %2, align 8
  %5 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %6 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 1
  store %struct.mlx5e_pport_stats* %7, %struct.mlx5e_pport_stats** %3, align 8
  %8 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %9 = call i32 @mlx5e_grp_802_3_update_stats(%struct.mlx5e_priv* %8)
  %10 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %11 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store %struct.rtnl_link_stats64* %12, %struct.rtnl_link_stats64** %4, align 8
  %13 = load %struct.mlx5e_pport_stats*, %struct.mlx5e_pport_stats** %3, align 8
  %14 = load i32, i32* @a_frames_received_ok, align 4
  %15 = call i8* @PPORT_802_3_GET(%struct.mlx5e_pport_stats* %13, i32 %14)
  %16 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %17 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %16, i32 0, i32 3
  store i8* %15, i8** %17, align 8
  %18 = load %struct.mlx5e_pport_stats*, %struct.mlx5e_pport_stats** %3, align 8
  %19 = load i32, i32* @a_octets_received_ok, align 4
  %20 = call i8* @PPORT_802_3_GET(%struct.mlx5e_pport_stats* %18, i32 %19)
  %21 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %22 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %21, i32 0, i32 2
  store i8* %20, i8** %22, align 8
  %23 = load %struct.mlx5e_pport_stats*, %struct.mlx5e_pport_stats** %3, align 8
  %24 = load i32, i32* @a_frames_transmitted_ok, align 4
  %25 = call i8* @PPORT_802_3_GET(%struct.mlx5e_pport_stats* %23, i32 %24)
  %26 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %27 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %26, i32 0, i32 1
  store i8* %25, i8** %27, align 8
  %28 = load %struct.mlx5e_pport_stats*, %struct.mlx5e_pport_stats** %3, align 8
  %29 = load i32, i32* @a_octets_transmitted_ok, align 4
  %30 = call i8* @PPORT_802_3_GET(%struct.mlx5e_pport_stats* %28, i32 %29)
  %31 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %32 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %31, i32 0, i32 0
  store i8* %30, i8** %32, align 8
  ret void
}

declare dso_local i32 @mlx5e_grp_802_3_update_stats(%struct.mlx5e_priv*) #1

declare dso_local i8* @PPORT_802_3_GET(%struct.mlx5e_pport_stats*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
