; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_get_netdev_stats_struct.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_get_netdev_stats_struct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.rtnl_link_stats64 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.i40e_netdev_priv = type { %struct.i40e_vsi* }
%struct.i40e_vsi = type { i32, i32*, i32 }
%struct.i40e_ring = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64, i64 }

@__I40E_VSI_DOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.rtnl_link_stats64*)* @i40e_get_netdev_stats_struct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i40e_get_netdev_stats_struct(%struct.net_device* %0, %struct.rtnl_link_stats64* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.rtnl_link_stats64*, align 8
  %5 = alloca %struct.i40e_netdev_priv*, align 8
  %6 = alloca %struct.i40e_vsi*, align 8
  %7 = alloca %struct.rtnl_link_stats64*, align 8
  %8 = alloca %struct.i40e_ring*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.rtnl_link_stats64* %1, %struct.rtnl_link_stats64** %4, align 8
  %13 = load %struct.net_device*, %struct.net_device** %3, align 8
  %14 = call %struct.i40e_netdev_priv* @netdev_priv(%struct.net_device* %13)
  store %struct.i40e_netdev_priv* %14, %struct.i40e_netdev_priv** %5, align 8
  %15 = load %struct.i40e_netdev_priv*, %struct.i40e_netdev_priv** %5, align 8
  %16 = getelementptr inbounds %struct.i40e_netdev_priv, %struct.i40e_netdev_priv* %15, i32 0, i32 0
  %17 = load %struct.i40e_vsi*, %struct.i40e_vsi** %16, align 8
  store %struct.i40e_vsi* %17, %struct.i40e_vsi** %6, align 8
  %18 = load %struct.i40e_vsi*, %struct.i40e_vsi** %6, align 8
  %19 = call %struct.rtnl_link_stats64* @i40e_get_vsi_stats_struct(%struct.i40e_vsi* %18)
  store %struct.rtnl_link_stats64* %19, %struct.rtnl_link_stats64** %7, align 8
  %20 = load i32, i32* @__I40E_VSI_DOWN, align 4
  %21 = load %struct.i40e_vsi*, %struct.i40e_vsi** %6, align 8
  %22 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = call i64 @test_bit(i32 %20, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %2
  br label %142

27:                                               ; preds = %2
  %28 = load %struct.i40e_vsi*, %struct.i40e_vsi** %6, align 8
  %29 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %27
  br label %142

33:                                               ; preds = %27
  %34 = call i32 (...) @rcu_read_lock()
  store i32 0, i32* %9, align 4
  br label %35

35:                                               ; preds = %102, %33
  %36 = load i32, i32* %9, align 4
  %37 = load %struct.i40e_vsi*, %struct.i40e_vsi** %6, align 8
  %38 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp slt i32 %36, %39
  br i1 %40, label %41, label %105

41:                                               ; preds = %35
  %42 = load %struct.i40e_vsi*, %struct.i40e_vsi** %6, align 8
  %43 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %9, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = call %struct.i40e_ring* @READ_ONCE(i32 %48)
  store %struct.i40e_ring* %49, %struct.i40e_ring** %8, align 8
  %50 = load %struct.i40e_ring*, %struct.i40e_ring** %8, align 8
  %51 = icmp ne %struct.i40e_ring* %50, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %41
  br label %102

53:                                               ; preds = %41
  %54 = load %struct.i40e_ring*, %struct.i40e_ring** %8, align 8
  %55 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %56 = call i32 @i40e_get_netdev_stats_struct_tx(%struct.i40e_ring* %54, %struct.rtnl_link_stats64* %55)
  %57 = load %struct.i40e_vsi*, %struct.i40e_vsi** %6, align 8
  %58 = call i64 @i40e_enabled_xdp_vsi(%struct.i40e_vsi* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %53
  %61 = load %struct.i40e_ring*, %struct.i40e_ring** %8, align 8
  %62 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %61, i32 1
  store %struct.i40e_ring* %62, %struct.i40e_ring** %8, align 8
  %63 = load %struct.i40e_ring*, %struct.i40e_ring** %8, align 8
  %64 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %65 = call i32 @i40e_get_netdev_stats_struct_tx(%struct.i40e_ring* %63, %struct.rtnl_link_stats64* %64)
  br label %66

66:                                               ; preds = %60, %53
  %67 = load %struct.i40e_ring*, %struct.i40e_ring** %8, align 8
  %68 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %67, i32 1
  store %struct.i40e_ring* %68, %struct.i40e_ring** %8, align 8
  br label %69

69:                                               ; preds = %81, %66
  %70 = load %struct.i40e_ring*, %struct.i40e_ring** %8, align 8
  %71 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %70, i32 0, i32 1
  %72 = call i32 @u64_stats_fetch_begin_irq(i32* %71)
  store i32 %72, i32* %12, align 4
  %73 = load %struct.i40e_ring*, %struct.i40e_ring** %8, align 8
  %74 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  store i64 %76, i64* %11, align 8
  %77 = load %struct.i40e_ring*, %struct.i40e_ring** %8, align 8
  %78 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  store i64 %80, i64* %10, align 8
  br label %81

81:                                               ; preds = %69
  %82 = load %struct.i40e_ring*, %struct.i40e_ring** %8, align 8
  %83 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %82, i32 0, i32 1
  %84 = load i32, i32* %12, align 4
  %85 = call i64 @u64_stats_fetch_retry_irq(i32* %83, i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %69, label %87

87:                                               ; preds = %81
  %88 = load i64, i64* %11, align 8
  %89 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %90 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %89, i32 0, i32 8
  %91 = load i32, i32* %90, align 4
  %92 = sext i32 %91 to i64
  %93 = add nsw i64 %92, %88
  %94 = trunc i64 %93 to i32
  store i32 %94, i32* %90, align 4
  %95 = load i64, i64* %10, align 8
  %96 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %97 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %96, i32 0, i32 7
  %98 = load i32, i32* %97, align 4
  %99 = sext i32 %98 to i64
  %100 = add nsw i64 %99, %95
  %101 = trunc i64 %100 to i32
  store i32 %101, i32* %97, align 4
  br label %102

102:                                              ; preds = %87, %52
  %103 = load i32, i32* %9, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %9, align 4
  br label %35

105:                                              ; preds = %35
  %106 = call i32 (...) @rcu_read_unlock()
  %107 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %7, align 8
  %108 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %107, i32 0, i32 6
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %111 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %110, i32 0, i32 6
  store i32 %109, i32* %111, align 4
  %112 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %7, align 8
  %113 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %112, i32 0, i32 5
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %116 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %115, i32 0, i32 5
  store i32 %114, i32* %116, align 4
  %117 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %7, align 8
  %118 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %117, i32 0, i32 4
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %121 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %120, i32 0, i32 4
  store i32 %119, i32* %121, align 4
  %122 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %7, align 8
  %123 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %126 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %125, i32 0, i32 3
  store i32 %124, i32* %126, align 4
  %127 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %7, align 8
  %128 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %131 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %130, i32 0, i32 2
  store i32 %129, i32* %131, align 4
  %132 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %7, align 8
  %133 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %136 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %135, i32 0, i32 1
  store i32 %134, i32* %136, align 4
  %137 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %7, align 8
  %138 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %141 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %140, i32 0, i32 0
  store i32 %139, i32* %141, align 4
  br label %142

142:                                              ; preds = %105, %32, %26
  ret void
}

declare dso_local %struct.i40e_netdev_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.rtnl_link_stats64* @i40e_get_vsi_stats_struct(%struct.i40e_vsi*) #1

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.i40e_ring* @READ_ONCE(i32) #1

declare dso_local i32 @i40e_get_netdev_stats_struct_tx(%struct.i40e_ring*, %struct.rtnl_link_stats64*) #1

declare dso_local i64 @i40e_enabled_xdp_vsi(%struct.i40e_vsi*) #1

declare dso_local i32 @u64_stats_fetch_begin_irq(i32*) #1

declare dso_local i64 @u64_stats_fetch_retry_irq(i32*, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
