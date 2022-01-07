; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_smsc75xx.c_smsc75xx_enter_suspend1.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_smsc75xx.c_smsc75xx_enter_suspend1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { i32, i64* }
%struct.smsc75xx_priv = type { i32 }

@PMT_CTL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Error reading PMT_CTL\0A\00", align 1
@PMT_CTL_SUS_MODE = common dso_local global i32 0, align 4
@PMT_CTL_WUPS = common dso_local global i32 0, align 4
@PMT_CTL_PHY_RST = common dso_local global i32 0, align 4
@PMT_CTL_SUS_MODE_1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Error writing PMT_CTL\0A\00", align 1
@PMT_CTL_WUPS_ED = common dso_local global i32 0, align 4
@PMT_CTL_ED_EN = common dso_local global i32 0, align 4
@SUSPEND_SUSPEND1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbnet*)* @smsc75xx_enter_suspend1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smsc75xx_enter_suspend1(%struct.usbnet* %0) #0 {
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
  %14 = load i32, i32* @PMT_CTL, align 4
  %15 = call i32 @smsc75xx_read_reg_nopm(%struct.usbnet* %13, i32 %14, i32* %5)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %1
  %19 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %20 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @netdev_warn(i32 %21, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* %6, align 4
  store i32 %23, i32* %2, align 4
  br label %76

24:                                               ; preds = %1
  %25 = load i32, i32* @PMT_CTL_SUS_MODE, align 4
  %26 = load i32, i32* @PMT_CTL_WUPS, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @PMT_CTL_PHY_RST, align 4
  %29 = or i32 %27, %28
  %30 = xor i32 %29, -1
  %31 = load i32, i32* %5, align 4
  %32 = and i32 %31, %30
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* @PMT_CTL_SUS_MODE_1, align 4
  %34 = load i32, i32* %5, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %5, align 4
  %36 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %37 = load i32, i32* @PMT_CTL, align 4
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @smsc75xx_write_reg_nopm(%struct.usbnet* %36, i32 %37, i32 %38)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %24
  %43 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %44 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @netdev_warn(i32 %45, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %47 = load i32, i32* %6, align 4
  store i32 %47, i32* %2, align 4
  br label %76

48:                                               ; preds = %24
  %49 = load i32, i32* @PMT_CTL_WUPS, align 4
  %50 = xor i32 %49, -1
  %51 = load i32, i32* %5, align 4
  %52 = and i32 %51, %50
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* @PMT_CTL_WUPS_ED, align 4
  %54 = load i32, i32* @PMT_CTL_ED_EN, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* %5, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %5, align 4
  %58 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %59 = load i32, i32* @PMT_CTL, align 4
  %60 = load i32, i32* %5, align 4
  %61 = call i32 @smsc75xx_write_reg_nopm(%struct.usbnet* %58, i32 %59, i32 %60)
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* %6, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %48
  %65 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %66 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @netdev_warn(i32 %67, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %69 = load i32, i32* %6, align 4
  store i32 %69, i32* %2, align 4
  br label %76

70:                                               ; preds = %48
  %71 = load i32, i32* @SUSPEND_SUSPEND1, align 4
  %72 = load %struct.smsc75xx_priv*, %struct.smsc75xx_priv** %4, align 8
  %73 = getelementptr inbounds %struct.smsc75xx_priv, %struct.smsc75xx_priv* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = or i32 %74, %71
  store i32 %75, i32* %73, align 4
  store i32 0, i32* %2, align 4
  br label %76

76:                                               ; preds = %70, %64, %42, %18
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local i32 @smsc75xx_read_reg_nopm(%struct.usbnet*, i32, i32*) #1

declare dso_local i32 @netdev_warn(i32, i8*) #1

declare dso_local i32 @smsc75xx_write_reg_nopm(%struct.usbnet*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
