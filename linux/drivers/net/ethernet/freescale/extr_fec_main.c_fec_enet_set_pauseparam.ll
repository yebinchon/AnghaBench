; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_fec_main.c_fec_enet_set_pauseparam.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_fec_main.c_fec_enet_set_pauseparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_pauseparam = type { i64, i64, i64 }
%struct.fec_enet_private = type { i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"hardware only support enable/disable both tx and rx\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@FEC_PAUSE_FLAG_ENABLE = common dso_local global i32 0, align 4
@FEC_PAUSE_FLAG_AUTONEG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_pauseparam*)* @fec_enet_set_pauseparam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fec_enet_set_pauseparam(%struct.net_device* %0, %struct.ethtool_pauseparam* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_pauseparam*, align 8
  %6 = alloca %struct.fec_enet_private*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_pauseparam* %1, %struct.ethtool_pauseparam** %5, align 8
  %7 = load %struct.net_device*, %struct.net_device** %4, align 8
  %8 = call %struct.fec_enet_private* @netdev_priv(%struct.net_device* %7)
  store %struct.fec_enet_private* %8, %struct.fec_enet_private** %6, align 8
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = getelementptr inbounds %struct.net_device, %struct.net_device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENODEV, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %107

16:                                               ; preds = %2
  %17 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %5, align 8
  %18 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %5, align 8
  %21 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %19, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %16
  %25 = load %struct.net_device*, %struct.net_device** %4, align 8
  %26 = call i32 @netdev_info(%struct.net_device* %25, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %107

29:                                               ; preds = %16
  %30 = load %struct.fec_enet_private*, %struct.fec_enet_private** %6, align 8
  %31 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %30, i32 0, i32 1
  store i32 0, i32* %31, align 4
  %32 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %5, align 8
  %33 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %29
  %37 = load i32, i32* @FEC_PAUSE_FLAG_ENABLE, align 4
  br label %39

38:                                               ; preds = %29
  br label %39

39:                                               ; preds = %38, %36
  %40 = phi i32 [ %37, %36 ], [ 0, %38 ]
  %41 = load %struct.fec_enet_private*, %struct.fec_enet_private** %6, align 8
  %42 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %43, %40
  store i32 %44, i32* %42, align 4
  %45 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %5, align 8
  %46 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %39
  %50 = load i32, i32* @FEC_PAUSE_FLAG_AUTONEG, align 4
  br label %52

51:                                               ; preds = %39
  br label %52

52:                                               ; preds = %51, %49
  %53 = phi i32 [ %50, %49 ], [ 0, %51 ]
  %54 = load %struct.fec_enet_private*, %struct.fec_enet_private** %6, align 8
  %55 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = or i32 %56, %53
  store i32 %57, i32* %55, align 4
  %58 = load %struct.net_device*, %struct.net_device** %4, align 8
  %59 = getelementptr inbounds %struct.net_device, %struct.net_device* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %5, align 8
  %62 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %5, align 8
  %65 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %5, align 8
  %68 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = call i32 @phy_set_sym_pause(i32 %60, i64 %63, i64 %66, i64 %69)
  %71 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %5, align 8
  %72 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %87

75:                                               ; preds = %52
  %76 = load %struct.net_device*, %struct.net_device** %4, align 8
  %77 = call i64 @netif_running(%struct.net_device* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %75
  %80 = load %struct.net_device*, %struct.net_device** %4, align 8
  %81 = call i32 @fec_stop(%struct.net_device* %80)
  br label %82

82:                                               ; preds = %79, %75
  %83 = load %struct.net_device*, %struct.net_device** %4, align 8
  %84 = getelementptr inbounds %struct.net_device, %struct.net_device* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @phy_start_aneg(i32 %85)
  br label %87

87:                                               ; preds = %82, %52
  %88 = load %struct.net_device*, %struct.net_device** %4, align 8
  %89 = call i64 @netif_running(%struct.net_device* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %106

91:                                               ; preds = %87
  %92 = load %struct.fec_enet_private*, %struct.fec_enet_private** %6, align 8
  %93 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %92, i32 0, i32 0
  %94 = call i32 @napi_disable(i32* %93)
  %95 = load %struct.net_device*, %struct.net_device** %4, align 8
  %96 = call i32 @netif_tx_lock_bh(%struct.net_device* %95)
  %97 = load %struct.net_device*, %struct.net_device** %4, align 8
  %98 = call i32 @fec_restart(%struct.net_device* %97)
  %99 = load %struct.net_device*, %struct.net_device** %4, align 8
  %100 = call i32 @netif_tx_wake_all_queues(%struct.net_device* %99)
  %101 = load %struct.net_device*, %struct.net_device** %4, align 8
  %102 = call i32 @netif_tx_unlock_bh(%struct.net_device* %101)
  %103 = load %struct.fec_enet_private*, %struct.fec_enet_private** %6, align 8
  %104 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %103, i32 0, i32 0
  %105 = call i32 @napi_enable(i32* %104)
  br label %106

106:                                              ; preds = %91, %87
  store i32 0, i32* %3, align 4
  br label %107

107:                                              ; preds = %106, %24, %13
  %108 = load i32, i32* %3, align 4
  ret i32 %108
}

declare dso_local %struct.fec_enet_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*) #1

declare dso_local i32 @phy_set_sym_pause(i32, i64, i64, i64) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @fec_stop(%struct.net_device*) #1

declare dso_local i32 @phy_start_aneg(i32) #1

declare dso_local i32 @napi_disable(i32*) #1

declare dso_local i32 @netif_tx_lock_bh(%struct.net_device*) #1

declare dso_local i32 @fec_restart(%struct.net_device*) #1

declare dso_local i32 @netif_tx_wake_all_queues(%struct.net_device*) #1

declare dso_local i32 @netif_tx_unlock_bh(%struct.net_device*) #1

declare dso_local i32 @napi_enable(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
