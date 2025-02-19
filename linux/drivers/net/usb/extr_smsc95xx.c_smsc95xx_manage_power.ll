; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_smsc95xx.c_smsc95xx_manage_power.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_smsc95xx.c_smsc95xx_manage_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { %struct.TYPE_3__*, i32, i64* }
%struct.TYPE_3__ = type { i32 }
%struct.smsc95xx_priv = type { i32 }

@FEATURE_REMOTE_WAKEUP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"hardware isn't capable of remote wakeup\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbnet*, i32)* @smsc95xx_manage_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smsc95xx_manage_power(%struct.usbnet* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usbnet*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.smsc95xx_priv*, align 8
  store %struct.usbnet* %0, %struct.usbnet** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %8 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %7, i32 0, i32 2
  %9 = load i64*, i64** %8, align 8
  %10 = getelementptr inbounds i64, i64* %9, i64 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.smsc95xx_priv*
  store %struct.smsc95xx_priv* %12, %struct.smsc95xx_priv** %6, align 8
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %15 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %14, i32 0, i32 0
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  store i32 %13, i32* %17, align 4
  %18 = load %struct.smsc95xx_priv*, %struct.smsc95xx_priv** %6, align 8
  %19 = getelementptr inbounds %struct.smsc95xx_priv, %struct.smsc95xx_priv* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @FEATURE_REMOTE_WAKEUP, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %43

25:                                               ; preds = %2
  %26 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %27 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @netdev_info(i32 %28, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* %5, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %25
  %33 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %34 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %33, i32 0, i32 0
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = call i32 @usb_autopm_get_interface_no_resume(%struct.TYPE_3__* %35)
  br label %42

37:                                               ; preds = %25
  %38 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %39 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %38, i32 0, i32 0
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = call i32 @usb_autopm_put_interface(%struct.TYPE_3__* %40)
  br label %42

42:                                               ; preds = %37, %32
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %42, %24
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @netdev_info(i32, i8*) #1

declare dso_local i32 @usb_autopm_get_interface_no_resume(%struct.TYPE_3__*) #1

declare dso_local i32 @usb_autopm_put_interface(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
