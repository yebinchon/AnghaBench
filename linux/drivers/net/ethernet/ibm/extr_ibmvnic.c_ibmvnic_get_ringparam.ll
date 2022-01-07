; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/extr_ibmvnic.c_ibmvnic_get_ringparam.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/extr_ibmvnic.c_ibmvnic_get_ringparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_ringparam = type { i64, i64, i32, i32, i64, i64, i8*, i8* }
%struct.ibmvnic_adapter = type { i32, i32, i32, i8*, i8* }

@IBMVNIC_USE_SERVER_MAXES = common dso_local global i32 0, align 4
@IBMVNIC_MAX_QUEUE_SZ = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_ringparam*)* @ibmvnic_get_ringparam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ibmvnic_get_ringparam(%struct.net_device* %0, %struct.ethtool_ringparam* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_ringparam*, align 8
  %5 = alloca %struct.ibmvnic_adapter*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_ringparam* %1, %struct.ethtool_ringparam** %4, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.ibmvnic_adapter* @netdev_priv(%struct.net_device* %6)
  store %struct.ibmvnic_adapter* %7, %struct.ibmvnic_adapter** %5, align 8
  %8 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %5, align 8
  %9 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @IBMVNIC_USE_SERVER_MAXES, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %25

14:                                               ; preds = %2
  %15 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %5, align 8
  %16 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %15, i32 0, i32 4
  %17 = load i8*, i8** %16, align 8
  %18 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %4, align 8
  %19 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %18, i32 0, i32 7
  store i8* %17, i8** %19, align 8
  %20 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %5, align 8
  %21 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %20, i32 0, i32 3
  %22 = load i8*, i8** %21, align 8
  %23 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %4, align 8
  %24 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %23, i32 0, i32 6
  store i8* %22, i8** %24, align 8
  br label %32

25:                                               ; preds = %2
  %26 = load i8*, i8** @IBMVNIC_MAX_QUEUE_SZ, align 8
  %27 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %4, align 8
  %28 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %27, i32 0, i32 7
  store i8* %26, i8** %28, align 8
  %29 = load i8*, i8** @IBMVNIC_MAX_QUEUE_SZ, align 8
  %30 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %4, align 8
  %31 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %30, i32 0, i32 6
  store i8* %29, i8** %31, align 8
  br label %32

32:                                               ; preds = %25, %14
  %33 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %4, align 8
  %34 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %33, i32 0, i32 5
  store i64 0, i64* %34, align 8
  %35 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %4, align 8
  %36 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %35, i32 0, i32 4
  store i64 0, i64* %36, align 8
  %37 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %5, align 8
  %38 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %4, align 8
  %41 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %40, i32 0, i32 3
  store i32 %39, i32* %41, align 4
  %42 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %5, align 8
  %43 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %4, align 8
  %46 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 8
  %47 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %4, align 8
  %48 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %47, i32 0, i32 1
  store i64 0, i64* %48, align 8
  %49 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %4, align 8
  %50 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %49, i32 0, i32 0
  store i64 0, i64* %50, align 8
  ret void
}

declare dso_local %struct.ibmvnic_adapter* @netdev_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
