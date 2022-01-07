; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/alacritech/extr_slicoss.c_slic_get_ethtool_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/alacritech/extr_slicoss.c_slic_get_ethtool_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_stats = type { i32 }
%struct.slic_device = type { %struct.slic_stats }
%struct.slic_stats = type { i32 }

@rx_packets = common dso_local global i32 0, align 4
@rx_bytes = common dso_local global i32 0, align 4
@rx_mcasts = common dso_local global i32 0, align 4
@rx_errors = common dso_local global i32 0, align 4
@rx_buff_miss = common dso_local global i32 0, align 4
@rx_tpcsum = common dso_local global i32 0, align 4
@rx_tpoflow = common dso_local global i32 0, align 4
@rx_tphlen = common dso_local global i32 0, align 4
@rx_ipcsum = common dso_local global i32 0, align 4
@rx_iplen = common dso_local global i32 0, align 4
@rx_iphlen = common dso_local global i32 0, align 4
@rx_early = common dso_local global i32 0, align 4
@rx_buffoflow = common dso_local global i32 0, align 4
@rx_lcode = common dso_local global i32 0, align 4
@rx_drbl = common dso_local global i32 0, align 4
@rx_crc = common dso_local global i32 0, align 4
@rx_oflow802 = common dso_local global i32 0, align 4
@rx_uflow802 = common dso_local global i32 0, align 4
@tx_packets = common dso_local global i32 0, align 4
@tx_bytes = common dso_local global i32 0, align 4
@tx_carrier = common dso_local global i32 0, align 4
@tx_dropped = common dso_local global i32 0, align 4
@irq_errs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_stats*, i32*)* @slic_get_ethtool_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @slic_get_ethtool_stats(%struct.net_device* %0, %struct.ethtool_stats* %1, i32* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_stats*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.slic_device*, align 8
  %8 = alloca %struct.slic_stats*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_stats* %1, %struct.ethtool_stats** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.slic_device* @netdev_priv(%struct.net_device* %9)
  store %struct.slic_device* %10, %struct.slic_device** %7, align 8
  %11 = load %struct.slic_device*, %struct.slic_device** %7, align 8
  %12 = getelementptr inbounds %struct.slic_device, %struct.slic_device* %11, i32 0, i32 0
  store %struct.slic_stats* %12, %struct.slic_stats** %8, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.slic_stats*, %struct.slic_stats** %8, align 8
  %17 = load i32, i32* @rx_packets, align 4
  %18 = call i32 @SLIC_GET_STATS_COUNTER(i32 %15, %struct.slic_stats* %16, i32 %17)
  %19 = load i32*, i32** %6, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.slic_stats*, %struct.slic_stats** %8, align 8
  %23 = load i32, i32* @rx_bytes, align 4
  %24 = call i32 @SLIC_GET_STATS_COUNTER(i32 %21, %struct.slic_stats* %22, i32 %23)
  %25 = load i32*, i32** %6, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.slic_stats*, %struct.slic_stats** %8, align 8
  %29 = load i32, i32* @rx_mcasts, align 4
  %30 = call i32 @SLIC_GET_STATS_COUNTER(i32 %27, %struct.slic_stats* %28, i32 %29)
  %31 = load i32*, i32** %6, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 3
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.slic_stats*, %struct.slic_stats** %8, align 8
  %35 = load i32, i32* @rx_errors, align 4
  %36 = call i32 @SLIC_GET_STATS_COUNTER(i32 %33, %struct.slic_stats* %34, i32 %35)
  %37 = load i32*, i32** %6, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 4
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.slic_stats*, %struct.slic_stats** %8, align 8
  %41 = load i32, i32* @rx_buff_miss, align 4
  %42 = call i32 @SLIC_GET_STATS_COUNTER(i32 %39, %struct.slic_stats* %40, i32 %41)
  %43 = load i32*, i32** %6, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 5
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.slic_stats*, %struct.slic_stats** %8, align 8
  %47 = load i32, i32* @rx_tpcsum, align 4
  %48 = call i32 @SLIC_GET_STATS_COUNTER(i32 %45, %struct.slic_stats* %46, i32 %47)
  %49 = load i32*, i32** %6, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 6
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.slic_stats*, %struct.slic_stats** %8, align 8
  %53 = load i32, i32* @rx_tpoflow, align 4
  %54 = call i32 @SLIC_GET_STATS_COUNTER(i32 %51, %struct.slic_stats* %52, i32 %53)
  %55 = load i32*, i32** %6, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 7
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.slic_stats*, %struct.slic_stats** %8, align 8
  %59 = load i32, i32* @rx_tphlen, align 4
  %60 = call i32 @SLIC_GET_STATS_COUNTER(i32 %57, %struct.slic_stats* %58, i32 %59)
  %61 = load i32*, i32** %6, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 8
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.slic_stats*, %struct.slic_stats** %8, align 8
  %65 = load i32, i32* @rx_ipcsum, align 4
  %66 = call i32 @SLIC_GET_STATS_COUNTER(i32 %63, %struct.slic_stats* %64, i32 %65)
  %67 = load i32*, i32** %6, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 9
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.slic_stats*, %struct.slic_stats** %8, align 8
  %71 = load i32, i32* @rx_iplen, align 4
  %72 = call i32 @SLIC_GET_STATS_COUNTER(i32 %69, %struct.slic_stats* %70, i32 %71)
  %73 = load i32*, i32** %6, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 10
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.slic_stats*, %struct.slic_stats** %8, align 8
  %77 = load i32, i32* @rx_iphlen, align 4
  %78 = call i32 @SLIC_GET_STATS_COUNTER(i32 %75, %struct.slic_stats* %76, i32 %77)
  %79 = load i32*, i32** %6, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 11
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.slic_stats*, %struct.slic_stats** %8, align 8
  %83 = load i32, i32* @rx_early, align 4
  %84 = call i32 @SLIC_GET_STATS_COUNTER(i32 %81, %struct.slic_stats* %82, i32 %83)
  %85 = load i32*, i32** %6, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 12
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.slic_stats*, %struct.slic_stats** %8, align 8
  %89 = load i32, i32* @rx_buffoflow, align 4
  %90 = call i32 @SLIC_GET_STATS_COUNTER(i32 %87, %struct.slic_stats* %88, i32 %89)
  %91 = load i32*, i32** %6, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 13
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.slic_stats*, %struct.slic_stats** %8, align 8
  %95 = load i32, i32* @rx_lcode, align 4
  %96 = call i32 @SLIC_GET_STATS_COUNTER(i32 %93, %struct.slic_stats* %94, i32 %95)
  %97 = load i32*, i32** %6, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 14
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.slic_stats*, %struct.slic_stats** %8, align 8
  %101 = load i32, i32* @rx_drbl, align 4
  %102 = call i32 @SLIC_GET_STATS_COUNTER(i32 %99, %struct.slic_stats* %100, i32 %101)
  %103 = load i32*, i32** %6, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 15
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.slic_stats*, %struct.slic_stats** %8, align 8
  %107 = load i32, i32* @rx_crc, align 4
  %108 = call i32 @SLIC_GET_STATS_COUNTER(i32 %105, %struct.slic_stats* %106, i32 %107)
  %109 = load i32*, i32** %6, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 16
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.slic_stats*, %struct.slic_stats** %8, align 8
  %113 = load i32, i32* @rx_oflow802, align 4
  %114 = call i32 @SLIC_GET_STATS_COUNTER(i32 %111, %struct.slic_stats* %112, i32 %113)
  %115 = load i32*, i32** %6, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 17
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.slic_stats*, %struct.slic_stats** %8, align 8
  %119 = load i32, i32* @rx_uflow802, align 4
  %120 = call i32 @SLIC_GET_STATS_COUNTER(i32 %117, %struct.slic_stats* %118, i32 %119)
  %121 = load i32*, i32** %6, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 18
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.slic_stats*, %struct.slic_stats** %8, align 8
  %125 = load i32, i32* @tx_packets, align 4
  %126 = call i32 @SLIC_GET_STATS_COUNTER(i32 %123, %struct.slic_stats* %124, i32 %125)
  %127 = load i32*, i32** %6, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 19
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.slic_stats*, %struct.slic_stats** %8, align 8
  %131 = load i32, i32* @tx_bytes, align 4
  %132 = call i32 @SLIC_GET_STATS_COUNTER(i32 %129, %struct.slic_stats* %130, i32 %131)
  %133 = load i32*, i32** %6, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 20
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.slic_stats*, %struct.slic_stats** %8, align 8
  %137 = load i32, i32* @tx_carrier, align 4
  %138 = call i32 @SLIC_GET_STATS_COUNTER(i32 %135, %struct.slic_stats* %136, i32 %137)
  %139 = load i32*, i32** %6, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 21
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.slic_stats*, %struct.slic_stats** %8, align 8
  %143 = load i32, i32* @tx_dropped, align 4
  %144 = call i32 @SLIC_GET_STATS_COUNTER(i32 %141, %struct.slic_stats* %142, i32 %143)
  %145 = load i32*, i32** %6, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 22
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.slic_stats*, %struct.slic_stats** %8, align 8
  %149 = load i32, i32* @irq_errs, align 4
  %150 = call i32 @SLIC_GET_STATS_COUNTER(i32 %147, %struct.slic_stats* %148, i32 %149)
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
