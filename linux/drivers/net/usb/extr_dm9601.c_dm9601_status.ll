; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_dm9601.c_dm9601_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_dm9601.c_dm9601_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { i32 }
%struct.urb = type { i32, i32* }

@.str = private unnamed_addr constant [20 x i8] c"Link Status is: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usbnet*, %struct.urb*)* @dm9601_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dm9601_status(%struct.usbnet* %0, %struct.urb* %1) #0 {
  %3 = alloca %struct.usbnet*, align 8
  %4 = alloca %struct.urb*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store %struct.usbnet* %0, %struct.usbnet** %3, align 8
  store %struct.urb* %1, %struct.urb** %4, align 8
  %7 = load %struct.urb*, %struct.urb** %4, align 8
  %8 = getelementptr inbounds %struct.urb, %struct.urb* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp slt i32 %9, 8
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %39

12:                                               ; preds = %2
  %13 = load %struct.urb*, %struct.urb** %4, align 8
  %14 = getelementptr inbounds %struct.urb, %struct.urb* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %6, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = load i32, i32* %17, align 4
  %19 = and i32 %18, 64
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  store i32 %23, i32* %5, align 4
  %24 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %25 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @netif_carrier_ok(i32 %26)
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %39

30:                                               ; preds = %12
  %31 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @usbnet_link_change(%struct.usbnet* %31, i32 %32, i32 1)
  %34 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %35 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @netdev_dbg(i32 %36, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %37)
  br label %39

39:                                               ; preds = %11, %30, %12
  ret void
}

declare dso_local i32 @netif_carrier_ok(i32) #1

declare dso_local i32 @usbnet_link_change(%struct.usbnet*, i32, i32) #1

declare dso_local i32 @netdev_dbg(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
