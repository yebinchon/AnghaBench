; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/netxen/extr_netxen_nic_main.c_netxen_store_bridged_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/netxen/extr_netxen_nic_main.c_netxen_store_bridged_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.net_device = type { i32 }
%struct.netxen_adapter = type { i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@NX_FW_CAPABILITY_BDG = common dso_local global i32 0, align 4
@NETXEN_ADAPTER_UP_MAGIC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @netxen_store_bridged_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netxen_store_bridged_mode(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca %struct.netxen_adapter*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %13 = load %struct.device*, %struct.device** %5, align 8
  %14 = call %struct.net_device* @to_net_dev(%struct.device* %13)
  store %struct.net_device* %14, %struct.net_device** %9, align 8
  %15 = load %struct.net_device*, %struct.net_device** %9, align 8
  %16 = call %struct.netxen_adapter* @netdev_priv(%struct.net_device* %15)
  store %struct.netxen_adapter* %16, %struct.netxen_adapter** %10, align 8
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %12, align 4
  %19 = load %struct.netxen_adapter*, %struct.netxen_adapter** %10, align 8
  %20 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @NX_FW_CAPABILITY_BDG, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %4
  br label %51

26:                                               ; preds = %4
  %27 = load %struct.netxen_adapter*, %struct.netxen_adapter** %10, align 8
  %28 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @NETXEN_ADAPTER_UP_MAGIC, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  br label %51

33:                                               ; preds = %26
  %34 = load i8*, i8** %7, align 8
  %35 = call i64 @kstrtoul(i8* %34, i32 2, i64* %11)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  br label %51

38:                                               ; preds = %33
  %39 = load %struct.netxen_adapter*, %struct.netxen_adapter** %10, align 8
  %40 = load i64, i64* %11, align 8
  %41 = icmp ne i64 %40, 0
  %42 = xor i1 %41, true
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = call i32 @netxen_config_bridged_mode(%struct.netxen_adapter* %39, i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %38
  %48 = load i64, i64* %8, align 8
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %12, align 4
  br label %50

50:                                               ; preds = %47, %38
  br label %51

51:                                               ; preds = %50, %37, %32, %25
  %52 = load i32, i32* %12, align 4
  ret i32 %52
}

declare dso_local %struct.net_device* @to_net_dev(%struct.device*) #1

declare dso_local %struct.netxen_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @netxen_config_bridged_mode(%struct.netxen_adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
