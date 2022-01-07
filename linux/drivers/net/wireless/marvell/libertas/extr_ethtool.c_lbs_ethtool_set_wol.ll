; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_ethtool.c_lbs_ethtool_set_wol.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_ethtool.c_lbs_ethtool_set_wol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.lbs_private* }
%struct.lbs_private = type { i32 }
%struct.ethtool_wolinfo = type { i32 }

@WAKE_UCAST = common dso_local global i32 0, align 4
@WAKE_MCAST = common dso_local global i32 0, align 4
@WAKE_BCAST = common dso_local global i32 0, align 4
@WAKE_PHY = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@EHS_WAKE_ON_UNICAST_DATA = common dso_local global i32 0, align 4
@EHS_WAKE_ON_MULTICAST_DATA = common dso_local global i32 0, align 4
@EHS_WAKE_ON_BROADCAST_DATA = common dso_local global i32 0, align 4
@EHS_WAKE_ON_MAC_EVENT = common dso_local global i32 0, align 4
@EHS_REMOVE_WAKEUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_wolinfo*)* @lbs_ethtool_set_wol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lbs_ethtool_set_wol(%struct.net_device* %0, %struct.ethtool_wolinfo* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_wolinfo*, align 8
  %6 = alloca %struct.lbs_private*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_wolinfo* %1, %struct.ethtool_wolinfo** %5, align 8
  %7 = load %struct.net_device*, %struct.net_device** %4, align 8
  %8 = getelementptr inbounds %struct.net_device, %struct.net_device* %7, i32 0, i32 0
  %9 = load %struct.lbs_private*, %struct.lbs_private** %8, align 8
  store %struct.lbs_private* %9, %struct.lbs_private** %6, align 8
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
  br label %92

26:                                               ; preds = %2
  %27 = load %struct.lbs_private*, %struct.lbs_private** %6, align 8
  %28 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %27, i32 0, i32 0
  store i32 0, i32* %28, align 4
  %29 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %5, align 8
  %30 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @WAKE_UCAST, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %26
  %36 = load i32, i32* @EHS_WAKE_ON_UNICAST_DATA, align 4
  %37 = load %struct.lbs_private*, %struct.lbs_private** %6, align 8
  %38 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %39, %36
  store i32 %40, i32* %38, align 4
  br label %41

41:                                               ; preds = %35, %26
  %42 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %5, align 8
  %43 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @WAKE_MCAST, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %41
  %49 = load i32, i32* @EHS_WAKE_ON_MULTICAST_DATA, align 4
  %50 = load %struct.lbs_private*, %struct.lbs_private** %6, align 8
  %51 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %52, %49
  store i32 %53, i32* %51, align 4
  br label %54

54:                                               ; preds = %48, %41
  %55 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %5, align 8
  %56 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @WAKE_BCAST, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %54
  %62 = load i32, i32* @EHS_WAKE_ON_BROADCAST_DATA, align 4
  %63 = load %struct.lbs_private*, %struct.lbs_private** %6, align 8
  %64 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = or i32 %65, %62
  store i32 %66, i32* %64, align 4
  br label %67

67:                                               ; preds = %61, %54
  %68 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %5, align 8
  %69 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @WAKE_PHY, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %67
  %75 = load i32, i32* @EHS_WAKE_ON_MAC_EVENT, align 4
  %76 = load %struct.lbs_private*, %struct.lbs_private** %6, align 8
  %77 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = or i32 %78, %75
  store i32 %79, i32* %77, align 4
  br label %80

80:                                               ; preds = %74, %67
  %81 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %5, align 8
  %82 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %80
  %86 = load i32, i32* @EHS_REMOVE_WAKEUP, align 4
  %87 = load %struct.lbs_private*, %struct.lbs_private** %6, align 8
  %88 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = or i32 %89, %86
  store i32 %90, i32* %88, align 4
  br label %91

91:                                               ; preds = %85, %80
  store i32 0, i32* %3, align 4
  br label %92

92:                                               ; preds = %91, %23
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
