; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/slip/extr_slip.c_sl_get_stats64.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/slip/extr_slip.c_sl_get_stats64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.net_device_stats }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rtnl_link_stats64 = type { i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.rtnl_link_stats64*)* @sl_get_stats64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sl_get_stats64(%struct.net_device* %0, %struct.rtnl_link_stats64* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.rtnl_link_stats64*, align 8
  %5 = alloca %struct.net_device_stats*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.rtnl_link_stats64* %1, %struct.rtnl_link_stats64** %4, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = getelementptr inbounds %struct.net_device, %struct.net_device* %6, i32 0, i32 0
  store %struct.net_device_stats* %7, %struct.net_device_stats** %5, align 8
  %8 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %9 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %8, i32 0, i32 8
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %12 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %11, i32 0, i32 13
  store i32 %10, i32* %12, align 4
  %13 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %14 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %13, i32 0, i32 7
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %17 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %16, i32 0, i32 12
  store i32 %15, i32* %17, align 8
  %18 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %19 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %18, i32 0, i32 6
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %22 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %21, i32 0, i32 11
  store i32 %20, i32* %22, align 4
  %23 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %24 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %23, i32 0, i32 5
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %27 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %26, i32 0, i32 10
  store i32 %25, i32* %27, align 8
  %28 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %29 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %32 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 8
  %33 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %34 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %37 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %36, i32 0, i32 9
  store i32 %35, i32* %37, align 4
  %38 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %39 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %42 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %41, i32 0, i32 8
  store i32 %40, i32* %42, align 8
  %43 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %44 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %47 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %46, i32 0, i32 7
  store i32 %45, i32* %47, align 4
  %48 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %49 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %52 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %51, i32 0, i32 6
  store i32 %50, i32* %52, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
