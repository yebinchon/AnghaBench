; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_sriov.c_ixgbe_get_vf_queues.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_sriov.c_ixgbe_get_vf_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_adapter = type { i32, %struct.TYPE_2__*, i32, %struct.ixgbe_ring_feature*, %struct.net_device* }
%struct.TYPE_2__ = type { i32, i64, i64 }
%struct.ixgbe_ring_feature = type { i32 }
%struct.net_device = type { i32 }

@RING_F_VMDQ = common dso_local global i64 0, align 8
@IXGBE_VF_TX_QUEUES = common dso_local global i64 0, align 8
@IXGBE_VF_RX_QUEUES = common dso_local global i64 0, align 8
@IXGBE_VF_TRANS_VLAN = common dso_local global i64 0, align 8
@IXGBE_VF_DEF_QUEUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ixgbe_adapter*, i64*, i64)* @ixgbe_get_vf_queues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_get_vf_queues(%struct.ixgbe_adapter* %0, i64* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ixgbe_adapter*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.ixgbe_ring_feature*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ixgbe_adapter* %0, %struct.ixgbe_adapter** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %13 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %12, i32 0, i32 4
  %14 = load %struct.net_device*, %struct.net_device** %13, align 8
  store %struct.net_device* %14, %struct.net_device** %8, align 8
  %15 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %16 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %15, i32 0, i32 3
  %17 = load %struct.ixgbe_ring_feature*, %struct.ixgbe_ring_feature** %16, align 8
  %18 = load i64, i64* @RING_F_VMDQ, align 8
  %19 = getelementptr inbounds %struct.ixgbe_ring_feature, %struct.ixgbe_ring_feature* %17, i64 %18
  store %struct.ixgbe_ring_feature* %19, %struct.ixgbe_ring_feature** %9, align 8
  store i32 0, i32* %10, align 4
  %20 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %21 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %11, align 4
  %23 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %24 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = load i64, i64* %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  switch i32 %29, label %31 [
    i32 128, label %30
    i32 132, label %30
    i32 131, label %30
    i32 130, label %30
    i32 129, label %30
  ]

30:                                               ; preds = %3, %3, %3, %3, %3
  br label %32

31:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %99

32:                                               ; preds = %30
  %33 = load %struct.ixgbe_ring_feature*, %struct.ixgbe_ring_feature** %9, align 8
  %34 = getelementptr inbounds %struct.ixgbe_ring_feature, %struct.ixgbe_ring_feature* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = xor i32 %35, -1
  %37 = call i64 @__ALIGN_MASK(i32 1, i32 %36)
  %38 = load i64*, i64** %6, align 8
  %39 = load i64, i64* @IXGBE_VF_TX_QUEUES, align 8
  %40 = getelementptr inbounds i64, i64* %38, i64 %39
  store i64 %37, i64* %40, align 8
  %41 = load %struct.ixgbe_ring_feature*, %struct.ixgbe_ring_feature** %9, align 8
  %42 = getelementptr inbounds %struct.ixgbe_ring_feature, %struct.ixgbe_ring_feature* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = xor i32 %43, -1
  %45 = call i64 @__ALIGN_MASK(i32 1, i32 %44)
  %46 = load i64*, i64** %6, align 8
  %47 = load i64, i64* @IXGBE_VF_RX_QUEUES, align 8
  %48 = getelementptr inbounds i64, i64* %46, i64 %47
  store i64 %45, i64* %48, align 8
  %49 = load i32, i32* %11, align 4
  %50 = icmp sgt i32 %49, 1
  br i1 %50, label %51, label %57

51:                                               ; preds = %32
  %52 = load %struct.net_device*, %struct.net_device** %8, align 8
  %53 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %54 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @netdev_get_prio_tc_map(%struct.net_device* %52, i32 %55)
  store i32 %56, i32* %10, align 4
  br label %57

57:                                               ; preds = %51, %32
  %58 = load i32, i32* %11, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %57
  %61 = load i32, i32* %11, align 4
  %62 = sext i32 %61 to i64
  %63 = load i64*, i64** %6, align 8
  %64 = load i64, i64* @IXGBE_VF_TRANS_VLAN, align 8
  %65 = getelementptr inbounds i64, i64* %63, i64 %64
  store i64 %62, i64* %65, align 8
  br label %93

66:                                               ; preds = %57
  %67 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %68 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %67, i32 0, i32 1
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = load i64, i64* %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %84, label %75

75:                                               ; preds = %66
  %76 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %77 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %76, i32 0, i32 1
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = load i64, i64* %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %75, %66
  %85 = load i64*, i64** %6, align 8
  %86 = load i64, i64* @IXGBE_VF_TRANS_VLAN, align 8
  %87 = getelementptr inbounds i64, i64* %85, i64 %86
  store i64 1, i64* %87, align 8
  br label %92

88:                                               ; preds = %75
  %89 = load i64*, i64** %6, align 8
  %90 = load i64, i64* @IXGBE_VF_TRANS_VLAN, align 8
  %91 = getelementptr inbounds i64, i64* %89, i64 %90
  store i64 0, i64* %91, align 8
  br label %92

92:                                               ; preds = %88, %84
  br label %93

93:                                               ; preds = %92, %60
  %94 = load i32, i32* %10, align 4
  %95 = zext i32 %94 to i64
  %96 = load i64*, i64** %6, align 8
  %97 = load i64, i64* @IXGBE_VF_DEF_QUEUE, align 8
  %98 = getelementptr inbounds i64, i64* %96, i64 %97
  store i64 %95, i64* %98, align 8
  store i32 0, i32* %4, align 4
  br label %99

99:                                               ; preds = %93, %31
  %100 = load i32, i32* %4, align 4
  ret i32 %100
}

declare dso_local i64 @__ALIGN_MASK(i32, i32) #1

declare dso_local i32 @netdev_get_prio_tc_map(%struct.net_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
