; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_ch9200.c_ch9200_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_ch9200.c_ch9200_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { i32 }
%struct.urb = type { i32, i8* }

@EVENT_LINK_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usbnet*, %struct.urb*)* @ch9200_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ch9200_status(%struct.usbnet* %0, %struct.urb* %1) #0 {
  %3 = alloca %struct.usbnet*, align 8
  %4 = alloca %struct.urb*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct.usbnet* %0, %struct.usbnet** %3, align 8
  store %struct.urb* %1, %struct.urb** %4, align 8
  %7 = load %struct.urb*, %struct.urb** %4, align 8
  %8 = getelementptr inbounds %struct.urb, %struct.urb* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp slt i32 %9, 16
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %40

12:                                               ; preds = %2
  %13 = load %struct.urb*, %struct.urb** %4, align 8
  %14 = getelementptr inbounds %struct.urb, %struct.urb* %13, i32 0, i32 1
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** %6, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 0
  %18 = load i8, i8* %17, align 1
  %19 = zext i8 %18 to i32
  %20 = and i32 %19, 1
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %12
  %28 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %29 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @netif_carrier_on(i32 %30)
  %32 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %33 = load i32, i32* @EVENT_LINK_RESET, align 4
  %34 = call i32 @usbnet_defer_kevent(%struct.usbnet* %32, i32 %33)
  br label %40

35:                                               ; preds = %12
  %36 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %37 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @netif_carrier_off(i32 %38)
  br label %40

40:                                               ; preds = %11, %35, %27
  ret void
}

declare dso_local i32 @netif_carrier_on(i32) #1

declare dso_local i32 @usbnet_defer_kevent(%struct.usbnet*, i32) #1

declare dso_local i32 @netif_carrier_off(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
