; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_ethtool.c_hns_nic_self_test.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_ethtool.c_hns_nic_self_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_test = type { i32 }
%struct.hns_nic_priv = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32 }

@MAC_INTERNALLOOP_MAC = common dso_local global i32 0, align 4
@PHY_INTERFACE_MODE_XGMII = common dso_local global i64 0, align 8
@MAC_INTERNALLOOP_SERDES = common dso_local global i32 0, align 4
@MAC_INTERNALLOOP_PHY = common dso_local global i32 0, align 4
@ETH_TEST_FL_OFFLINE = common dso_local global i32 0, align 4
@NIC_STATE_TESTING = common dso_local global i32 0, align 4
@ETH_TEST_FL_FAILED = common dso_local global i32 0, align 4
@SELF_TEST_TPYE_NUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_test*, i64*)* @hns_nic_self_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hns_nic_self_test(%struct.net_device* %0, %struct.ethtool_test* %1, i64* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_test*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.hns_nic_priv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [3 x [2 x i32]], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_test* %1, %struct.ethtool_test** %5, align 8
  store i64* %2, i64** %6, align 8
  %12 = load %struct.net_device*, %struct.net_device** %4, align 8
  %13 = call %struct.hns_nic_priv* @netdev_priv(%struct.net_device* %12)
  store %struct.hns_nic_priv* %13, %struct.hns_nic_priv** %7, align 8
  %14 = load %struct.net_device*, %struct.net_device** %4, align 8
  %15 = call i32 @netif_running(%struct.net_device* %14)
  store i32 %15, i32* %8, align 4
  store i32 0, i32* %11, align 4
  %16 = load i32, i32* @MAC_INTERNALLOOP_MAC, align 4
  %17 = getelementptr inbounds [3 x [2 x i32]], [3 x [2 x i32]]* %9, i64 0, i64 0
  %18 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i64 0, i64 0
  store i32 %16, i32* %18, align 16
  %19 = load %struct.hns_nic_priv*, %struct.hns_nic_priv** %7, align 8
  %20 = getelementptr inbounds %struct.hns_nic_priv, %struct.hns_nic_priv* %19, i32 0, i32 2
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @PHY_INTERFACE_MODE_XGMII, align 8
  %25 = icmp ne i64 %23, %24
  %26 = zext i1 %25 to i32
  %27 = getelementptr inbounds [3 x [2 x i32]], [3 x [2 x i32]]* %9, i64 0, i64 0
  %28 = getelementptr inbounds [2 x i32], [2 x i32]* %27, i64 0, i64 1
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* @MAC_INTERNALLOOP_SERDES, align 4
  %30 = getelementptr inbounds [3 x [2 x i32]], [3 x [2 x i32]]* %9, i64 0, i64 1
  %31 = getelementptr inbounds [2 x i32], [2 x i32]* %30, i64 0, i64 0
  store i32 %29, i32* %31, align 8
  %32 = getelementptr inbounds [3 x [2 x i32]], [3 x [2 x i32]]* %9, i64 0, i64 1
  %33 = getelementptr inbounds [2 x i32], [2 x i32]* %32, i64 0, i64 1
  store i32 1, i32* %33, align 4
  %34 = load i32, i32* @MAC_INTERNALLOOP_PHY, align 4
  %35 = getelementptr inbounds [3 x [2 x i32]], [3 x [2 x i32]]* %9, i64 0, i64 2
  %36 = getelementptr inbounds [2 x i32], [2 x i32]* %35, i64 0, i64 0
  store i32 %34, i32* %36, align 16
  %37 = load %struct.hns_nic_priv*, %struct.hns_nic_priv** %7, align 8
  %38 = getelementptr inbounds %struct.hns_nic_priv, %struct.hns_nic_priv* %37, i32 0, i32 2
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %3
  %44 = load %struct.hns_nic_priv*, %struct.hns_nic_priv** %7, align 8
  %45 = getelementptr inbounds %struct.hns_nic_priv, %struct.hns_nic_priv* %44, i32 0, i32 2
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @PHY_INTERFACE_MODE_XGMII, align 8
  %50 = icmp ne i64 %48, %49
  br label %51

51:                                               ; preds = %43, %3
  %52 = phi i1 [ false, %3 ], [ %50, %43 ]
  %53 = zext i1 %52 to i32
  %54 = getelementptr inbounds [3 x [2 x i32]], [3 x [2 x i32]]* %9, i64 0, i64 2
  %55 = getelementptr inbounds [2 x i32], [2 x i32]* %54, i64 0, i64 1
  store i32 %53, i32* %55, align 4
  %56 = load %struct.ethtool_test*, %struct.ethtool_test** %5, align 8
  %57 = getelementptr inbounds %struct.ethtool_test, %struct.ethtool_test* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @ETH_TEST_FL_OFFLINE, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %154

61:                                               ; preds = %51
  %62 = load i32, i32* @NIC_STATE_TESTING, align 4
  %63 = load %struct.hns_nic_priv*, %struct.hns_nic_priv** %7, align 8
  %64 = getelementptr inbounds %struct.hns_nic_priv, %struct.hns_nic_priv* %63, i32 0, i32 0
  %65 = call i32 @set_bit(i32 %62, i32* %64)
  %66 = load i32, i32* %8, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %61
  %69 = load %struct.net_device*, %struct.net_device** %4, align 8
  %70 = call i32 @dev_close(%struct.net_device* %69)
  br label %71

71:                                               ; preds = %68, %61
  store i32 0, i32* %10, align 4
  br label %72

72:                                               ; preds = %136, %71
  %73 = load i32, i32* %10, align 4
  %74 = icmp slt i32 %73, 3
  br i1 %74, label %75, label %139

75:                                               ; preds = %72
  %76 = load i32, i32* %10, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [3 x [2 x i32]], [3 x [2 x i32]]* %9, i64 0, i64 %77
  %79 = getelementptr inbounds [2 x i32], [2 x i32]* %78, i64 0, i64 1
  %80 = load i32, i32* %79, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %75
  br label %136

83:                                               ; preds = %75
  %84 = load %struct.net_device*, %struct.net_device** %4, align 8
  %85 = load i32, i32* %10, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds [3 x [2 x i32]], [3 x [2 x i32]]* %9, i64 0, i64 %86
  %88 = getelementptr inbounds [2 x i32], [2 x i32]* %87, i64 0, i64 0
  %89 = load i32, i32* %88, align 8
  %90 = call i64 @__lb_up(%struct.net_device* %84, i32 %89)
  %91 = load i64*, i64** %6, align 8
  %92 = load i32, i32* %11, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i64, i64* %91, i64 %93
  store i64 %90, i64* %94, align 8
  %95 = load i64*, i64** %6, align 8
  %96 = load i32, i32* %11, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i64, i64* %95, i64 %97
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %120, label %101

101:                                              ; preds = %83
  %102 = load %struct.net_device*, %struct.net_device** %4, align 8
  %103 = load i32, i32* %10, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds [3 x [2 x i32]], [3 x [2 x i32]]* %9, i64 0, i64 %104
  %106 = getelementptr inbounds [2 x i32], [2 x i32]* %105, i64 0, i64 0
  %107 = load i32, i32* %106, align 8
  %108 = call i64 @__lb_run_test(%struct.net_device* %102, i32 %107)
  %109 = load i64*, i64** %6, align 8
  %110 = load i32, i32* %11, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i64, i64* %109, i64 %111
  store i64 %108, i64* %112, align 8
  %113 = load %struct.net_device*, %struct.net_device** %4, align 8
  %114 = load i32, i32* %10, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds [3 x [2 x i32]], [3 x [2 x i32]]* %9, i64 0, i64 %115
  %117 = getelementptr inbounds [2 x i32], [2 x i32]* %116, i64 0, i64 0
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @__lb_down(%struct.net_device* %113, i32 %118)
  br label %120

120:                                              ; preds = %101, %83
  %121 = load i64*, i64** %6, align 8
  %122 = load i32, i32* %11, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i64, i64* %121, i64 %123
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %133

127:                                              ; preds = %120
  %128 = load i32, i32* @ETH_TEST_FL_FAILED, align 4
  %129 = load %struct.ethtool_test*, %struct.ethtool_test** %5, align 8
  %130 = getelementptr inbounds %struct.ethtool_test, %struct.ethtool_test* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = or i32 %131, %128
  store i32 %132, i32* %130, align 4
  br label %133

133:                                              ; preds = %127, %120
  %134 = load i32, i32* %11, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %11, align 4
  br label %136

136:                                              ; preds = %133, %82
  %137 = load i32, i32* %10, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %10, align 4
  br label %72

139:                                              ; preds = %72
  %140 = load %struct.hns_nic_priv*, %struct.hns_nic_priv** %7, align 8
  %141 = getelementptr inbounds %struct.hns_nic_priv, %struct.hns_nic_priv* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @hns_nic_net_reset(i32 %142)
  %144 = load i32, i32* @NIC_STATE_TESTING, align 4
  %145 = load %struct.hns_nic_priv*, %struct.hns_nic_priv** %7, align 8
  %146 = getelementptr inbounds %struct.hns_nic_priv, %struct.hns_nic_priv* %145, i32 0, i32 0
  %147 = call i32 @clear_bit(i32 %144, i32* %146)
  %148 = load i32, i32* %8, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %153

150:                                              ; preds = %139
  %151 = load %struct.net_device*, %struct.net_device** %4, align 8
  %152 = call i32 @dev_open(%struct.net_device* %151, i32* null)
  br label %153

153:                                              ; preds = %150, %139
  br label %154

154:                                              ; preds = %153, %51
  %155 = call i32 @msleep_interruptible(i32 4000)
  ret void
}

declare dso_local %struct.hns_nic_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_running(%struct.net_device*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @dev_close(%struct.net_device*) #1

declare dso_local i64 @__lb_up(%struct.net_device*, i32) #1

declare dso_local i64 @__lb_run_test(%struct.net_device*, i32) #1

declare dso_local i32 @__lb_down(%struct.net_device*, i32) #1

declare dso_local i32 @hns_nic_net_reset(i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @dev_open(%struct.net_device*, i32*) #1

declare dso_local i32 @msleep_interruptible(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
