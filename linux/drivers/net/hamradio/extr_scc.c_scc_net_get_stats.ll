; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/hamradio/extr_scc.c_scc_net_get_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/hamradio/extr_scc.c_scc_net_get_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device_stats = type { i64, i64, i64, i64 }
%struct.net_device = type { i64 }
%struct.scc_channel = type { %struct.net_device_stats, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.net_device_stats* (%struct.net_device*)* @scc_net_get_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.net_device_stats* @scc_net_get_stats(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.scc_channel*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = getelementptr inbounds %struct.net_device, %struct.net_device* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = inttoptr i64 %6 to %struct.scc_channel*
  store %struct.scc_channel* %7, %struct.scc_channel** %3, align 8
  %8 = load %struct.scc_channel*, %struct.scc_channel** %3, align 8
  %9 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 3
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.scc_channel*, %struct.scc_channel** %3, align 8
  %13 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = add nsw i64 %11, %15
  %17 = load %struct.scc_channel*, %struct.scc_channel** %3, align 8
  %18 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %18, i32 0, i32 3
  store i64 %16, i64* %19, align 8
  %20 = load %struct.scc_channel*, %struct.scc_channel** %3, align 8
  %21 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.scc_channel*, %struct.scc_channel** %3, align 8
  %25 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %23, %27
  %29 = load %struct.scc_channel*, %struct.scc_channel** %3, align 8
  %30 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %30, i32 0, i32 2
  store i64 %28, i64* %31, align 8
  %32 = load %struct.scc_channel*, %struct.scc_channel** %3, align 8
  %33 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.scc_channel*, %struct.scc_channel** %3, align 8
  %37 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %37, i32 0, i32 1
  store i64 %35, i64* %38, align 8
  %39 = load %struct.scc_channel*, %struct.scc_channel** %3, align 8
  %40 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.scc_channel*, %struct.scc_channel** %3, align 8
  %44 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %44, i32 0, i32 0
  store i64 %42, i64* %45, align 8
  %46 = load %struct.scc_channel*, %struct.scc_channel** %3, align 8
  %47 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %46, i32 0, i32 0
  ret %struct.net_device_stats* %47
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
