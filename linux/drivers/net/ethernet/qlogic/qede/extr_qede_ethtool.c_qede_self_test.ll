; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_ethtool.c_qede_self_test.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_ethtool.c_qede_self_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_test = type { i32 }
%struct.qede_dev = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 (i32)*, i64 (i32)*, i64 (i32)*, i64 (i32)*, i64 (i32)* }

@QED_MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"Self-test command parameters: offline = %d, external_lb = %d\0A\00", align 1
@ETH_TEST_FL_OFFLINE = common dso_local global i32 0, align 4
@ETH_TEST_FL_EXTERNAL_LB = common dso_local global i32 0, align 4
@QEDE_ETHTOOL_TEST_MAX = common dso_local global i32 0, align 4
@QED_LINK_LOOPBACK_INT_PHY = common dso_local global i32 0, align 4
@QEDE_ETHTOOL_INT_LOOPBACK = common dso_local global i64 0, align 8
@ETH_TEST_FL_FAILED = common dso_local global i32 0, align 4
@QEDE_ETHTOOL_INTERRUPT_TEST = common dso_local global i64 0, align 8
@QEDE_ETHTOOL_MEMORY_TEST = common dso_local global i64 0, align 8
@QEDE_ETHTOOL_REGISTER_TEST = common dso_local global i64 0, align 8
@QEDE_ETHTOOL_CLOCK_TEST = common dso_local global i64 0, align 8
@QEDE_ETHTOOL_NVRAM_TEST = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_test*, i32*)* @qede_self_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qede_self_test(%struct.net_device* %0, %struct.ethtool_test* %1, i32* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_test*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.qede_dev*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_test* %1, %struct.ethtool_test** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call %struct.qede_dev* @netdev_priv(%struct.net_device* %8)
  store %struct.qede_dev* %9, %struct.qede_dev** %7, align 8
  %10 = load %struct.qede_dev*, %struct.qede_dev** %7, align 8
  %11 = load i32, i32* @QED_MSG_DEBUG, align 4
  %12 = load %struct.ethtool_test*, %struct.ethtool_test** %5, align 8
  %13 = getelementptr inbounds %struct.ethtool_test, %struct.ethtool_test* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @ETH_TEST_FL_OFFLINE, align 4
  %16 = and i32 %14, %15
  %17 = load %struct.ethtool_test*, %struct.ethtool_test** %5, align 8
  %18 = getelementptr inbounds %struct.ethtool_test, %struct.ethtool_test* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @ETH_TEST_FL_EXTERNAL_LB, align 4
  %21 = and i32 %19, %20
  %22 = ashr i32 %21, 2
  %23 = call i32 @DP_VERBOSE(%struct.qede_dev* %10, i32 %11, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %22)
  %24 = load i32*, i32** %6, align 8
  %25 = load i32, i32* @QEDE_ETHTOOL_TEST_MAX, align 4
  %26 = sext i32 %25 to i64
  %27 = mul i64 4, %26
  %28 = trunc i64 %27 to i32
  %29 = call i32 @memset(i32* %24, i32 0, i32 %28)
  %30 = load %struct.ethtool_test*, %struct.ethtool_test** %5, align 8
  %31 = getelementptr inbounds %struct.ethtool_test, %struct.ethtool_test* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @ETH_TEST_FL_OFFLINE, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %51

36:                                               ; preds = %3
  %37 = load %struct.qede_dev*, %struct.qede_dev** %7, align 8
  %38 = load i32, i32* @QED_LINK_LOOPBACK_INT_PHY, align 4
  %39 = call i64 @qede_selftest_run_loopback(%struct.qede_dev* %37, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %36
  %42 = load i32*, i32** %6, align 8
  %43 = load i64, i64* @QEDE_ETHTOOL_INT_LOOPBACK, align 8
  %44 = getelementptr inbounds i32, i32* %42, i64 %43
  store i32 1, i32* %44, align 4
  %45 = load i32, i32* @ETH_TEST_FL_FAILED, align 4
  %46 = load %struct.ethtool_test*, %struct.ethtool_test** %5, align 8
  %47 = getelementptr inbounds %struct.ethtool_test, %struct.ethtool_test* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = or i32 %48, %45
  store i32 %49, i32* %47, align 4
  br label %50

50:                                               ; preds = %41, %36
  br label %51

51:                                               ; preds = %50, %3
  %52 = load %struct.qede_dev*, %struct.qede_dev** %7, align 8
  %53 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %52, i32 0, i32 1
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 4
  %60 = load i64 (i32)*, i64 (i32)** %59, align 8
  %61 = load %struct.qede_dev*, %struct.qede_dev** %7, align 8
  %62 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i64 %60(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %75

66:                                               ; preds = %51
  %67 = load i32*, i32** %6, align 8
  %68 = load i64, i64* @QEDE_ETHTOOL_INTERRUPT_TEST, align 8
  %69 = getelementptr inbounds i32, i32* %67, i64 %68
  store i32 1, i32* %69, align 4
  %70 = load i32, i32* @ETH_TEST_FL_FAILED, align 4
  %71 = load %struct.ethtool_test*, %struct.ethtool_test** %5, align 8
  %72 = getelementptr inbounds %struct.ethtool_test, %struct.ethtool_test* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = or i32 %73, %70
  store i32 %74, i32* %72, align 4
  br label %75

75:                                               ; preds = %66, %51
  %76 = load %struct.qede_dev*, %struct.qede_dev** %7, align 8
  %77 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %76, i32 0, i32 1
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 3
  %84 = load i64 (i32)*, i64 (i32)** %83, align 8
  %85 = load %struct.qede_dev*, %struct.qede_dev** %7, align 8
  %86 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i64 %84(i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %99

90:                                               ; preds = %75
  %91 = load i32*, i32** %6, align 8
  %92 = load i64, i64* @QEDE_ETHTOOL_MEMORY_TEST, align 8
  %93 = getelementptr inbounds i32, i32* %91, i64 %92
  store i32 1, i32* %93, align 4
  %94 = load i32, i32* @ETH_TEST_FL_FAILED, align 4
  %95 = load %struct.ethtool_test*, %struct.ethtool_test** %5, align 8
  %96 = getelementptr inbounds %struct.ethtool_test, %struct.ethtool_test* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = or i32 %97, %94
  store i32 %98, i32* %96, align 4
  br label %99

99:                                               ; preds = %90, %75
  %100 = load %struct.qede_dev*, %struct.qede_dev** %7, align 8
  %101 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %100, i32 0, i32 1
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 0
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 2
  %108 = load i64 (i32)*, i64 (i32)** %107, align 8
  %109 = load %struct.qede_dev*, %struct.qede_dev** %7, align 8
  %110 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = call i64 %108(i32 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %123

114:                                              ; preds = %99
  %115 = load i32*, i32** %6, align 8
  %116 = load i64, i64* @QEDE_ETHTOOL_REGISTER_TEST, align 8
  %117 = getelementptr inbounds i32, i32* %115, i64 %116
  store i32 1, i32* %117, align 4
  %118 = load i32, i32* @ETH_TEST_FL_FAILED, align 4
  %119 = load %struct.ethtool_test*, %struct.ethtool_test** %5, align 8
  %120 = getelementptr inbounds %struct.ethtool_test, %struct.ethtool_test* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = or i32 %121, %118
  store i32 %122, i32* %120, align 4
  br label %123

123:                                              ; preds = %114, %99
  %124 = load %struct.qede_dev*, %struct.qede_dev** %7, align 8
  %125 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %124, i32 0, i32 1
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 0
  %128 = load %struct.TYPE_5__*, %struct.TYPE_5__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 0
  %130 = load %struct.TYPE_4__*, %struct.TYPE_4__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 1
  %132 = load i64 (i32)*, i64 (i32)** %131, align 8
  %133 = load %struct.qede_dev*, %struct.qede_dev** %7, align 8
  %134 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = call i64 %132(i32 %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %147

138:                                              ; preds = %123
  %139 = load i32*, i32** %6, align 8
  %140 = load i64, i64* @QEDE_ETHTOOL_CLOCK_TEST, align 8
  %141 = getelementptr inbounds i32, i32* %139, i64 %140
  store i32 1, i32* %141, align 4
  %142 = load i32, i32* @ETH_TEST_FL_FAILED, align 4
  %143 = load %struct.ethtool_test*, %struct.ethtool_test** %5, align 8
  %144 = getelementptr inbounds %struct.ethtool_test, %struct.ethtool_test* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = or i32 %145, %142
  store i32 %146, i32* %144, align 4
  br label %147

147:                                              ; preds = %138, %123
  %148 = load %struct.qede_dev*, %struct.qede_dev** %7, align 8
  %149 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %148, i32 0, i32 1
  %150 = load %struct.TYPE_6__*, %struct.TYPE_6__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 0
  %152 = load %struct.TYPE_5__*, %struct.TYPE_5__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i32 0, i32 0
  %154 = load %struct.TYPE_4__*, %struct.TYPE_4__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 0
  %156 = load i64 (i32)*, i64 (i32)** %155, align 8
  %157 = load %struct.qede_dev*, %struct.qede_dev** %7, align 8
  %158 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = call i64 %156(i32 %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %171

162:                                              ; preds = %147
  %163 = load i32*, i32** %6, align 8
  %164 = load i64, i64* @QEDE_ETHTOOL_NVRAM_TEST, align 8
  %165 = getelementptr inbounds i32, i32* %163, i64 %164
  store i32 1, i32* %165, align 4
  %166 = load i32, i32* @ETH_TEST_FL_FAILED, align 4
  %167 = load %struct.ethtool_test*, %struct.ethtool_test** %5, align 8
  %168 = getelementptr inbounds %struct.ethtool_test, %struct.ethtool_test* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = or i32 %169, %166
  store i32 %170, i32* %168, align 4
  br label %171

171:                                              ; preds = %162, %147
  ret void
}

declare dso_local %struct.qede_dev* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @DP_VERBOSE(%struct.qede_dev*, i32, i8*, i32, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i64 @qede_selftest_run_loopback(%struct.qede_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
