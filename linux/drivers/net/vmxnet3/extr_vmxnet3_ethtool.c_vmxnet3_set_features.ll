; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/vmxnet3/extr_vmxnet3_ethtool.c_vmxnet3_set_features.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/vmxnet3/extr_vmxnet3_ethtool.c_vmxnet3_set_features.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.vmxnet3_adapter = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@NETIF_F_RXCSUM = common dso_local global i32 0, align 4
@NETIF_F_LRO = common dso_local global i32 0, align 4
@NETIF_F_HW_VLAN_CTAG_RX = common dso_local global i32 0, align 4
@UPT1_F_RXCSUM = common dso_local global i32 0, align 4
@UPT1_F_LRO = common dso_local global i32 0, align 4
@UPT1_F_RXVLAN = common dso_local global i32 0, align 4
@VMXNET3_REG_CMD = common dso_local global i32 0, align 4
@VMXNET3_CMD_UPDATE_FEATURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vmxnet3_set_features(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.vmxnet3_adapter*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.vmxnet3_adapter* @netdev_priv(%struct.net_device* %8)
  store %struct.vmxnet3_adapter* %9, %struct.vmxnet3_adapter** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = load %struct.net_device*, %struct.net_device** %3, align 8
  %12 = getelementptr inbounds %struct.net_device, %struct.net_device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = xor i32 %10, %13
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @NETIF_F_RXCSUM, align 4
  %17 = load i32, i32* @NETIF_F_LRO, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_RX, align 4
  %20 = or i32 %18, %19
  %21 = and i32 %15, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %114

23:                                               ; preds = %2
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @NETIF_F_RXCSUM, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %23
  %29 = load i32, i32* @UPT1_F_RXCSUM, align 4
  %30 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %5, align 8
  %31 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %30, i32 0, i32 1
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %36, %29
  store i32 %37, i32* %35, align 4
  br label %49

38:                                               ; preds = %23
  %39 = load i32, i32* @UPT1_F_RXCSUM, align 4
  %40 = xor i32 %39, -1
  %41 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %5, align 8
  %42 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %41, i32 0, i32 1
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = and i32 %47, %40
  store i32 %48, i32* %46, align 4
  br label %49

49:                                               ; preds = %38, %28
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* @NETIF_F_LRO, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %64

54:                                               ; preds = %49
  %55 = load i32, i32* @UPT1_F_LRO, align 4
  %56 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %5, align 8
  %57 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %56, i32 0, i32 1
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = or i32 %62, %55
  store i32 %63, i32* %61, align 4
  br label %75

64:                                               ; preds = %49
  %65 = load i32, i32* @UPT1_F_LRO, align 4
  %66 = xor i32 %65, -1
  %67 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %5, align 8
  %68 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %67, i32 0, i32 1
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = and i32 %73, %66
  store i32 %74, i32* %72, align 4
  br label %75

75:                                               ; preds = %64, %54
  %76 = load i32, i32* %4, align 4
  %77 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_RX, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %90

80:                                               ; preds = %75
  %81 = load i32, i32* @UPT1_F_RXVLAN, align 4
  %82 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %5, align 8
  %83 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %82, i32 0, i32 1
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = or i32 %88, %81
  store i32 %89, i32* %87, align 4
  br label %101

90:                                               ; preds = %75
  %91 = load i32, i32* @UPT1_F_RXVLAN, align 4
  %92 = xor i32 %91, -1
  %93 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %5, align 8
  %94 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %93, i32 0, i32 1
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = and i32 %99, %92
  store i32 %100, i32* %98, align 4
  br label %101

101:                                              ; preds = %90, %80
  %102 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %5, align 8
  %103 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %102, i32 0, i32 0
  %104 = load i64, i64* %6, align 8
  %105 = call i32 @spin_lock_irqsave(i32* %103, i64 %104)
  %106 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %5, align 8
  %107 = load i32, i32* @VMXNET3_REG_CMD, align 4
  %108 = load i32, i32* @VMXNET3_CMD_UPDATE_FEATURE, align 4
  %109 = call i32 @VMXNET3_WRITE_BAR1_REG(%struct.vmxnet3_adapter* %106, i32 %107, i32 %108)
  %110 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %5, align 8
  %111 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %110, i32 0, i32 0
  %112 = load i64, i64* %6, align 8
  %113 = call i32 @spin_unlock_irqrestore(i32* %111, i64 %112)
  br label %114

114:                                              ; preds = %101, %2
  ret i32 0
}

declare dso_local %struct.vmxnet3_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @VMXNET3_WRITE_BAR1_REG(%struct.vmxnet3_adapter*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
