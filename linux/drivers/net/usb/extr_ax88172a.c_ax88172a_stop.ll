; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_ax88172a.c_ax88172a_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_ax88172a.c_ax88172a_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { i32, %struct.ax88172a_private* }
%struct.ax88172a_private = type { i64, i32 }

@.str = private unnamed_addr constant [20 x i8] c"Stopping interface\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Disconnecting from phy %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbnet*)* @ax88172a_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ax88172a_stop(%struct.usbnet* %0) #0 {
  %2 = alloca %struct.usbnet*, align 8
  %3 = alloca %struct.ax88172a_private*, align 8
  store %struct.usbnet* %0, %struct.usbnet** %2, align 8
  %4 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %5 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %4, i32 0, i32 1
  %6 = load %struct.ax88172a_private*, %struct.ax88172a_private** %5, align 8
  store %struct.ax88172a_private* %6, %struct.ax88172a_private** %3, align 8
  %7 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %8 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @netdev_dbg(i32 %9, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.ax88172a_private*, %struct.ax88172a_private** %3, align 8
  %12 = getelementptr inbounds %struct.ax88172a_private, %struct.ax88172a_private* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %31

15:                                               ; preds = %1
  %16 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %17 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.ax88172a_private*, %struct.ax88172a_private** %3, align 8
  %20 = getelementptr inbounds %struct.ax88172a_private, %struct.ax88172a_private* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @netdev_info(i32 %18, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %21)
  %23 = load %struct.ax88172a_private*, %struct.ax88172a_private** %3, align 8
  %24 = getelementptr inbounds %struct.ax88172a_private, %struct.ax88172a_private* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @phy_stop(i64 %25)
  %27 = load %struct.ax88172a_private*, %struct.ax88172a_private** %3, align 8
  %28 = getelementptr inbounds %struct.ax88172a_private, %struct.ax88172a_private* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @phy_disconnect(i64 %29)
  br label %31

31:                                               ; preds = %15, %1
  ret i32 0
}

declare dso_local i32 @netdev_dbg(i32, i8*) #1

declare dso_local i32 @netdev_info(i32, i8*, i32) #1

declare dso_local i32 @phy_stop(i64) #1

declare dso_local i32 @phy_disconnect(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
