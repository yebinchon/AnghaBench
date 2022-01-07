; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cortina/extr_gemini.c_gmac_get_stats64.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cortina/extr_gemini.c_gmac_get_stats64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.rtnl_link_stats64 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.gemini_ethernet_port = type { %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.rtnl_link_stats64*)* @gmac_get_stats64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gmac_get_stats64(%struct.net_device* %0, %struct.rtnl_link_stats64* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.rtnl_link_stats64*, align 8
  %5 = alloca %struct.gemini_ethernet_port*, align 8
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.rtnl_link_stats64* %1, %struct.rtnl_link_stats64** %4, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.gemini_ethernet_port* @netdev_priv(%struct.net_device* %7)
  store %struct.gemini_ethernet_port* %8, %struct.gemini_ethernet_port** %5, align 8
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = call i32 @gmac_update_hw_stats(%struct.net_device* %9)
  br label %11

11:                                               ; preds = %63, %2
  %12 = load %struct.gemini_ethernet_port*, %struct.gemini_ethernet_port** %5, align 8
  %13 = getelementptr inbounds %struct.gemini_ethernet_port, %struct.gemini_ethernet_port* %12, i32 0, i32 3
  %14 = call i32 @u64_stats_fetch_begin(i32* %13)
  store i32 %14, i32* %6, align 4
  %15 = load %struct.gemini_ethernet_port*, %struct.gemini_ethernet_port** %5, align 8
  %16 = getelementptr inbounds %struct.gemini_ethernet_port, %struct.gemini_ethernet_port* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 14
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %20 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %19, i32 0, i32 14
  store i32 %18, i32* %20, align 4
  %21 = load %struct.gemini_ethernet_port*, %struct.gemini_ethernet_port** %5, align 8
  %22 = getelementptr inbounds %struct.gemini_ethernet_port, %struct.gemini_ethernet_port* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 13
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %26 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %25, i32 0, i32 13
  store i32 %24, i32* %26, align 4
  %27 = load %struct.gemini_ethernet_port*, %struct.gemini_ethernet_port** %5, align 8
  %28 = getelementptr inbounds %struct.gemini_ethernet_port, %struct.gemini_ethernet_port* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 12
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %32 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %31, i32 0, i32 12
  store i32 %30, i32* %32, align 4
  %33 = load %struct.gemini_ethernet_port*, %struct.gemini_ethernet_port** %5, align 8
  %34 = getelementptr inbounds %struct.gemini_ethernet_port, %struct.gemini_ethernet_port* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 11
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %38 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load %struct.gemini_ethernet_port*, %struct.gemini_ethernet_port** %5, align 8
  %40 = getelementptr inbounds %struct.gemini_ethernet_port, %struct.gemini_ethernet_port* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 10
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %44 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %43, i32 0, i32 11
  store i32 %42, i32* %44, align 4
  %45 = load %struct.gemini_ethernet_port*, %struct.gemini_ethernet_port** %5, align 8
  %46 = getelementptr inbounds %struct.gemini_ethernet_port, %struct.gemini_ethernet_port* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 9
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %50 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %49, i32 0, i32 10
  store i32 %48, i32* %50, align 4
  %51 = load %struct.gemini_ethernet_port*, %struct.gemini_ethernet_port** %5, align 8
  %52 = getelementptr inbounds %struct.gemini_ethernet_port, %struct.gemini_ethernet_port* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 8
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %56 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %55, i32 0, i32 9
  store i32 %54, i32* %56, align 4
  %57 = load %struct.gemini_ethernet_port*, %struct.gemini_ethernet_port** %5, align 8
  %58 = getelementptr inbounds %struct.gemini_ethernet_port, %struct.gemini_ethernet_port* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 7
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %62 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %61, i32 0, i32 8
  store i32 %60, i32* %62, align 4
  br label %63

63:                                               ; preds = %11
  %64 = load %struct.gemini_ethernet_port*, %struct.gemini_ethernet_port** %5, align 8
  %65 = getelementptr inbounds %struct.gemini_ethernet_port, %struct.gemini_ethernet_port* %64, i32 0, i32 3
  %66 = load i32, i32* %6, align 4
  %67 = call i64 @u64_stats_fetch_retry(i32* %65, i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %11, label %69

69:                                               ; preds = %63
  br label %70

70:                                               ; preds = %110, %69
  %71 = load %struct.gemini_ethernet_port*, %struct.gemini_ethernet_port** %5, align 8
  %72 = getelementptr inbounds %struct.gemini_ethernet_port, %struct.gemini_ethernet_port* %71, i32 0, i32 2
  %73 = call i32 @u64_stats_fetch_begin(i32* %72)
  store i32 %73, i32* %6, align 4
  %74 = load %struct.gemini_ethernet_port*, %struct.gemini_ethernet_port** %5, align 8
  %75 = getelementptr inbounds %struct.gemini_ethernet_port, %struct.gemini_ethernet_port* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 6
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %79 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %78, i32 0, i32 7
  store i32 %77, i32* %79, align 4
  %80 = load %struct.gemini_ethernet_port*, %struct.gemini_ethernet_port** %5, align 8
  %81 = getelementptr inbounds %struct.gemini_ethernet_port, %struct.gemini_ethernet_port* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 5
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %85 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %84, i32 0, i32 6
  store i32 %83, i32* %85, align 4
  %86 = load %struct.gemini_ethernet_port*, %struct.gemini_ethernet_port** %5, align 8
  %87 = getelementptr inbounds %struct.gemini_ethernet_port, %struct.gemini_ethernet_port* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %91 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %90, i32 0, i32 5
  store i32 %89, i32* %91, align 4
  %92 = load %struct.gemini_ethernet_port*, %struct.gemini_ethernet_port** %5, align 8
  %93 = getelementptr inbounds %struct.gemini_ethernet_port, %struct.gemini_ethernet_port* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %97 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %96, i32 0, i32 4
  store i32 %95, i32* %97, align 4
  %98 = load %struct.gemini_ethernet_port*, %struct.gemini_ethernet_port** %5, align 8
  %99 = getelementptr inbounds %struct.gemini_ethernet_port, %struct.gemini_ethernet_port* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %103 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %102, i32 0, i32 0
  store i32 %101, i32* %103, align 4
  %104 = load %struct.gemini_ethernet_port*, %struct.gemini_ethernet_port** %5, align 8
  %105 = getelementptr inbounds %struct.gemini_ethernet_port, %struct.gemini_ethernet_port* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %109 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %108, i32 0, i32 3
  store i32 %107, i32* %109, align 4
  br label %110

110:                                              ; preds = %70
  %111 = load %struct.gemini_ethernet_port*, %struct.gemini_ethernet_port** %5, align 8
  %112 = getelementptr inbounds %struct.gemini_ethernet_port, %struct.gemini_ethernet_port* %111, i32 0, i32 2
  %113 = load i32, i32* %6, align 4
  %114 = call i64 @u64_stats_fetch_retry(i32* %112, i32 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %70, label %116

116:                                              ; preds = %110
  br label %117

117:                                              ; preds = %127, %116
  %118 = load %struct.gemini_ethernet_port*, %struct.gemini_ethernet_port** %5, align 8
  %119 = getelementptr inbounds %struct.gemini_ethernet_port, %struct.gemini_ethernet_port* %118, i32 0, i32 1
  %120 = call i32 @u64_stats_fetch_begin(i32* %119)
  store i32 %120, i32* %6, align 4
  %121 = load %struct.gemini_ethernet_port*, %struct.gemini_ethernet_port** %5, align 8
  %122 = getelementptr inbounds %struct.gemini_ethernet_port, %struct.gemini_ethernet_port* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %126 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %125, i32 0, i32 2
  store i32 %124, i32* %126, align 4
  br label %127

127:                                              ; preds = %117
  %128 = load %struct.gemini_ethernet_port*, %struct.gemini_ethernet_port** %5, align 8
  %129 = getelementptr inbounds %struct.gemini_ethernet_port, %struct.gemini_ethernet_port* %128, i32 0, i32 1
  %130 = load i32, i32* %6, align 4
  %131 = call i64 @u64_stats_fetch_retry(i32* %129, i32 %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %117, label %133

133:                                              ; preds = %127
  %134 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %135 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %138 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = add nsw i32 %139, %136
  store i32 %140, i32* %138, align 4
  ret void
}

declare dso_local %struct.gemini_ethernet_port* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @gmac_update_hw_stats(%struct.net_device*) #1

declare dso_local i32 @u64_stats_fetch_begin(i32*) #1

declare dso_local i64 @u64_stats_fetch_retry(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
