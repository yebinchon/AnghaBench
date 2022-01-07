; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_smsc75xx.c_smsc75xx_autosuspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_smsc75xx.c_smsc75xx_autosuspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"autosuspend entering SUSPEND2\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"autosuspend entering SUSPEND1\0A\00", align 1
@PHY_INT_MASK_ANEG_COMP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"error enabling PHY wakeup ints\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"entering SUSPEND1 mode\0A\00", align 1
@PHY_INT_MASK_LINK_DOWN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"autosuspend entering SUSPEND3\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbnet*, i32)* @smsc75xx_autosuspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smsc75xx_autosuspend(%struct.usbnet* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usbnet*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.usbnet* %0, %struct.usbnet** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %8 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @netif_running(i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %19, label %12

12:                                               ; preds = %2
  %13 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %14 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @netdev_dbg(i32 %15, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %18 = call i32 @smsc75xx_enter_suspend2(%struct.usbnet* %17)
  store i32 %18, i32* %3, align 4
  br label %64

19:                                               ; preds = %2
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %45, label %22

22:                                               ; preds = %19
  %23 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %24 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @netdev_dbg(i32 %25, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %27 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %28 = load i32, i32* @PHY_INT_MASK_ANEG_COMP, align 4
  %29 = call i32 @smsc75xx_enable_phy_wakeup_interrupts(%struct.usbnet* %27, i32 %28)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %22
  %33 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %34 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @netdev_warn(i32 %35, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %37 = load i32, i32* %6, align 4
  store i32 %37, i32* %3, align 4
  br label %64

38:                                               ; preds = %22
  %39 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %40 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @netdev_info(i32 %41, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %43 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %44 = call i32 @smsc75xx_enter_suspend1(%struct.usbnet* %43)
  store i32 %44, i32* %3, align 4
  br label %64

45:                                               ; preds = %19
  %46 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %47 = load i32, i32* @PHY_INT_MASK_LINK_DOWN, align 4
  %48 = call i32 @smsc75xx_enable_phy_wakeup_interrupts(%struct.usbnet* %46, i32 %47)
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %45
  %52 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %53 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @netdev_warn(i32 %54, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %56 = load i32, i32* %6, align 4
  store i32 %56, i32* %3, align 4
  br label %64

57:                                               ; preds = %45
  %58 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %59 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @netdev_dbg(i32 %60, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  %62 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %63 = call i32 @smsc75xx_enter_suspend3(%struct.usbnet* %62)
  store i32 %63, i32* %3, align 4
  br label %64

64:                                               ; preds = %57, %51, %38, %32, %12
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i32 @netif_running(i32) #1

declare dso_local i32 @netdev_dbg(i32, i8*) #1

declare dso_local i32 @smsc75xx_enter_suspend2(%struct.usbnet*) #1

declare dso_local i32 @smsc75xx_enable_phy_wakeup_interrupts(%struct.usbnet*, i32) #1

declare dso_local i32 @netdev_warn(i32, i8*) #1

declare dso_local i32 @netdev_info(i32, i8*) #1

declare dso_local i32 @smsc75xx_enter_suspend1(%struct.usbnet*) #1

declare dso_local i32 @smsc75xx_enter_suspend3(%struct.usbnet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
