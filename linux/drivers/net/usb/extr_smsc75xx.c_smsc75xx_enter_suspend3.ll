; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_smsc75xx.c_smsc75xx_enter_suspend3.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_smsc75xx.c_smsc75xx_enter_suspend3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { i32, i64* }
%struct.smsc75xx_priv = type { i32 }

@FCT_RX_CTL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Error reading FCT_RX_CTL\0A\00", align 1
@FCT_RX_CTL_RXUSED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"rx fifo not empty in autosuspend\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@PMT_CTL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"Error reading PMT_CTL\0A\00", align 1
@PMT_CTL_SUS_MODE = common dso_local global i32 0, align 4
@PMT_CTL_WUPS = common dso_local global i32 0, align 4
@PMT_CTL_PHY_RST = common dso_local global i32 0, align 4
@PMT_CTL_SUS_MODE_3 = common dso_local global i32 0, align 4
@PMT_CTL_RES_CLR_WKP_EN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"Error writing PMT_CTL\0A\00", align 1
@PMT_CTL_WUPS_WOL = common dso_local global i32 0, align 4
@SUSPEND_SUSPEND3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbnet*)* @smsc75xx_enter_suspend3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smsc75xx_enter_suspend3(%struct.usbnet* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usbnet*, align 8
  %4 = alloca %struct.smsc75xx_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.usbnet* %0, %struct.usbnet** %3, align 8
  %7 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %8 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %7, i32 0, i32 1
  %9 = load i64*, i64** %8, align 8
  %10 = getelementptr inbounds i64, i64* %9, i64 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.smsc75xx_priv*
  store %struct.smsc75xx_priv* %12, %struct.smsc75xx_priv** %4, align 8
  %13 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %14 = load i32, i32* @FCT_RX_CTL, align 4
  %15 = call i32 @smsc75xx_read_reg_nopm(%struct.usbnet* %13, i32 %14, i32* %5)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %1
  %19 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %20 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @netdev_warn(i32 %21, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* %6, align 4
  store i32 %23, i32* %2, align 4
  br label %100

24:                                               ; preds = %1
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @FCT_RX_CTL_RXUSED, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %24
  %30 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %31 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @netdev_dbg(i32 %32, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %34 = load i32, i32* @EBUSY, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %100

36:                                               ; preds = %24
  %37 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %38 = load i32, i32* @PMT_CTL, align 4
  %39 = call i32 @smsc75xx_read_reg_nopm(%struct.usbnet* %37, i32 %38, i32* %5)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %36
  %43 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %44 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @netdev_warn(i32 %45, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %47 = load i32, i32* %6, align 4
  store i32 %47, i32* %2, align 4
  br label %100

48:                                               ; preds = %36
  %49 = load i32, i32* @PMT_CTL_SUS_MODE, align 4
  %50 = load i32, i32* @PMT_CTL_WUPS, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @PMT_CTL_PHY_RST, align 4
  %53 = or i32 %51, %52
  %54 = xor i32 %53, -1
  %55 = load i32, i32* %5, align 4
  %56 = and i32 %55, %54
  store i32 %56, i32* %5, align 4
  %57 = load i32, i32* @PMT_CTL_SUS_MODE_3, align 4
  %58 = load i32, i32* @PMT_CTL_RES_CLR_WKP_EN, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* %5, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %5, align 4
  %62 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %63 = load i32, i32* @PMT_CTL, align 4
  %64 = load i32, i32* %5, align 4
  %65 = call i32 @smsc75xx_write_reg_nopm(%struct.usbnet* %62, i32 %63, i32 %64)
  store i32 %65, i32* %6, align 4
  %66 = load i32, i32* %6, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %48
  %69 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %70 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @netdev_warn(i32 %71, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %73 = load i32, i32* %6, align 4
  store i32 %73, i32* %2, align 4
  br label %100

74:                                               ; preds = %48
  %75 = load i32, i32* @PMT_CTL_WUPS, align 4
  %76 = xor i32 %75, -1
  %77 = load i32, i32* %5, align 4
  %78 = and i32 %77, %76
  store i32 %78, i32* %5, align 4
  %79 = load i32, i32* @PMT_CTL_WUPS_WOL, align 4
  %80 = load i32, i32* %5, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %5, align 4
  %82 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %83 = load i32, i32* @PMT_CTL, align 4
  %84 = load i32, i32* %5, align 4
  %85 = call i32 @smsc75xx_write_reg_nopm(%struct.usbnet* %82, i32 %83, i32 %84)
  store i32 %85, i32* %6, align 4
  %86 = load i32, i32* %6, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %74
  %89 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %90 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @netdev_warn(i32 %91, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %93 = load i32, i32* %6, align 4
  store i32 %93, i32* %2, align 4
  br label %100

94:                                               ; preds = %74
  %95 = load i32, i32* @SUSPEND_SUSPEND3, align 4
  %96 = load %struct.smsc75xx_priv*, %struct.smsc75xx_priv** %4, align 8
  %97 = getelementptr inbounds %struct.smsc75xx_priv, %struct.smsc75xx_priv* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = or i32 %98, %95
  store i32 %99, i32* %97, align 4
  store i32 0, i32* %2, align 4
  br label %100

100:                                              ; preds = %94, %88, %68, %42, %29, %18
  %101 = load i32, i32* %2, align 4
  ret i32 %101
}

declare dso_local i32 @smsc75xx_read_reg_nopm(%struct.usbnet*, i32, i32*) #1

declare dso_local i32 @netdev_warn(i32, i8*) #1

declare dso_local i32 @netdev_dbg(i32, i8*) #1

declare dso_local i32 @smsc75xx_write_reg_nopm(%struct.usbnet*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
