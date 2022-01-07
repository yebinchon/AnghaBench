; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_smsc75xx.c_smsc75xx_enable_phy_wakeup_interrupts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_smsc75xx.c_smsc75xx_enable_phy_wakeup_interrupts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { i32, %struct.mii_if_info }
%struct.mii_if_info = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"enabling PHY wakeup interrupts\0A\00", align 1
@PHY_INT_SRC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Error reading PHY_INT_SRC\0A\00", align 1
@PHY_INT_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"Error reading PHY_INT_MASK\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbnet*, i32)* @smsc75xx_enable_phy_wakeup_interrupts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smsc75xx_enable_phy_wakeup_interrupts(%struct.usbnet* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usbnet*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mii_if_info*, align 8
  %7 = alloca i32, align 4
  store %struct.usbnet* %0, %struct.usbnet** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %9 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %8, i32 0, i32 1
  store %struct.mii_if_info* %9, %struct.mii_if_info** %6, align 8
  %10 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %11 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @netdev_dbg(i32 %12, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %15 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.mii_if_info*, %struct.mii_if_info** %6, align 8
  %18 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @PHY_INT_SRC, align 4
  %21 = call i32 @smsc75xx_mdio_read_nopm(i32 %16, i32 %19, i32 %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %2
  %25 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %26 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @netdev_warn(i32 %27, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %29 = load i32, i32* %7, align 4
  store i32 %29, i32* %3, align 4
  br label %60

30:                                               ; preds = %2
  %31 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %32 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.mii_if_info*, %struct.mii_if_info** %6, align 8
  %35 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @PHY_INT_MASK, align 4
  %38 = call i32 @smsc75xx_mdio_read_nopm(i32 %33, i32 %36, i32 %37)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %30
  %42 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %43 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @netdev_warn(i32 %44, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %46 = load i32, i32* %7, align 4
  store i32 %46, i32* %3, align 4
  br label %60

47:                                               ; preds = %30
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* %7, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %7, align 4
  %51 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %52 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.mii_if_info*, %struct.mii_if_info** %6, align 8
  %55 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @PHY_INT_MASK, align 4
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @smsc75xx_mdio_write_nopm(i32 %53, i32 %56, i32 %57, i32 %58)
  store i32 0, i32* %3, align 4
  br label %60

60:                                               ; preds = %47, %41, %24
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i32 @netdev_dbg(i32, i8*) #1

declare dso_local i32 @smsc75xx_mdio_read_nopm(i32, i32, i32) #1

declare dso_local i32 @netdev_warn(i32, i8*) #1

declare dso_local i32 @smsc75xx_mdio_write_nopm(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
