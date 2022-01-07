; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_ethtool.c_lbs_ethtool_get_wol.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_ethtool.c_lbs_ethtool_get_wol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.lbs_private* }
%struct.lbs_private = type { i32 }
%struct.ethtool_wolinfo = type { i32, i32 }

@WAKE_UCAST = common dso_local global i32 0, align 4
@WAKE_MCAST = common dso_local global i32 0, align 4
@WAKE_BCAST = common dso_local global i32 0, align 4
@WAKE_PHY = common dso_local global i32 0, align 4
@EHS_REMOVE_WAKEUP = common dso_local global i32 0, align 4
@EHS_WAKE_ON_UNICAST_DATA = common dso_local global i32 0, align 4
@EHS_WAKE_ON_MULTICAST_DATA = common dso_local global i32 0, align 4
@EHS_WAKE_ON_BROADCAST_DATA = common dso_local global i32 0, align 4
@EHS_WAKE_ON_MAC_EVENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_wolinfo*)* @lbs_ethtool_get_wol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lbs_ethtool_get_wol(%struct.net_device* %0, %struct.ethtool_wolinfo* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_wolinfo*, align 8
  %5 = alloca %struct.lbs_private*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_wolinfo* %1, %struct.ethtool_wolinfo** %4, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = getelementptr inbounds %struct.net_device, %struct.net_device* %6, i32 0, i32 0
  %8 = load %struct.lbs_private*, %struct.lbs_private** %7, align 8
  store %struct.lbs_private* %8, %struct.lbs_private** %5, align 8
  %9 = load i32, i32* @WAKE_UCAST, align 4
  %10 = load i32, i32* @WAKE_MCAST, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @WAKE_BCAST, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @WAKE_PHY, align 4
  %15 = or i32 %13, %14
  %16 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %4, align 8
  %17 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  %18 = load %struct.lbs_private*, %struct.lbs_private** %5, align 8
  %19 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @EHS_REMOVE_WAKEUP, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  br label %76

24:                                               ; preds = %2
  %25 = load %struct.lbs_private*, %struct.lbs_private** %5, align 8
  %26 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @EHS_WAKE_ON_UNICAST_DATA, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %24
  %32 = load i32, i32* @WAKE_UCAST, align 4
  %33 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %4, align 8
  %34 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = or i32 %35, %32
  store i32 %36, i32* %34, align 4
  br label %37

37:                                               ; preds = %31, %24
  %38 = load %struct.lbs_private*, %struct.lbs_private** %5, align 8
  %39 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @EHS_WAKE_ON_MULTICAST_DATA, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %37
  %45 = load i32, i32* @WAKE_MCAST, align 4
  %46 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %4, align 8
  %47 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = or i32 %48, %45
  store i32 %49, i32* %47, align 4
  br label %50

50:                                               ; preds = %44, %37
  %51 = load %struct.lbs_private*, %struct.lbs_private** %5, align 8
  %52 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @EHS_WAKE_ON_BROADCAST_DATA, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %50
  %58 = load i32, i32* @WAKE_BCAST, align 4
  %59 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %4, align 8
  %60 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = or i32 %61, %58
  store i32 %62, i32* %60, align 4
  br label %63

63:                                               ; preds = %57, %50
  %64 = load %struct.lbs_private*, %struct.lbs_private** %5, align 8
  %65 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @EHS_WAKE_ON_MAC_EVENT, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %63
  %71 = load i32, i32* @WAKE_PHY, align 4
  %72 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %4, align 8
  %73 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = or i32 %74, %71
  store i32 %75, i32* %73, align 4
  br label %76

76:                                               ; preds = %23, %70, %63
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
