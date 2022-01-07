; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/smsc/extr_smsc911x.c_smsc911x_phy_disable_energy_detect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/smsc/extr_smsc911x.c_smsc911x_phy_disable_energy_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smsc911x_data = type { %struct.net_device* }
%struct.net_device = type { %struct.phy_device* }
%struct.phy_device = type { i32 }

@MII_LAN83C185_CTRL_STATUS = common dso_local global i32 0, align 4
@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Failed reading PHY control reg\00", align 1
@MII_LAN83C185_EDPWRDOWN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Failed writing PHY control reg\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smsc911x_data*)* @smsc911x_phy_disable_energy_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smsc911x_phy_disable_energy_detect(%struct.smsc911x_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.smsc911x_data*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.phy_device*, align 8
  %6 = alloca i32, align 4
  store %struct.smsc911x_data* %0, %struct.smsc911x_data** %3, align 8
  %7 = load %struct.smsc911x_data*, %struct.smsc911x_data** %3, align 8
  %8 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %7, i32 0, i32 0
  %9 = load %struct.net_device*, %struct.net_device** %8, align 8
  store %struct.net_device* %9, %struct.net_device** %4, align 8
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = getelementptr inbounds %struct.net_device, %struct.net_device* %10, i32 0, i32 0
  %12 = load %struct.phy_device*, %struct.phy_device** %11, align 8
  store %struct.phy_device* %12, %struct.phy_device** %5, align 8
  store i32 0, i32* %6, align 4
  %13 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %14 = icmp ne %struct.phy_device* %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* %6, align 4
  store i32 %16, i32* %2, align 4
  br label %51

17:                                               ; preds = %1
  %18 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %19 = load i32, i32* @MII_LAN83C185_CTRL_STATUS, align 4
  %20 = call i32 @phy_read(%struct.phy_device* %18, i32 %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %17
  %24 = load %struct.smsc911x_data*, %struct.smsc911x_data** %3, align 8
  %25 = load i32, i32* @drv, align 4
  %26 = call i32 @SMSC_WARN(%struct.smsc911x_data* %24, i32 %25, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* %6, align 4
  store i32 %27, i32* %2, align 4
  br label %51

28:                                               ; preds = %17
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @MII_LAN83C185_EDPWRDOWN, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %50

33:                                               ; preds = %28
  %34 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %35 = load i32, i32* @MII_LAN83C185_CTRL_STATUS, align 4
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @MII_LAN83C185_EDPWRDOWN, align 4
  %38 = xor i32 %37, -1
  %39 = and i32 %36, %38
  %40 = call i32 @phy_write(%struct.phy_device* %34, i32 %35, i32 %39)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %33
  %44 = load %struct.smsc911x_data*, %struct.smsc911x_data** %3, align 8
  %45 = load i32, i32* @drv, align 4
  %46 = call i32 @SMSC_WARN(%struct.smsc911x_data* %44, i32 %45, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %47 = load i32, i32* %6, align 4
  store i32 %47, i32* %2, align 4
  br label %51

48:                                               ; preds = %33
  %49 = call i32 @mdelay(i32 2)
  br label %50

50:                                               ; preds = %48, %28
  store i32 0, i32* %2, align 4
  br label %51

51:                                               ; preds = %50, %43, %23, %15
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local i32 @phy_read(%struct.phy_device*, i32) #1

declare dso_local i32 @SMSC_WARN(%struct.smsc911x_data*, i32, i8*) #1

declare dso_local i32 @phy_write(%struct.phy_device*, i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
