; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/8390/extr_pcnet_cs.c_mii_phy_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/8390/extr_pcnet_cs.c_mii_phy_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.pcnet_dev = type { i32, i32 }

@DLINK_GPIO = common dso_local global i32 0, align 4
@MII_PHYID_REG1 = common dso_local global i32 0, align 4
@MII_PHYID_REG2 = common dso_local global i32 0, align 4
@MII_PHYID_REV_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"MII at %d is 0x%08x\0A\00", align 1
@AM79C9XX_HOME_PHY = common dso_local global i32 0, align 4
@AM79C9XX_ETH_PHY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @mii_phy_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mii_phy_probe(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.pcnet_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %8 = load %struct.net_device*, %struct.net_device** %2, align 8
  %9 = call %struct.pcnet_dev* @PRIV(%struct.net_device* %8)
  store %struct.pcnet_dev* %9, %struct.pcnet_dev** %3, align 8
  %10 = load %struct.net_device*, %struct.net_device** %2, align 8
  %11 = getelementptr inbounds %struct.net_device, %struct.net_device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @DLINK_GPIO, align 4
  %14 = add i32 %12, %13
  store i32 %14, i32* %4, align 4
  store i32 31, i32* %5, align 4
  br label %15

15:                                               ; preds = %65, %1
  %16 = load i32, i32* %5, align 4
  %17 = icmp sge i32 %16, 0
  br i1 %17, label %18, label %68

18:                                               ; preds = %15
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @mdio_read(i32 %19, i32 %20, i32 1)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %18
  %25 = load i32, i32* %6, align 4
  %26 = icmp eq i32 %25, 65535
  br i1 %26, label %27, label %28

27:                                               ; preds = %24, %18
  br label %65

28:                                               ; preds = %24
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @MII_PHYID_REG1, align 4
  %32 = call i32 @mdio_read(i32 %29, i32 %30, i32 %31)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = shl i32 %33, 16
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @MII_PHYID_REG2, align 4
  %38 = call i32 @mdio_read(i32 %35, i32 %36, i32 %37)
  %39 = load i32, i32* %7, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* @MII_PHYID_REV_MASK, align 4
  %42 = load i32, i32* %7, align 4
  %43 = and i32 %42, %41
  store i32 %43, i32* %7, align 4
  %44 = load %struct.net_device*, %struct.net_device** %2, align 8
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @netdev_dbg(%struct.net_device* %44, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %45, i32 %46)
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* @AM79C9XX_HOME_PHY, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %28
  %52 = load i32, i32* %5, align 4
  %53 = load %struct.pcnet_dev*, %struct.pcnet_dev** %3, align 8
  %54 = getelementptr inbounds %struct.pcnet_dev, %struct.pcnet_dev* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  br label %64

55:                                               ; preds = %28
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* @AM79C9XX_ETH_PHY, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %55
  %60 = load i32, i32* %5, align 4
  %61 = load %struct.pcnet_dev*, %struct.pcnet_dev** %3, align 8
  %62 = getelementptr inbounds %struct.pcnet_dev, %struct.pcnet_dev* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  br label %63

63:                                               ; preds = %59, %55
  br label %64

64:                                               ; preds = %63, %51
  br label %65

65:                                               ; preds = %64, %27
  %66 = load i32, i32* %5, align 4
  %67 = add nsw i32 %66, -1
  store i32 %67, i32* %5, align 4
  br label %15

68:                                               ; preds = %15
  ret void
}

declare dso_local %struct.pcnet_dev* @PRIV(%struct.net_device*) #1

declare dso_local i32 @mdio_read(i32, i32, i32) #1

declare dso_local i32 @netdev_dbg(%struct.net_device*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
