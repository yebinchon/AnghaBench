; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/apm/xgene-v2/extr_main.c_xge_get_stats64.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/apm/xgene-v2/extr_main.c_xge_get_stats64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.rtnl_link_stats64 = type { i32, i32, i32, i32, i32 }
%struct.xge_pdata = type { %struct.xge_stats }
%struct.xge_stats = type { i64, i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.rtnl_link_stats64*)* @xge_get_stats64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xge_get_stats64(%struct.net_device* %0, %struct.rtnl_link_stats64* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.rtnl_link_stats64*, align 8
  %5 = alloca %struct.xge_pdata*, align 8
  %6 = alloca %struct.xge_stats*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.rtnl_link_stats64* %1, %struct.rtnl_link_stats64** %4, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.xge_pdata* @netdev_priv(%struct.net_device* %7)
  store %struct.xge_pdata* %8, %struct.xge_pdata** %5, align 8
  %9 = load %struct.xge_pdata*, %struct.xge_pdata** %5, align 8
  %10 = getelementptr inbounds %struct.xge_pdata, %struct.xge_pdata* %9, i32 0, i32 0
  store %struct.xge_stats* %10, %struct.xge_stats** %6, align 8
  %11 = load %struct.xge_stats*, %struct.xge_stats** %6, align 8
  %12 = getelementptr inbounds %struct.xge_stats, %struct.xge_stats* %11, i32 0, i32 4
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %15 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 4
  %17 = sext i32 %16 to i64
  %18 = add nsw i64 %17, %13
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %15, align 4
  %20 = load %struct.xge_stats*, %struct.xge_stats** %6, align 8
  %21 = getelementptr inbounds %struct.xge_stats, %struct.xge_stats* %20, i32 0, i32 3
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %24 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = sext i32 %25 to i64
  %27 = add nsw i64 %26, %22
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %24, align 4
  %29 = load %struct.xge_stats*, %struct.xge_stats** %6, align 8
  %30 = getelementptr inbounds %struct.xge_stats, %struct.xge_stats* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %33 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = sext i32 %34 to i64
  %36 = add nsw i64 %35, %31
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %33, align 4
  %38 = load %struct.xge_stats*, %struct.xge_stats** %6, align 8
  %39 = getelementptr inbounds %struct.xge_stats, %struct.xge_stats* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %42 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = sext i32 %43 to i64
  %45 = add nsw i64 %44, %40
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %42, align 4
  %47 = load %struct.xge_stats*, %struct.xge_stats** %6, align 8
  %48 = getelementptr inbounds %struct.xge_stats, %struct.xge_stats* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %51 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = sext i32 %52 to i64
  %54 = add nsw i64 %53, %49
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %51, align 4
  ret void
}

declare dso_local %struct.xge_pdata* @netdev_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
