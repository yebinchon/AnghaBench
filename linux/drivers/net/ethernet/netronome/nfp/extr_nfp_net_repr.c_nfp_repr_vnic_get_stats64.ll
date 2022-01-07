; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_repr.c_nfp_repr_vnic_get_stats64.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_repr.c_nfp_repr_vnic_get_stats64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_port = type { i64 }
%struct.rtnl_link_stats64 = type { i8*, i8*, i8*, i8*, i8*, i8* }

@NFP_NET_CFG_STATS_RX_FRAMES = common dso_local global i64 0, align 8
@NFP_NET_CFG_STATS_RX_OCTETS = common dso_local global i64 0, align 8
@NFP_NET_CFG_STATS_RX_DISCARDS = common dso_local global i64 0, align 8
@NFP_NET_CFG_STATS_TX_FRAMES = common dso_local global i64 0, align 8
@NFP_NET_CFG_STATS_TX_OCTETS = common dso_local global i64 0, align 8
@NFP_NET_CFG_STATS_TX_DISCARDS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfp_port*, %struct.rtnl_link_stats64*)* @nfp_repr_vnic_get_stats64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfp_repr_vnic_get_stats64(%struct.nfp_port* %0, %struct.rtnl_link_stats64* %1) #0 {
  %3 = alloca %struct.nfp_port*, align 8
  %4 = alloca %struct.rtnl_link_stats64*, align 8
  store %struct.nfp_port* %0, %struct.nfp_port** %3, align 8
  store %struct.rtnl_link_stats64* %1, %struct.rtnl_link_stats64** %4, align 8
  %5 = load %struct.nfp_port*, %struct.nfp_port** %3, align 8
  %6 = getelementptr inbounds %struct.nfp_port, %struct.nfp_port* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @NFP_NET_CFG_STATS_RX_FRAMES, align 8
  %9 = add nsw i64 %7, %8
  %10 = call i8* @readq(i64 %9)
  %11 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %12 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %11, i32 0, i32 5
  store i8* %10, i8** %12, align 8
  %13 = load %struct.nfp_port*, %struct.nfp_port** %3, align 8
  %14 = getelementptr inbounds %struct.nfp_port, %struct.nfp_port* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @NFP_NET_CFG_STATS_RX_OCTETS, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i8* @readq(i64 %17)
  %19 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %20 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %19, i32 0, i32 4
  store i8* %18, i8** %20, align 8
  %21 = load %struct.nfp_port*, %struct.nfp_port** %3, align 8
  %22 = getelementptr inbounds %struct.nfp_port, %struct.nfp_port* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @NFP_NET_CFG_STATS_RX_DISCARDS, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i8* @readq(i64 %25)
  %27 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %28 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %27, i32 0, i32 3
  store i8* %26, i8** %28, align 8
  %29 = load %struct.nfp_port*, %struct.nfp_port** %3, align 8
  %30 = getelementptr inbounds %struct.nfp_port, %struct.nfp_port* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @NFP_NET_CFG_STATS_TX_FRAMES, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i8* @readq(i64 %33)
  %35 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %36 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %35, i32 0, i32 2
  store i8* %34, i8** %36, align 8
  %37 = load %struct.nfp_port*, %struct.nfp_port** %3, align 8
  %38 = getelementptr inbounds %struct.nfp_port, %struct.nfp_port* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @NFP_NET_CFG_STATS_TX_OCTETS, align 8
  %41 = add nsw i64 %39, %40
  %42 = call i8* @readq(i64 %41)
  %43 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %44 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %43, i32 0, i32 1
  store i8* %42, i8** %44, align 8
  %45 = load %struct.nfp_port*, %struct.nfp_port** %3, align 8
  %46 = getelementptr inbounds %struct.nfp_port, %struct.nfp_port* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @NFP_NET_CFG_STATS_TX_DISCARDS, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i8* @readq(i64 %49)
  %51 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %52 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %51, i32 0, i32 0
  store i8* %50, i8** %52, align 8
  ret void
}

declare dso_local i8* @readq(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
