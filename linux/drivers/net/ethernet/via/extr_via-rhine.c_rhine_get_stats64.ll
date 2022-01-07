; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/via/extr_via-rhine.c_rhine_get_stats64.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/via/extr_via-rhine.c_rhine_get_stats64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.rtnl_link_stats64 = type { i32, i32, i32, i32 }
%struct.rhine_private = type { %struct.TYPE_4__, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.rtnl_link_stats64*)* @rhine_get_stats64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rhine_get_stats64(%struct.net_device* %0, %struct.rtnl_link_stats64* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.rtnl_link_stats64*, align 8
  %5 = alloca %struct.rhine_private*, align 8
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.rtnl_link_stats64* %1, %struct.rtnl_link_stats64** %4, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.rhine_private* @netdev_priv(%struct.net_device* %7)
  store %struct.rhine_private* %8, %struct.rhine_private** %5, align 8
  %9 = load %struct.rhine_private*, %struct.rhine_private** %5, align 8
  %10 = getelementptr inbounds %struct.rhine_private, %struct.rhine_private* %9, i32 0, i32 2
  %11 = call i32 @spin_lock_bh(i32* %10)
  %12 = load %struct.rhine_private*, %struct.rhine_private** %5, align 8
  %13 = call i32 @rhine_update_rx_crc_and_missed_errord(%struct.rhine_private* %12)
  %14 = load %struct.rhine_private*, %struct.rhine_private** %5, align 8
  %15 = getelementptr inbounds %struct.rhine_private, %struct.rhine_private* %14, i32 0, i32 2
  %16 = call i32 @spin_unlock_bh(i32* %15)
  %17 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %18 = load %struct.net_device*, %struct.net_device** %3, align 8
  %19 = getelementptr inbounds %struct.net_device, %struct.net_device* %18, i32 0, i32 0
  %20 = call i32 @netdev_stats_to_stats64(%struct.rtnl_link_stats64* %17, i32* %19)
  br label %21

21:                                               ; preds = %38, %2
  %22 = load %struct.rhine_private*, %struct.rhine_private** %5, align 8
  %23 = getelementptr inbounds %struct.rhine_private, %struct.rhine_private* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 2
  %25 = call i32 @u64_stats_fetch_begin_irq(i32* %24)
  store i32 %25, i32* %6, align 4
  %26 = load %struct.rhine_private*, %struct.rhine_private** %5, align 8
  %27 = getelementptr inbounds %struct.rhine_private, %struct.rhine_private* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %31 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %30, i32 0, i32 3
  store i32 %29, i32* %31, align 4
  %32 = load %struct.rhine_private*, %struct.rhine_private** %5, align 8
  %33 = getelementptr inbounds %struct.rhine_private, %struct.rhine_private* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %37 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 4
  br label %38

38:                                               ; preds = %21
  %39 = load %struct.rhine_private*, %struct.rhine_private** %5, align 8
  %40 = getelementptr inbounds %struct.rhine_private, %struct.rhine_private* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 2
  %42 = load i32, i32* %6, align 4
  %43 = call i64 @u64_stats_fetch_retry_irq(i32* %41, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %21, label %45

45:                                               ; preds = %38
  br label %46

46:                                               ; preds = %63, %45
  %47 = load %struct.rhine_private*, %struct.rhine_private** %5, align 8
  %48 = getelementptr inbounds %struct.rhine_private, %struct.rhine_private* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 2
  %50 = call i32 @u64_stats_fetch_begin_irq(i32* %49)
  store i32 %50, i32* %6, align 4
  %51 = load %struct.rhine_private*, %struct.rhine_private** %5, align 8
  %52 = getelementptr inbounds %struct.rhine_private, %struct.rhine_private* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %56 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  %57 = load %struct.rhine_private*, %struct.rhine_private** %5, align 8
  %58 = getelementptr inbounds %struct.rhine_private, %struct.rhine_private* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %62 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 4
  br label %63

63:                                               ; preds = %46
  %64 = load %struct.rhine_private*, %struct.rhine_private** %5, align 8
  %65 = getelementptr inbounds %struct.rhine_private, %struct.rhine_private* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 2
  %67 = load i32, i32* %6, align 4
  %68 = call i64 @u64_stats_fetch_retry_irq(i32* %66, i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %46, label %70

70:                                               ; preds = %63
  ret void
}

declare dso_local %struct.rhine_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @rhine_update_rx_crc_and_missed_errord(%struct.rhine_private*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @netdev_stats_to_stats64(%struct.rtnl_link_stats64*, i32*) #1

declare dso_local i32 @u64_stats_fetch_begin_irq(i32*) #1

declare dso_local i64 @u64_stats_fetch_retry_irq(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
