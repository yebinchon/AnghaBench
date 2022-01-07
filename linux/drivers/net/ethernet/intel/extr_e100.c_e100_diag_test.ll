; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/extr_e100.c_e100_diag_test.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/extr_e100.c_e100_diag_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_test = type { i32 }
%struct.ethtool_cmd = type { i32 }
%struct.nic = type { i32 }

@E100_TEST_LEN = common dso_local global i32 0, align 4
@ETH_TEST_FL_OFFLINE = common dso_local global i32 0, align 4
@lb_mac = common dso_local global i32 0, align 4
@lb_phy = common dso_local global i32 0, align 4
@ETH_TEST_FL_FAILED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_test*, i32*)* @e100_diag_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @e100_diag_test(%struct.net_device* %0, %struct.ethtool_test* %1, i32* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_test*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.ethtool_cmd, align 4
  %8 = alloca %struct.nic*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_test* %1, %struct.ethtool_test** %5, align 8
  store i32* %2, i32** %6, align 8
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = call %struct.nic* @netdev_priv(%struct.net_device* %11)
  store %struct.nic* %12, %struct.nic** %8, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = load i32, i32* @E100_TEST_LEN, align 4
  %15 = sext i32 %14 to i64
  %16 = mul i64 %15, 4
  %17 = trunc i64 %16 to i32
  %18 = call i32 @memset(i32* %13, i32 0, i32 %17)
  %19 = load %struct.nic*, %struct.nic** %8, align 8
  %20 = getelementptr inbounds %struct.nic, %struct.nic* %19, i32 0, i32 0
  %21 = call i32 @mii_link_ok(i32* %20)
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = load i32*, i32** %6, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  store i32 %24, i32* %26, align 4
  %27 = load %struct.nic*, %struct.nic** %8, align 8
  %28 = call i32 @e100_eeprom_load(%struct.nic* %27)
  %29 = load i32*, i32** %6, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 1
  store i32 %28, i32* %30, align 4
  %31 = load %struct.ethtool_test*, %struct.ethtool_test** %5, align 8
  %32 = getelementptr inbounds %struct.ethtool_test, %struct.ethtool_test* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @ETH_TEST_FL_OFFLINE, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %72

37:                                               ; preds = %3
  %38 = load %struct.nic*, %struct.nic** %8, align 8
  %39 = getelementptr inbounds %struct.nic, %struct.nic* %38, i32 0, i32 0
  %40 = call i32 @mii_ethtool_gset(i32* %39, %struct.ethtool_cmd* %7)
  store i32 %40, i32* %10, align 4
  %41 = load %struct.net_device*, %struct.net_device** %4, align 8
  %42 = call i64 @netif_running(%struct.net_device* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %37
  %45 = load %struct.nic*, %struct.nic** %8, align 8
  %46 = call i32 @e100_down(%struct.nic* %45)
  br label %47

47:                                               ; preds = %44, %37
  %48 = load %struct.nic*, %struct.nic** %8, align 8
  %49 = call i32 @e100_self_test(%struct.nic* %48)
  %50 = load i32*, i32** %6, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 2
  store i32 %49, i32* %51, align 4
  %52 = load %struct.nic*, %struct.nic** %8, align 8
  %53 = load i32, i32* @lb_mac, align 4
  %54 = call i32 @e100_loopback_test(%struct.nic* %52, i32 %53)
  %55 = load i32*, i32** %6, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 3
  store i32 %54, i32* %56, align 4
  %57 = load %struct.nic*, %struct.nic** %8, align 8
  %58 = load i32, i32* @lb_phy, align 4
  %59 = call i32 @e100_loopback_test(%struct.nic* %57, i32 %58)
  %60 = load i32*, i32** %6, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 4
  store i32 %59, i32* %61, align 4
  %62 = load %struct.nic*, %struct.nic** %8, align 8
  %63 = getelementptr inbounds %struct.nic, %struct.nic* %62, i32 0, i32 0
  %64 = call i32 @mii_ethtool_sset(i32* %63, %struct.ethtool_cmd* %7)
  store i32 %64, i32* %10, align 4
  %65 = load %struct.net_device*, %struct.net_device** %4, align 8
  %66 = call i64 @netif_running(%struct.net_device* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %47
  %69 = load %struct.nic*, %struct.nic** %8, align 8
  %70 = call i32 @e100_up(%struct.nic* %69)
  br label %71

71:                                               ; preds = %68, %47
  br label %72

72:                                               ; preds = %71, %3
  store i32 0, i32* %9, align 4
  br label %73

73:                                               ; preds = %93, %72
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* @E100_TEST_LEN, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %96

77:                                               ; preds = %73
  %78 = load i32*, i32** %6, align 8
  %79 = load i32, i32* %9, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %77
  %85 = load i32, i32* @ETH_TEST_FL_FAILED, align 4
  br label %87

86:                                               ; preds = %77
  br label %87

87:                                               ; preds = %86, %84
  %88 = phi i32 [ %85, %84 ], [ 0, %86 ]
  %89 = load %struct.ethtool_test*, %struct.ethtool_test** %5, align 8
  %90 = getelementptr inbounds %struct.ethtool_test, %struct.ethtool_test* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = or i32 %91, %88
  store i32 %92, i32* %90, align 4
  br label %93

93:                                               ; preds = %87
  %94 = load i32, i32* %9, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %9, align 4
  br label %73

96:                                               ; preds = %73
  %97 = call i32 @msleep_interruptible(i32 4000)
  ret void
}

declare dso_local %struct.nic* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @mii_link_ok(i32*) #1

declare dso_local i32 @e100_eeprom_load(%struct.nic*) #1

declare dso_local i32 @mii_ethtool_gset(i32*, %struct.ethtool_cmd*) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @e100_down(%struct.nic*) #1

declare dso_local i32 @e100_self_test(%struct.nic*) #1

declare dso_local i32 @e100_loopback_test(%struct.nic*, i32) #1

declare dso_local i32 @mii_ethtool_sset(i32*, %struct.ethtool_cmd*) #1

declare dso_local i32 @e100_up(%struct.nic*) #1

declare dso_local i32 @msleep_interruptible(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
