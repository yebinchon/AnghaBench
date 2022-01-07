; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_smsc95xx.c_smsc95xx_phy_initialize.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_smsc95xx.c_smsc95xx_phy_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (i32, i32, i32)*, i32, i32, i32, i32 (i32, i32, i32, i32)*, i32 }

@SMSC95XX_INTERNAL_PHY_ID = common dso_local global i32 0, align 4
@MII_BMCR = common dso_local global i32 0, align 4
@BMCR_RESET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"timeout on PHY Reset\00", align 1
@EIO = common dso_local global i32 0, align 4
@MII_ADVERTISE = common dso_local global i32 0, align 4
@ADVERTISE_ALL = common dso_local global i32 0, align 4
@ADVERTISE_CSMA = common dso_local global i32 0, align 4
@ADVERTISE_PAUSE_CAP = common dso_local global i32 0, align 4
@ADVERTISE_PAUSE_ASYM = common dso_local global i32 0, align 4
@PHY_INT_SRC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"Failed to read PHY_INT_SRC during init\0A\00", align 1
@PHY_INT_MASK = common dso_local global i32 0, align 4
@PHY_INT_MASK_DEFAULT_ = common dso_local global i32 0, align 4
@ifup = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"phy initialised successfully\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbnet*)* @smsc95xx_phy_initialize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smsc95xx_phy_initialize(%struct.usbnet* %0) #0 {
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
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 5
  store i32 %9, i32* %12, align 8
  %13 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %14 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store i32 (i32, i32, i32)* @smsc95xx_mdio_read, i32 (i32, i32, i32)** %15, align 8
  %16 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %17 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 4
  store i32 (i32, i32, i32, i32)* @smsc95xx_mdio_write, i32 (i32, i32, i32, i32)** %18, align 8
  %19 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %20 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  store i32 31, i32* %21, align 8
  %22 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %23 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 2
  store i32 31, i32* %24, align 4
  %25 = load i32, i32* @SMSC95XX_INTERNAL_PHY_ID, align 4
  %26 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %27 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 3
  store i32 %25, i32* %28, align 8
  %29 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %30 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %33 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @MII_BMCR, align 4
  %37 = load i32, i32* @BMCR_RESET, align 4
  %38 = call i32 @smsc95xx_mdio_write(i32 %31, i32 %35, i32 %36, i32 %37)
  br label %39

39:                                               ; preds = %60, %1
  %40 = call i32 @msleep(i32 10)
  %41 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %42 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %45 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @MII_BMCR, align 4
  %49 = call i32 @smsc95xx_mdio_read(i32 %43, i32 %47, i32 %48)
  store i32 %49, i32* %4, align 4
  %50 = load i32, i32* %6, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %6, align 4
  br label %52

52:                                               ; preds = %39
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* @BMCR_RESET, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  %58 = load i32, i32* %6, align 4
  %59 = icmp slt i32 %58, 100
  br label %60

60:                                               ; preds = %57, %52
  %61 = phi i1 [ false, %52 ], [ %59, %57 ]
  br i1 %61, label %39, label %62

62:                                               ; preds = %60
  %63 = load i32, i32* %6, align 4
  %64 = icmp sge i32 %63, 100
  br i1 %64, label %65, label %72

65:                                               ; preds = %62
  %66 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %67 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @netdev_warn(i32 %68, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %70 = load i32, i32* @EIO, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %2, align 4
  br label %126

72:                                               ; preds = %62
  %73 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %74 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %77 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @MII_ADVERTISE, align 4
  %81 = load i32, i32* @ADVERTISE_ALL, align 4
  %82 = load i32, i32* @ADVERTISE_CSMA, align 4
  %83 = or i32 %81, %82
  %84 = load i32, i32* @ADVERTISE_PAUSE_CAP, align 4
  %85 = or i32 %83, %84
  %86 = load i32, i32* @ADVERTISE_PAUSE_ASYM, align 4
  %87 = or i32 %85, %86
  %88 = call i32 @smsc95xx_mdio_write(i32 %75, i32 %79, i32 %80, i32 %87)
  %89 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %90 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %93 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @PHY_INT_SRC, align 4
  %97 = call i32 @smsc95xx_mdio_read(i32 %91, i32 %95, i32 %96)
  store i32 %97, i32* %5, align 4
  %98 = load i32, i32* %5, align 4
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %100, label %106

100:                                              ; preds = %72
  %101 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %102 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @netdev_warn(i32 %103, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %105 = load i32, i32* %5, align 4
  store i32 %105, i32* %2, align 4
  br label %126

106:                                              ; preds = %72
  %107 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %108 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %111 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @PHY_INT_MASK, align 4
  %115 = load i32, i32* @PHY_INT_MASK_DEFAULT_, align 4
  %116 = call i32 @smsc95xx_mdio_write(i32 %109, i32 %113, i32 %114, i32 %115)
  %117 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %118 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %117, i32 0, i32 1
  %119 = call i32 @mii_nway_restart(%struct.TYPE_2__* %118)
  %120 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %121 = load i32, i32* @ifup, align 4
  %122 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %123 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @netif_dbg(%struct.usbnet* %120, i32 %121, i32 %124, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %126

126:                                              ; preds = %106, %100, %65
  %127 = load i32, i32* %2, align 4
  ret i32 %127
}

declare dso_local i32 @smsc95xx_mdio_read(i32, i32, i32) #1

declare dso_local i32 @smsc95xx_mdio_write(i32, i32, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @netdev_warn(i32, i8*) #1

declare dso_local i32 @mii_nway_restart(%struct.TYPE_2__*) #1

declare dso_local i32 @netif_dbg(%struct.usbnet*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
