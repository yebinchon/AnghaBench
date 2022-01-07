; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_ethtool.c_efx_ethtool_self_test.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_ethtool.c_efx_ethtool_self_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_test = type { i32 }
%struct.efx_nic = type { i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.efx_self_tests = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@STATE_READY = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"starting %sline testing\0A\00", align 1
@ETH_TEST_FL_OFFLINE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@IFF_UP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"failed opening device.\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"%s %sline self-tests\0A\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"passed\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"failed\00", align 1
@ETH_TEST_FL_FAILED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_test*, i32*)* @efx_ethtool_self_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @efx_ethtool_self_test(%struct.net_device* %0, %struct.ethtool_test* %1, i32* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_test*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.efx_nic*, align 8
  %8 = alloca %struct.efx_self_tests*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_test* %1, %struct.ethtool_test** %5, align 8
  store i32* %2, i32** %6, align 8
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = call %struct.efx_nic* @netdev_priv(%struct.net_device* %11)
  store %struct.efx_nic* %12, %struct.efx_nic** %7, align 8
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.efx_self_tests* @kzalloc(i32 4, i32 %15)
  store %struct.efx_self_tests* %16, %struct.efx_self_tests** %8, align 8
  %17 = load %struct.efx_self_tests*, %struct.efx_self_tests** %8, align 8
  %18 = icmp ne %struct.efx_self_tests* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %3
  br label %108

20:                                               ; preds = %3
  %21 = load %struct.efx_nic*, %struct.efx_nic** %7, align 8
  %22 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @STATE_READY, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %20
  %27 = load i32, i32* @EBUSY, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %10, align 4
  br label %101

29:                                               ; preds = %20
  %30 = load %struct.efx_nic*, %struct.efx_nic** %7, align 8
  %31 = load i32, i32* @drv, align 4
  %32 = load %struct.efx_nic*, %struct.efx_nic** %7, align 8
  %33 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %32, i32 0, i32 1
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = load %struct.ethtool_test*, %struct.ethtool_test** %5, align 8
  %36 = getelementptr inbounds %struct.ethtool_test, %struct.ethtool_test* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @ETH_TEST_FL_OFFLINE, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  %41 = zext i1 %40 to i64
  %42 = select i1 %40, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %43 = call i32 (%struct.efx_nic*, i32, %struct.TYPE_5__*, i8*, i8*, ...) @netif_info(%struct.efx_nic* %30, i32 %31, %struct.TYPE_5__* %34, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %42)
  %44 = load %struct.efx_nic*, %struct.efx_nic** %7, align 8
  %45 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %44, i32 0, i32 1
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @IFF_UP, align 4
  %50 = and i32 %48, %49
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %9, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %68, label %53

53:                                               ; preds = %29
  %54 = load %struct.efx_nic*, %struct.efx_nic** %7, align 8
  %55 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %54, i32 0, i32 1
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %55, align 8
  %57 = call i32 @dev_open(%struct.TYPE_5__* %56, i32* null)
  store i32 %57, i32* %10, align 4
  %58 = load i32, i32* %10, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %53
  %61 = load %struct.efx_nic*, %struct.efx_nic** %7, align 8
  %62 = load i32, i32* @drv, align 4
  %63 = load %struct.efx_nic*, %struct.efx_nic** %7, align 8
  %64 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %63, i32 0, i32 1
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %64, align 8
  %66 = call i32 @netif_err(%struct.efx_nic* %61, i32 %62, %struct.TYPE_5__* %65, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  br label %101

67:                                               ; preds = %53
  br label %68

68:                                               ; preds = %67, %29
  %69 = load %struct.efx_nic*, %struct.efx_nic** %7, align 8
  %70 = load %struct.efx_self_tests*, %struct.efx_self_tests** %8, align 8
  %71 = load %struct.ethtool_test*, %struct.ethtool_test** %5, align 8
  %72 = getelementptr inbounds %struct.ethtool_test, %struct.ethtool_test* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @efx_selftest(%struct.efx_nic* %69, %struct.efx_self_tests* %70, i32 %73)
  store i32 %74, i32* %10, align 4
  %75 = load i32, i32* %9, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %82, label %77

77:                                               ; preds = %68
  %78 = load %struct.efx_nic*, %struct.efx_nic** %7, align 8
  %79 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %78, i32 0, i32 1
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %79, align 8
  %81 = call i32 @dev_close(%struct.TYPE_5__* %80)
  br label %82

82:                                               ; preds = %77, %68
  %83 = load %struct.efx_nic*, %struct.efx_nic** %7, align 8
  %84 = load i32, i32* @drv, align 4
  %85 = load %struct.efx_nic*, %struct.efx_nic** %7, align 8
  %86 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %85, i32 0, i32 1
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %86, align 8
  %88 = load i32, i32* %10, align 4
  %89 = icmp eq i32 %88, 0
  %90 = zext i1 %89 to i64
  %91 = select i1 %89, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0)
  %92 = load %struct.ethtool_test*, %struct.ethtool_test** %5, align 8
  %93 = getelementptr inbounds %struct.ethtool_test, %struct.ethtool_test* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @ETH_TEST_FL_OFFLINE, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  %98 = zext i1 %97 to i64
  %99 = select i1 %97, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %100 = call i32 (%struct.efx_nic*, i32, %struct.TYPE_5__*, i8*, i8*, ...) @netif_info(%struct.efx_nic* %83, i32 %84, %struct.TYPE_5__* %87, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i8* %91, i8* %99)
  br label %101

101:                                              ; preds = %82, %60, %26
  %102 = load %struct.efx_nic*, %struct.efx_nic** %7, align 8
  %103 = load %struct.efx_self_tests*, %struct.efx_self_tests** %8, align 8
  %104 = load i32*, i32** %6, align 8
  %105 = call i32 @efx_ethtool_fill_self_tests(%struct.efx_nic* %102, %struct.efx_self_tests* %103, i32* null, i32* %104)
  %106 = load %struct.efx_self_tests*, %struct.efx_self_tests** %8, align 8
  %107 = call i32 @kfree(%struct.efx_self_tests* %106)
  br label %108

108:                                              ; preds = %101, %19
  %109 = load i32, i32* %10, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %117

111:                                              ; preds = %108
  %112 = load i32, i32* @ETH_TEST_FL_FAILED, align 4
  %113 = load %struct.ethtool_test*, %struct.ethtool_test** %5, align 8
  %114 = getelementptr inbounds %struct.ethtool_test, %struct.ethtool_test* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = or i32 %115, %112
  store i32 %116, i32* %114, align 4
  br label %117

117:                                              ; preds = %111, %108
  ret void
}

declare dso_local %struct.efx_nic* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.efx_self_tests* @kzalloc(i32, i32) #1

declare dso_local i32 @netif_info(%struct.efx_nic*, i32, %struct.TYPE_5__*, i8*, i8*, ...) #1

declare dso_local i32 @dev_open(%struct.TYPE_5__*, i32*) #1

declare dso_local i32 @netif_err(%struct.efx_nic*, i32, %struct.TYPE_5__*, i8*) #1

declare dso_local i32 @efx_selftest(%struct.efx_nic*, %struct.efx_self_tests*, i32) #1

declare dso_local i32 @dev_close(%struct.TYPE_5__*) #1

declare dso_local i32 @efx_ethtool_fill_self_tests(%struct.efx_nic*, %struct.efx_self_tests*, i32*, i32*) #1

declare dso_local i32 @kfree(%struct.efx_self_tests*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
