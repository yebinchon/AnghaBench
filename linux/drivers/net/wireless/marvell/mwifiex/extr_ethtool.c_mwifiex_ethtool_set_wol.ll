; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_ethtool.c_mwifiex_ethtool_set_wol.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_ethtool.c_mwifiex_ethtool_set_wol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_wolinfo = type { i32 }
%struct.mwifiex_private = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@WAKE_UCAST = common dso_local global i32 0, align 4
@WAKE_MCAST = common dso_local global i32 0, align 4
@WAKE_BCAST = common dso_local global i32 0, align 4
@WAKE_PHY = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@HS_CFG_COND_UNICAST_DATA = common dso_local global i32 0, align 4
@HS_CFG_COND_MULTICAST_DATA = common dso_local global i32 0, align 4
@HS_CFG_COND_BROADCAST_DATA = common dso_local global i32 0, align 4
@HS_CFG_COND_MAC_EVENT = common dso_local global i32 0, align 4
@HS_CFG_COND_DEF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_wolinfo*)* @mwifiex_ethtool_set_wol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwifiex_ethtool_set_wol(%struct.net_device* %0, %struct.ethtool_wolinfo* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_wolinfo*, align 8
  %6 = alloca %struct.mwifiex_private*, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_wolinfo* %1, %struct.ethtool_wolinfo** %5, align 8
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call %struct.mwifiex_private* @mwifiex_netdev_get_priv(%struct.net_device* %8)
  store %struct.mwifiex_private* %9, %struct.mwifiex_private** %6, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %5, align 8
  %11 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @WAKE_UCAST, align 4
  %14 = load i32, i32* @WAKE_MCAST, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @WAKE_BCAST, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @WAKE_PHY, align 4
  %19 = or i32 %17, %18
  %20 = xor i32 %19, -1
  %21 = and i32 %12, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %2
  %24 = load i32, i32* @EOPNOTSUPP, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %87

26:                                               ; preds = %2
  %27 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %5, align 8
  %28 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @WAKE_UCAST, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %26
  %34 = load i32, i32* @HS_CFG_COND_UNICAST_DATA, align 4
  %35 = load i32, i32* %7, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %7, align 4
  br label %37

37:                                               ; preds = %33, %26
  %38 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %5, align 8
  %39 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @WAKE_MCAST, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %37
  %45 = load i32, i32* @HS_CFG_COND_MULTICAST_DATA, align 4
  %46 = load i32, i32* %7, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %7, align 4
  br label %48

48:                                               ; preds = %44, %37
  %49 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %5, align 8
  %50 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @WAKE_BCAST, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %48
  %56 = load i32, i32* @HS_CFG_COND_BROADCAST_DATA, align 4
  %57 = load i32, i32* %7, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %7, align 4
  br label %59

59:                                               ; preds = %55, %48
  %60 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %5, align 8
  %61 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @WAKE_PHY, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %59
  %67 = load i32, i32* @HS_CFG_COND_MAC_EVENT, align 4
  %68 = load i32, i32* %7, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %7, align 4
  br label %70

70:                                               ; preds = %66, %59
  %71 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %5, align 8
  %72 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %70
  %76 = load i32, i32* @HS_CFG_COND_DEF, align 4
  %77 = load i32, i32* %7, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %7, align 4
  br label %79

79:                                               ; preds = %75, %70
  %80 = load i32, i32* %7, align 4
  %81 = call i32 @cpu_to_le32(i32 %80)
  %82 = load %struct.mwifiex_private*, %struct.mwifiex_private** %6, align 8
  %83 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %82, i32 0, i32 0
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  store i32 %81, i32* %86, align 4
  store i32 0, i32* %3, align 4
  br label %87

87:                                               ; preds = %79, %23
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local %struct.mwifiex_private* @mwifiex_netdev_get_priv(%struct.net_device*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
