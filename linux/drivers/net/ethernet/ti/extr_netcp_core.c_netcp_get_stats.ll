; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_netcp_core.c_netcp_get_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_netcp_core.c_netcp_get_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.rtnl_link_stats64 = type { i32, i32, i32, i8*, i8*, i8*, i8* }
%struct.netcp_intf = type { %struct.netcp_stats }
%struct.netcp_stats = type { i32, i32, i32, i8*, i8*, i32, i8*, i8*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.rtnl_link_stats64*)* @netcp_get_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @netcp_get_stats(%struct.net_device* %0, %struct.rtnl_link_stats64* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.rtnl_link_stats64*, align 8
  %5 = alloca %struct.netcp_intf*, align 8
  %6 = alloca %struct.netcp_stats*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.rtnl_link_stats64* %1, %struct.rtnl_link_stats64** %4, align 8
  %12 = load %struct.net_device*, %struct.net_device** %3, align 8
  %13 = call %struct.netcp_intf* @netdev_priv(%struct.net_device* %12)
  store %struct.netcp_intf* %13, %struct.netcp_intf** %5, align 8
  %14 = load %struct.netcp_intf*, %struct.netcp_intf** %5, align 8
  %15 = getelementptr inbounds %struct.netcp_intf, %struct.netcp_intf* %14, i32 0, i32 0
  store %struct.netcp_stats* %15, %struct.netcp_stats** %6, align 8
  br label %16

16:                                               ; preds = %26, %2
  %17 = load %struct.netcp_stats*, %struct.netcp_stats** %6, align 8
  %18 = getelementptr inbounds %struct.netcp_stats, %struct.netcp_stats* %17, i32 0, i32 8
  %19 = call i32 @u64_stats_fetch_begin_irq(i32* %18)
  store i32 %19, i32* %11, align 4
  %20 = load %struct.netcp_stats*, %struct.netcp_stats** %6, align 8
  %21 = getelementptr inbounds %struct.netcp_stats, %struct.netcp_stats* %20, i32 0, i32 7
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** %7, align 8
  %23 = load %struct.netcp_stats*, %struct.netcp_stats** %6, align 8
  %24 = getelementptr inbounds %struct.netcp_stats, %struct.netcp_stats* %23, i32 0, i32 6
  %25 = load i8*, i8** %24, align 8
  store i8* %25, i8** %8, align 8
  br label %26

26:                                               ; preds = %16
  %27 = load %struct.netcp_stats*, %struct.netcp_stats** %6, align 8
  %28 = getelementptr inbounds %struct.netcp_stats, %struct.netcp_stats* %27, i32 0, i32 8
  %29 = load i32, i32* %11, align 4
  %30 = call i64 @u64_stats_fetch_retry_irq(i32* %28, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %16, label %32

32:                                               ; preds = %26
  br label %33

33:                                               ; preds = %43, %32
  %34 = load %struct.netcp_stats*, %struct.netcp_stats** %6, align 8
  %35 = getelementptr inbounds %struct.netcp_stats, %struct.netcp_stats* %34, i32 0, i32 5
  %36 = call i32 @u64_stats_fetch_begin_irq(i32* %35)
  store i32 %36, i32* %11, align 4
  %37 = load %struct.netcp_stats*, %struct.netcp_stats** %6, align 8
  %38 = getelementptr inbounds %struct.netcp_stats, %struct.netcp_stats* %37, i32 0, i32 4
  %39 = load i8*, i8** %38, align 8
  store i8* %39, i8** %9, align 8
  %40 = load %struct.netcp_stats*, %struct.netcp_stats** %6, align 8
  %41 = getelementptr inbounds %struct.netcp_stats, %struct.netcp_stats* %40, i32 0, i32 3
  %42 = load i8*, i8** %41, align 8
  store i8* %42, i8** %10, align 8
  br label %43

43:                                               ; preds = %33
  %44 = load %struct.netcp_stats*, %struct.netcp_stats** %6, align 8
  %45 = getelementptr inbounds %struct.netcp_stats, %struct.netcp_stats* %44, i32 0, i32 5
  %46 = load i32, i32* %11, align 4
  %47 = call i64 @u64_stats_fetch_retry_irq(i32* %45, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %33, label %49

49:                                               ; preds = %43
  %50 = load i8*, i8** %7, align 8
  %51 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %52 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %51, i32 0, i32 6
  store i8* %50, i8** %52, align 8
  %53 = load i8*, i8** %8, align 8
  %54 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %55 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %54, i32 0, i32 5
  store i8* %53, i8** %55, align 8
  %56 = load i8*, i8** %9, align 8
  %57 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %58 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %57, i32 0, i32 4
  store i8* %56, i8** %58, align 8
  %59 = load i8*, i8** %10, align 8
  %60 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %61 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %60, i32 0, i32 3
  store i8* %59, i8** %61, align 8
  %62 = load %struct.netcp_stats*, %struct.netcp_stats** %6, align 8
  %63 = getelementptr inbounds %struct.netcp_stats, %struct.netcp_stats* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %66 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %65, i32 0, i32 2
  store i32 %64, i32* %66, align 8
  %67 = load %struct.netcp_stats*, %struct.netcp_stats** %6, align 8
  %68 = getelementptr inbounds %struct.netcp_stats, %struct.netcp_stats* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %71 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 4
  %72 = load %struct.netcp_stats*, %struct.netcp_stats** %6, align 8
  %73 = getelementptr inbounds %struct.netcp_stats, %struct.netcp_stats* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %76 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 8
  ret void
}

declare dso_local %struct.netcp_intf* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @u64_stats_fetch_begin_irq(i32*) #1

declare dso_local i64 @u64_stats_fetch_retry_irq(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
