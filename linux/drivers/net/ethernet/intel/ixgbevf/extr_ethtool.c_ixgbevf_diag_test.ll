; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbevf/extr_ethtool.c_ixgbevf_diag_test.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbevf/extr_ethtool.c_ixgbevf_diag_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_test = type { i32 }
%struct.ixgbevf_adapter = type { i32, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"Adapter removed - test blocked\0A\00", align 1
@ETH_TEST_FL_FAILED = common dso_local global i32 0, align 4
@__IXGBEVF_TESTING = common dso_local global i32 0, align 4
@ETH_TEST_FL_OFFLINE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"offline testing starting\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"register testing starting\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"online testing starting\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_test*, i32*)* @ixgbevf_diag_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbevf_diag_test(%struct.net_device* %0, %struct.ethtool_test* %1, i32* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_test*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.ixgbevf_adapter*, align 8
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_test* %1, %struct.ethtool_test** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.ixgbevf_adapter* @netdev_priv(%struct.net_device* %9)
  store %struct.ixgbevf_adapter* %10, %struct.ixgbevf_adapter** %7, align 8
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = call i32 @netif_running(%struct.net_device* %11)
  store i32 %12, i32* %8, align 4
  %13 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %7, align 8
  %14 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @IXGBE_REMOVED(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %34

19:                                               ; preds = %3
  %20 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %7, align 8
  %21 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %20, i32 0, i32 2
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = call i32 @dev_err(i32* %23, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %25 = load i32*, i32** %6, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  store i32 1, i32* %26, align 4
  %27 = load i32*, i32** %6, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 1
  store i32 1, i32* %28, align 4
  %29 = load i32, i32* @ETH_TEST_FL_FAILED, align 4
  %30 = load %struct.ethtool_test*, %struct.ethtool_test** %5, align 8
  %31 = getelementptr inbounds %struct.ethtool_test, %struct.ethtool_test* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %32, %29
  store i32 %33, i32* %31, align 4
  br label %120

34:                                               ; preds = %3
  %35 = load i32, i32* @__IXGBEVF_TESTING, align 4
  %36 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %7, align 8
  %37 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %36, i32 0, i32 0
  %38 = call i32 @set_bit(i32 %35, i32* %37)
  %39 = load %struct.ethtool_test*, %struct.ethtool_test** %5, align 8
  %40 = getelementptr inbounds %struct.ethtool_test, %struct.ethtool_test* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @ETH_TEST_FL_OFFLINE, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %96

44:                                               ; preds = %34
  %45 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %7, align 8
  %46 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %45, i32 0, i32 1
  %47 = call i32 @hw_dbg(%struct.TYPE_4__* %46, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %48 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %7, align 8
  %49 = load i32*, i32** %6, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 1
  %51 = call i64 @ixgbevf_link_test(%struct.ixgbevf_adapter* %48, i32* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %44
  %54 = load i32, i32* @ETH_TEST_FL_FAILED, align 4
  %55 = load %struct.ethtool_test*, %struct.ethtool_test** %5, align 8
  %56 = getelementptr inbounds %struct.ethtool_test, %struct.ethtool_test* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = or i32 %57, %54
  store i32 %58, i32* %56, align 4
  br label %59

59:                                               ; preds = %53, %44
  %60 = load i32, i32* %8, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %59
  %63 = load %struct.net_device*, %struct.net_device** %4, align 8
  %64 = call i32 @ixgbevf_close(%struct.net_device* %63)
  br label %68

65:                                               ; preds = %59
  %66 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %7, align 8
  %67 = call i32 @ixgbevf_reset(%struct.ixgbevf_adapter* %66)
  br label %68

68:                                               ; preds = %65, %62
  %69 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %7, align 8
  %70 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %69, i32 0, i32 1
  %71 = call i32 @hw_dbg(%struct.TYPE_4__* %70, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %72 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %7, align 8
  %73 = load i32*, i32** %6, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 0
  %75 = call i64 @ixgbevf_reg_test(%struct.ixgbevf_adapter* %72, i32* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %68
  %78 = load i32, i32* @ETH_TEST_FL_FAILED, align 4
  %79 = load %struct.ethtool_test*, %struct.ethtool_test** %5, align 8
  %80 = getelementptr inbounds %struct.ethtool_test, %struct.ethtool_test* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = or i32 %81, %78
  store i32 %82, i32* %80, align 4
  br label %83

83:                                               ; preds = %77, %68
  %84 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %7, align 8
  %85 = call i32 @ixgbevf_reset(%struct.ixgbevf_adapter* %84)
  %86 = load i32, i32* @__IXGBEVF_TESTING, align 4
  %87 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %7, align 8
  %88 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %87, i32 0, i32 0
  %89 = call i32 @clear_bit(i32 %86, i32* %88)
  %90 = load i32, i32* %8, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %83
  %93 = load %struct.net_device*, %struct.net_device** %4, align 8
  %94 = call i32 @ixgbevf_open(%struct.net_device* %93)
  br label %95

95:                                               ; preds = %92, %83
  br label %118

96:                                               ; preds = %34
  %97 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %7, align 8
  %98 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %97, i32 0, i32 1
  %99 = call i32 @hw_dbg(%struct.TYPE_4__* %98, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %100 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %7, align 8
  %101 = load i32*, i32** %6, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 1
  %103 = call i64 @ixgbevf_link_test(%struct.ixgbevf_adapter* %100, i32* %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %111

105:                                              ; preds = %96
  %106 = load i32, i32* @ETH_TEST_FL_FAILED, align 4
  %107 = load %struct.ethtool_test*, %struct.ethtool_test** %5, align 8
  %108 = getelementptr inbounds %struct.ethtool_test, %struct.ethtool_test* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = or i32 %109, %106
  store i32 %110, i32* %108, align 4
  br label %111

111:                                              ; preds = %105, %96
  %112 = load i32*, i32** %6, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 0
  store i32 0, i32* %113, align 4
  %114 = load i32, i32* @__IXGBEVF_TESTING, align 4
  %115 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %7, align 8
  %116 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %115, i32 0, i32 0
  %117 = call i32 @clear_bit(i32 %114, i32* %116)
  br label %118

118:                                              ; preds = %111, %95
  %119 = call i32 @msleep_interruptible(i32 4000)
  br label %120

120:                                              ; preds = %118, %19
  ret void
}

declare dso_local %struct.ixgbevf_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_running(%struct.net_device*) #1

declare dso_local i64 @IXGBE_REMOVED(i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @hw_dbg(%struct.TYPE_4__*, i8*) #1

declare dso_local i64 @ixgbevf_link_test(%struct.ixgbevf_adapter*, i32*) #1

declare dso_local i32 @ixgbevf_close(%struct.net_device*) #1

declare dso_local i32 @ixgbevf_reset(%struct.ixgbevf_adapter*) #1

declare dso_local i64 @ixgbevf_reg_test(%struct.ixgbevf_adapter*, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @ixgbevf_open(%struct.net_device*) #1

declare dso_local i32 @msleep_interruptible(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
