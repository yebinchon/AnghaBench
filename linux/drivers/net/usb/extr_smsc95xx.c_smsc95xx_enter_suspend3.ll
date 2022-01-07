; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_smsc95xx.c_smsc95xx_enter_suspend3.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_smsc95xx.c_smsc95xx_enter_suspend3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { i32, i64* }
%struct.smsc95xx_priv = type { i32 }

@RX_FIFO_INF = common dso_local global i32 0, align 4
@RX_FIFO_INF_USED_ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"rx fifo not empty in autosuspend\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@PM_CTRL = common dso_local global i32 0, align 4
@PM_CTL_SUS_MODE_ = common dso_local global i32 0, align 4
@PM_CTL_WUPS_ = common dso_local global i32 0, align 4
@PM_CTL_PHY_RST_ = common dso_local global i32 0, align 4
@PM_CTL_SUS_MODE_3 = common dso_local global i32 0, align 4
@PM_CTL_RES_CLR_WKP_STS = common dso_local global i32 0, align 4
@PM_CTL_WUPS_WOL_ = common dso_local global i32 0, align 4
@SUSPEND_SUSPEND3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbnet*)* @smsc95xx_enter_suspend3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smsc95xx_enter_suspend3(%struct.usbnet* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usbnet*, align 8
  %4 = alloca %struct.smsc95xx_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.usbnet* %0, %struct.usbnet** %3, align 8
  %7 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %8 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %7, i32 0, i32 1
  %9 = load i64*, i64** %8, align 8
  %10 = getelementptr inbounds i64, i64* %9, i64 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.smsc95xx_priv*
  store %struct.smsc95xx_priv* %12, %struct.smsc95xx_priv** %4, align 8
  %13 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %14 = load i32, i32* @RX_FIFO_INF, align 4
  %15 = call i32 @smsc95xx_read_reg_nopm(%struct.usbnet* %13, i32 %14, i32* %5)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* %6, align 4
  store i32 %19, i32* %2, align 4
  br label %84

20:                                               ; preds = %1
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @RX_FIFO_INF_USED_, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %20
  %26 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %27 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @netdev_info(i32 %28, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @EBUSY, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %84

32:                                               ; preds = %20
  %33 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %34 = load i32, i32* @PM_CTRL, align 4
  %35 = call i32 @smsc95xx_read_reg_nopm(%struct.usbnet* %33, i32 %34, i32* %5)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = load i32, i32* %6, align 4
  store i32 %39, i32* %2, align 4
  br label %84

40:                                               ; preds = %32
  %41 = load i32, i32* @PM_CTL_SUS_MODE_, align 4
  %42 = load i32, i32* @PM_CTL_WUPS_, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @PM_CTL_PHY_RST_, align 4
  %45 = or i32 %43, %44
  %46 = xor i32 %45, -1
  %47 = load i32, i32* %5, align 4
  %48 = and i32 %47, %46
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* @PM_CTL_SUS_MODE_3, align 4
  %50 = load i32, i32* @PM_CTL_RES_CLR_WKP_STS, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* %5, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %5, align 4
  %54 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %55 = load i32, i32* @PM_CTRL, align 4
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @smsc95xx_write_reg_nopm(%struct.usbnet* %54, i32 %55, i32 %56)
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* %6, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %40
  %61 = load i32, i32* %6, align 4
  store i32 %61, i32* %2, align 4
  br label %84

62:                                               ; preds = %40
  %63 = load i32, i32* @PM_CTL_WUPS_, align 4
  %64 = xor i32 %63, -1
  %65 = load i32, i32* %5, align 4
  %66 = and i32 %65, %64
  store i32 %66, i32* %5, align 4
  %67 = load i32, i32* @PM_CTL_WUPS_WOL_, align 4
  %68 = load i32, i32* %5, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %5, align 4
  %70 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %71 = load i32, i32* @PM_CTRL, align 4
  %72 = load i32, i32* %5, align 4
  %73 = call i32 @smsc95xx_write_reg_nopm(%struct.usbnet* %70, i32 %71, i32 %72)
  store i32 %73, i32* %6, align 4
  %74 = load i32, i32* %6, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %62
  %77 = load i32, i32* %6, align 4
  store i32 %77, i32* %2, align 4
  br label %84

78:                                               ; preds = %62
  %79 = load i32, i32* @SUSPEND_SUSPEND3, align 4
  %80 = load %struct.smsc95xx_priv*, %struct.smsc95xx_priv** %4, align 8
  %81 = getelementptr inbounds %struct.smsc95xx_priv, %struct.smsc95xx_priv* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = or i32 %82, %79
  store i32 %83, i32* %81, align 4
  store i32 0, i32* %2, align 4
  br label %84

84:                                               ; preds = %78, %76, %60, %38, %25, %18
  %85 = load i32, i32* %2, align 4
  ret i32 %85
}

declare dso_local i32 @smsc95xx_read_reg_nopm(%struct.usbnet*, i32, i32*) #1

declare dso_local i32 @netdev_info(i32, i8*) #1

declare dso_local i32 @smsc95xx_write_reg_nopm(%struct.usbnet*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
