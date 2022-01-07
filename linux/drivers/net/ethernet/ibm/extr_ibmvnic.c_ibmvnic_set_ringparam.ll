; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/extr_ibmvnic.c_ibmvnic_set_ringparam.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/extr_ibmvnic.c_ibmvnic_set_ringparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_ringparam = type { i64, i64 }
%struct.ibmvnic_adapter = type { i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

@.str = private unnamed_addr constant [91 x i8] c"Could not match full ringsize request. Requested: RX %d, TX %d; Allowed: RX %llu, TX %llu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_ringparam*)* @ibmvnic_set_ringparam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ibmvnic_set_ringparam(%struct.net_device* %0, %struct.ethtool_ringparam* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_ringparam*, align 8
  %5 = alloca %struct.ibmvnic_adapter*, align 8
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_ringparam* %1, %struct.ethtool_ringparam** %4, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.ibmvnic_adapter* @netdev_priv(%struct.net_device* %7)
  store %struct.ibmvnic_adapter* %8, %struct.ibmvnic_adapter** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %4, align 8
  %10 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %5, align 8
  %13 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store i64 %11, i64* %14, align 8
  %15 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %4, align 8
  %16 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %5, align 8
  %19 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  store i64 %17, i64* %20, align 8
  %21 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %5, align 8
  %22 = call i32 @wait_for_reset(%struct.ibmvnic_adapter* %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %56, label %25

25:                                               ; preds = %2
  %26 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %5, align 8
  %27 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %4, align 8
  %30 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %28, %31
  br i1 %32, label %41, label %33

33:                                               ; preds = %25
  %34 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %5, align 8
  %35 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %4, align 8
  %38 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %36, %39
  br i1 %40, label %41, label %56

41:                                               ; preds = %33, %25
  %42 = load %struct.net_device*, %struct.net_device** %3, align 8
  %43 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %4, align 8
  %44 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %4, align 8
  %47 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %5, align 8
  %50 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %5, align 8
  %53 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @netdev_info(%struct.net_device* %42, i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str, i64 0, i64 0), i64 %45, i64 %48, i64 %51, i64 %54)
  br label %56

56:                                               ; preds = %41, %33, %2
  %57 = load i32, i32* %6, align 4
  ret i32 %57
}

declare dso_local %struct.ibmvnic_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @wait_for_reset(%struct.ibmvnic_adapter*) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*, i64, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
