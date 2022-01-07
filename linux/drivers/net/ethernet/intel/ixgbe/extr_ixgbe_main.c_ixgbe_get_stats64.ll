; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_get_stats64.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_get_stats64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }
%struct.rtnl_link_stats64 = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.ixgbe_adapter = type { i32, i32, i32, i32*, i32*, i32* }
%struct.ixgbe_ring = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.rtnl_link_stats64*)* @ixgbe_get_stats64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbe_get_stats64(%struct.net_device* %0, %struct.rtnl_link_stats64* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.rtnl_link_stats64*, align 8
  %5 = alloca %struct.ixgbe_adapter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ixgbe_ring*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ixgbe_ring*, align 8
  %12 = alloca %struct.ixgbe_ring*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.rtnl_link_stats64* %1, %struct.rtnl_link_stats64** %4, align 8
  %13 = load %struct.net_device*, %struct.net_device** %3, align 8
  %14 = call %struct.ixgbe_adapter* @netdev_priv(%struct.net_device* %13)
  store %struct.ixgbe_adapter* %14, %struct.ixgbe_adapter** %5, align 8
  %15 = call i32 (...) @rcu_read_lock()
  store i32 0, i32* %6, align 4
  br label %16

16:                                               ; preds = %68, %2
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %19 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %71

22:                                               ; preds = %16
  %23 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %24 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %23, i32 0, i32 5
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = call %struct.ixgbe_ring* @READ_ONCE(i32 %29)
  store %struct.ixgbe_ring* %30, %struct.ixgbe_ring** %7, align 8
  %31 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %7, align 8
  %32 = icmp ne %struct.ixgbe_ring* %31, null
  br i1 %32, label %33, label %67

33:                                               ; preds = %22
  br label %34

34:                                               ; preds = %46, %33
  %35 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %7, align 8
  %36 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %35, i32 0, i32 1
  %37 = call i32 @u64_stats_fetch_begin_irq(i32* %36)
  store i32 %37, i32* %10, align 4
  %38 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %7, align 8
  %39 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %9, align 8
  %42 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %7, align 8
  %43 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  store i64 %45, i64* %8, align 8
  br label %46

46:                                               ; preds = %34
  %47 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %7, align 8
  %48 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %47, i32 0, i32 1
  %49 = load i32, i32* %10, align 4
  %50 = call i64 @u64_stats_fetch_retry_irq(i32* %48, i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %34, label %52

52:                                               ; preds = %46
  %53 = load i64, i64* %9, align 8
  %54 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %55 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %54, i32 0, i32 6
  %56 = load i32, i32* %55, align 4
  %57 = sext i32 %56 to i64
  %58 = add nsw i64 %57, %53
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %55, align 4
  %60 = load i64, i64* %8, align 8
  %61 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %62 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %61, i32 0, i32 5
  %63 = load i32, i32* %62, align 4
  %64 = sext i32 %63 to i64
  %65 = add nsw i64 %64, %60
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %62, align 4
  br label %67

67:                                               ; preds = %52, %22
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %6, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %6, align 4
  br label %16

71:                                               ; preds = %16
  store i32 0, i32* %6, align 4
  br label %72

72:                                               ; preds = %90, %71
  %73 = load i32, i32* %6, align 4
  %74 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %75 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = icmp slt i32 %73, %76
  br i1 %77, label %78, label %93

78:                                               ; preds = %72
  %79 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %80 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %79, i32 0, i32 4
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* %6, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = call %struct.ixgbe_ring* @READ_ONCE(i32 %85)
  store %struct.ixgbe_ring* %86, %struct.ixgbe_ring** %11, align 8
  %87 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %88 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %11, align 8
  %89 = call i32 @ixgbe_get_ring_stats64(%struct.rtnl_link_stats64* %87, %struct.ixgbe_ring* %88)
  br label %90

90:                                               ; preds = %78
  %91 = load i32, i32* %6, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %6, align 4
  br label %72

93:                                               ; preds = %72
  store i32 0, i32* %6, align 4
  br label %94

94:                                               ; preds = %112, %93
  %95 = load i32, i32* %6, align 4
  %96 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %97 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = icmp slt i32 %95, %98
  br i1 %99, label %100, label %115

100:                                              ; preds = %94
  %101 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %102 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %101, i32 0, i32 3
  %103 = load i32*, i32** %102, align 8
  %104 = load i32, i32* %6, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = call %struct.ixgbe_ring* @READ_ONCE(i32 %107)
  store %struct.ixgbe_ring* %108, %struct.ixgbe_ring** %12, align 8
  %109 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %110 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %12, align 8
  %111 = call i32 @ixgbe_get_ring_stats64(%struct.rtnl_link_stats64* %109, %struct.ixgbe_ring* %110)
  br label %112

112:                                              ; preds = %100
  %113 = load i32, i32* %6, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %6, align 4
  br label %94

115:                                              ; preds = %94
  %116 = call i32 (...) @rcu_read_unlock()
  %117 = load %struct.net_device*, %struct.net_device** %3, align 8
  %118 = getelementptr inbounds %struct.net_device, %struct.net_device* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 4
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %122 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %121, i32 0, i32 4
  store i32 %120, i32* %122, align 4
  %123 = load %struct.net_device*, %struct.net_device** %3, align 8
  %124 = getelementptr inbounds %struct.net_device, %struct.net_device* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %128 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %127, i32 0, i32 3
  store i32 %126, i32* %128, align 4
  %129 = load %struct.net_device*, %struct.net_device** %3, align 8
  %130 = getelementptr inbounds %struct.net_device, %struct.net_device* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %134 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %133, i32 0, i32 2
  store i32 %132, i32* %134, align 4
  %135 = load %struct.net_device*, %struct.net_device** %3, align 8
  %136 = getelementptr inbounds %struct.net_device, %struct.net_device* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %140 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %139, i32 0, i32 1
  store i32 %138, i32* %140, align 4
  %141 = load %struct.net_device*, %struct.net_device** %3, align 8
  %142 = getelementptr inbounds %struct.net_device, %struct.net_device* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %146 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %145, i32 0, i32 0
  store i32 %144, i32* %146, align 4
  ret void
}

declare dso_local %struct.ixgbe_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.ixgbe_ring* @READ_ONCE(i32) #1

declare dso_local i32 @u64_stats_fetch_begin_irq(i32*) #1

declare dso_local i64 @u64_stats_fetch_retry_irq(i32*, i32) #1

declare dso_local i32 @ixgbe_get_ring_stats64(%struct.rtnl_link_stats64*, %struct.ixgbe_ring*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
