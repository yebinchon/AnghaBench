; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_virtio_net.c_virtnet_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_virtio_net.c_virtnet_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.rtnl_link_stats64 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.virtnet_info = type { i32, %struct.send_queue*, %struct.receive_queue* }
%struct.send_queue = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64, i32 }
%struct.receive_queue = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i64, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.rtnl_link_stats64*)* @virtnet_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @virtnet_stats(%struct.net_device* %0, %struct.rtnl_link_stats64* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.rtnl_link_stats64*, align 8
  %5 = alloca %struct.virtnet_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.receive_queue*, align 8
  %14 = alloca %struct.send_queue*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.rtnl_link_stats64* %1, %struct.rtnl_link_stats64** %4, align 8
  %15 = load %struct.net_device*, %struct.net_device** %3, align 8
  %16 = call %struct.virtnet_info* @netdev_priv(%struct.net_device* %15)
  store %struct.virtnet_info* %16, %struct.virtnet_info** %5, align 8
  store i32 0, i32* %7, align 4
  br label %17

17:                                               ; preds = %117, %2
  %18 = load i32, i32* %7, align 4
  %19 = load %struct.virtnet_info*, %struct.virtnet_info** %5, align 8
  %20 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %120

23:                                               ; preds = %17
  %24 = load %struct.virtnet_info*, %struct.virtnet_info** %5, align 8
  %25 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %24, i32 0, i32 2
  %26 = load %struct.receive_queue*, %struct.receive_queue** %25, align 8
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.receive_queue, %struct.receive_queue* %26, i64 %28
  store %struct.receive_queue* %29, %struct.receive_queue** %13, align 8
  %30 = load %struct.virtnet_info*, %struct.virtnet_info** %5, align 8
  %31 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %30, i32 0, i32 1
  %32 = load %struct.send_queue*, %struct.send_queue** %31, align 8
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.send_queue, %struct.send_queue* %32, i64 %34
  store %struct.send_queue* %35, %struct.send_queue** %14, align 8
  br label %36

36:                                               ; preds = %49, %23
  %37 = load %struct.send_queue*, %struct.send_queue** %14, align 8
  %38 = getelementptr inbounds %struct.send_queue, %struct.send_queue* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 2
  %40 = call i32 @u64_stats_fetch_begin_irq(i32* %39)
  store i32 %40, i32* %6, align 4
  %41 = load %struct.send_queue*, %struct.send_queue** %14, align 8
  %42 = getelementptr inbounds %struct.send_queue, %struct.send_queue* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* %8, align 8
  %45 = load %struct.send_queue*, %struct.send_queue** %14, align 8
  %46 = getelementptr inbounds %struct.send_queue, %struct.send_queue* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  store i64 %48, i64* %9, align 8
  br label %49

49:                                               ; preds = %36
  %50 = load %struct.send_queue*, %struct.send_queue** %14, align 8
  %51 = getelementptr inbounds %struct.send_queue, %struct.send_queue* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 2
  %53 = load i32, i32* %6, align 4
  %54 = call i64 @u64_stats_fetch_retry_irq(i32* %52, i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %36, label %56

56:                                               ; preds = %49
  br label %57

57:                                               ; preds = %74, %56
  %58 = load %struct.receive_queue*, %struct.receive_queue** %13, align 8
  %59 = getelementptr inbounds %struct.receive_queue, %struct.receive_queue* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 3
  %61 = call i32 @u64_stats_fetch_begin_irq(i32* %60)
  store i32 %61, i32* %6, align 4
  %62 = load %struct.receive_queue*, %struct.receive_queue** %13, align 8
  %63 = getelementptr inbounds %struct.receive_queue, %struct.receive_queue* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  store i64 %65, i64* %10, align 8
  %66 = load %struct.receive_queue*, %struct.receive_queue** %13, align 8
  %67 = getelementptr inbounds %struct.receive_queue, %struct.receive_queue* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  store i64 %69, i64* %11, align 8
  %70 = load %struct.receive_queue*, %struct.receive_queue** %13, align 8
  %71 = getelementptr inbounds %struct.receive_queue, %struct.receive_queue* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  store i64 %73, i64* %12, align 8
  br label %74

74:                                               ; preds = %57
  %75 = load %struct.receive_queue*, %struct.receive_queue** %13, align 8
  %76 = getelementptr inbounds %struct.receive_queue, %struct.receive_queue* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 3
  %78 = load i32, i32* %6, align 4
  %79 = call i64 @u64_stats_fetch_retry_irq(i32* %77, i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %57, label %81

81:                                               ; preds = %74
  %82 = load i64, i64* %10, align 8
  %83 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %84 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %83, i32 0, i32 8
  %85 = load i32, i32* %84, align 4
  %86 = sext i32 %85 to i64
  %87 = add nsw i64 %86, %82
  %88 = trunc i64 %87 to i32
  store i32 %88, i32* %84, align 4
  %89 = load i64, i64* %8, align 8
  %90 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %91 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %90, i32 0, i32 7
  %92 = load i32, i32* %91, align 4
  %93 = sext i32 %92 to i64
  %94 = add nsw i64 %93, %89
  %95 = trunc i64 %94 to i32
  store i32 %95, i32* %91, align 4
  %96 = load i64, i64* %11, align 8
  %97 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %98 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %97, i32 0, i32 6
  %99 = load i32, i32* %98, align 4
  %100 = sext i32 %99 to i64
  %101 = add nsw i64 %100, %96
  %102 = trunc i64 %101 to i32
  store i32 %102, i32* %98, align 4
  %103 = load i64, i64* %9, align 8
  %104 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %105 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %104, i32 0, i32 5
  %106 = load i32, i32* %105, align 4
  %107 = sext i32 %106 to i64
  %108 = add nsw i64 %107, %103
  %109 = trunc i64 %108 to i32
  store i32 %109, i32* %105, align 4
  %110 = load i64, i64* %12, align 8
  %111 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %112 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %111, i32 0, i32 4
  %113 = load i32, i32* %112, align 4
  %114 = sext i32 %113 to i64
  %115 = add nsw i64 %114, %110
  %116 = trunc i64 %115 to i32
  store i32 %116, i32* %112, align 4
  br label %117

117:                                              ; preds = %81
  %118 = load i32, i32* %7, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %7, align 4
  br label %17

120:                                              ; preds = %17
  %121 = load %struct.net_device*, %struct.net_device** %3, align 8
  %122 = getelementptr inbounds %struct.net_device, %struct.net_device* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %126 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %125, i32 0, i32 3
  store i32 %124, i32* %126, align 4
  %127 = load %struct.net_device*, %struct.net_device** %3, align 8
  %128 = getelementptr inbounds %struct.net_device, %struct.net_device* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %132 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %131, i32 0, i32 2
  store i32 %130, i32* %132, align 4
  %133 = load %struct.net_device*, %struct.net_device** %3, align 8
  %134 = getelementptr inbounds %struct.net_device, %struct.net_device* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %138 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %137, i32 0, i32 1
  store i32 %136, i32* %138, align 4
  %139 = load %struct.net_device*, %struct.net_device** %3, align 8
  %140 = getelementptr inbounds %struct.net_device, %struct.net_device* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %144 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %143, i32 0, i32 0
  store i32 %142, i32* %144, align 4
  ret void
}

declare dso_local %struct.virtnet_info* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @u64_stats_fetch_begin_irq(i32*) #1

declare dso_local i64 @u64_stats_fetch_retry_irq(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
