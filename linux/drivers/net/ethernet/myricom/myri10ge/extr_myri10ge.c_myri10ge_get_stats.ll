; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/myricom/myri10ge/extr_myri10ge.c_myri10ge_get_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/myricom/myri10ge/extr_myri10ge.c_myri10ge_get_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.rtnl_link_stats64 = type { i32, i32, i32, i32, i32, i32 }
%struct.myri10ge_priv = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.myri10ge_slice_netstats }
%struct.myri10ge_slice_netstats = type { i64, i64, i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.rtnl_link_stats64*)* @myri10ge_get_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @myri10ge_get_stats(%struct.net_device* %0, %struct.rtnl_link_stats64* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.rtnl_link_stats64*, align 8
  %5 = alloca %struct.myri10ge_priv*, align 8
  %6 = alloca %struct.myri10ge_slice_netstats*, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.rtnl_link_stats64* %1, %struct.rtnl_link_stats64** %4, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.myri10ge_priv* @netdev_priv(%struct.net_device* %8)
  store %struct.myri10ge_priv* %9, %struct.myri10ge_priv** %5, align 8
  store i32 0, i32* %7, align 4
  br label %10

10:                                               ; preds = %78, %2
  %11 = load i32, i32* %7, align 4
  %12 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %5, align 8
  %13 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %81

16:                                               ; preds = %10
  %17 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %5, align 8
  %18 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = load i32, i32* %7, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store %struct.myri10ge_slice_netstats* %23, %struct.myri10ge_slice_netstats** %6, align 8
  %24 = load %struct.myri10ge_slice_netstats*, %struct.myri10ge_slice_netstats** %6, align 8
  %25 = getelementptr inbounds %struct.myri10ge_slice_netstats, %struct.myri10ge_slice_netstats* %24, i32 0, i32 5
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %28 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %27, i32 0, i32 5
  %29 = load i32, i32* %28, align 4
  %30 = sext i32 %29 to i64
  %31 = add nsw i64 %30, %26
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %28, align 4
  %33 = load %struct.myri10ge_slice_netstats*, %struct.myri10ge_slice_netstats** %6, align 8
  %34 = getelementptr inbounds %struct.myri10ge_slice_netstats, %struct.myri10ge_slice_netstats* %33, i32 0, i32 4
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %37 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 4
  %39 = sext i32 %38 to i64
  %40 = add nsw i64 %39, %35
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %37, align 4
  %42 = load %struct.myri10ge_slice_netstats*, %struct.myri10ge_slice_netstats** %6, align 8
  %43 = getelementptr inbounds %struct.myri10ge_slice_netstats, %struct.myri10ge_slice_netstats* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %46 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = sext i32 %47 to i64
  %49 = add nsw i64 %48, %44
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %46, align 4
  %51 = load %struct.myri10ge_slice_netstats*, %struct.myri10ge_slice_netstats** %6, align 8
  %52 = getelementptr inbounds %struct.myri10ge_slice_netstats, %struct.myri10ge_slice_netstats* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %55 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = sext i32 %56 to i64
  %58 = add nsw i64 %57, %53
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %55, align 4
  %60 = load %struct.myri10ge_slice_netstats*, %struct.myri10ge_slice_netstats** %6, align 8
  %61 = getelementptr inbounds %struct.myri10ge_slice_netstats, %struct.myri10ge_slice_netstats* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %64 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = sext i32 %65 to i64
  %67 = add nsw i64 %66, %62
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %64, align 4
  %69 = load %struct.myri10ge_slice_netstats*, %struct.myri10ge_slice_netstats** %6, align 8
  %70 = getelementptr inbounds %struct.myri10ge_slice_netstats, %struct.myri10ge_slice_netstats* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %73 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = sext i32 %74 to i64
  %76 = add nsw i64 %75, %71
  %77 = trunc i64 %76 to i32
  store i32 %77, i32* %73, align 4
  br label %78

78:                                               ; preds = %16
  %79 = load i32, i32* %7, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %7, align 4
  br label %10

81:                                               ; preds = %10
  ret void
}

declare dso_local %struct.myri10ge_priv* @netdev_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
