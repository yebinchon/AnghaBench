; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_niu_get_ethtool_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_niu_get_ethtool_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_stats = type { i32 }
%struct.niu = type { i32, i32, i32, %struct.tx_ring_info*, %struct.rx_ring_info*, %struct.TYPE_2__ }
%struct.tx_ring_info = type { i32, i32, i32, i32 }
%struct.rx_ring_info = type { i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@NIU_FLAGS_XMAC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_stats*, i32*)* @niu_get_ethtool_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @niu_get_ethtool_stats(%struct.net_device* %0, %struct.ethtool_stats* %1, i32* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_stats*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.niu*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.rx_ring_info*, align 8
  %10 = alloca %struct.tx_ring_info*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_stats* %1, %struct.ethtool_stats** %5, align 8
  store i32* %2, i32** %6, align 8
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = call %struct.niu* @netdev_priv(%struct.net_device* %11)
  store %struct.niu* %12, %struct.niu** %7, align 8
  %13 = load %struct.niu*, %struct.niu** %7, align 8
  %14 = call i32 @niu_sync_mac_stats(%struct.niu* %13)
  %15 = load %struct.niu*, %struct.niu** %7, align 8
  %16 = getelementptr inbounds %struct.niu, %struct.niu* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @NIU_FLAGS_XMAC, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %3
  %22 = load i32*, i32** %6, align 8
  %23 = load %struct.niu*, %struct.niu** %7, align 8
  %24 = getelementptr inbounds %struct.niu, %struct.niu* %23, i32 0, i32 5
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = call i32 @memcpy(i32* %22, i32* %25, i32 4)
  %27 = load i32*, i32** %6, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 1
  store i32* %28, i32** %6, align 8
  br label %37

29:                                               ; preds = %3
  %30 = load i32*, i32** %6, align 8
  %31 = load %struct.niu*, %struct.niu** %7, align 8
  %32 = getelementptr inbounds %struct.niu, %struct.niu* %31, i32 0, i32 5
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = call i32 @memcpy(i32* %30, i32* %33, i32 4)
  %35 = load i32*, i32** %6, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 1
  store i32* %36, i32** %6, align 8
  br label %37

37:                                               ; preds = %29, %21
  store i32 0, i32* %8, align 4
  br label %38

38:                                               ; preds = %81, %37
  %39 = load i32, i32* %8, align 4
  %40 = load %struct.niu*, %struct.niu** %7, align 8
  %41 = getelementptr inbounds %struct.niu, %struct.niu* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp slt i32 %39, %42
  br i1 %43, label %44, label %84

44:                                               ; preds = %38
  %45 = load %struct.niu*, %struct.niu** %7, align 8
  %46 = getelementptr inbounds %struct.niu, %struct.niu* %45, i32 0, i32 4
  %47 = load %struct.rx_ring_info*, %struct.rx_ring_info** %46, align 8
  %48 = load i32, i32* %8, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %47, i64 %49
  store %struct.rx_ring_info* %50, %struct.rx_ring_info** %9, align 8
  %51 = load %struct.niu*, %struct.niu** %7, align 8
  %52 = load %struct.rx_ring_info*, %struct.rx_ring_info** %9, align 8
  %53 = call i32 @niu_sync_rx_discard_stats(%struct.niu* %51, %struct.rx_ring_info* %52, i32 0)
  %54 = load %struct.rx_ring_info*, %struct.rx_ring_info** %9, align 8
  %55 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 4
  %57 = load i32*, i32** %6, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  store i32 %56, i32* %58, align 4
  %59 = load %struct.rx_ring_info*, %struct.rx_ring_info** %9, align 8
  %60 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = load i32*, i32** %6, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 1
  store i32 %61, i32* %63, align 4
  %64 = load %struct.rx_ring_info*, %struct.rx_ring_info** %9, align 8
  %65 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = load i32*, i32** %6, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 2
  store i32 %66, i32* %68, align 4
  %69 = load %struct.rx_ring_info*, %struct.rx_ring_info** %9, align 8
  %70 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32*, i32** %6, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 3
  store i32 %71, i32* %73, align 4
  %74 = load %struct.rx_ring_info*, %struct.rx_ring_info** %9, align 8
  %75 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32*, i32** %6, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 4
  store i32 %76, i32* %78, align 4
  %79 = load i32*, i32** %6, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 5
  store i32* %80, i32** %6, align 8
  br label %81

81:                                               ; preds = %44
  %82 = load i32, i32* %8, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %8, align 4
  br label %38

84:                                               ; preds = %38
  store i32 0, i32* %8, align 4
  br label %85

85:                                               ; preds = %120, %84
  %86 = load i32, i32* %8, align 4
  %87 = load %struct.niu*, %struct.niu** %7, align 8
  %88 = getelementptr inbounds %struct.niu, %struct.niu* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = icmp slt i32 %86, %89
  br i1 %90, label %91, label %123

91:                                               ; preds = %85
  %92 = load %struct.niu*, %struct.niu** %7, align 8
  %93 = getelementptr inbounds %struct.niu, %struct.niu* %92, i32 0, i32 3
  %94 = load %struct.tx_ring_info*, %struct.tx_ring_info** %93, align 8
  %95 = load i32, i32* %8, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.tx_ring_info, %struct.tx_ring_info* %94, i64 %96
  store %struct.tx_ring_info* %97, %struct.tx_ring_info** %10, align 8
  %98 = load %struct.tx_ring_info*, %struct.tx_ring_info** %10, align 8
  %99 = getelementptr inbounds %struct.tx_ring_info, %struct.tx_ring_info* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 4
  %101 = load i32*, i32** %6, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 0
  store i32 %100, i32* %102, align 4
  %103 = load %struct.tx_ring_info*, %struct.tx_ring_info** %10, align 8
  %104 = getelementptr inbounds %struct.tx_ring_info, %struct.tx_ring_info* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = load i32*, i32** %6, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 1
  store i32 %105, i32* %107, align 4
  %108 = load %struct.tx_ring_info*, %struct.tx_ring_info** %10, align 8
  %109 = getelementptr inbounds %struct.tx_ring_info, %struct.tx_ring_info* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load i32*, i32** %6, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 2
  store i32 %110, i32* %112, align 4
  %113 = load %struct.tx_ring_info*, %struct.tx_ring_info** %10, align 8
  %114 = getelementptr inbounds %struct.tx_ring_info, %struct.tx_ring_info* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load i32*, i32** %6, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 3
  store i32 %115, i32* %117, align 4
  %118 = load i32*, i32** %6, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 4
  store i32* %119, i32** %6, align 8
  br label %120

120:                                              ; preds = %91
  %121 = load i32, i32* %8, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %8, align 4
  br label %85

123:                                              ; preds = %85
  ret void
}

declare dso_local %struct.niu* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @niu_sync_mac_stats(%struct.niu*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @niu_sync_rx_discard_stats(%struct.niu*, %struct.rx_ring_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
