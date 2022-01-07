; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/smsc/extr_smsc911x.c_smsc911x_mii_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/smsc/extr_smsc911x.c_smsc911x_mii_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.smsc911x_data = type { i32, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.phy_device = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"no PHY found\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@probe = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"PHY: addr %d, phy_id 0x%08X\00", align 1
@smsc911x_phy_adjust_link = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"Could not attach to PHY\0A\00", align 1
@SPEED_100 = common dso_local global i32 0, align 4
@hw = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"phy initialised successfully\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @smsc911x_mii_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smsc911x_mii_probe(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.smsc911x_data*, align 8
  %5 = alloca %struct.phy_device*, align 8
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.smsc911x_data* @netdev_priv(%struct.net_device* %7)
  store %struct.smsc911x_data* %8, %struct.smsc911x_data** %4, align 8
  store %struct.phy_device* null, %struct.phy_device** %5, align 8
  %9 = load %struct.smsc911x_data*, %struct.smsc911x_data** %4, align 8
  %10 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.phy_device* @phy_find_first(i32 %11)
  store %struct.phy_device* %12, %struct.phy_device** %5, align 8
  %13 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %14 = icmp ne %struct.phy_device* %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %1
  %16 = load %struct.net_device*, %struct.net_device** %3, align 8
  %17 = call i32 @netdev_err(%struct.net_device* %16, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @ENODEV, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %59

20:                                               ; preds = %1
  %21 = load %struct.smsc911x_data*, %struct.smsc911x_data** %4, align 8
  %22 = load i32, i32* @probe, align 4
  %23 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %24 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %28 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 (%struct.smsc911x_data*, i32, i8*, ...) @SMSC_TRACE(%struct.smsc911x_data* %21, i32 %22, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %26, i32 %29)
  %31 = load %struct.net_device*, %struct.net_device** %3, align 8
  %32 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %33 = load %struct.smsc911x_data*, %struct.smsc911x_data** %4, align 8
  %34 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @phy_connect_direct(%struct.net_device* %31, %struct.phy_device* %32, i32* @smsc911x_phy_adjust_link, i32 %36)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %20
  %41 = load %struct.net_device*, %struct.net_device** %3, align 8
  %42 = call i32 @netdev_err(%struct.net_device* %41, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %43 = load i32, i32* %6, align 4
  store i32 %43, i32* %2, align 4
  br label %59

44:                                               ; preds = %20
  %45 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %46 = call i32 @phy_attached_info(%struct.phy_device* %45)
  %47 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %48 = load i32, i32* @SPEED_100, align 4
  %49 = call i32 @phy_set_max_speed(%struct.phy_device* %47, i32 %48)
  %50 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %51 = call i32 @phy_support_asym_pause(%struct.phy_device* %50)
  %52 = load %struct.smsc911x_data*, %struct.smsc911x_data** %4, align 8
  %53 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %52, i32 0, i32 0
  store i32 -1, i32* %53, align 4
  %54 = load %struct.smsc911x_data*, %struct.smsc911x_data** %4, align 8
  %55 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %54, i32 0, i32 1
  store i32 -1, i32* %55, align 4
  %56 = load %struct.smsc911x_data*, %struct.smsc911x_data** %4, align 8
  %57 = load i32, i32* @hw, align 4
  %58 = call i32 (%struct.smsc911x_data*, i32, i8*, ...) @SMSC_TRACE(%struct.smsc911x_data* %56, i32 %57, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %59

59:                                               ; preds = %44, %40, %15
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local %struct.smsc911x_data* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.phy_device* @phy_find_first(i32) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i32 @SMSC_TRACE(%struct.smsc911x_data*, i32, i8*, ...) #1

declare dso_local i32 @phy_connect_direct(%struct.net_device*, %struct.phy_device*, i32*, i32) #1

declare dso_local i32 @phy_attached_info(%struct.phy_device*) #1

declare dso_local i32 @phy_set_max_speed(%struct.phy_device*, i32) #1

declare dso_local i32 @phy_support_asym_pause(%struct.phy_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
