; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_ethtool.c_be_self_test.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_ethtool.c_be_self_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_test = type { i32 }
%struct.be_adapter = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@BE_FUNCTION_CAPS_SUPER_NIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Self test not supported\0A\00", align 1
@ETH_TEST_FL_FAILED = common dso_local global i32 0, align 4
@ETHTOOL_TESTS_NUM = common dso_local global i32 0, align 4
@ETH_TEST_FL_OFFLINE = common dso_local global i32 0, align 4
@BE_MAC_LOOPBACK = common dso_local global i32 0, align 4
@BE_PHY_LOOPBACK = common dso_local global i32 0, align 4
@ETH_TEST_FL_EXTERNAL_LB = common dso_local global i32 0, align 4
@BE_ONE_PORT_EXT_LOOPBACK = common dso_local global i32 0, align 4
@ETH_TEST_FL_EXTERNAL_LB_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_test*, i32*)* @be_self_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @be_self_test(%struct.net_device* %0, %struct.ethtool_test* %1, i32* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_test*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.be_adapter*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_test* %1, %struct.ethtool_test** %5, align 8
  store i32* %2, i32** %6, align 8
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = call %struct.be_adapter* @netdev_priv(%struct.net_device* %11)
  store %struct.be_adapter* %12, %struct.be_adapter** %7, align 8
  store i64 0, i64* %10, align 8
  %13 = load %struct.be_adapter*, %struct.be_adapter** %7, align 8
  %14 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @BE_FUNCTION_CAPS_SUPER_NIC, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %30

19:                                               ; preds = %3
  %20 = load %struct.be_adapter*, %struct.be_adapter** %7, align 8
  %21 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = call i32 @dev_err(i32* %23, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @ETH_TEST_FL_FAILED, align 4
  %26 = load %struct.ethtool_test*, %struct.ethtool_test** %5, align 8
  %27 = getelementptr inbounds %struct.ethtool_test, %struct.ethtool_test* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = or i32 %28, %25
  store i32 %29, i32* %27, align 4
  br label %151

30:                                               ; preds = %3
  %31 = load i32*, i32** %6, align 8
  %32 = load i32, i32* @ETHTOOL_TESTS_NUM, align 4
  %33 = sext i32 %32 to i64
  %34 = mul i64 4, %33
  %35 = trunc i64 %34 to i32
  %36 = call i32 @memset(i32* %31, i32 0, i32 %35)
  %37 = load %struct.net_device*, %struct.net_device** %4, align 8
  %38 = call i64 @netif_carrier_ok(%struct.net_device* %37)
  store i64 %38, i64* %10, align 8
  %39 = load %struct.ethtool_test*, %struct.ethtool_test** %5, align 8
  %40 = getelementptr inbounds %struct.ethtool_test, %struct.ethtool_test* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @ETH_TEST_FL_OFFLINE, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %98

45:                                               ; preds = %30
  %46 = load %struct.be_adapter*, %struct.be_adapter** %7, align 8
  %47 = load i32, i32* @BE_MAC_LOOPBACK, align 4
  %48 = load i32*, i32** %6, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  %50 = call i64 @be_loopback_test(%struct.be_adapter* %46, i32 %47, i32* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %45
  %53 = load i32, i32* @ETH_TEST_FL_FAILED, align 4
  %54 = load %struct.ethtool_test*, %struct.ethtool_test** %5, align 8
  %55 = getelementptr inbounds %struct.ethtool_test, %struct.ethtool_test* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = or i32 %56, %53
  store i32 %57, i32* %55, align 4
  br label %58

58:                                               ; preds = %52, %45
  %59 = load %struct.be_adapter*, %struct.be_adapter** %7, align 8
  %60 = load i32, i32* @BE_PHY_LOOPBACK, align 4
  %61 = load i32*, i32** %6, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 1
  %63 = call i64 @be_loopback_test(%struct.be_adapter* %59, i32 %60, i32* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %58
  %66 = load i32, i32* @ETH_TEST_FL_FAILED, align 4
  %67 = load %struct.ethtool_test*, %struct.ethtool_test** %5, align 8
  %68 = getelementptr inbounds %struct.ethtool_test, %struct.ethtool_test* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = or i32 %69, %66
  store i32 %70, i32* %68, align 4
  br label %71

71:                                               ; preds = %65, %58
  %72 = load %struct.ethtool_test*, %struct.ethtool_test** %5, align 8
  %73 = getelementptr inbounds %struct.ethtool_test, %struct.ethtool_test* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @ETH_TEST_FL_EXTERNAL_LB, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %97

78:                                               ; preds = %71
  %79 = load %struct.be_adapter*, %struct.be_adapter** %7, align 8
  %80 = load i32, i32* @BE_ONE_PORT_EXT_LOOPBACK, align 4
  %81 = load i32*, i32** %6, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 2
  %83 = call i64 @be_loopback_test(%struct.be_adapter* %79, i32 %80, i32* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %78
  %86 = load i32, i32* @ETH_TEST_FL_FAILED, align 4
  %87 = load %struct.ethtool_test*, %struct.ethtool_test** %5, align 8
  %88 = getelementptr inbounds %struct.ethtool_test, %struct.ethtool_test* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = or i32 %89, %86
  store i32 %90, i32* %88, align 4
  br label %91

91:                                               ; preds = %85, %78
  %92 = load i32, i32* @ETH_TEST_FL_EXTERNAL_LB_DONE, align 4
  %93 = load %struct.ethtool_test*, %struct.ethtool_test** %5, align 8
  %94 = getelementptr inbounds %struct.ethtool_test, %struct.ethtool_test* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = or i32 %95, %92
  store i32 %96, i32* %94, align 4
  br label %97

97:                                               ; preds = %91, %71
  br label %98

98:                                               ; preds = %97, %30
  %99 = load %struct.be_adapter*, %struct.be_adapter** %7, align 8
  %100 = call i32 @lancer_chip(%struct.be_adapter* %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %114, label %102

102:                                              ; preds = %98
  %103 = load %struct.be_adapter*, %struct.be_adapter** %7, align 8
  %104 = call i64 @be_test_ddr_dma(%struct.be_adapter* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %114

106:                                              ; preds = %102
  %107 = load i32*, i32** %6, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 3
  store i32 1, i32* %108, align 4
  %109 = load i32, i32* @ETH_TEST_FL_FAILED, align 4
  %110 = load %struct.ethtool_test*, %struct.ethtool_test** %5, align 8
  %111 = getelementptr inbounds %struct.ethtool_test, %struct.ethtool_test* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = or i32 %112, %109
  store i32 %113, i32* %111, align 4
  br label %114

114:                                              ; preds = %106, %102, %98
  %115 = load i64, i64* %10, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %125, label %117

117:                                              ; preds = %114
  %118 = load i32, i32* @ETH_TEST_FL_FAILED, align 4
  %119 = load %struct.ethtool_test*, %struct.ethtool_test** %5, align 8
  %120 = getelementptr inbounds %struct.ethtool_test, %struct.ethtool_test* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = or i32 %121, %118
  store i32 %122, i32* %120, align 4
  %123 = load i32*, i32** %6, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 4
  store i32 1, i32* %124, align 4
  br label %151

125:                                              ; preds = %114
  store i32 10, i32* %9, align 4
  br label %126

126:                                              ; preds = %148, %125
  %127 = load i32, i32* %9, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %151

129:                                              ; preds = %126
  %130 = load %struct.be_adapter*, %struct.be_adapter** %7, align 8
  %131 = call i32 @be_cmd_link_status_query(%struct.be_adapter* %130, i32* null, i64* %10, i32 0)
  store i32 %131, i32* %8, align 4
  %132 = load i32, i32* %8, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %142

134:                                              ; preds = %129
  %135 = load i32, i32* @ETH_TEST_FL_FAILED, align 4
  %136 = load %struct.ethtool_test*, %struct.ethtool_test** %5, align 8
  %137 = getelementptr inbounds %struct.ethtool_test, %struct.ethtool_test* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = or i32 %138, %135
  store i32 %139, i32* %137, align 4
  %140 = load i32*, i32** %6, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 4
  store i32 -1, i32* %141, align 4
  br label %151

142:                                              ; preds = %129
  %143 = load i64, i64* %10, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %142
  br label %151

146:                                              ; preds = %142
  %147 = call i32 @msleep_interruptible(i32 500)
  br label %148

148:                                              ; preds = %146
  %149 = load i32, i32* %9, align 4
  %150 = add nsw i32 %149, -1
  store i32 %150, i32* %9, align 4
  br label %126

151:                                              ; preds = %19, %117, %145, %134, %126
  ret void
}

declare dso_local %struct.be_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i64 @netif_carrier_ok(%struct.net_device*) #1

declare dso_local i64 @be_loopback_test(%struct.be_adapter*, i32, i32*) #1

declare dso_local i32 @lancer_chip(%struct.be_adapter*) #1

declare dso_local i64 @be_test_ddr_dma(%struct.be_adapter*) #1

declare dso_local i32 @be_cmd_link_status_query(%struct.be_adapter*, i32*, i64*, i32) #1

declare dso_local i32 @msleep_interruptible(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
