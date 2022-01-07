; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/extr_pcnet32.c_pcnet32_ethtool_test.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/extr_pcnet32.c_pcnet32_ethtool_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_test = type { i32 }
%struct.pcnet32_private = type { i32 }

@ETH_TEST_FL_OFFLINE = common dso_local global i32 0, align 4
@hw = common dso_local global i32 0, align 4
@KERN_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Loopback test failed\0A\00", align 1
@ETH_TEST_FL_FAILED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Loopback test passed\0A\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"No tests to run (specify 'Offline' on ethtool)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_test*, i32*)* @pcnet32_ethtool_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pcnet32_ethtool_test(%struct.net_device* %0, %struct.ethtool_test* %1, i32* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_test*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.pcnet32_private*, align 8
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_test* %1, %struct.ethtool_test** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.pcnet32_private* @netdev_priv(%struct.net_device* %9)
  store %struct.pcnet32_private* %10, %struct.pcnet32_private** %7, align 8
  %11 = load %struct.ethtool_test*, %struct.ethtool_test** %5, align 8
  %12 = getelementptr inbounds %struct.ethtool_test, %struct.ethtool_test* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @ETH_TEST_FL_OFFLINE, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %40

16:                                               ; preds = %3
  %17 = load %struct.net_device*, %struct.net_device** %4, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = call i32 @pcnet32_loopback_test(%struct.net_device* %17, i32* %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %33

22:                                               ; preds = %16
  %23 = load %struct.pcnet32_private*, %struct.pcnet32_private** %7, align 8
  %24 = load i32, i32* @hw, align 4
  %25 = load i32, i32* @KERN_DEBUG, align 4
  %26 = load %struct.net_device*, %struct.net_device** %4, align 8
  %27 = call i32 @netif_printk(%struct.pcnet32_private* %23, i32 %24, i32 %25, %struct.net_device* %26, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @ETH_TEST_FL_FAILED, align 4
  %29 = load %struct.ethtool_test*, %struct.ethtool_test** %5, align 8
  %30 = getelementptr inbounds %struct.ethtool_test, %struct.ethtool_test* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = or i32 %31, %28
  store i32 %32, i32* %30, align 4
  br label %39

33:                                               ; preds = %16
  %34 = load %struct.pcnet32_private*, %struct.pcnet32_private** %7, align 8
  %35 = load i32, i32* @hw, align 4
  %36 = load i32, i32* @KERN_DEBUG, align 4
  %37 = load %struct.net_device*, %struct.net_device** %4, align 8
  %38 = call i32 @netif_printk(%struct.pcnet32_private* %34, i32 %35, i32 %36, %struct.net_device* %37, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %39

39:                                               ; preds = %33, %22
  br label %46

40:                                               ; preds = %3
  %41 = load %struct.pcnet32_private*, %struct.pcnet32_private** %7, align 8
  %42 = load i32, i32* @hw, align 4
  %43 = load i32, i32* @KERN_DEBUG, align 4
  %44 = load %struct.net_device*, %struct.net_device** %4, align 8
  %45 = call i32 @netif_printk(%struct.pcnet32_private* %41, i32 %42, i32 %43, %struct.net_device* %44, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0))
  br label %46

46:                                               ; preds = %40, %39
  ret void
}

declare dso_local %struct.pcnet32_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @pcnet32_loopback_test(%struct.net_device*, i32*) #1

declare dso_local i32 @netif_printk(%struct.pcnet32_private*, i32, i32, %struct.net_device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
