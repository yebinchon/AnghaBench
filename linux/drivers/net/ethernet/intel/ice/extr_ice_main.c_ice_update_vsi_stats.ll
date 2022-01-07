; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_main.c_ice_update_vsi_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_main.c_ice_update_vsi_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_vsi = type { i64, i32, %struct.ice_pf*, %struct.ice_eth_stats, %struct.rtnl_link_stats64 }
%struct.ice_pf = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i32, i64, i64 }
%struct.TYPE_3__ = type { i32 }
%struct.ice_eth_stats = type { i32, i32, i32, i32 }
%struct.rtnl_link_stats64 = type { i32, i32, i64, i64, i32, i32, i32, i32 }

@__ICE_DOWN = common dso_local global i32 0, align 4
@__ICE_CFG_BUSY = common dso_local global i32 0, align 4
@ICE_VSI_PF = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ice_update_vsi_stats(%struct.ice_vsi* %0) #0 {
  %2 = alloca %struct.ice_vsi*, align 8
  %3 = alloca %struct.rtnl_link_stats64*, align 8
  %4 = alloca %struct.ice_eth_stats*, align 8
  %5 = alloca %struct.ice_pf*, align 8
  store %struct.ice_vsi* %0, %struct.ice_vsi** %2, align 8
  %6 = load %struct.ice_vsi*, %struct.ice_vsi** %2, align 8
  %7 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %6, i32 0, i32 4
  store %struct.rtnl_link_stats64* %7, %struct.rtnl_link_stats64** %3, align 8
  %8 = load %struct.ice_vsi*, %struct.ice_vsi** %2, align 8
  %9 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %8, i32 0, i32 3
  store %struct.ice_eth_stats* %9, %struct.ice_eth_stats** %4, align 8
  %10 = load %struct.ice_vsi*, %struct.ice_vsi** %2, align 8
  %11 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %10, i32 0, i32 2
  %12 = load %struct.ice_pf*, %struct.ice_pf** %11, align 8
  store %struct.ice_pf* %12, %struct.ice_pf** %5, align 8
  %13 = load i32, i32* @__ICE_DOWN, align 4
  %14 = load %struct.ice_vsi*, %struct.ice_vsi** %2, align 8
  %15 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call i64 @test_bit(i32 %13, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @__ICE_CFG_BUSY, align 4
  %21 = load %struct.ice_pf*, %struct.ice_pf** %5, align 8
  %22 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i64 @test_bit(i32 %20, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %19, %1
  br label %88

27:                                               ; preds = %19
  %28 = load %struct.ice_vsi*, %struct.ice_vsi** %2, align 8
  %29 = call i32 @ice_update_vsi_ring_stats(%struct.ice_vsi* %28)
  %30 = load %struct.ice_vsi*, %struct.ice_vsi** %2, align 8
  %31 = call i32 @ice_update_eth_stats(%struct.ice_vsi* %30)
  %32 = load %struct.ice_eth_stats*, %struct.ice_eth_stats** %4, align 8
  %33 = getelementptr inbounds %struct.ice_eth_stats, %struct.ice_eth_stats* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %3, align 8
  %36 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %35, i32 0, i32 7
  store i32 %34, i32* %36, align 4
  %37 = load %struct.ice_eth_stats*, %struct.ice_eth_stats** %4, align 8
  %38 = getelementptr inbounds %struct.ice_eth_stats, %struct.ice_eth_stats* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %3, align 8
  %41 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %40, i32 0, i32 6
  store i32 %39, i32* %41, align 8
  %42 = load %struct.ice_eth_stats*, %struct.ice_eth_stats** %4, align 8
  %43 = getelementptr inbounds %struct.ice_eth_stats, %struct.ice_eth_stats* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %3, align 8
  %46 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %45, i32 0, i32 5
  store i32 %44, i32* %46, align 4
  %47 = load %struct.ice_eth_stats*, %struct.ice_eth_stats** %4, align 8
  %48 = getelementptr inbounds %struct.ice_eth_stats, %struct.ice_eth_stats* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %3, align 8
  %51 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %50, i32 0, i32 4
  store i32 %49, i32* %51, align 8
  %52 = load %struct.ice_vsi*, %struct.ice_vsi** %2, align 8
  %53 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @ICE_VSI_PF, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %88

57:                                               ; preds = %27
  %58 = load %struct.ice_pf*, %struct.ice_pf** %5, align 8
  %59 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 3
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %3, align 8
  %63 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %62, i32 0, i32 3
  store i64 %61, i64* %63, align 8
  %64 = load %struct.ice_pf*, %struct.ice_pf** %5, align 8
  %65 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 3
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.ice_pf*, %struct.ice_pf** %5, align 8
  %69 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = add nsw i64 %67, %71
  %73 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %3, align 8
  %74 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %73, i32 0, i32 2
  store i64 %72, i64* %74, align 8
  %75 = load %struct.ice_pf*, %struct.ice_pf** %5, align 8
  %76 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %3, align 8
  %80 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 4
  %81 = load %struct.ice_pf*, %struct.ice_pf** %5, align 8
  %82 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %3, align 8
  %87 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 8
  br label %88

88:                                               ; preds = %26, %57, %27
  ret void
}

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i32 @ice_update_vsi_ring_stats(%struct.ice_vsi*) #1

declare dso_local i32 @ice_update_eth_stats(%struct.ice_vsi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
