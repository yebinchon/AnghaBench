; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_main.c_ice_get_stats64.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_main.c_ice_get_stats64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.rtnl_link_stats64 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ice_netdev_priv = type { %struct.ice_vsi* }
%struct.ice_vsi = type { i32, i32, i32, %struct.rtnl_link_stats64 }

@__ICE_DOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.rtnl_link_stats64*)* @ice_get_stats64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ice_get_stats64(%struct.net_device* %0, %struct.rtnl_link_stats64* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.rtnl_link_stats64*, align 8
  %5 = alloca %struct.ice_netdev_priv*, align 8
  %6 = alloca %struct.rtnl_link_stats64*, align 8
  %7 = alloca %struct.ice_vsi*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.rtnl_link_stats64* %1, %struct.rtnl_link_stats64** %4, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.ice_netdev_priv* @netdev_priv(%struct.net_device* %8)
  store %struct.ice_netdev_priv* %9, %struct.ice_netdev_priv** %5, align 8
  %10 = load %struct.ice_netdev_priv*, %struct.ice_netdev_priv** %5, align 8
  %11 = getelementptr inbounds %struct.ice_netdev_priv, %struct.ice_netdev_priv* %10, i32 0, i32 0
  %12 = load %struct.ice_vsi*, %struct.ice_vsi** %11, align 8
  store %struct.ice_vsi* %12, %struct.ice_vsi** %7, align 8
  %13 = load %struct.ice_vsi*, %struct.ice_vsi** %7, align 8
  %14 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %13, i32 0, i32 3
  store %struct.rtnl_link_stats64* %14, %struct.rtnl_link_stats64** %6, align 8
  %15 = load %struct.ice_vsi*, %struct.ice_vsi** %7, align 8
  %16 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %2
  %20 = load %struct.ice_vsi*, %struct.ice_vsi** %7, align 8
  %21 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %19, %2
  br label %91

25:                                               ; preds = %19
  %26 = load i32, i32* @__ICE_DOWN, align 4
  %27 = load %struct.ice_vsi*, %struct.ice_vsi** %7, align 8
  %28 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @test_bit(i32 %26, i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %25
  %33 = load %struct.ice_vsi*, %struct.ice_vsi** %7, align 8
  %34 = call i32 @ice_update_vsi_ring_stats(%struct.ice_vsi* %33)
  br label %35

35:                                               ; preds = %32, %25
  %36 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %6, align 8
  %37 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %36, i32 0, i32 10
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %40 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %39, i32 0, i32 10
  store i32 %38, i32* %40, align 4
  %41 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %6, align 8
  %42 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %41, i32 0, i32 9
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %45 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %44, i32 0, i32 9
  store i32 %43, i32* %45, align 4
  %46 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %6, align 8
  %47 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %46, i32 0, i32 8
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %50 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %49, i32 0, i32 8
  store i32 %48, i32* %50, align 4
  %51 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %6, align 8
  %52 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %51, i32 0, i32 7
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %55 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %54, i32 0, i32 7
  store i32 %53, i32* %55, align 4
  %56 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %6, align 8
  %57 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %56, i32 0, i32 6
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %60 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %59, i32 0, i32 6
  store i32 %58, i32* %60, align 4
  %61 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %6, align 8
  %62 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %61, i32 0, i32 5
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %65 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %64, i32 0, i32 5
  store i32 %63, i32* %65, align 4
  %66 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %6, align 8
  %67 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %70 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %69, i32 0, i32 4
  store i32 %68, i32* %70, align 4
  %71 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %6, align 8
  %72 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %75 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %74, i32 0, i32 3
  store i32 %73, i32* %75, align 4
  %76 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %6, align 8
  %77 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %80 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %79, i32 0, i32 2
  store i32 %78, i32* %80, align 4
  %81 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %6, align 8
  %82 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %85 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %84, i32 0, i32 1
  store i32 %83, i32* %85, align 4
  %86 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %6, align 8
  %87 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %90 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 4
  br label %91

91:                                               ; preds = %35, %24
  ret void
}

declare dso_local %struct.ice_netdev_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @test_bit(i32, i32) #1

declare dso_local i32 @ice_update_vsi_ring_stats(%struct.ice_vsi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
