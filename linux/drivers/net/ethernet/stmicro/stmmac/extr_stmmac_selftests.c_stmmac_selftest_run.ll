; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_stmmac_selftests.c_stmmac_selftest_run.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_stmmac_selftests.c_stmmac_selftest_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 (%struct.stmmac_priv*)* }
%struct.stmmac_priv = type { i32, i32 }
%struct.net_device = type { i32 }
%struct.ethtool_test = type { i32 }

@stmmac_test_next_id = common dso_local global i64 0, align 8
@ETH_TEST_FL_OFFLINE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Only offline tests are supported\0A\00", align 1
@ETH_TEST_FL_FAILED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"You need valid Link to execute tests\0A\00", align 1
@stmmac_selftests = common dso_local global %struct.TYPE_2__* null, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"Loopback is not supported\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @stmmac_selftest_run(%struct.net_device* %0, %struct.ethtool_test* %1, i32* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_test*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.stmmac_priv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_test* %1, %struct.ethtool_test** %5, align 8
  store i32* %2, i32** %6, align 8
  %12 = load %struct.net_device*, %struct.net_device** %4, align 8
  %13 = call %struct.stmmac_priv* @netdev_priv(%struct.net_device* %12)
  store %struct.stmmac_priv* %13, %struct.stmmac_priv** %7, align 8
  %14 = load %struct.stmmac_priv*, %struct.stmmac_priv** %7, align 8
  %15 = call i32 @stmmac_selftest_get_count(%struct.stmmac_priv* %14)
  store i32 %15, i32* %8, align 4
  %16 = load %struct.net_device*, %struct.net_device** %4, align 8
  %17 = call i32 @netif_carrier_ok(%struct.net_device* %16)
  store i32 %17, i32* %9, align 4
  %18 = load i32*, i32** %6, align 8
  %19 = load i32, i32* %8, align 4
  %20 = sext i32 %19 to i64
  %21 = mul i64 4, %20
  %22 = trunc i64 %21 to i32
  %23 = call i32 @memset(i32* %18, i32 0, i32 %22)
  store i64 0, i64* @stmmac_test_next_id, align 8
  %24 = load %struct.ethtool_test*, %struct.ethtool_test** %5, align 8
  %25 = getelementptr inbounds %struct.ethtool_test, %struct.ethtool_test* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @ETH_TEST_FL_OFFLINE, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %39

29:                                               ; preds = %3
  %30 = load %struct.stmmac_priv*, %struct.stmmac_priv** %7, align 8
  %31 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @netdev_err(i32 %32, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* @ETH_TEST_FL_FAILED, align 4
  %35 = load %struct.ethtool_test*, %struct.ethtool_test** %5, align 8
  %36 = getelementptr inbounds %struct.ethtool_test, %struct.ethtool_test* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %34
  store i32 %38, i32* %36, align 4
  br label %176

39:                                               ; preds = %3
  %40 = load i32, i32* %9, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %52, label %42

42:                                               ; preds = %39
  %43 = load %struct.stmmac_priv*, %struct.stmmac_priv** %7, align 8
  %44 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @netdev_err(i32 %45, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %47 = load i32, i32* @ETH_TEST_FL_FAILED, align 4
  %48 = load %struct.ethtool_test*, %struct.ethtool_test** %5, align 8
  %49 = getelementptr inbounds %struct.ethtool_test, %struct.ethtool_test* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %50, %47
  store i32 %51, i32* %49, align 4
  br label %176

52:                                               ; preds = %39
  br label %53

53:                                               ; preds = %52
  %54 = load %struct.net_device*, %struct.net_device** %4, align 8
  %55 = call i32 @netif_carrier_off(%struct.net_device* %54)
  %56 = call i32 @msleep(i32 200)
  store i32 0, i32* %10, align 4
  br label %57

57:                                               ; preds = %167, %53
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* %8, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %170

61:                                               ; preds = %57
  store i32 0, i32* %11, align 4
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** @stmmac_selftests, align 8
  %63 = load i32, i32* %10, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  switch i32 %67, label %92 [
    i32 128, label %68
    i32 130, label %85
    i32 129, label %91
  ]

68:                                               ; preds = %61
  %69 = load i32, i32* @EOPNOTSUPP, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %11, align 4
  %71 = load %struct.net_device*, %struct.net_device** %4, align 8
  %72 = getelementptr inbounds %struct.net_device, %struct.net_device* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %68
  %76 = load %struct.net_device*, %struct.net_device** %4, align 8
  %77 = getelementptr inbounds %struct.net_device, %struct.net_device* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @phy_loopback(i32 %78, i32 1)
  store i32 %79, i32* %11, align 4
  br label %80

80:                                               ; preds = %75, %68
  %81 = load i32, i32* %11, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %80
  br label %95

84:                                               ; preds = %80
  br label %85

85:                                               ; preds = %61, %84
  %86 = load %struct.stmmac_priv*, %struct.stmmac_priv** %7, align 8
  %87 = load %struct.stmmac_priv*, %struct.stmmac_priv** %7, align 8
  %88 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @stmmac_set_mac_loopback(%struct.stmmac_priv* %86, i32 %89, i32 1)
  store i32 %90, i32* %11, align 4
  br label %95

91:                                               ; preds = %61
  br label %95

92:                                               ; preds = %61
  %93 = load i32, i32* @EOPNOTSUPP, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %11, align 4
  br label %95

95:                                               ; preds = %92, %91, %85, %83
  %96 = load i32, i32* %11, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %108

98:                                               ; preds = %95
  %99 = load %struct.stmmac_priv*, %struct.stmmac_priv** %7, align 8
  %100 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @netdev_err(i32 %101, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %103 = load i32, i32* @ETH_TEST_FL_FAILED, align 4
  %104 = load %struct.ethtool_test*, %struct.ethtool_test** %5, align 8
  %105 = getelementptr inbounds %struct.ethtool_test, %struct.ethtool_test* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = or i32 %106, %103
  store i32 %107, i32* %105, align 4
  br label %170

108:                                              ; preds = %95
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** @stmmac_selftests, align 8
  %110 = load i32, i32* %10, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 1
  %114 = load i32 (%struct.stmmac_priv*)*, i32 (%struct.stmmac_priv*)** %113, align 8
  %115 = load %struct.stmmac_priv*, %struct.stmmac_priv** %7, align 8
  %116 = call i32 %114(%struct.stmmac_priv* %115)
  store i32 %116, i32* %11, align 4
  %117 = load i32, i32* %11, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %130

119:                                              ; preds = %108
  %120 = load i32, i32* %11, align 4
  %121 = load i32, i32* @EOPNOTSUPP, align 4
  %122 = sub nsw i32 0, %121
  %123 = icmp ne i32 %120, %122
  br i1 %123, label %124, label %130

124:                                              ; preds = %119
  %125 = load i32, i32* @ETH_TEST_FL_FAILED, align 4
  %126 = load %struct.ethtool_test*, %struct.ethtool_test** %5, align 8
  %127 = getelementptr inbounds %struct.ethtool_test, %struct.ethtool_test* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = or i32 %128, %125
  store i32 %129, i32* %127, align 4
  br label %130

130:                                              ; preds = %124, %119, %108
  %131 = load i32, i32* %11, align 4
  %132 = load i32*, i32** %6, align 8
  %133 = load i32, i32* %10, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %132, i64 %134
  store i32 %131, i32* %135, align 4
  %136 = load %struct.TYPE_2__*, %struct.TYPE_2__** @stmmac_selftests, align 8
  %137 = load i32, i32* %10, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  switch i32 %141, label %165 [
    i32 128, label %142
    i32 130, label %159
  ]

142:                                              ; preds = %130
  %143 = load i32, i32* @EOPNOTSUPP, align 4
  %144 = sub nsw i32 0, %143
  store i32 %144, i32* %11, align 4
  %145 = load %struct.net_device*, %struct.net_device** %4, align 8
  %146 = getelementptr inbounds %struct.net_device, %struct.net_device* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %154

149:                                              ; preds = %142
  %150 = load %struct.net_device*, %struct.net_device** %4, align 8
  %151 = getelementptr inbounds %struct.net_device, %struct.net_device* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @phy_loopback(i32 %152, i32 0)
  store i32 %153, i32* %11, align 4
  br label %154

154:                                              ; preds = %149, %142
  %155 = load i32, i32* %11, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %158, label %157

157:                                              ; preds = %154
  br label %166

158:                                              ; preds = %154
  br label %159

159:                                              ; preds = %130, %158
  %160 = load %struct.stmmac_priv*, %struct.stmmac_priv** %7, align 8
  %161 = load %struct.stmmac_priv*, %struct.stmmac_priv** %7, align 8
  %162 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = call i32 @stmmac_set_mac_loopback(%struct.stmmac_priv* %160, i32 %163, i32 0)
  br label %166

165:                                              ; preds = %130
  br label %166

166:                                              ; preds = %165, %159, %157
  br label %167

167:                                              ; preds = %166
  %168 = load i32, i32* %10, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %10, align 4
  br label %57

170:                                              ; preds = %98, %57
  %171 = load i32, i32* %9, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %176

173:                                              ; preds = %170
  %174 = load %struct.net_device*, %struct.net_device** %4, align 8
  %175 = call i32 @netif_carrier_on(%struct.net_device* %174)
  br label %176

176:                                              ; preds = %29, %42, %173, %170
  ret void
}

declare dso_local %struct.stmmac_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @stmmac_selftest_get_count(%struct.stmmac_priv*) #1

declare dso_local i32 @netif_carrier_ok(%struct.net_device*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @netdev_err(i32, i8*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @phy_loopback(i32, i32) #1

declare dso_local i32 @stmmac_set_mac_loopback(%struct.stmmac_priv*, i32, i32) #1

declare dso_local i32 @netif_carrier_on(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
