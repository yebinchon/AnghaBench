; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/extr_qca_debug.c_qcaspi_set_ringparam.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/extr_qca_debug.c_qcaspi_set_ringparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.net_device_ops* }
%struct.net_device_ops = type { i32 (%struct.net_device.0*)*, i32 (%struct.net_device.1*)* }
%struct.net_device.0 = type opaque
%struct.net_device.1 = type opaque
%struct.ethtool_ringparam = type { i32, i64, i64, i64 }
%struct.qcaspi = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@u32 = common dso_local global i32 0, align 4
@TX_RING_MIN_LEN = common dso_local global i32 0, align 4
@u16 = common dso_local global i32 0, align 4
@TX_RING_MAX_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_ringparam*)* @qcaspi_set_ringparam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qcaspi_set_ringparam(%struct.net_device* %0, %struct.ethtool_ringparam* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_ringparam*, align 8
  %6 = alloca %struct.net_device_ops*, align 8
  %7 = alloca %struct.qcaspi*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_ringparam* %1, %struct.ethtool_ringparam** %5, align 8
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = getelementptr inbounds %struct.net_device, %struct.net_device* %8, i32 0, i32 0
  %10 = load %struct.net_device_ops*, %struct.net_device_ops** %9, align 8
  store %struct.net_device_ops* %10, %struct.net_device_ops** %6, align 8
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = call %struct.qcaspi* @netdev_priv(%struct.net_device* %11)
  store %struct.qcaspi* %12, %struct.qcaspi** %7, align 8
  %13 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %14 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %13, i32 0, i32 3
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %27, label %17

17:                                               ; preds = %2
  %18 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %19 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %17
  %23 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %24 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %22, %17, %2
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %72

30:                                               ; preds = %22
  %31 = load %struct.net_device*, %struct.net_device** %4, align 8
  %32 = call i64 @netif_running(%struct.net_device* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %30
  %35 = load %struct.net_device_ops*, %struct.net_device_ops** %6, align 8
  %36 = getelementptr inbounds %struct.net_device_ops, %struct.net_device_ops* %35, i32 0, i32 1
  %37 = load i32 (%struct.net_device.1*)*, i32 (%struct.net_device.1*)** %36, align 8
  %38 = load %struct.net_device*, %struct.net_device** %4, align 8
  %39 = bitcast %struct.net_device* %38 to %struct.net_device.1*
  %40 = call i32 %37(%struct.net_device.1* %39)
  br label %41

41:                                               ; preds = %34, %30
  %42 = load i32, i32* @u32, align 4
  %43 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %44 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @TX_RING_MIN_LEN, align 4
  %47 = call i32 @max_t(i32 %42, i32 %45, i32 %46)
  %48 = load %struct.qcaspi*, %struct.qcaspi** %7, align 8
  %49 = getelementptr inbounds %struct.qcaspi, %struct.qcaspi* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  store i32 %47, i32* %50, align 4
  %51 = load i32, i32* @u16, align 4
  %52 = load %struct.qcaspi*, %struct.qcaspi** %7, align 8
  %53 = getelementptr inbounds %struct.qcaspi, %struct.qcaspi* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @TX_RING_MAX_LEN, align 4
  %57 = call i32 @min_t(i32 %51, i32 %55, i32 %56)
  %58 = load %struct.qcaspi*, %struct.qcaspi** %7, align 8
  %59 = getelementptr inbounds %struct.qcaspi, %struct.qcaspi* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  store i32 %57, i32* %60, align 4
  %61 = load %struct.net_device*, %struct.net_device** %4, align 8
  %62 = call i64 @netif_running(%struct.net_device* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %41
  %65 = load %struct.net_device_ops*, %struct.net_device_ops** %6, align 8
  %66 = getelementptr inbounds %struct.net_device_ops, %struct.net_device_ops* %65, i32 0, i32 0
  %67 = load i32 (%struct.net_device.0*)*, i32 (%struct.net_device.0*)** %66, align 8
  %68 = load %struct.net_device*, %struct.net_device** %4, align 8
  %69 = bitcast %struct.net_device* %68 to %struct.net_device.0*
  %70 = call i32 %67(%struct.net_device.0* %69)
  br label %71

71:                                               ; preds = %64, %41
  store i32 0, i32* %3, align 4
  br label %72

72:                                               ; preds = %71, %27
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local %struct.qcaspi* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @max_t(i32, i32, i32) #1

declare dso_local i32 @min_t(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
