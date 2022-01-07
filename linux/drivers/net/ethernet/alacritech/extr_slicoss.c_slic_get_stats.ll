; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/alacritech/extr_slicoss.c_slic_get_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/alacritech/extr_slicoss.c_slic_get_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.rtnl_link_stats64 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.slic_device = type { %struct.slic_stats }
%struct.slic_stats = type { i32 }

@rx_packets = common dso_local global i32 0, align 4
@tx_packets = common dso_local global i32 0, align 4
@rx_bytes = common dso_local global i32 0, align 4
@tx_bytes = common dso_local global i32 0, align 4
@rx_errors = common dso_local global i32 0, align 4
@rx_buff_miss = common dso_local global i32 0, align 4
@tx_dropped = common dso_local global i32 0, align 4
@rx_mcasts = common dso_local global i32 0, align 4
@rx_buffoflow = common dso_local global i32 0, align 4
@rx_crc = common dso_local global i32 0, align 4
@rx_oflow802 = common dso_local global i32 0, align 4
@tx_carrier = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.rtnl_link_stats64*)* @slic_get_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @slic_get_stats(%struct.net_device* %0, %struct.rtnl_link_stats64* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.rtnl_link_stats64*, align 8
  %5 = alloca %struct.slic_device*, align 8
  %6 = alloca %struct.slic_stats*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.rtnl_link_stats64* %1, %struct.rtnl_link_stats64** %4, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.slic_device* @netdev_priv(%struct.net_device* %7)
  store %struct.slic_device* %8, %struct.slic_device** %5, align 8
  %9 = load %struct.slic_device*, %struct.slic_device** %5, align 8
  %10 = getelementptr inbounds %struct.slic_device, %struct.slic_device* %9, i32 0, i32 0
  store %struct.slic_stats* %10, %struct.slic_stats** %6, align 8
  %11 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %12 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %11, i32 0, i32 11
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.slic_stats*, %struct.slic_stats** %6, align 8
  %15 = load i32, i32* @rx_packets, align 4
  %16 = call i32 @SLIC_GET_STATS_COUNTER(i32 %13, %struct.slic_stats* %14, i32 %15)
  %17 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %18 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %17, i32 0, i32 10
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.slic_stats*, %struct.slic_stats** %6, align 8
  %21 = load i32, i32* @tx_packets, align 4
  %22 = call i32 @SLIC_GET_STATS_COUNTER(i32 %19, %struct.slic_stats* %20, i32 %21)
  %23 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %24 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %23, i32 0, i32 9
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.slic_stats*, %struct.slic_stats** %6, align 8
  %27 = load i32, i32* @rx_bytes, align 4
  %28 = call i32 @SLIC_GET_STATS_COUNTER(i32 %25, %struct.slic_stats* %26, i32 %27)
  %29 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %30 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %29, i32 0, i32 8
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.slic_stats*, %struct.slic_stats** %6, align 8
  %33 = load i32, i32* @tx_bytes, align 4
  %34 = call i32 @SLIC_GET_STATS_COUNTER(i32 %31, %struct.slic_stats* %32, i32 %33)
  %35 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %36 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %35, i32 0, i32 7
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.slic_stats*, %struct.slic_stats** %6, align 8
  %39 = load i32, i32* @rx_errors, align 4
  %40 = call i32 @SLIC_GET_STATS_COUNTER(i32 %37, %struct.slic_stats* %38, i32 %39)
  %41 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %42 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %41, i32 0, i32 6
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.slic_stats*, %struct.slic_stats** %6, align 8
  %45 = load i32, i32* @rx_buff_miss, align 4
  %46 = call i32 @SLIC_GET_STATS_COUNTER(i32 %43, %struct.slic_stats* %44, i32 %45)
  %47 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %48 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.slic_stats*, %struct.slic_stats** %6, align 8
  %51 = load i32, i32* @tx_dropped, align 4
  %52 = call i32 @SLIC_GET_STATS_COUNTER(i32 %49, %struct.slic_stats* %50, i32 %51)
  %53 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %54 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.slic_stats*, %struct.slic_stats** %6, align 8
  %57 = load i32, i32* @rx_mcasts, align 4
  %58 = call i32 @SLIC_GET_STATS_COUNTER(i32 %55, %struct.slic_stats* %56, i32 %57)
  %59 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %60 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.slic_stats*, %struct.slic_stats** %6, align 8
  %63 = load i32, i32* @rx_buffoflow, align 4
  %64 = call i32 @SLIC_GET_STATS_COUNTER(i32 %61, %struct.slic_stats* %62, i32 %63)
  %65 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %66 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.slic_stats*, %struct.slic_stats** %6, align 8
  %69 = load i32, i32* @rx_crc, align 4
  %70 = call i32 @SLIC_GET_STATS_COUNTER(i32 %67, %struct.slic_stats* %68, i32 %69)
  %71 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %72 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.slic_stats*, %struct.slic_stats** %6, align 8
  %75 = load i32, i32* @rx_oflow802, align 4
  %76 = call i32 @SLIC_GET_STATS_COUNTER(i32 %73, %struct.slic_stats* %74, i32 %75)
  %77 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %78 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.slic_stats*, %struct.slic_stats** %6, align 8
  %81 = load i32, i32* @tx_carrier, align 4
  %82 = call i32 @SLIC_GET_STATS_COUNTER(i32 %79, %struct.slic_stats* %80, i32 %81)
  ret void
}

declare dso_local %struct.slic_device* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @SLIC_GET_STATS_COUNTER(i32, %struct.slic_stats*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
