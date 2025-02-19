; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_smsc95xx.c_smsc95xx_autosuspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_smsc95xx.c_smsc95xx_autosuspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { i32, i64* }
%struct.smsc95xx_priv = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"autosuspend entering SUSPEND2\0A\00", align 1
@FEATURE_PHY_NLP_CROSSOVER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"EDPD not supported\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"autosuspend entering SUSPEND1\0A\00", align 1
@PHY_INT_MASK_ANEG_COMP_ = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"error enabling PHY wakeup ints\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"entering SUSPEND1 mode\0A\00", align 1
@PHY_INT_MASK_LINK_DOWN_ = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [31 x i8] c"autosuspend entering SUSPEND3\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbnet*, i32)* @smsc95xx_autosuspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smsc95xx_autosuspend(%struct.usbnet* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usbnet*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.smsc95xx_priv*, align 8
  %7 = alloca i32, align 4
  store %struct.usbnet* %0, %struct.usbnet** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %9 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %8, i32 0, i32 1
  %10 = load i64*, i64** %9, align 8
  %11 = getelementptr inbounds i64, i64* %10, i64 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.smsc95xx_priv*
  store %struct.smsc95xx_priv* %13, %struct.smsc95xx_priv** %6, align 8
  %14 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %15 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @netif_running(i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %2
  %20 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %21 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @netdev_dbg(i32 %22, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %24 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %25 = call i32 @smsc95xx_enter_suspend2(%struct.usbnet* %24)
  store i32 %25, i32* %3, align 4
  br label %85

26:                                               ; preds = %2
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %66, label %29

29:                                               ; preds = %26
  %30 = load %struct.smsc95xx_priv*, %struct.smsc95xx_priv** %6, align 8
  %31 = getelementptr inbounds %struct.smsc95xx_priv, %struct.smsc95xx_priv* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @FEATURE_PHY_NLP_CROSSOVER, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %29
  %37 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %38 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @netdev_warn(i32 %39, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %41 = load i32, i32* @EBUSY, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %85

43:                                               ; preds = %29
  %44 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %45 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @netdev_dbg(i32 %46, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %48 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %49 = load i32, i32* @PHY_INT_MASK_ANEG_COMP_, align 4
  %50 = call i32 @smsc95xx_enable_phy_wakeup_interrupts(%struct.usbnet* %48, i32 %49)
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %7, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %43
  %54 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %55 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @netdev_warn(i32 %56, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %58 = load i32, i32* %7, align 4
  store i32 %58, i32* %3, align 4
  br label %85

59:                                               ; preds = %43
  %60 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %61 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @netdev_info(i32 %62, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  %64 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %65 = call i32 @smsc95xx_enter_suspend1(%struct.usbnet* %64)
  store i32 %65, i32* %3, align 4
  br label %85

66:                                               ; preds = %26
  %67 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %68 = load i32, i32* @PHY_INT_MASK_LINK_DOWN_, align 4
  %69 = call i32 @smsc95xx_enable_phy_wakeup_interrupts(%struct.usbnet* %67, i32 %68)
  store i32 %69, i32* %7, align 4
  %70 = load i32, i32* %7, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %66
  %73 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %74 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @netdev_warn(i32 %75, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %77 = load i32, i32* %7, align 4
  store i32 %77, i32* %3, align 4
  br label %85

78:                                               ; preds = %66
  %79 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %80 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @netdev_dbg(i32 %81, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  %83 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %84 = call i32 @smsc95xx_enter_suspend3(%struct.usbnet* %83)
  store i32 %84, i32* %3, align 4
  br label %85

85:                                               ; preds = %78, %72, %59, %53, %36, %19
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local i32 @netif_running(i32) #1

declare dso_local i32 @netdev_dbg(i32, i8*) #1

declare dso_local i32 @smsc95xx_enter_suspend2(%struct.usbnet*) #1

declare dso_local i32 @netdev_warn(i32, i8*) #1

declare dso_local i32 @smsc95xx_enable_phy_wakeup_interrupts(%struct.usbnet*, i32) #1

declare dso_local i32 @netdev_info(i32, i8*) #1

declare dso_local i32 @smsc95xx_enter_suspend1(%struct.usbnet*) #1

declare dso_local i32 @smsc95xx_enter_suspend3(%struct.usbnet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
