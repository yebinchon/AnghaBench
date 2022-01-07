; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/iavf/extr_iavf_ethtool.c_iavf_get_ethtool_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/iavf/extr_iavf_ethtool.c_iavf_get_ethtool_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_stats = type { i32 }
%struct.iavf_adapter = type { i32, %struct.iavf_ring*, %struct.iavf_ring* }
%struct.iavf_ring = type { i32 }

@iavf_gstrings_stats = common dso_local global i32 0, align 4
@IAVF_MAX_REQ_QUEUES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_stats*, i32*)* @iavf_get_ethtool_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iavf_get_ethtool_stats(%struct.net_device* %0, %struct.ethtool_stats* %1, i32* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_stats*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.iavf_adapter*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.iavf_ring*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_stats* %1, %struct.ethtool_stats** %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = call %struct.iavf_adapter* @netdev_priv(%struct.net_device* %10)
  store %struct.iavf_adapter* %11, %struct.iavf_adapter** %7, align 8
  %12 = load %struct.iavf_adapter*, %struct.iavf_adapter** %7, align 8
  %13 = load i32, i32* @iavf_gstrings_stats, align 4
  %14 = call i32 @iavf_add_ethtool_stats(i32** %6, %struct.iavf_adapter* %12, i32 %13)
  %15 = call i32 (...) @rcu_read_lock()
  store i32 0, i32* %8, align 4
  br label %16

16:                                               ; preds = %55, %3
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* @IAVF_MAX_REQ_QUEUES, align 4
  %19 = icmp ult i32 %17, %18
  br i1 %19, label %20, label %58

20:                                               ; preds = %16
  %21 = load i32, i32* %8, align 4
  %22 = load %struct.iavf_adapter*, %struct.iavf_adapter** %7, align 8
  %23 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ult i32 %21, %24
  br i1 %25, label %26, label %33

26:                                               ; preds = %20
  %27 = load %struct.iavf_adapter*, %struct.iavf_adapter** %7, align 8
  %28 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %27, i32 0, i32 2
  %29 = load %struct.iavf_ring*, %struct.iavf_ring** %28, align 8
  %30 = load i32, i32* %8, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.iavf_ring, %struct.iavf_ring* %29, i64 %31
  br label %34

33:                                               ; preds = %20
  br label %34

34:                                               ; preds = %33, %26
  %35 = phi %struct.iavf_ring* [ %32, %26 ], [ null, %33 ]
  store %struct.iavf_ring* %35, %struct.iavf_ring** %9, align 8
  %36 = load %struct.iavf_ring*, %struct.iavf_ring** %9, align 8
  %37 = call i32 @iavf_add_queue_stats(i32** %6, %struct.iavf_ring* %36)
  %38 = load i32, i32* %8, align 4
  %39 = load %struct.iavf_adapter*, %struct.iavf_adapter** %7, align 8
  %40 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp ult i32 %38, %41
  br i1 %42, label %43, label %50

43:                                               ; preds = %34
  %44 = load %struct.iavf_adapter*, %struct.iavf_adapter** %7, align 8
  %45 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %44, i32 0, i32 1
  %46 = load %struct.iavf_ring*, %struct.iavf_ring** %45, align 8
  %47 = load i32, i32* %8, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds %struct.iavf_ring, %struct.iavf_ring* %46, i64 %48
  br label %51

50:                                               ; preds = %34
  br label %51

51:                                               ; preds = %50, %43
  %52 = phi %struct.iavf_ring* [ %49, %43 ], [ null, %50 ]
  store %struct.iavf_ring* %52, %struct.iavf_ring** %9, align 8
  %53 = load %struct.iavf_ring*, %struct.iavf_ring** %9, align 8
  %54 = call i32 @iavf_add_queue_stats(i32** %6, %struct.iavf_ring* %53)
  br label %55

55:                                               ; preds = %51
  %56 = load i32, i32* %8, align 4
  %57 = add i32 %56, 1
  store i32 %57, i32* %8, align 4
  br label %16

58:                                               ; preds = %16
  %59 = call i32 (...) @rcu_read_unlock()
  ret void
}

declare dso_local %struct.iavf_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @iavf_add_ethtool_stats(i32**, %struct.iavf_adapter*, i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32 @iavf_add_queue_stats(i32**, %struct.iavf_ring*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
