; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_cxgb3_main.c_cxgb_get_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_cxgb3_main.c_cxgb_get_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device_stats = type { i64, i64, i32, i64, i64, i32, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32 }
%struct.net_device = type { %struct.net_device_stats }
%struct.port_info = type { i32, %struct.adapter* }
%struct.adapter = type { i32 }
%struct.mac_stats = type { i32, i32, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.net_device_stats* (%struct.net_device*)* @cxgb_get_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.net_device_stats* @cxgb_get_stats(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.port_info*, align 8
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca %struct.net_device_stats*, align 8
  %6 = alloca %struct.mac_stats*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = call %struct.port_info* @netdev_priv(%struct.net_device* %7)
  store %struct.port_info* %8, %struct.port_info** %3, align 8
  %9 = load %struct.port_info*, %struct.port_info** %3, align 8
  %10 = getelementptr inbounds %struct.port_info, %struct.port_info* %9, i32 0, i32 1
  %11 = load %struct.adapter*, %struct.adapter** %10, align 8
  store %struct.adapter* %11, %struct.adapter** %4, align 8
  %12 = load %struct.net_device*, %struct.net_device** %2, align 8
  %13 = getelementptr inbounds %struct.net_device, %struct.net_device* %12, i32 0, i32 0
  store %struct.net_device_stats* %13, %struct.net_device_stats** %5, align 8
  %14 = load %struct.adapter*, %struct.adapter** %4, align 8
  %15 = getelementptr inbounds %struct.adapter, %struct.adapter* %14, i32 0, i32 0
  %16 = call i32 @spin_lock(i32* %15)
  %17 = load %struct.port_info*, %struct.port_info** %3, align 8
  %18 = getelementptr inbounds %struct.port_info, %struct.port_info* %17, i32 0, i32 0
  %19 = call %struct.mac_stats* @t3_mac_update_stats(i32* %18)
  store %struct.mac_stats* %19, %struct.mac_stats** %6, align 8
  %20 = load %struct.adapter*, %struct.adapter** %4, align 8
  %21 = getelementptr inbounds %struct.adapter, %struct.adapter* %20, i32 0, i32 0
  %22 = call i32 @spin_unlock(i32* %21)
  %23 = load %struct.mac_stats*, %struct.mac_stats** %6, align 8
  %24 = getelementptr inbounds %struct.mac_stats, %struct.mac_stats* %23, i32 0, i32 12
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %27 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %26, i32 0, i32 17
  store i32 %25, i32* %27, align 4
  %28 = load %struct.mac_stats*, %struct.mac_stats** %6, align 8
  %29 = getelementptr inbounds %struct.mac_stats, %struct.mac_stats* %28, i32 0, i32 11
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %32 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %31, i32 0, i32 16
  store i32 %30, i32* %32, align 8
  %33 = load %struct.mac_stats*, %struct.mac_stats** %6, align 8
  %34 = getelementptr inbounds %struct.mac_stats, %struct.mac_stats* %33, i32 0, i32 10
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %37 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %36, i32 0, i32 15
  store i32 %35, i32* %37, align 4
  %38 = load %struct.mac_stats*, %struct.mac_stats** %6, align 8
  %39 = getelementptr inbounds %struct.mac_stats, %struct.mac_stats* %38, i32 0, i32 9
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %42 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %41, i32 0, i32 14
  store i32 %40, i32* %42, align 8
  %43 = load %struct.mac_stats*, %struct.mac_stats** %6, align 8
  %44 = getelementptr inbounds %struct.mac_stats, %struct.mac_stats* %43, i32 0, i32 8
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %47 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %46, i32 0, i32 13
  store i32 %45, i32* %47, align 4
  %48 = load %struct.mac_stats*, %struct.mac_stats** %6, align 8
  %49 = getelementptr inbounds %struct.mac_stats, %struct.mac_stats* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %52 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %51, i32 0, i32 12
  store i32 %50, i32* %52, align 8
  %53 = load %struct.mac_stats*, %struct.mac_stats** %6, align 8
  %54 = getelementptr inbounds %struct.mac_stats, %struct.mac_stats* %53, i32 0, i32 3
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.mac_stats*, %struct.mac_stats** %6, align 8
  %57 = getelementptr inbounds %struct.mac_stats, %struct.mac_stats* %56, i32 0, i32 4
  %58 = load i64, i64* %57, align 8
  %59 = add nsw i64 %55, %58
  %60 = load %struct.mac_stats*, %struct.mac_stats** %6, align 8
  %61 = getelementptr inbounds %struct.mac_stats, %struct.mac_stats* %60, i32 0, i32 5
  %62 = load i64, i64* %61, align 8
  %63 = add nsw i64 %59, %62
  %64 = load %struct.mac_stats*, %struct.mac_stats** %6, align 8
  %65 = getelementptr inbounds %struct.mac_stats, %struct.mac_stats* %64, i32 0, i32 6
  %66 = load i64, i64* %65, align 8
  %67 = add nsw i64 %63, %66
  %68 = load %struct.mac_stats*, %struct.mac_stats** %6, align 8
  %69 = getelementptr inbounds %struct.mac_stats, %struct.mac_stats* %68, i32 0, i32 7
  %70 = load i64, i64* %69, align 8
  %71 = add nsw i64 %67, %70
  %72 = load %struct.mac_stats*, %struct.mac_stats** %6, align 8
  %73 = getelementptr inbounds %struct.mac_stats, %struct.mac_stats* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = add nsw i64 %71, %74
  %76 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %77 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %76, i32 0, i32 11
  store i64 %75, i64* %77, align 8
  %78 = load %struct.mac_stats*, %struct.mac_stats** %6, align 8
  %79 = getelementptr inbounds %struct.mac_stats, %struct.mac_stats* %78, i32 0, i32 6
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.mac_stats*, %struct.mac_stats** %6, align 8
  %82 = getelementptr inbounds %struct.mac_stats, %struct.mac_stats* %81, i32 0, i32 5
  %83 = load i64, i64* %82, align 8
  %84 = add nsw i64 %80, %83
  %85 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %86 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %85, i32 0, i32 10
  store i64 %84, i64* %86, align 8
  %87 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %88 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %87, i32 0, i32 9
  store i64 0, i64* %88, align 8
  %89 = load %struct.mac_stats*, %struct.mac_stats** %6, align 8
  %90 = getelementptr inbounds %struct.mac_stats, %struct.mac_stats* %89, i32 0, i32 4
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %93 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %92, i32 0, i32 8
  store i64 %91, i64* %93, align 8
  %94 = load %struct.mac_stats*, %struct.mac_stats** %6, align 8
  %95 = getelementptr inbounds %struct.mac_stats, %struct.mac_stats* %94, i32 0, i32 3
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %98 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %97, i32 0, i32 7
  store i64 %96, i64* %98, align 8
  %99 = load %struct.mac_stats*, %struct.mac_stats** %6, align 8
  %100 = getelementptr inbounds %struct.mac_stats, %struct.mac_stats* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %103 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %102, i32 0, i32 6
  store i64 %101, i64* %103, align 8
  %104 = load %struct.mac_stats*, %struct.mac_stats** %6, align 8
  %105 = getelementptr inbounds %struct.mac_stats, %struct.mac_stats* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %108 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %107, i32 0, i32 5
  store i32 %106, i32* %108, align 8
  %109 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %110 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %109, i32 0, i32 4
  store i64 0, i64* %110, align 8
  %111 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %112 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %111, i32 0, i32 3
  store i64 0, i64* %112, align 8
  %113 = load %struct.mac_stats*, %struct.mac_stats** %6, align 8
  %114 = getelementptr inbounds %struct.mac_stats, %struct.mac_stats* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %117 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %116, i32 0, i32 2
  store i32 %115, i32* %117, align 8
  %118 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %119 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %118, i32 0, i32 1
  store i64 0, i64* %119, align 8
  %120 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %121 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %120, i32 0, i32 0
  store i64 0, i64* %121, align 8
  %122 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  ret %struct.net_device_stats* %122
}

declare dso_local %struct.port_info* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.mac_stats* @t3_mac_update_stats(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
