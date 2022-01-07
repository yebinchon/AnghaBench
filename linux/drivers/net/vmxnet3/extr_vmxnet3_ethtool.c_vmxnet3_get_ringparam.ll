; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/vmxnet3/extr_vmxnet3_ethtool.c_vmxnet3_get_ringparam.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/vmxnet3/extr_vmxnet3_ethtool.c_vmxnet3_get_ringparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_ringparam = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.vmxnet3_adapter = type { i32, i32, i32, i32 }

@VMXNET3_RX_RING_MAX_SIZE = common dso_local global i32 0, align 4
@VMXNET3_TX_RING_MAX_SIZE = common dso_local global i32 0, align 4
@VMXNET3_RXDATA_DESC_MAX_SIZE = common dso_local global i32 0, align 4
@VMXNET3_RX_RING2_MAX_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_ringparam*)* @vmxnet3_get_ringparam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmxnet3_get_ringparam(%struct.net_device* %0, %struct.ethtool_ringparam* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_ringparam*, align 8
  %5 = alloca %struct.vmxnet3_adapter*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_ringparam* %1, %struct.ethtool_ringparam** %4, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.vmxnet3_adapter* @netdev_priv(%struct.net_device* %6)
  store %struct.vmxnet3_adapter* %7, %struct.vmxnet3_adapter** %5, align 8
  %8 = load i32, i32* @VMXNET3_RX_RING_MAX_SIZE, align 4
  %9 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %4, align 8
  %10 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %9, i32 0, i32 7
  store i32 %8, i32* %10, align 4
  %11 = load i32, i32* @VMXNET3_TX_RING_MAX_SIZE, align 4
  %12 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %4, align 8
  %13 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %12, i32 0, i32 6
  store i32 %11, i32* %13, align 4
  %14 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %5, align 8
  %15 = call i64 @VMXNET3_VERSION_GE_3(%struct.vmxnet3_adapter* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* @VMXNET3_RXDATA_DESC_MAX_SIZE, align 4
  br label %20

19:                                               ; preds = %2
  br label %20

20:                                               ; preds = %19, %17
  %21 = phi i32 [ %18, %17 ], [ 0, %19 ]
  %22 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %4, align 8
  %23 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %22, i32 0, i32 5
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* @VMXNET3_RX_RING2_MAX_SIZE, align 4
  %25 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %4, align 8
  %26 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %25, i32 0, i32 4
  store i32 %24, i32* %26, align 4
  %27 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %5, align 8
  %28 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %4, align 8
  %31 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %30, i32 0, i32 3
  store i32 %29, i32* %31, align 4
  %32 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %5, align 8
  %33 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %4, align 8
  %36 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 4
  %37 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %5, align 8
  %38 = call i64 @VMXNET3_VERSION_GE_3(%struct.vmxnet3_adapter* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %20
  %41 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %5, align 8
  %42 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  br label %45

44:                                               ; preds = %20
  br label %45

45:                                               ; preds = %44, %40
  %46 = phi i32 [ %43, %40 ], [ 0, %44 ]
  %47 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %4, align 8
  %48 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  %49 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %5, align 8
  %50 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %4, align 8
  %53 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 4
  ret void
}

declare dso_local %struct.vmxnet3_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @VMXNET3_VERSION_GE_3(%struct.vmxnet3_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
