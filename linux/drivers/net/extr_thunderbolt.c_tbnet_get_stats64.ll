; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_thunderbolt.c_tbnet_get_stats64.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_thunderbolt.c_tbnet_get_stats64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.rtnl_link_stats64 = type { i64, i64, i64, i64, i32, i64, i32, i32, i32, i32 }
%struct.tbnet = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64, i64, i32, i64, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.rtnl_link_stats64*)* @tbnet_get_stats64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tbnet_get_stats64(%struct.net_device* %0, %struct.rtnl_link_stats64* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.rtnl_link_stats64*, align 8
  %5 = alloca %struct.tbnet*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.rtnl_link_stats64* %1, %struct.rtnl_link_stats64** %4, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.tbnet* @netdev_priv(%struct.net_device* %6)
  store %struct.tbnet* %7, %struct.tbnet** %5, align 8
  %8 = load %struct.tbnet*, %struct.tbnet** %5, align 8
  %9 = getelementptr inbounds %struct.tbnet, %struct.tbnet* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 9
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %13 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %12, i32 0, i32 9
  store i32 %11, i32* %13, align 4
  %14 = load %struct.tbnet*, %struct.tbnet** %5, align 8
  %15 = getelementptr inbounds %struct.tbnet, %struct.tbnet* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 8
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %19 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %18, i32 0, i32 8
  store i32 %17, i32* %19, align 8
  %20 = load %struct.tbnet*, %struct.tbnet** %5, align 8
  %21 = getelementptr inbounds %struct.tbnet, %struct.tbnet* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 7
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %25 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %24, i32 0, i32 7
  store i32 %23, i32* %25, align 4
  %26 = load %struct.tbnet*, %struct.tbnet** %5, align 8
  %27 = getelementptr inbounds %struct.tbnet, %struct.tbnet* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 6
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %31 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %30, i32 0, i32 6
  store i32 %29, i32* %31, align 8
  %32 = load %struct.tbnet*, %struct.tbnet** %5, align 8
  %33 = getelementptr inbounds %struct.tbnet, %struct.tbnet* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 5
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.tbnet*, %struct.tbnet** %5, align 8
  %37 = getelementptr inbounds %struct.tbnet, %struct.tbnet* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 3
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 %35, %39
  %41 = load %struct.tbnet*, %struct.tbnet** %5, align 8
  %42 = getelementptr inbounds %struct.tbnet, %struct.tbnet* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = add nsw i64 %40, %44
  %46 = load %struct.tbnet*, %struct.tbnet** %5, align 8
  %47 = getelementptr inbounds %struct.tbnet, %struct.tbnet* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = add nsw i64 %45, %49
  %51 = load %struct.tbnet*, %struct.tbnet** %5, align 8
  %52 = getelementptr inbounds %struct.tbnet, %struct.tbnet* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = add nsw i64 %50, %54
  %56 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %57 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %56, i32 0, i32 5
  store i64 %55, i64* %57, align 8
  %58 = load %struct.tbnet*, %struct.tbnet** %5, align 8
  %59 = getelementptr inbounds %struct.tbnet, %struct.tbnet* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %63 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %62, i32 0, i32 4
  store i32 %61, i32* %63, align 8
  %64 = load %struct.tbnet*, %struct.tbnet** %5, align 8
  %65 = getelementptr inbounds %struct.tbnet, %struct.tbnet* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 3
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %69 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %68, i32 0, i32 3
  store i64 %67, i64* %69, align 8
  %70 = load %struct.tbnet*, %struct.tbnet** %5, align 8
  %71 = getelementptr inbounds %struct.tbnet, %struct.tbnet* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %75 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %74, i32 0, i32 2
  store i64 %73, i64* %75, align 8
  %76 = load %struct.tbnet*, %struct.tbnet** %5, align 8
  %77 = getelementptr inbounds %struct.tbnet, %struct.tbnet* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %81 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %80, i32 0, i32 1
  store i64 %79, i64* %81, align 8
  %82 = load %struct.tbnet*, %struct.tbnet** %5, align 8
  %83 = getelementptr inbounds %struct.tbnet, %struct.tbnet* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %87 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %86, i32 0, i32 0
  store i64 %85, i64* %87, align 8
  ret void
}

declare dso_local %struct.tbnet* @netdev_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
