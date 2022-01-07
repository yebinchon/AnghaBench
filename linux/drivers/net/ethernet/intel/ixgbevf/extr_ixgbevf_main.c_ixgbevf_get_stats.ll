; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbevf/extr_ixgbevf_main.c_ixgbevf_get_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbevf/extr_ixgbevf_main.c_ixgbevf_get_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.rtnl_link_stats64 = type { i32, i32, i64 }
%struct.ixgbevf_adapter = type { i32, i32, i32, %struct.ixgbevf_ring**, %struct.ixgbevf_ring**, %struct.ixgbevf_ring**, %struct.TYPE_3__ }
%struct.ixgbevf_ring = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i64, i64 }
%struct.TYPE_3__ = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.rtnl_link_stats64*)* @ixgbevf_get_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbevf_get_stats(%struct.net_device* %0, %struct.rtnl_link_stats64* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.rtnl_link_stats64*, align 8
  %5 = alloca %struct.ixgbevf_adapter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.ixgbevf_ring*, align 8
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.rtnl_link_stats64* %1, %struct.rtnl_link_stats64** %4, align 8
  %11 = load %struct.net_device*, %struct.net_device** %3, align 8
  %12 = call %struct.ixgbevf_adapter* @netdev_priv(%struct.net_device* %11)
  store %struct.ixgbevf_adapter* %12, %struct.ixgbevf_adapter** %5, align 8
  %13 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %5, align 8
  %14 = call i32 @ixgbevf_update_stats(%struct.ixgbevf_adapter* %13)
  %15 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %5, align 8
  %16 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %15, i32 0, i32 6
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %5, align 8
  %20 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %19, i32 0, i32 6
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = sub nsw i64 %18, %22
  %24 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %25 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %24, i32 0, i32 2
  store i64 %23, i64* %25, align 8
  %26 = call i32 (...) @rcu_read_lock()
  store i32 0, i32* %10, align 4
  br label %27

27:                                               ; preds = %74, %2
  %28 = load i32, i32* %10, align 4
  %29 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %5, align 8
  %30 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp slt i32 %28, %31
  br i1 %32, label %33, label %77

33:                                               ; preds = %27
  %34 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %5, align 8
  %35 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %34, i32 0, i32 5
  %36 = load %struct.ixgbevf_ring**, %struct.ixgbevf_ring*** %35, align 8
  %37 = load i32, i32* %10, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %36, i64 %38
  %40 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %39, align 8
  store %struct.ixgbevf_ring* %40, %struct.ixgbevf_ring** %9, align 8
  br label %41

41:                                               ; preds = %53, %33
  %42 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %9, align 8
  %43 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %42, i32 0, i32 1
  %44 = call i32 @u64_stats_fetch_begin_irq(i32* %43)
  store i32 %44, i32* %6, align 4
  %45 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %9, align 8
  %46 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  store i64 %48, i64* %7, align 8
  %49 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %9, align 8
  %50 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  store i64 %52, i64* %8, align 8
  br label %53

53:                                               ; preds = %41
  %54 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %9, align 8
  %55 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %54, i32 0, i32 1
  %56 = load i32, i32* %6, align 4
  %57 = call i64 @u64_stats_fetch_retry_irq(i32* %55, i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %41, label %59

59:                                               ; preds = %53
  %60 = load i64, i64* %7, align 8
  %61 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %62 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = sext i32 %63 to i64
  %65 = add nsw i64 %64, %60
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %62, align 4
  %67 = load i64, i64* %8, align 8
  %68 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %69 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = sext i32 %70 to i64
  %72 = add nsw i64 %71, %67
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %69, align 8
  br label %74

74:                                               ; preds = %59
  %75 = load i32, i32* %10, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %10, align 4
  br label %27

77:                                               ; preds = %27
  store i32 0, i32* %10, align 4
  br label %78

78:                                               ; preds = %95, %77
  %79 = load i32, i32* %10, align 4
  %80 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %5, align 8
  %81 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = icmp slt i32 %79, %82
  br i1 %83, label %84, label %98

84:                                               ; preds = %78
  %85 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %5, align 8
  %86 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %85, i32 0, i32 4
  %87 = load %struct.ixgbevf_ring**, %struct.ixgbevf_ring*** %86, align 8
  %88 = load i32, i32* %10, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %87, i64 %89
  %91 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %90, align 8
  store %struct.ixgbevf_ring* %91, %struct.ixgbevf_ring** %9, align 8
  %92 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %93 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %9, align 8
  %94 = call i32 @ixgbevf_get_tx_ring_stats(%struct.rtnl_link_stats64* %92, %struct.ixgbevf_ring* %93)
  br label %95

95:                                               ; preds = %84
  %96 = load i32, i32* %10, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %10, align 4
  br label %78

98:                                               ; preds = %78
  store i32 0, i32* %10, align 4
  br label %99

99:                                               ; preds = %116, %98
  %100 = load i32, i32* %10, align 4
  %101 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %5, align 8
  %102 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = icmp slt i32 %100, %103
  br i1 %104, label %105, label %119

105:                                              ; preds = %99
  %106 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %5, align 8
  %107 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %106, i32 0, i32 3
  %108 = load %struct.ixgbevf_ring**, %struct.ixgbevf_ring*** %107, align 8
  %109 = load i32, i32* %10, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %108, i64 %110
  %112 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %111, align 8
  store %struct.ixgbevf_ring* %112, %struct.ixgbevf_ring** %9, align 8
  %113 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %114 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %9, align 8
  %115 = call i32 @ixgbevf_get_tx_ring_stats(%struct.rtnl_link_stats64* %113, %struct.ixgbevf_ring* %114)
  br label %116

116:                                              ; preds = %105
  %117 = load i32, i32* %10, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %10, align 4
  br label %99

119:                                              ; preds = %99
  %120 = call i32 (...) @rcu_read_unlock()
  ret void
}

declare dso_local %struct.ixgbevf_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ixgbevf_update_stats(%struct.ixgbevf_adapter*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32 @u64_stats_fetch_begin_irq(i32*) #1

declare dso_local i64 @u64_stats_fetch_retry_irq(i32*, i32) #1

declare dso_local i32 @ixgbevf_get_tx_ring_stats(%struct.rtnl_link_stats64*, %struct.ixgbevf_ring*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
