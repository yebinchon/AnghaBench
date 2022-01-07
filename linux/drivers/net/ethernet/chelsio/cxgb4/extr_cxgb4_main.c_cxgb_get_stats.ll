; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_main.c_cxgb_get_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_main.c_cxgb_get_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.rtnl_link_stats64 = type { i64, i64, i64, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32 }
%struct.port_stats = type { i64, i64, i64, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32 }
%struct.port_info = type { i32, i32, %struct.adapter* }
%struct.adapter = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.rtnl_link_stats64*)* @cxgb_get_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cxgb_get_stats(%struct.net_device* %0, %struct.rtnl_link_stats64* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.rtnl_link_stats64*, align 8
  %5 = alloca %struct.port_stats, align 8
  %6 = alloca %struct.port_info*, align 8
  %7 = alloca %struct.adapter*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.rtnl_link_stats64* %1, %struct.rtnl_link_stats64** %4, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.port_info* @netdev_priv(%struct.net_device* %8)
  store %struct.port_info* %9, %struct.port_info** %6, align 8
  %10 = load %struct.port_info*, %struct.port_info** %6, align 8
  %11 = getelementptr inbounds %struct.port_info, %struct.port_info* %10, i32 0, i32 2
  %12 = load %struct.adapter*, %struct.adapter** %11, align 8
  store %struct.adapter* %12, %struct.adapter** %7, align 8
  %13 = load %struct.adapter*, %struct.adapter** %7, align 8
  %14 = getelementptr inbounds %struct.adapter, %struct.adapter* %13, i32 0, i32 0
  %15 = call i32 @spin_lock(i32* %14)
  %16 = load %struct.net_device*, %struct.net_device** %3, align 8
  %17 = call i32 @netif_device_present(%struct.net_device* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %2
  %20 = load %struct.adapter*, %struct.adapter** %7, align 8
  %21 = getelementptr inbounds %struct.adapter, %struct.adapter* %20, i32 0, i32 0
  %22 = call i32 @spin_unlock(i32* %21)
  br label %133

23:                                               ; preds = %2
  %24 = load %struct.adapter*, %struct.adapter** %7, align 8
  %25 = load %struct.port_info*, %struct.port_info** %6, align 8
  %26 = getelementptr inbounds %struct.port_info, %struct.port_info* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.port_info*, %struct.port_info** %6, align 8
  %29 = getelementptr inbounds %struct.port_info, %struct.port_info* %28, i32 0, i32 0
  %30 = call i32 @t4_get_port_stats_offset(%struct.adapter* %24, i32 %27, %struct.port_stats* %5, i32* %29)
  %31 = load %struct.adapter*, %struct.adapter** %7, align 8
  %32 = getelementptr inbounds %struct.adapter, %struct.adapter* %31, i32 0, i32 0
  %33 = call i32 @spin_unlock(i32* %32)
  %34 = getelementptr inbounds %struct.port_stats, %struct.port_stats* %5, i32 0, i32 19
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %37 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %36, i32 0, i32 18
  store i32 %35, i32* %37, align 8
  %38 = getelementptr inbounds %struct.port_stats, %struct.port_stats* %5, i32 0, i32 18
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %41 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %40, i32 0, i32 17
  store i32 %39, i32* %41, align 4
  %42 = getelementptr inbounds %struct.port_stats, %struct.port_stats* %5, i32 0, i32 17
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %45 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %44, i32 0, i32 16
  store i32 %43, i32* %45, align 8
  %46 = getelementptr inbounds %struct.port_stats, %struct.port_stats* %5, i32 0, i32 16
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %49 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %48, i32 0, i32 15
  store i32 %47, i32* %49, align 4
  %50 = getelementptr inbounds %struct.port_stats, %struct.port_stats* %5, i32 0, i32 15
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %53 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %52, i32 0, i32 14
  store i32 %51, i32* %53, align 8
  %54 = getelementptr inbounds %struct.port_stats, %struct.port_stats* %5, i32 0, i32 14
  %55 = load i64, i64* %54, align 8
  %56 = getelementptr inbounds %struct.port_stats, %struct.port_stats* %5, i32 0, i32 13
  %57 = load i64, i64* %56, align 8
  %58 = add nsw i64 %55, %57
  %59 = getelementptr inbounds %struct.port_stats, %struct.port_stats* %5, i32 0, i32 12
  %60 = load i64, i64* %59, align 8
  %61 = add nsw i64 %58, %60
  %62 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %63 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %62, i32 0, i32 1
  store i64 %61, i64* %63, align 8
  %64 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %65 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %64, i32 0, i32 13
  store i64 0, i64* %65, align 8
  %66 = getelementptr inbounds %struct.port_stats, %struct.port_stats* %5, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %69 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %68, i32 0, i32 12
  store i64 %67, i64* %69, align 8
  %70 = getelementptr inbounds %struct.port_stats, %struct.port_stats* %5, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %73 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %72, i32 0, i32 11
  store i64 %71, i64* %73, align 8
  %74 = getelementptr inbounds %struct.port_stats, %struct.port_stats* %5, i32 0, i32 11
  %75 = load i64, i64* %74, align 8
  %76 = getelementptr inbounds %struct.port_stats, %struct.port_stats* %5, i32 0, i32 10
  %77 = load i64, i64* %76, align 8
  %78 = add nsw i64 %75, %77
  %79 = getelementptr inbounds %struct.port_stats, %struct.port_stats* %5, i32 0, i32 9
  %80 = load i64, i64* %79, align 8
  %81 = add nsw i64 %78, %80
  %82 = getelementptr inbounds %struct.port_stats, %struct.port_stats* %5, i32 0, i32 8
  %83 = load i64, i64* %82, align 8
  %84 = add nsw i64 %81, %83
  %85 = getelementptr inbounds %struct.port_stats, %struct.port_stats* %5, i32 0, i32 7
  %86 = load i64, i64* %85, align 8
  %87 = add nsw i64 %84, %86
  %88 = getelementptr inbounds %struct.port_stats, %struct.port_stats* %5, i32 0, i32 6
  %89 = load i64, i64* %88, align 8
  %90 = add nsw i64 %87, %89
  %91 = getelementptr inbounds %struct.port_stats, %struct.port_stats* %5, i32 0, i32 5
  %92 = load i64, i64* %91, align 8
  %93 = add nsw i64 %90, %92
  %94 = getelementptr inbounds %struct.port_stats, %struct.port_stats* %5, i32 0, i32 4
  %95 = load i64, i64* %94, align 8
  %96 = add nsw i64 %93, %95
  %97 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %98 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %97, i32 0, i32 10
  store i64 %96, i64* %98, align 8
  %99 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %100 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %99, i32 0, i32 9
  store i64 0, i64* %100, align 8
  %101 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %102 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %101, i32 0, i32 8
  store i64 0, i64* %102, align 8
  %103 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %104 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %103, i32 0, i32 7
  store i64 0, i64* %104, align 8
  %105 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %106 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %105, i32 0, i32 6
  store i64 0, i64* %106, align 8
  %107 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %108 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %107, i32 0, i32 5
  store i64 0, i64* %108, align 8
  %109 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %110 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %109, i32 0, i32 4
  store i64 0, i64* %110, align 8
  %111 = getelementptr inbounds %struct.port_stats, %struct.port_stats* %5, i32 0, i32 3
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %114 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %113, i32 0, i32 3
  store i32 %112, i32* %114, align 8
  %115 = getelementptr inbounds %struct.port_stats, %struct.port_stats* %5, i32 0, i32 2
  %116 = load i64, i64* %115, align 8
  %117 = getelementptr inbounds %struct.port_stats, %struct.port_stats* %5, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = add nsw i64 %116, %118
  %120 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %121 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = add nsw i64 %119, %122
  %124 = getelementptr inbounds %struct.port_stats, %struct.port_stats* %5, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = add nsw i64 %123, %125
  %127 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %128 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = add nsw i64 %126, %129
  %131 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %132 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %131, i32 0, i32 2
  store i64 %130, i64* %132, align 8
  br label %133

133:                                              ; preds = %23, %19
  ret void
}

declare dso_local %struct.port_info* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @netif_device_present(%struct.net_device*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @t4_get_port_stats_offset(%struct.adapter*, i32, %struct.port_stats*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
