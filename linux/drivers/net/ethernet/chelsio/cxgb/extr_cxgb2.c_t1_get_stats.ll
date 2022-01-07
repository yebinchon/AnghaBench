; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb/extr_cxgb2.c_t1_get_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb/extr_cxgb2.c_t1_get_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i64, i64, i64, i32, i32, i64, i64 }
%struct.net_device = type { i64, %struct.net_device_stats, %struct.adapter* }
%struct.adapter = type { %struct.port_info* }
%struct.port_info = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.cmac_statistics* (%struct.TYPE_4__*, i32)* }
%struct.cmac_statistics = type { i64, i64, i64, i64, i64, i64, i64, i32, i64, i64, i64, i64, i64, i64, i32, i32, i64, i64, i64, i64, i64 }

@MAC_STATS_UPDATE_FULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.net_device_stats* (%struct.net_device*)* @t1_get_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.net_device_stats* @t1_get_stats(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca %struct.port_info*, align 8
  %5 = alloca %struct.net_device_stats*, align 8
  %6 = alloca %struct.cmac_statistics*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = getelementptr inbounds %struct.net_device, %struct.net_device* %7, i32 0, i32 2
  %9 = load %struct.adapter*, %struct.adapter** %8, align 8
  store %struct.adapter* %9, %struct.adapter** %3, align 8
  %10 = load %struct.adapter*, %struct.adapter** %3, align 8
  %11 = getelementptr inbounds %struct.adapter, %struct.adapter* %10, i32 0, i32 0
  %12 = load %struct.port_info*, %struct.port_info** %11, align 8
  %13 = load %struct.net_device*, %struct.net_device** %2, align 8
  %14 = getelementptr inbounds %struct.net_device, %struct.net_device* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds %struct.port_info, %struct.port_info* %12, i64 %15
  store %struct.port_info* %16, %struct.port_info** %4, align 8
  %17 = load %struct.net_device*, %struct.net_device** %2, align 8
  %18 = getelementptr inbounds %struct.net_device, %struct.net_device* %17, i32 0, i32 1
  store %struct.net_device_stats* %18, %struct.net_device_stats** %5, align 8
  %19 = load %struct.port_info*, %struct.port_info** %4, align 8
  %20 = getelementptr inbounds %struct.port_info, %struct.port_info* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load %struct.cmac_statistics* (%struct.TYPE_4__*, i32)*, %struct.cmac_statistics* (%struct.TYPE_4__*, i32)** %24, align 8
  %26 = load %struct.port_info*, %struct.port_info** %4, align 8
  %27 = getelementptr inbounds %struct.port_info, %struct.port_info* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = load i32, i32* @MAC_STATS_UPDATE_FULL, align 4
  %30 = call %struct.cmac_statistics* %25(%struct.TYPE_4__* %28, i32 %29)
  store %struct.cmac_statistics* %30, %struct.cmac_statistics** %6, align 8
  %31 = load %struct.cmac_statistics*, %struct.cmac_statistics** %6, align 8
  %32 = getelementptr inbounds %struct.cmac_statistics, %struct.cmac_statistics* %31, i32 0, i32 20
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.cmac_statistics*, %struct.cmac_statistics** %6, align 8
  %35 = getelementptr inbounds %struct.cmac_statistics, %struct.cmac_statistics* %34, i32 0, i32 19
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %33, %36
  %38 = load %struct.cmac_statistics*, %struct.cmac_statistics** %6, align 8
  %39 = getelementptr inbounds %struct.cmac_statistics, %struct.cmac_statistics* %38, i32 0, i32 18
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %37, %40
  %42 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %43 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %42, i32 0, i32 18
  store i64 %41, i64* %43, align 8
  %44 = load %struct.cmac_statistics*, %struct.cmac_statistics** %6, align 8
  %45 = getelementptr inbounds %struct.cmac_statistics, %struct.cmac_statistics* %44, i32 0, i32 17
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.cmac_statistics*, %struct.cmac_statistics** %6, align 8
  %48 = getelementptr inbounds %struct.cmac_statistics, %struct.cmac_statistics* %47, i32 0, i32 8
  %49 = load i64, i64* %48, align 8
  %50 = add nsw i64 %46, %49
  %51 = load %struct.cmac_statistics*, %struct.cmac_statistics** %6, align 8
  %52 = getelementptr inbounds %struct.cmac_statistics, %struct.cmac_statistics* %51, i32 0, i32 16
  %53 = load i64, i64* %52, align 8
  %54 = add nsw i64 %50, %53
  %55 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %56 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %55, i32 0, i32 17
  store i64 %54, i64* %56, align 8
  %57 = load %struct.cmac_statistics*, %struct.cmac_statistics** %6, align 8
  %58 = getelementptr inbounds %struct.cmac_statistics, %struct.cmac_statistics* %57, i32 0, i32 15
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %61 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %60, i32 0, i32 16
  store i32 %59, i32* %61, align 4
  %62 = load %struct.cmac_statistics*, %struct.cmac_statistics** %6, align 8
  %63 = getelementptr inbounds %struct.cmac_statistics, %struct.cmac_statistics* %62, i32 0, i32 14
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %66 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %65, i32 0, i32 15
  store i32 %64, i32* %66, align 8
  %67 = load %struct.cmac_statistics*, %struct.cmac_statistics** %6, align 8
  %68 = getelementptr inbounds %struct.cmac_statistics, %struct.cmac_statistics* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.cmac_statistics*, %struct.cmac_statistics** %6, align 8
  %71 = getelementptr inbounds %struct.cmac_statistics, %struct.cmac_statistics* %70, i32 0, i32 13
  %72 = load i64, i64* %71, align 8
  %73 = add nsw i64 %69, %72
  %74 = load %struct.cmac_statistics*, %struct.cmac_statistics** %6, align 8
  %75 = getelementptr inbounds %struct.cmac_statistics, %struct.cmac_statistics* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = add nsw i64 %73, %76
  %78 = load %struct.cmac_statistics*, %struct.cmac_statistics** %6, align 8
  %79 = getelementptr inbounds %struct.cmac_statistics, %struct.cmac_statistics* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = add nsw i64 %77, %80
  %82 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %83 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %82, i32 0, i32 14
  store i64 %81, i64* %83, align 8
  %84 = load %struct.cmac_statistics*, %struct.cmac_statistics** %6, align 8
  %85 = getelementptr inbounds %struct.cmac_statistics, %struct.cmac_statistics* %84, i32 0, i32 12
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.cmac_statistics*, %struct.cmac_statistics** %6, align 8
  %88 = getelementptr inbounds %struct.cmac_statistics, %struct.cmac_statistics* %87, i32 0, i32 5
  %89 = load i64, i64* %88, align 8
  %90 = add nsw i64 %86, %89
  %91 = load %struct.cmac_statistics*, %struct.cmac_statistics** %6, align 8
  %92 = getelementptr inbounds %struct.cmac_statistics, %struct.cmac_statistics* %91, i32 0, i32 4
  %93 = load i64, i64* %92, align 8
  %94 = add nsw i64 %90, %93
  %95 = load %struct.cmac_statistics*, %struct.cmac_statistics** %6, align 8
  %96 = getelementptr inbounds %struct.cmac_statistics, %struct.cmac_statistics* %95, i32 0, i32 3
  %97 = load i64, i64* %96, align 8
  %98 = add nsw i64 %94, %97
  %99 = load %struct.cmac_statistics*, %struct.cmac_statistics** %6, align 8
  %100 = getelementptr inbounds %struct.cmac_statistics, %struct.cmac_statistics* %99, i32 0, i32 11
  %101 = load i64, i64* %100, align 8
  %102 = add nsw i64 %98, %101
  %103 = load %struct.cmac_statistics*, %struct.cmac_statistics** %6, align 8
  %104 = getelementptr inbounds %struct.cmac_statistics, %struct.cmac_statistics* %103, i32 0, i32 6
  %105 = load i64, i64* %104, align 8
  %106 = add nsw i64 %102, %105
  %107 = load %struct.cmac_statistics*, %struct.cmac_statistics** %6, align 8
  %108 = getelementptr inbounds %struct.cmac_statistics, %struct.cmac_statistics* %107, i32 0, i32 10
  %109 = load i64, i64* %108, align 8
  %110 = add nsw i64 %106, %109
  %111 = load %struct.cmac_statistics*, %struct.cmac_statistics** %6, align 8
  %112 = getelementptr inbounds %struct.cmac_statistics, %struct.cmac_statistics* %111, i32 0, i32 9
  %113 = load i64, i64* %112, align 8
  %114 = add nsw i64 %110, %113
  %115 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %116 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %115, i32 0, i32 13
  store i64 %114, i64* %116, align 8
  %117 = load %struct.cmac_statistics*, %struct.cmac_statistics** %6, align 8
  %118 = getelementptr inbounds %struct.cmac_statistics, %struct.cmac_statistics* %117, i32 0, i32 8
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %121 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %120, i32 0, i32 12
  store i64 %119, i64* %121, align 8
  %122 = load %struct.cmac_statistics*, %struct.cmac_statistics** %6, align 8
  %123 = getelementptr inbounds %struct.cmac_statistics, %struct.cmac_statistics* %122, i32 0, i32 7
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %126 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %125, i32 0, i32 11
  store i32 %124, i32* %126, align 8
  %127 = load %struct.cmac_statistics*, %struct.cmac_statistics** %6, align 8
  %128 = getelementptr inbounds %struct.cmac_statistics, %struct.cmac_statistics* %127, i32 0, i32 6
  %129 = load i64, i64* %128, align 8
  %130 = load %struct.cmac_statistics*, %struct.cmac_statistics** %6, align 8
  %131 = getelementptr inbounds %struct.cmac_statistics, %struct.cmac_statistics* %130, i32 0, i32 5
  %132 = load i64, i64* %131, align 8
  %133 = add nsw i64 %129, %132
  %134 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %135 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %134, i32 0, i32 10
  store i64 %133, i64* %135, align 8
  %136 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %137 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %136, i32 0, i32 9
  store i64 0, i64* %137, align 8
  %138 = load %struct.cmac_statistics*, %struct.cmac_statistics** %6, align 8
  %139 = getelementptr inbounds %struct.cmac_statistics, %struct.cmac_statistics* %138, i32 0, i32 4
  %140 = load i64, i64* %139, align 8
  %141 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %142 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %141, i32 0, i32 8
  store i64 %140, i64* %142, align 8
  %143 = load %struct.cmac_statistics*, %struct.cmac_statistics** %6, align 8
  %144 = getelementptr inbounds %struct.cmac_statistics, %struct.cmac_statistics* %143, i32 0, i32 3
  %145 = load i64, i64* %144, align 8
  %146 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %147 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %146, i32 0, i32 7
  store i64 %145, i64* %147, align 8
  %148 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %149 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %148, i32 0, i32 6
  store i64 0, i64* %149, align 8
  %150 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %151 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %150, i32 0, i32 5
  store i64 0, i64* %151, align 8
  %152 = load %struct.cmac_statistics*, %struct.cmac_statistics** %6, align 8
  %153 = getelementptr inbounds %struct.cmac_statistics, %struct.cmac_statistics* %152, i32 0, i32 2
  %154 = load i64, i64* %153, align 8
  %155 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %156 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %155, i32 0, i32 4
  store i64 %154, i64* %156, align 8
  %157 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %158 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %157, i32 0, i32 3
  store i64 0, i64* %158, align 8
  %159 = load %struct.cmac_statistics*, %struct.cmac_statistics** %6, align 8
  %160 = getelementptr inbounds %struct.cmac_statistics, %struct.cmac_statistics* %159, i32 0, i32 1
  %161 = load i64, i64* %160, align 8
  %162 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %163 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %162, i32 0, i32 2
  store i64 %161, i64* %163, align 8
  %164 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %165 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %164, i32 0, i32 1
  store i64 0, i64* %165, align 8
  %166 = load %struct.cmac_statistics*, %struct.cmac_statistics** %6, align 8
  %167 = getelementptr inbounds %struct.cmac_statistics, %struct.cmac_statistics* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %170 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %169, i32 0, i32 0
  store i64 %168, i64* %170, align 8
  %171 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  ret %struct.net_device_stats* %171
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
