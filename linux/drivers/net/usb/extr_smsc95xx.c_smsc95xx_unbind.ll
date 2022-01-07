; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_smsc95xx.c_smsc95xx_unbind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_smsc95xx.c_smsc95xx_unbind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { i64*, i32 }
%struct.usb_interface = type { i32 }
%struct.smsc95xx_priv = type { i32 }

@ifdown = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"free pdata\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usbnet*, %struct.usb_interface*)* @smsc95xx_unbind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smsc95xx_unbind(%struct.usbnet* %0, %struct.usb_interface* %1) #0 {
  %3 = alloca %struct.usbnet*, align 8
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.smsc95xx_priv*, align 8
  store %struct.usbnet* %0, %struct.usbnet** %3, align 8
  store %struct.usb_interface* %1, %struct.usb_interface** %4, align 8
  %6 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %7 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %6, i32 0, i32 0
  %8 = load i64*, i64** %7, align 8
  %9 = getelementptr inbounds i64, i64* %8, i64 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.smsc95xx_priv*
  store %struct.smsc95xx_priv* %11, %struct.smsc95xx_priv** %5, align 8
  %12 = load %struct.smsc95xx_priv*, %struct.smsc95xx_priv** %5, align 8
  %13 = icmp ne %struct.smsc95xx_priv* %12, null
  br i1 %13, label %14, label %30

14:                                               ; preds = %2
  %15 = load %struct.smsc95xx_priv*, %struct.smsc95xx_priv** %5, align 8
  %16 = getelementptr inbounds %struct.smsc95xx_priv, %struct.smsc95xx_priv* %15, i32 0, i32 0
  %17 = call i32 @cancel_delayed_work(i32* %16)
  %18 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %19 = load i32, i32* @ifdown, align 4
  %20 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %21 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @netif_dbg(%struct.usbnet* %18, i32 %19, i32 %22, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %24 = load %struct.smsc95xx_priv*, %struct.smsc95xx_priv** %5, align 8
  %25 = call i32 @kfree(%struct.smsc95xx_priv* %24)
  store %struct.smsc95xx_priv* null, %struct.smsc95xx_priv** %5, align 8
  %26 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %27 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %26, i32 0, i32 0
  %28 = load i64*, i64** %27, align 8
  %29 = getelementptr inbounds i64, i64* %28, i64 0
  store i64 0, i64* %29, align 8
  br label %30

30:                                               ; preds = %14, %2
  ret void
}

declare dso_local i32 @cancel_delayed_work(i32*) #1

declare dso_local i32 @netif_dbg(%struct.usbnet*, i32, i32, i8*) #1

declare dso_local i32 @kfree(%struct.smsc95xx_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
