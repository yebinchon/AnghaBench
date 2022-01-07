; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ksz884x.c_netdev_query_statistics.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ksz884x.c_netdev_query_statistics.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device_stats = type { i64, i64, i64, i64, i64, i64, i32, i32 }
%struct.net_device = type { %struct.net_device_stats }
%struct.dev_priv = type { %struct.TYPE_2__*, %struct.ksz_port }
%struct.TYPE_2__ = type { %struct.ksz_hw }
%struct.ksz_hw = type { %struct.ksz_port_mib* }
%struct.ksz_port_mib = type { i64* }
%struct.ksz_port = type { i32, i32, i32* }

@OID_COUNTER_RCV_ERROR = common dso_local global i64 0, align 8
@OID_COUNTER_XMIT_ERROR = common dso_local global i64 0, align 8
@MIB_COUNTER_RX_MULTICAST = common dso_local global i64 0, align 8
@MIB_COUNTER_TX_TOTAL_COLLISION = common dso_local global i64 0, align 8
@MIB_COUNTER_RX_UNDERSIZE = common dso_local global i64 0, align 8
@MIB_COUNTER_RX_FRAGMENT = common dso_local global i64 0, align 8
@MIB_COUNTER_RX_OVERSIZE = common dso_local global i64 0, align 8
@MIB_COUNTER_RX_JABBER = common dso_local global i64 0, align 8
@MIB_COUNTER_RX_CRC_ERR = common dso_local global i64 0, align 8
@MIB_COUNTER_RX_ALIGNMENT_ERR = common dso_local global i64 0, align 8
@MIB_COUNTER_RX_SYMBOL_ERR = common dso_local global i64 0, align 8
@MIB_COUNTER_TX_LATE_COLLISION = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.net_device_stats* (%struct.net_device*)* @netdev_query_statistics to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.net_device_stats* @netdev_query_statistics(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.dev_priv*, align 8
  %4 = alloca %struct.ksz_port*, align 8
  %5 = alloca %struct.ksz_hw*, align 8
  %6 = alloca %struct.ksz_port_mib*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = call %struct.dev_priv* @netdev_priv(%struct.net_device* %9)
  store %struct.dev_priv* %10, %struct.dev_priv** %3, align 8
  %11 = load %struct.dev_priv*, %struct.dev_priv** %3, align 8
  %12 = getelementptr inbounds %struct.dev_priv, %struct.dev_priv* %11, i32 0, i32 1
  store %struct.ksz_port* %12, %struct.ksz_port** %4, align 8
  %13 = load %struct.dev_priv*, %struct.dev_priv** %3, align 8
  %14 = getelementptr inbounds %struct.dev_priv, %struct.dev_priv* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store %struct.ksz_hw* %16, %struct.ksz_hw** %5, align 8
  %17 = load %struct.ksz_port*, %struct.ksz_port** %4, align 8
  %18 = getelementptr inbounds %struct.ksz_port, %struct.ksz_port* %17, i32 0, i32 2
  %19 = load i32*, i32** %18, align 8
  %20 = load i64, i64* @OID_COUNTER_RCV_ERROR, align 8
  %21 = getelementptr inbounds i32, i32* %19, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.net_device*, %struct.net_device** %2, align 8
  %24 = getelementptr inbounds %struct.net_device, %struct.net_device* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %24, i32 0, i32 7
  store i32 %22, i32* %25, align 4
  %26 = load %struct.ksz_port*, %struct.ksz_port** %4, align 8
  %27 = getelementptr inbounds %struct.ksz_port, %struct.ksz_port* %26, i32 0, i32 2
  %28 = load i32*, i32** %27, align 8
  %29 = load i64, i64* @OID_COUNTER_XMIT_ERROR, align 8
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.net_device*, %struct.net_device** %2, align 8
  %33 = getelementptr inbounds %struct.net_device, %struct.net_device* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %33, i32 0, i32 6
  store i32 %31, i32* %34, align 8
  %35 = load %struct.net_device*, %struct.net_device** %2, align 8
  %36 = getelementptr inbounds %struct.net_device, %struct.net_device* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %36, i32 0, i32 5
  store i64 0, i64* %37, align 8
  %38 = load %struct.net_device*, %struct.net_device** %2, align 8
  %39 = getelementptr inbounds %struct.net_device, %struct.net_device* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %39, i32 0, i32 4
  store i64 0, i64* %40, align 8
  %41 = load %struct.net_device*, %struct.net_device** %2, align 8
  %42 = getelementptr inbounds %struct.net_device, %struct.net_device* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %42, i32 0, i32 3
  store i64 0, i64* %43, align 8
  %44 = load %struct.net_device*, %struct.net_device** %2, align 8
  %45 = getelementptr inbounds %struct.net_device, %struct.net_device* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %45, i32 0, i32 2
  store i64 0, i64* %46, align 8
  %47 = load %struct.net_device*, %struct.net_device** %2, align 8
  %48 = getelementptr inbounds %struct.net_device, %struct.net_device* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %48, i32 0, i32 1
  store i64 0, i64* %49, align 8
  %50 = load %struct.net_device*, %struct.net_device** %2, align 8
  %51 = getelementptr inbounds %struct.net_device, %struct.net_device* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %51, i32 0, i32 0
  store i64 0, i64* %52, align 8
  store i32 0, i32* %7, align 4
  %53 = load %struct.ksz_port*, %struct.ksz_port** %4, align 8
  %54 = getelementptr inbounds %struct.ksz_port, %struct.ksz_port* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  store i32 %55, i32* %8, align 4
  br label %56

56:                                               ; preds = %163, %1
  %57 = load i32, i32* %7, align 4
  %58 = load %struct.ksz_port*, %struct.ksz_port** %4, align 8
  %59 = getelementptr inbounds %struct.ksz_port, %struct.ksz_port* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = icmp slt i32 %57, %60
  br i1 %61, label %62, label %168

62:                                               ; preds = %56
  %63 = load %struct.ksz_hw*, %struct.ksz_hw** %5, align 8
  %64 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %63, i32 0, i32 0
  %65 = load %struct.ksz_port_mib*, %struct.ksz_port_mib** %64, align 8
  %66 = load i32, i32* %8, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.ksz_port_mib, %struct.ksz_port_mib* %65, i64 %67
  store %struct.ksz_port_mib* %68, %struct.ksz_port_mib** %6, align 8
  %69 = load %struct.ksz_port_mib*, %struct.ksz_port_mib** %6, align 8
  %70 = getelementptr inbounds %struct.ksz_port_mib, %struct.ksz_port_mib* %69, i32 0, i32 0
  %71 = load i64*, i64** %70, align 8
  %72 = load i64, i64* @MIB_COUNTER_RX_MULTICAST, align 8
  %73 = getelementptr inbounds i64, i64* %71, i64 %72
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.net_device*, %struct.net_device** %2, align 8
  %76 = getelementptr inbounds %struct.net_device, %struct.net_device* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %76, i32 0, i32 5
  %78 = load i64, i64* %77, align 8
  %79 = add i64 %78, %74
  store i64 %79, i64* %77, align 8
  %80 = load %struct.ksz_port_mib*, %struct.ksz_port_mib** %6, align 8
  %81 = getelementptr inbounds %struct.ksz_port_mib, %struct.ksz_port_mib* %80, i32 0, i32 0
  %82 = load i64*, i64** %81, align 8
  %83 = load i64, i64* @MIB_COUNTER_TX_TOTAL_COLLISION, align 8
  %84 = getelementptr inbounds i64, i64* %82, i64 %83
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.net_device*, %struct.net_device** %2, align 8
  %87 = getelementptr inbounds %struct.net_device, %struct.net_device* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %87, i32 0, i32 4
  %89 = load i64, i64* %88, align 8
  %90 = add i64 %89, %85
  store i64 %90, i64* %88, align 8
  %91 = load %struct.ksz_port_mib*, %struct.ksz_port_mib** %6, align 8
  %92 = getelementptr inbounds %struct.ksz_port_mib, %struct.ksz_port_mib* %91, i32 0, i32 0
  %93 = load i64*, i64** %92, align 8
  %94 = load i64, i64* @MIB_COUNTER_RX_UNDERSIZE, align 8
  %95 = getelementptr inbounds i64, i64* %93, i64 %94
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.ksz_port_mib*, %struct.ksz_port_mib** %6, align 8
  %98 = getelementptr inbounds %struct.ksz_port_mib, %struct.ksz_port_mib* %97, i32 0, i32 0
  %99 = load i64*, i64** %98, align 8
  %100 = load i64, i64* @MIB_COUNTER_RX_FRAGMENT, align 8
  %101 = getelementptr inbounds i64, i64* %99, i64 %100
  %102 = load i64, i64* %101, align 8
  %103 = add nsw i64 %96, %102
  %104 = load %struct.ksz_port_mib*, %struct.ksz_port_mib** %6, align 8
  %105 = getelementptr inbounds %struct.ksz_port_mib, %struct.ksz_port_mib* %104, i32 0, i32 0
  %106 = load i64*, i64** %105, align 8
  %107 = load i64, i64* @MIB_COUNTER_RX_OVERSIZE, align 8
  %108 = getelementptr inbounds i64, i64* %106, i64 %107
  %109 = load i64, i64* %108, align 8
  %110 = add nsw i64 %103, %109
  %111 = load %struct.ksz_port_mib*, %struct.ksz_port_mib** %6, align 8
  %112 = getelementptr inbounds %struct.ksz_port_mib, %struct.ksz_port_mib* %111, i32 0, i32 0
  %113 = load i64*, i64** %112, align 8
  %114 = load i64, i64* @MIB_COUNTER_RX_JABBER, align 8
  %115 = getelementptr inbounds i64, i64* %113, i64 %114
  %116 = load i64, i64* %115, align 8
  %117 = add nsw i64 %110, %116
  %118 = load %struct.net_device*, %struct.net_device** %2, align 8
  %119 = getelementptr inbounds %struct.net_device, %struct.net_device* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %119, i32 0, i32 3
  %121 = load i64, i64* %120, align 8
  %122 = add i64 %121, %117
  store i64 %122, i64* %120, align 8
  %123 = load %struct.ksz_port_mib*, %struct.ksz_port_mib** %6, align 8
  %124 = getelementptr inbounds %struct.ksz_port_mib, %struct.ksz_port_mib* %123, i32 0, i32 0
  %125 = load i64*, i64** %124, align 8
  %126 = load i64, i64* @MIB_COUNTER_RX_CRC_ERR, align 8
  %127 = getelementptr inbounds i64, i64* %125, i64 %126
  %128 = load i64, i64* %127, align 8
  %129 = load %struct.net_device*, %struct.net_device** %2, align 8
  %130 = getelementptr inbounds %struct.net_device, %struct.net_device* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %130, i32 0, i32 2
  %132 = load i64, i64* %131, align 8
  %133 = add i64 %132, %128
  store i64 %133, i64* %131, align 8
  %134 = load %struct.ksz_port_mib*, %struct.ksz_port_mib** %6, align 8
  %135 = getelementptr inbounds %struct.ksz_port_mib, %struct.ksz_port_mib* %134, i32 0, i32 0
  %136 = load i64*, i64** %135, align 8
  %137 = load i64, i64* @MIB_COUNTER_RX_ALIGNMENT_ERR, align 8
  %138 = getelementptr inbounds i64, i64* %136, i64 %137
  %139 = load i64, i64* %138, align 8
  %140 = load %struct.ksz_port_mib*, %struct.ksz_port_mib** %6, align 8
  %141 = getelementptr inbounds %struct.ksz_port_mib, %struct.ksz_port_mib* %140, i32 0, i32 0
  %142 = load i64*, i64** %141, align 8
  %143 = load i64, i64* @MIB_COUNTER_RX_SYMBOL_ERR, align 8
  %144 = getelementptr inbounds i64, i64* %142, i64 %143
  %145 = load i64, i64* %144, align 8
  %146 = add nsw i64 %139, %145
  %147 = load %struct.net_device*, %struct.net_device** %2, align 8
  %148 = getelementptr inbounds %struct.net_device, %struct.net_device* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = add i64 %150, %146
  store i64 %151, i64* %149, align 8
  %152 = load %struct.ksz_port_mib*, %struct.ksz_port_mib** %6, align 8
  %153 = getelementptr inbounds %struct.ksz_port_mib, %struct.ksz_port_mib* %152, i32 0, i32 0
  %154 = load i64*, i64** %153, align 8
  %155 = load i64, i64* @MIB_COUNTER_TX_LATE_COLLISION, align 8
  %156 = getelementptr inbounds i64, i64* %154, i64 %155
  %157 = load i64, i64* %156, align 8
  %158 = load %struct.net_device*, %struct.net_device** %2, align 8
  %159 = getelementptr inbounds %struct.net_device, %struct.net_device* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = add i64 %161, %157
  store i64 %162, i64* %160, align 8
  br label %163

163:                                              ; preds = %62
  %164 = load i32, i32* %7, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %7, align 4
  %166 = load i32, i32* %8, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %8, align 4
  br label %56

168:                                              ; preds = %56
  %169 = load %struct.net_device*, %struct.net_device** %2, align 8
  %170 = getelementptr inbounds %struct.net_device, %struct.net_device* %169, i32 0, i32 0
  ret %struct.net_device_stats* %170
}

declare dso_local %struct.dev_priv* @netdev_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
