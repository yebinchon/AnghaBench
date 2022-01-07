; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_lan78xx.c_lan7801_phy_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_lan78xx.c_lan7801_phy_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i32, i32 }
%struct.lan78xx_net = type { i32, i8*, i32 }
%struct.fixed_phy_status = type { i32, i32, i32 }

@DUPLEX_FULL = common dso_local global i32 0, align 4
@SPEED_1000 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"PHY Not Found!! Registering Fixed PHY\0A\00", align 1
@PHY_POLL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"No PHY/fixed_PHY found\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"Registered FIXED PHY\0A\00", align 1
@PHY_INTERFACE_MODE_RGMII = common dso_local global i8* null, align 8
@MAC_RGMII_ID = common dso_local global i32 0, align 4
@MAC_RGMII_ID_TXC_DELAY_EN_ = common dso_local global i32 0, align 4
@RGMII_TX_BYP_DLL = common dso_local global i32 0, align 4
@HW_CFG = common dso_local global i32 0, align 4
@HW_CFG_CLK125_EN_ = common dso_local global i32 0, align 4
@HW_CFG_REFCLK25_EN_ = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"no PHY driver found\0A\00", align 1
@PHY_KSZ9031RNX = common dso_local global i32 0, align 4
@ksz9031rnx_fixup = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [45 x i8] c"Failed to register fixup for PHY_KSZ9031RNX\0A\00", align 1
@PHY_LAN8835 = common dso_local global i32 0, align 4
@lan8835_fixup = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [42 x i8] c"Failed to register fixup for PHY_LAN8835\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.phy_device* (%struct.lan78xx_net*)* @lan7801_phy_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.phy_device* @lan7801_phy_init(%struct.lan78xx_net* %0) #0 {
  %2 = alloca %struct.phy_device*, align 8
  %3 = alloca %struct.lan78xx_net*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.fixed_phy_status, align 4
  %7 = alloca %struct.phy_device*, align 8
  store %struct.lan78xx_net* %0, %struct.lan78xx_net** %3, align 8
  %8 = getelementptr inbounds %struct.fixed_phy_status, %struct.fixed_phy_status* %6, i32 0, i32 0
  store i32 1, i32* %8, align 4
  %9 = getelementptr inbounds %struct.fixed_phy_status, %struct.fixed_phy_status* %6, i32 0, i32 1
  %10 = load i32, i32* @DUPLEX_FULL, align 4
  store i32 %10, i32* %9, align 4
  %11 = getelementptr inbounds %struct.fixed_phy_status, %struct.fixed_phy_status* %6, i32 0, i32 2
  %12 = load i32, i32* @SPEED_1000, align 4
  store i32 %12, i32* %11, align 4
  %13 = load %struct.lan78xx_net*, %struct.lan78xx_net** %3, align 8
  %14 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = call %struct.phy_device* @phy_find_first(i32 %15)
  store %struct.phy_device* %16, %struct.phy_device** %7, align 8
  %17 = load %struct.phy_device*, %struct.phy_device** %7, align 8
  %18 = icmp ne %struct.phy_device* %17, null
  br i1 %18, label %62, label %19

19:                                               ; preds = %1
  %20 = load %struct.lan78xx_net*, %struct.lan78xx_net** %3, align 8
  %21 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @netdev_dbg(i32 %22, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @PHY_POLL, align 4
  %25 = call %struct.phy_device* @fixed_phy_register(i32 %24, %struct.fixed_phy_status* %6, i32* null)
  store %struct.phy_device* %25, %struct.phy_device** %7, align 8
  %26 = load %struct.phy_device*, %struct.phy_device** %7, align 8
  %27 = call i64 @IS_ERR(%struct.phy_device* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %19
  %30 = load %struct.lan78xx_net*, %struct.lan78xx_net** %3, align 8
  %31 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @netdev_err(i32 %32, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  store %struct.phy_device* null, %struct.phy_device** %2, align 8
  br label %102

34:                                               ; preds = %19
  %35 = load %struct.lan78xx_net*, %struct.lan78xx_net** %3, align 8
  %36 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @netdev_dbg(i32 %37, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %39 = load i8*, i8** @PHY_INTERFACE_MODE_RGMII, align 8
  %40 = load %struct.lan78xx_net*, %struct.lan78xx_net** %3, align 8
  %41 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %40, i32 0, i32 1
  store i8* %39, i8** %41, align 8
  %42 = load %struct.lan78xx_net*, %struct.lan78xx_net** %3, align 8
  %43 = load i32, i32* @MAC_RGMII_ID, align 4
  %44 = load i32, i32* @MAC_RGMII_ID_TXC_DELAY_EN_, align 4
  %45 = call i32 @lan78xx_write_reg(%struct.lan78xx_net* %42, i32 %43, i32 %44)
  store i32 %45, i32* %5, align 4
  %46 = load %struct.lan78xx_net*, %struct.lan78xx_net** %3, align 8
  %47 = load i32, i32* @RGMII_TX_BYP_DLL, align 4
  %48 = call i32 @lan78xx_write_reg(%struct.lan78xx_net* %46, i32 %47, i32 15616)
  store i32 %48, i32* %5, align 4
  %49 = load %struct.lan78xx_net*, %struct.lan78xx_net** %3, align 8
  %50 = load i32, i32* @HW_CFG, align 4
  %51 = call i32 @lan78xx_read_reg(%struct.lan78xx_net* %49, i32 %50, i32* %4)
  store i32 %51, i32* %5, align 4
  %52 = load i32, i32* @HW_CFG_CLK125_EN_, align 4
  %53 = load i32, i32* %4, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %4, align 4
  %55 = load i32, i32* @HW_CFG_REFCLK25_EN_, align 4
  %56 = load i32, i32* %4, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %4, align 4
  %58 = load %struct.lan78xx_net*, %struct.lan78xx_net** %3, align 8
  %59 = load i32, i32* @HW_CFG, align 4
  %60 = load i32, i32* %4, align 4
  %61 = call i32 @lan78xx_write_reg(%struct.lan78xx_net* %58, i32 %59, i32 %60)
  store i32 %61, i32* %5, align 4
  br label %100

62:                                               ; preds = %1
  %63 = load %struct.phy_device*, %struct.phy_device** %7, align 8
  %64 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %72, label %67

67:                                               ; preds = %62
  %68 = load %struct.lan78xx_net*, %struct.lan78xx_net** %3, align 8
  %69 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @netdev_err(i32 %70, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  store %struct.phy_device* null, %struct.phy_device** %2, align 8
  br label %102

72:                                               ; preds = %62
  %73 = load i8*, i8** @PHY_INTERFACE_MODE_RGMII, align 8
  %74 = load %struct.lan78xx_net*, %struct.lan78xx_net** %3, align 8
  %75 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %74, i32 0, i32 1
  store i8* %73, i8** %75, align 8
  %76 = load i32, i32* @PHY_KSZ9031RNX, align 4
  %77 = load i32, i32* @ksz9031rnx_fixup, align 4
  %78 = call i32 @phy_register_fixup_for_uid(i32 %76, i32 -16, i32 %77)
  store i32 %78, i32* %5, align 4
  %79 = load i32, i32* %5, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %72
  %82 = load %struct.lan78xx_net*, %struct.lan78xx_net** %3, align 8
  %83 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @netdev_err(i32 %84, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0))
  store %struct.phy_device* null, %struct.phy_device** %2, align 8
  br label %102

86:                                               ; preds = %72
  %87 = load i32, i32* @PHY_LAN8835, align 4
  %88 = load i32, i32* @lan8835_fixup, align 4
  %89 = call i32 @phy_register_fixup_for_uid(i32 %87, i32 -16, i32 %88)
  store i32 %89, i32* %5, align 4
  %90 = load i32, i32* %5, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %86
  %93 = load %struct.lan78xx_net*, %struct.lan78xx_net** %3, align 8
  %94 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @netdev_err(i32 %95, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0))
  store %struct.phy_device* null, %struct.phy_device** %2, align 8
  br label %102

97:                                               ; preds = %86
  %98 = load %struct.phy_device*, %struct.phy_device** %7, align 8
  %99 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %98, i32 0, i32 0
  store i32 0, i32* %99, align 4
  br label %100

100:                                              ; preds = %97, %34
  %101 = load %struct.phy_device*, %struct.phy_device** %7, align 8
  store %struct.phy_device* %101, %struct.phy_device** %2, align 8
  br label %102

102:                                              ; preds = %100, %92, %81, %67, %29
  %103 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  ret %struct.phy_device* %103
}

declare dso_local %struct.phy_device* @phy_find_first(i32) #1

declare dso_local i32 @netdev_dbg(i32, i8*) #1

declare dso_local %struct.phy_device* @fixed_phy_register(i32, %struct.fixed_phy_status*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.phy_device*) #1

declare dso_local i32 @netdev_err(i32, i8*) #1

declare dso_local i32 @lan78xx_write_reg(%struct.lan78xx_net*, i32, i32) #1

declare dso_local i32 @lan78xx_read_reg(%struct.lan78xx_net*, i32, i32*) #1

declare dso_local i32 @phy_register_fixup_for_uid(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
