; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/netxen/extr_netxen_nic_ethtool.c_netxen_get_dump_flag.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/netxen/extr_netxen_nic_ethtool.c_netxen_get_dump_flag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_dump = type { i32, i32, i32 }
%struct.netxen_adapter = type { i32, i64, %struct.netxen_minidump }
%struct.netxen_minidump = type { i32, i32, i32 }

@ETH_FW_DUMP_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_dump*)* @netxen_get_dump_flag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netxen_get_dump_flag(%struct.net_device* %0, %struct.ethtool_dump* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_dump*, align 8
  %5 = alloca %struct.netxen_adapter*, align 8
  %6 = alloca %struct.netxen_minidump*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_dump* %1, %struct.ethtool_dump** %4, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.netxen_adapter* @netdev_priv(%struct.net_device* %7)
  store %struct.netxen_adapter* %8, %struct.netxen_adapter** %5, align 8
  %9 = load %struct.netxen_adapter*, %struct.netxen_adapter** %5, align 8
  %10 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %9, i32 0, i32 2
  store %struct.netxen_minidump* %10, %struct.netxen_minidump** %6, align 8
  %11 = load %struct.netxen_adapter*, %struct.netxen_adapter** %5, align 8
  %12 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %2
  %16 = load %struct.netxen_minidump*, %struct.netxen_minidump** %6, align 8
  %17 = getelementptr inbounds %struct.netxen_minidump, %struct.netxen_minidump* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.ethtool_dump*, %struct.ethtool_dump** %4, align 8
  %20 = getelementptr inbounds %struct.ethtool_dump, %struct.ethtool_dump* %19, i32 0, i32 2
  store i32 %18, i32* %20, align 4
  br label %24

21:                                               ; preds = %2
  %22 = load %struct.ethtool_dump*, %struct.ethtool_dump** %4, align 8
  %23 = getelementptr inbounds %struct.ethtool_dump, %struct.ethtool_dump* %22, i32 0, i32 2
  store i32 0, i32* %23, align 4
  br label %24

24:                                               ; preds = %21, %15
  %25 = load %struct.netxen_minidump*, %struct.netxen_minidump** %6, align 8
  %26 = getelementptr inbounds %struct.netxen_minidump, %struct.netxen_minidump* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %24
  %30 = load i32, i32* @ETH_FW_DUMP_DISABLE, align 4
  %31 = load %struct.ethtool_dump*, %struct.ethtool_dump** %4, align 8
  %32 = getelementptr inbounds %struct.ethtool_dump, %struct.ethtool_dump* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  br label %39

33:                                               ; preds = %24
  %34 = load %struct.netxen_minidump*, %struct.netxen_minidump** %6, align 8
  %35 = getelementptr inbounds %struct.netxen_minidump, %struct.netxen_minidump* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.ethtool_dump*, %struct.ethtool_dump** %4, align 8
  %38 = getelementptr inbounds %struct.ethtool_dump, %struct.ethtool_dump* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  br label %39

39:                                               ; preds = %33, %29
  %40 = load %struct.netxen_adapter*, %struct.netxen_adapter** %5, align 8
  %41 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.ethtool_dump*, %struct.ethtool_dump** %4, align 8
  %44 = getelementptr inbounds %struct.ethtool_dump, %struct.ethtool_dump* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  ret i32 0
}

declare dso_local %struct.netxen_adapter* @netdev_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
