; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_asix_devices.c_marvell_phy_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_asix_devices.c_marvell_phy_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.asix_data = type { i64 }

@.str = private unnamed_addr constant [20 x i8] c"marvell_phy_init()\0A\00", align 1
@MII_MARVELL_STATUS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"MII_MARVELL_STATUS = 0x%04x\0A\00", align 1
@MII_MARVELL_CTRL = common dso_local global i32 0, align 4
@MARVELL_CTRL_RXDELAY = common dso_local global i32 0, align 4
@MARVELL_CTRL_TXDELAY = common dso_local global i32 0, align 4
@MII_MARVELL_LED_CTRL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"MII_MARVELL_LED_CTRL (1) = 0x%04x\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"MII_MARVELL_LED_CTRL (2) = 0x%04x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbnet*)* @marvell_phy_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @marvell_phy_init(%struct.usbnet* %0) #0 {
  %2 = alloca %struct.usbnet*, align 8
  %3 = alloca %struct.asix_data*, align 8
  %4 = alloca i32, align 4
  store %struct.usbnet* %0, %struct.usbnet** %2, align 8
  %5 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %6 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %5, i32 0, i32 2
  %7 = bitcast i32* %6 to %struct.asix_data*
  store %struct.asix_data* %7, %struct.asix_data** %3, align 8
  %8 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %9 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 (i32, i8*, ...) @netdev_dbg(i32 %10, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %13 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %16 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @MII_MARVELL_STATUS, align 4
  %20 = call i32 @asix_mdio_read(i32 %14, i32 %18, i32 %19)
  store i32 %20, i32* %4, align 4
  %21 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %22 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %4, align 4
  %25 = call i32 (i32, i8*, ...) @netdev_dbg(i32 %23, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %24)
  %26 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %27 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %30 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @MII_MARVELL_CTRL, align 4
  %34 = load i32, i32* @MARVELL_CTRL_RXDELAY, align 4
  %35 = load i32, i32* @MARVELL_CTRL_TXDELAY, align 4
  %36 = or i32 %34, %35
  %37 = call i32 @asix_mdio_write(i32 %28, i32 %32, i32 %33, i32 %36)
  %38 = load %struct.asix_data*, %struct.asix_data** %3, align 8
  %39 = getelementptr inbounds %struct.asix_data, %struct.asix_data* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %87

42:                                               ; preds = %1
  %43 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %44 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %47 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @MII_MARVELL_LED_CTRL, align 4
  %51 = call i32 @asix_mdio_read(i32 %45, i32 %49, i32 %50)
  store i32 %51, i32* %4, align 4
  %52 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %53 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %4, align 4
  %56 = call i32 (i32, i8*, ...) @netdev_dbg(i32 %54, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %55)
  %57 = load i32, i32* %4, align 4
  %58 = and i32 %57, 63743
  store i32 %58, i32* %4, align 4
  %59 = load i32, i32* %4, align 4
  %60 = or i32 %59, 257
  store i32 %60, i32* %4, align 4
  %61 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %62 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %65 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @MII_MARVELL_LED_CTRL, align 4
  %69 = load i32, i32* %4, align 4
  %70 = call i32 @asix_mdio_write(i32 %63, i32 %67, i32 %68, i32 %69)
  %71 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %72 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %75 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @MII_MARVELL_LED_CTRL, align 4
  %79 = call i32 @asix_mdio_read(i32 %73, i32 %77, i32 %78)
  store i32 %79, i32* %4, align 4
  %80 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %81 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %4, align 4
  %84 = call i32 (i32, i8*, ...) @netdev_dbg(i32 %82, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %83)
  %85 = load i32, i32* %4, align 4
  %86 = and i32 %85, 64527
  store i32 %86, i32* %4, align 4
  br label %87

87:                                               ; preds = %42, %1
  ret i32 0
}

declare dso_local i32 @netdev_dbg(i32, i8*, ...) #1

declare dso_local i32 @asix_mdio_read(i32, i32, i32) #1

declare dso_local i32 @asix_mdio_write(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
