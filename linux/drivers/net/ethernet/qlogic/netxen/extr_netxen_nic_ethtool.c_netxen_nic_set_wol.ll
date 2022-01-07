; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/netxen/extr_netxen_nic_ethtool.c_netxen_nic_set_wol.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/netxen/extr_netxen_nic_ethtool.c_netxen_nic_set_wol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_wolinfo = type { i32 }
%struct.netxen_adapter = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@WAKE_MAGIC = common dso_local global i32 0, align 4
@NETXEN_WOL_CONFIG_NV = common dso_local global i32 0, align 4
@NETXEN_WOL_CONFIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_wolinfo*)* @netxen_nic_set_wol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netxen_nic_set_wol(%struct.net_device* %0, %struct.ethtool_wolinfo* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_wolinfo*, align 8
  %6 = alloca %struct.netxen_adapter*, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_wolinfo* %1, %struct.ethtool_wolinfo** %5, align 8
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call %struct.netxen_adapter* @netdev_priv(%struct.net_device* %8)
  store %struct.netxen_adapter* %9, %struct.netxen_adapter** %6, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.netxen_adapter*, %struct.netxen_adapter** %6, align 8
  %11 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @NX_IS_REVISION_P2(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @EOPNOTSUPP, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %80

19:                                               ; preds = %2
  %20 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %5, align 8
  %21 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @WAKE_MAGIC, align 4
  %24 = xor i32 %23, -1
  %25 = and i32 %22, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %19
  %28 = load i32, i32* @EOPNOTSUPP, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %80

30:                                               ; preds = %19
  %31 = load %struct.netxen_adapter*, %struct.netxen_adapter** %6, align 8
  %32 = load i32, i32* @NETXEN_WOL_CONFIG_NV, align 4
  %33 = call i32 @NXRD32(%struct.netxen_adapter* %31, i32 %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = load %struct.netxen_adapter*, %struct.netxen_adapter** %6, align 8
  %36 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = shl i32 1, %37
  %39 = and i32 %34, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %30
  %42 = load i32, i32* @EOPNOTSUPP, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %80

44:                                               ; preds = %30
  %45 = load %struct.netxen_adapter*, %struct.netxen_adapter** %6, align 8
  %46 = load i32, i32* @NETXEN_WOL_CONFIG, align 4
  %47 = call i32 @NXRD32(%struct.netxen_adapter* %45, i32 %46)
  store i32 %47, i32* %7, align 4
  %48 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %5, align 8
  %49 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @WAKE_MAGIC, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %64

54:                                               ; preds = %44
  %55 = load %struct.netxen_adapter*, %struct.netxen_adapter** %6, align 8
  %56 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = zext i32 %57 to i64
  %59 = shl i64 1, %58
  %60 = load i32, i32* %7, align 4
  %61 = sext i32 %60 to i64
  %62 = or i64 %61, %59
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %7, align 4
  br label %75

64:                                               ; preds = %44
  %65 = load %struct.netxen_adapter*, %struct.netxen_adapter** %6, align 8
  %66 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = zext i32 %67 to i64
  %69 = shl i64 1, %68
  %70 = xor i64 %69, -1
  %71 = load i32, i32* %7, align 4
  %72 = sext i32 %71 to i64
  %73 = and i64 %72, %70
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* %7, align 4
  br label %75

75:                                               ; preds = %64, %54
  %76 = load %struct.netxen_adapter*, %struct.netxen_adapter** %6, align 8
  %77 = load i32, i32* @NETXEN_WOL_CONFIG, align 4
  %78 = load i32, i32* %7, align 4
  %79 = call i32 @NXWR32(%struct.netxen_adapter* %76, i32 %77, i32 %78)
  store i32 0, i32* %3, align 4
  br label %80

80:                                               ; preds = %75, %41, %27, %16
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local %struct.netxen_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @NX_IS_REVISION_P2(i32) #1

declare dso_local i32 @NXRD32(%struct.netxen_adapter*, i32) #1

declare dso_local i32 @NXWR32(%struct.netxen_adapter*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
