; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mediatek/extr_mtk_eth_soc.c_mtk_get_stats64.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mediatek/extr_mtk_eth_soc.c_mtk_get_stats64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.rtnl_link_stats64 = type { i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32 }
%struct.mtk_mac = type { %struct.mtk_hw_stats* }
%struct.mtk_hw_stats = type { i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.rtnl_link_stats64*)* @mtk_get_stats64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtk_get_stats64(%struct.net_device* %0, %struct.rtnl_link_stats64* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.rtnl_link_stats64*, align 8
  %5 = alloca %struct.mtk_mac*, align 8
  %6 = alloca %struct.mtk_hw_stats*, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.rtnl_link_stats64* %1, %struct.rtnl_link_stats64** %4, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.mtk_mac* @netdev_priv(%struct.net_device* %8)
  store %struct.mtk_mac* %9, %struct.mtk_mac** %5, align 8
  %10 = load %struct.mtk_mac*, %struct.mtk_mac** %5, align 8
  %11 = getelementptr inbounds %struct.mtk_mac, %struct.mtk_mac* %10, i32 0, i32 0
  %12 = load %struct.mtk_hw_stats*, %struct.mtk_hw_stats** %11, align 8
  store %struct.mtk_hw_stats* %12, %struct.mtk_hw_stats** %6, align 8
  %13 = load %struct.net_device*, %struct.net_device** %3, align 8
  %14 = call i64 @netif_running(%struct.net_device* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %32

16:                                               ; preds = %2
  %17 = load %struct.net_device*, %struct.net_device** %3, align 8
  %18 = call i64 @netif_device_present(%struct.net_device* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %32

20:                                               ; preds = %16
  %21 = load %struct.mtk_hw_stats*, %struct.mtk_hw_stats** %6, align 8
  %22 = getelementptr inbounds %struct.mtk_hw_stats, %struct.mtk_hw_stats* %21, i32 0, i32 12
  %23 = call i64 @spin_trylock_bh(i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %20
  %26 = load %struct.mtk_mac*, %struct.mtk_mac** %5, align 8
  %27 = call i32 @mtk_stats_update_mac(%struct.mtk_mac* %26)
  %28 = load %struct.mtk_hw_stats*, %struct.mtk_hw_stats** %6, align 8
  %29 = getelementptr inbounds %struct.mtk_hw_stats, %struct.mtk_hw_stats* %28, i32 0, i32 12
  %30 = call i32 @spin_unlock_bh(i32* %29)
  br label %31

31:                                               ; preds = %25, %20
  br label %32

32:                                               ; preds = %31, %16, %2
  br label %33

33:                                               ; preds = %91, %32
  %34 = load %struct.mtk_hw_stats*, %struct.mtk_hw_stats** %6, align 8
  %35 = getelementptr inbounds %struct.mtk_hw_stats, %struct.mtk_hw_stats* %34, i32 0, i32 11
  %36 = call i32 @u64_stats_fetch_begin_irq(i32* %35)
  store i32 %36, i32* %7, align 4
  %37 = load %struct.mtk_hw_stats*, %struct.mtk_hw_stats** %6, align 8
  %38 = getelementptr inbounds %struct.mtk_hw_stats, %struct.mtk_hw_stats* %37, i32 0, i32 10
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %41 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %40, i32 0, i32 12
  store i32 %39, i32* %41, align 8
  %42 = load %struct.mtk_hw_stats*, %struct.mtk_hw_stats** %6, align 8
  %43 = getelementptr inbounds %struct.mtk_hw_stats, %struct.mtk_hw_stats* %42, i32 0, i32 9
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %46 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %45, i32 0, i32 11
  store i32 %44, i32* %46, align 4
  %47 = load %struct.mtk_hw_stats*, %struct.mtk_hw_stats** %6, align 8
  %48 = getelementptr inbounds %struct.mtk_hw_stats, %struct.mtk_hw_stats* %47, i32 0, i32 8
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %51 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %50, i32 0, i32 10
  store i32 %49, i32* %51, align 8
  %52 = load %struct.mtk_hw_stats*, %struct.mtk_hw_stats** %6, align 8
  %53 = getelementptr inbounds %struct.mtk_hw_stats, %struct.mtk_hw_stats* %52, i32 0, i32 7
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %56 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %55, i32 0, i32 9
  store i32 %54, i32* %56, align 4
  %57 = load %struct.mtk_hw_stats*, %struct.mtk_hw_stats** %6, align 8
  %58 = getelementptr inbounds %struct.mtk_hw_stats, %struct.mtk_hw_stats* %57, i32 0, i32 6
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %61 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %60, i32 0, i32 8
  store i32 %59, i32* %61, align 8
  %62 = load %struct.mtk_hw_stats*, %struct.mtk_hw_stats** %6, align 8
  %63 = getelementptr inbounds %struct.mtk_hw_stats, %struct.mtk_hw_stats* %62, i32 0, i32 5
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.mtk_hw_stats*, %struct.mtk_hw_stats** %6, align 8
  %66 = getelementptr inbounds %struct.mtk_hw_stats, %struct.mtk_hw_stats* %65, i32 0, i32 4
  %67 = load i64, i64* %66, align 8
  %68 = add nsw i64 %64, %67
  %69 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %70 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %69, i32 0, i32 7
  store i64 %68, i64* %70, align 8
  %71 = load %struct.mtk_hw_stats*, %struct.mtk_hw_stats** %6, align 8
  %72 = getelementptr inbounds %struct.mtk_hw_stats, %struct.mtk_hw_stats* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %75 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %74, i32 0, i32 6
  store i32 %73, i32* %75, align 8
  %76 = load %struct.mtk_hw_stats*, %struct.mtk_hw_stats** %6, align 8
  %77 = getelementptr inbounds %struct.mtk_hw_stats, %struct.mtk_hw_stats* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %80 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %79, i32 0, i32 5
  store i32 %78, i32* %80, align 4
  %81 = load %struct.mtk_hw_stats*, %struct.mtk_hw_stats** %6, align 8
  %82 = getelementptr inbounds %struct.mtk_hw_stats, %struct.mtk_hw_stats* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %85 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %84, i32 0, i32 4
  store i32 %83, i32* %85, align 8
  %86 = load %struct.mtk_hw_stats*, %struct.mtk_hw_stats** %6, align 8
  %87 = getelementptr inbounds %struct.mtk_hw_stats, %struct.mtk_hw_stats* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %90 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %89, i32 0, i32 3
  store i32 %88, i32* %90, align 4
  br label %91

91:                                               ; preds = %33
  %92 = load %struct.mtk_hw_stats*, %struct.mtk_hw_stats** %6, align 8
  %93 = getelementptr inbounds %struct.mtk_hw_stats, %struct.mtk_hw_stats* %92, i32 0, i32 11
  %94 = load i32, i32* %7, align 4
  %95 = call i64 @u64_stats_fetch_retry_irq(i32* %93, i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %33, label %97

97:                                               ; preds = %91
  %98 = load %struct.net_device*, %struct.net_device** %3, align 8
  %99 = getelementptr inbounds %struct.net_device, %struct.net_device* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %103 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %102, i32 0, i32 2
  store i32 %101, i32* %103, align 8
  %104 = load %struct.net_device*, %struct.net_device** %3, align 8
  %105 = getelementptr inbounds %struct.net_device, %struct.net_device* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %109 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %108, i32 0, i32 1
  store i32 %107, i32* %109, align 4
  %110 = load %struct.net_device*, %struct.net_device** %3, align 8
  %111 = getelementptr inbounds %struct.net_device, %struct.net_device* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %115 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %114, i32 0, i32 0
  store i32 %113, i32* %115, align 8
  ret void
}

declare dso_local %struct.mtk_mac* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i64 @netif_device_present(%struct.net_device*) #1

declare dso_local i64 @spin_trylock_bh(i32*) #1

declare dso_local i32 @mtk_stats_update_mac(%struct.mtk_mac*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @u64_stats_fetch_begin_irq(i32*) #1

declare dso_local i64 @u64_stats_fetch_retry_irq(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
