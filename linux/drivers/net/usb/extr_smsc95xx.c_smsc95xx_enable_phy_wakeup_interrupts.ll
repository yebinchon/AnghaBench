; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_smsc95xx.c_smsc95xx_enable_phy_wakeup_interrupts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_smsc95xx.c_smsc95xx_enable_phy_wakeup_interrupts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { i32, %struct.mii_if_info }
%struct.mii_if_info = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"enabling PHY wakeup interrupts\0A\00", align 1
@PHY_INT_SRC = common dso_local global i32 0, align 4
@PHY_INT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbnet*, i32)* @smsc95xx_enable_phy_wakeup_interrupts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smsc95xx_enable_phy_wakeup_interrupts(%struct.usbnet* %0, i32 %1) #0 {
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
  %21 = call i32 @smsc95xx_mdio_read_nopm(i32 %16, i32 %19, i32 %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = load i32, i32* %7, align 4
  store i32 %25, i32* %3, align 4
  br label %52

26:                                               ; preds = %2
  %27 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %28 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.mii_if_info*, %struct.mii_if_info** %6, align 8
  %31 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @PHY_INT_MASK, align 4
  %34 = call i32 @smsc95xx_mdio_read_nopm(i32 %29, i32 %32, i32 %33)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %26
  %38 = load i32, i32* %7, align 4
  store i32 %38, i32* %3, align 4
  br label %52

39:                                               ; preds = %26
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* %7, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %7, align 4
  %43 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %44 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.mii_if_info*, %struct.mii_if_info** %6, align 8
  %47 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @PHY_INT_MASK, align 4
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @smsc95xx_mdio_write_nopm(i32 %45, i32 %48, i32 %49, i32 %50)
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %39, %37, %24
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @netdev_dbg(i32, i8*) #1

declare dso_local i32 @smsc95xx_mdio_read_nopm(i32, i32, i32) #1

declare dso_local i32 @smsc95xx_mdio_write_nopm(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
