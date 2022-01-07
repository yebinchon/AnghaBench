; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_smsc75xx.c_smsc75xx_phy_initialize.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_smsc75xx.c_smsc75xx_phy_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (i32, i32, i32)*, i32, i32, i32, i32, i32 (i32, i32, i32, i32)*, i32 }

@SMSC75XX_INTERNAL_PHY_ID = common dso_local global i32 0, align 4
@MII_BMCR = common dso_local global i32 0, align 4
@BMCR_RESET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Error reading MII_BMCR\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"timeout on PHY Reset\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@MII_ADVERTISE = common dso_local global i32 0, align 4
@ADVERTISE_ALL = common dso_local global i32 0, align 4
@ADVERTISE_CSMA = common dso_local global i32 0, align 4
@ADVERTISE_PAUSE_CAP = common dso_local global i32 0, align 4
@ADVERTISE_PAUSE_ASYM = common dso_local global i32 0, align 4
@MII_CTRL1000 = common dso_local global i32 0, align 4
@ADVERTISE_1000FULL = common dso_local global i32 0, align 4
@PHY_INT_SRC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"Error reading PHY_INT_SRC\0A\00", align 1
@PHY_INT_MASK = common dso_local global i32 0, align 4
@PHY_INT_MASK_DEFAULT = common dso_local global i32 0, align 4
@ifup = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"phy initialised successfully\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbnet*)* @smsc75xx_phy_initialize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smsc75xx_phy_initialize(%struct.usbnet* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usbnet*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.usbnet* %0, %struct.usbnet** %3, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %8 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %11 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 6
  store i32 %9, i32* %12, align 8
  %13 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %14 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store i32 (i32, i32, i32)* @smsc75xx_mdio_read, i32 (i32, i32, i32)** %15, align 8
  %16 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %17 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 5
  store i32 (i32, i32, i32, i32)* @smsc75xx_mdio_write, i32 (i32, i32, i32, i32)** %18, align 8
  %19 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %20 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  store i32 31, i32* %21, align 8
  %22 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %23 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 2
  store i32 31, i32* %24, align 4
  %25 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %26 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 3
  store i32 1, i32* %27, align 8
  %28 = load i32, i32* @SMSC75XX_INTERNAL_PHY_ID, align 4
  %29 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %30 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 4
  store i32 %28, i32* %31, align 4
  %32 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %33 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %36 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @MII_BMCR, align 4
  %40 = load i32, i32* @BMCR_RESET, align 4
  %41 = call i32 @smsc75xx_mdio_write(i32 %34, i32 %38, i32 %39, i32 %40)
  br label %42

42:                                               ; preds = %72, %1
  %43 = call i32 @msleep(i32 10)
  %44 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %45 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %48 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @MII_BMCR, align 4
  %52 = call i32 @smsc75xx_mdio_read(i32 %46, i32 %50, i32 %51)
  store i32 %52, i32* %4, align 4
  %53 = load i32, i32* %4, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %42
  %56 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %57 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @netdev_warn(i32 %58, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %60 = load i32, i32* %4, align 4
  store i32 %60, i32* %2, align 4
  br label %159

61:                                               ; preds = %42
  %62 = load i32, i32* %6, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %6, align 4
  br label %64

64:                                               ; preds = %61
  %65 = load i32, i32* %4, align 4
  %66 = load i32, i32* @BMCR_RESET, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %64
  %70 = load i32, i32* %6, align 4
  %71 = icmp slt i32 %70, 100
  br label %72

72:                                               ; preds = %69, %64
  %73 = phi i1 [ false, %64 ], [ %71, %69 ]
  br i1 %73, label %42, label %74

74:                                               ; preds = %72
  %75 = load i32, i32* %6, align 4
  %76 = icmp sge i32 %75, 100
  br i1 %76, label %77, label %84

77:                                               ; preds = %74
  %78 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %79 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @netdev_warn(i32 %80, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %82 = load i32, i32* @EIO, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %2, align 4
  br label %159

84:                                               ; preds = %74
  %85 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %86 = call i32 @smsc75xx_phy_gig_workaround(%struct.usbnet* %85)
  %87 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %88 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %91 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 4
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @MII_ADVERTISE, align 4
  %95 = load i32, i32* @ADVERTISE_ALL, align 4
  %96 = load i32, i32* @ADVERTISE_CSMA, align 4
  %97 = or i32 %95, %96
  %98 = load i32, i32* @ADVERTISE_PAUSE_CAP, align 4
  %99 = or i32 %97, %98
  %100 = load i32, i32* @ADVERTISE_PAUSE_ASYM, align 4
  %101 = or i32 %99, %100
  %102 = call i32 @smsc75xx_mdio_write(i32 %89, i32 %93, i32 %94, i32 %101)
  %103 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %104 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %107 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 4
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @MII_CTRL1000, align 4
  %111 = load i32, i32* @ADVERTISE_1000FULL, align 4
  %112 = call i32 @smsc75xx_mdio_write(i32 %105, i32 %109, i32 %110, i32 %111)
  %113 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %114 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %117 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 4
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @PHY_INT_SRC, align 4
  %121 = call i32 @smsc75xx_mdio_read(i32 %115, i32 %119, i32 %120)
  store i32 %121, i32* %5, align 4
  %122 = load i32, i32* %5, align 4
  %123 = icmp slt i32 %122, 0
  br i1 %123, label %124, label %130

124:                                              ; preds = %84
  %125 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %126 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = call i32 @netdev_warn(i32 %127, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %129 = load i32, i32* %5, align 4
  store i32 %129, i32* %2, align 4
  br label %159

130:                                              ; preds = %84
  %131 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %132 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %135 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 4
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* @PHY_INT_SRC, align 4
  %139 = call i32 @smsc75xx_mdio_write(i32 %133, i32 %137, i32 %138, i32 65535)
  %140 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %141 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %144 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %144, i32 0, i32 4
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* @PHY_INT_MASK, align 4
  %148 = load i32, i32* @PHY_INT_MASK_DEFAULT, align 4
  %149 = call i32 @smsc75xx_mdio_write(i32 %142, i32 %146, i32 %147, i32 %148)
  %150 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %151 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %150, i32 0, i32 1
  %152 = call i32 @mii_nway_restart(%struct.TYPE_2__* %151)
  %153 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %154 = load i32, i32* @ifup, align 4
  %155 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %156 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = call i32 @netif_dbg(%struct.usbnet* %153, i32 %154, i32 %157, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %159

159:                                              ; preds = %130, %124, %77, %55
  %160 = load i32, i32* %2, align 4
  ret i32 %160
}

declare dso_local i32 @smsc75xx_mdio_read(i32, i32, i32) #1

declare dso_local i32 @smsc75xx_mdio_write(i32, i32, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @netdev_warn(i32, i8*) #1

declare dso_local i32 @smsc75xx_phy_gig_workaround(%struct.usbnet*) #1

declare dso_local i32 @mii_nway_restart(%struct.TYPE_2__*) #1

declare dso_local i32 @netif_dbg(%struct.usbnet*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
