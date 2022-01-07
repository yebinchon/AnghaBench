; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_smsc95xx.c_smsc95xx_enter_suspend0.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_smsc95xx.c_smsc95xx_enter_suspend0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { i64* }
%struct.smsc95xx_priv = type { i32, i32 }

@PM_CTRL = common dso_local global i32 0, align 4
@PM_CTL_SUS_MODE_ = common dso_local global i32 0, align 4
@PM_CTL_WUPS_ = common dso_local global i32 0, align 4
@PM_CTL_PHY_RST_ = common dso_local global i32 0, align 4
@PM_CTL_SUS_MODE_0 = common dso_local global i32 0, align 4
@PM_CTL_WUPS_WOL_ = common dso_local global i32 0, align 4
@WAKE_PHY = common dso_local global i32 0, align 4
@PM_CTL_WUPS_ED_ = common dso_local global i32 0, align 4
@SUSPEND_SUSPEND0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbnet*)* @smsc95xx_enter_suspend0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smsc95xx_enter_suspend0(%struct.usbnet* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usbnet*, align 8
  %4 = alloca %struct.smsc95xx_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.usbnet* %0, %struct.usbnet** %3, align 8
  %7 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %8 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %7, i32 0, i32 0
  %9 = load i64*, i64** %8, align 8
  %10 = getelementptr inbounds i64, i64* %9, i64 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.smsc95xx_priv*
  store %struct.smsc95xx_priv* %12, %struct.smsc95xx_priv** %4, align 8
  %13 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %14 = load i32, i32* @PM_CTRL, align 4
  %15 = call i32 @smsc95xx_read_reg_nopm(%struct.usbnet* %13, i32 %14, i32* %5)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* %6, align 4
  store i32 %19, i32* %2, align 4
  br label %81

20:                                               ; preds = %1
  %21 = load i32, i32* @PM_CTL_SUS_MODE_, align 4
  %22 = load i32, i32* @PM_CTL_WUPS_, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @PM_CTL_PHY_RST_, align 4
  %25 = or i32 %23, %24
  %26 = xor i32 %25, -1
  %27 = load i32, i32* %5, align 4
  %28 = and i32 %27, %26
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* @PM_CTL_SUS_MODE_0, align 4
  %30 = load i32, i32* %5, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %5, align 4
  %32 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %33 = load i32, i32* @PM_CTRL, align 4
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @smsc95xx_write_reg_nopm(%struct.usbnet* %32, i32 %33, i32 %34)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %20
  %39 = load i32, i32* %6, align 4
  store i32 %39, i32* %2, align 4
  br label %81

40:                                               ; preds = %20
  %41 = load i32, i32* @PM_CTL_WUPS_, align 4
  %42 = xor i32 %41, -1
  %43 = load i32, i32* %5, align 4
  %44 = and i32 %43, %42
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* @PM_CTL_WUPS_WOL_, align 4
  %46 = load i32, i32* %5, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %5, align 4
  %48 = load %struct.smsc95xx_priv*, %struct.smsc95xx_priv** %4, align 8
  %49 = getelementptr inbounds %struct.smsc95xx_priv, %struct.smsc95xx_priv* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @WAKE_PHY, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %40
  %55 = load i32, i32* @PM_CTL_WUPS_ED_, align 4
  %56 = load i32, i32* %5, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %5, align 4
  br label %58

58:                                               ; preds = %54, %40
  %59 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %60 = load i32, i32* @PM_CTRL, align 4
  %61 = load i32, i32* %5, align 4
  %62 = call i32 @smsc95xx_write_reg_nopm(%struct.usbnet* %59, i32 %60, i32 %61)
  store i32 %62, i32* %6, align 4
  %63 = load i32, i32* %6, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %58
  %66 = load i32, i32* %6, align 4
  store i32 %66, i32* %2, align 4
  br label %81

67:                                               ; preds = %58
  %68 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %69 = load i32, i32* @PM_CTRL, align 4
  %70 = call i32 @smsc95xx_read_reg_nopm(%struct.usbnet* %68, i32 %69, i32* %5)
  store i32 %70, i32* %6, align 4
  %71 = load i32, i32* %6, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %67
  %74 = load i32, i32* %6, align 4
  store i32 %74, i32* %2, align 4
  br label %81

75:                                               ; preds = %67
  %76 = load i32, i32* @SUSPEND_SUSPEND0, align 4
  %77 = load %struct.smsc95xx_priv*, %struct.smsc95xx_priv** %4, align 8
  %78 = getelementptr inbounds %struct.smsc95xx_priv, %struct.smsc95xx_priv* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = or i32 %79, %76
  store i32 %80, i32* %78, align 4
  store i32 0, i32* %2, align 4
  br label %81

81:                                               ; preds = %75, %73, %65, %38, %18
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local i32 @smsc95xx_read_reg_nopm(%struct.usbnet*, i32, i32*) #1

declare dso_local i32 @smsc95xx_write_reg_nopm(%struct.usbnet*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
