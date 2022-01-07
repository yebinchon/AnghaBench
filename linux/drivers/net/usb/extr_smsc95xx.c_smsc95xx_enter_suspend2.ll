; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_smsc95xx.c_smsc95xx_enter_suspend2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_smsc95xx.c_smsc95xx_enter_suspend2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { i64* }
%struct.smsc95xx_priv = type { i32 }

@PM_CTRL = common dso_local global i32 0, align 4
@PM_CTL_SUS_MODE_ = common dso_local global i32 0, align 4
@PM_CTL_WUPS_ = common dso_local global i32 0, align 4
@PM_CTL_PHY_RST_ = common dso_local global i32 0, align 4
@PM_CTL_SUS_MODE_2 = common dso_local global i32 0, align 4
@SUSPEND_SUSPEND2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbnet*)* @smsc95xx_enter_suspend2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smsc95xx_enter_suspend2(%struct.usbnet* %0) #0 {
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
  br label %46

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
  %29 = load i32, i32* @PM_CTL_SUS_MODE_2, align 4
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
  br label %46

40:                                               ; preds = %20
  %41 = load i32, i32* @SUSPEND_SUSPEND2, align 4
  %42 = load %struct.smsc95xx_priv*, %struct.smsc95xx_priv** %4, align 8
  %43 = getelementptr inbounds %struct.smsc95xx_priv, %struct.smsc95xx_priv* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, %41
  store i32 %45, i32* %43, align 4
  store i32 0, i32* %2, align 4
  br label %46

46:                                               ; preds = %40, %38, %18
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i32 @smsc95xx_read_reg_nopm(%struct.usbnet*, i32, i32*) #1

declare dso_local i32 @smsc95xx_write_reg_nopm(%struct.usbnet*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
