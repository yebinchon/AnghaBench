; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_cdc_ether.c_usbnet_cdc_zte_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_cdc_ether.c_usbnet_cdc_zte_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { i32 }
%struct.urb = type { i32, %struct.usb_cdc_notification* }
%struct.usb_cdc_notification = type { i64, i64 }

@USB_CDC_NOTIFY_NETWORK_CONNECTION = common dso_local global i64 0, align 8
@timer = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"CDC: carrier %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usbnet*, %struct.urb*)* @usbnet_cdc_zte_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usbnet_cdc_zte_status(%struct.usbnet* %0, %struct.urb* %1) #0 {
  %3 = alloca %struct.usbnet*, align 8
  %4 = alloca %struct.urb*, align 8
  %5 = alloca %struct.usb_cdc_notification*, align 8
  store %struct.usbnet* %0, %struct.usbnet** %3, align 8
  store %struct.urb* %1, %struct.urb** %4, align 8
  %6 = load %struct.urb*, %struct.urb** %4, align 8
  %7 = getelementptr inbounds %struct.urb, %struct.urb* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = sext i32 %8 to i64
  %10 = icmp ult i64 %9, 16
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %63

12:                                               ; preds = %2
  %13 = load %struct.urb*, %struct.urb** %4, align 8
  %14 = getelementptr inbounds %struct.urb, %struct.urb* %13, i32 0, i32 1
  %15 = load %struct.usb_cdc_notification*, %struct.usb_cdc_notification** %14, align 8
  store %struct.usb_cdc_notification* %15, %struct.usb_cdc_notification** %5, align 8
  %16 = load %struct.usb_cdc_notification*, %struct.usb_cdc_notification** %5, align 8
  %17 = getelementptr inbounds %struct.usb_cdc_notification, %struct.usb_cdc_notification* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @USB_CDC_NOTIFY_NETWORK_CONNECTION, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %12
  %22 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %23 = load %struct.urb*, %struct.urb** %4, align 8
  %24 = call i32 @usbnet_cdc_status(%struct.usbnet* %22, %struct.urb* %23)
  br label %63

25:                                               ; preds = %12
  %26 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %27 = load i32, i32* @timer, align 4
  %28 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %29 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.usb_cdc_notification*, %struct.usb_cdc_notification** %5, align 8
  %32 = getelementptr inbounds %struct.usb_cdc_notification, %struct.usb_cdc_notification* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %37 = call i32 @netif_dbg(%struct.usbnet* %26, i32 %27, i32 %30, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %36)
  %38 = load %struct.usb_cdc_notification*, %struct.usb_cdc_notification** %5, align 8
  %39 = getelementptr inbounds %struct.usb_cdc_notification, %struct.usb_cdc_notification* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %53

42:                                               ; preds = %25
  %43 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %44 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @netif_carrier_ok(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %42
  %49 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %50 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @netif_carrier_off(i32 %51)
  br label %53

53:                                               ; preds = %48, %42, %25
  %54 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %55 = load %struct.usb_cdc_notification*, %struct.usb_cdc_notification** %5, align 8
  %56 = getelementptr inbounds %struct.usb_cdc_notification, %struct.usb_cdc_notification* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  %59 = xor i1 %58, true
  %60 = xor i1 %59, true
  %61 = zext i1 %60 to i32
  %62 = call i32 @usbnet_link_change(%struct.usbnet* %54, i32 %61, i32 0)
  br label %63

63:                                               ; preds = %53, %21, %11
  ret void
}

declare dso_local i32 @usbnet_cdc_status(%struct.usbnet*, %struct.urb*) #1

declare dso_local i32 @netif_dbg(%struct.usbnet*, i32, i32, i8*, i8*) #1

declare dso_local i64 @netif_carrier_ok(i32) #1

declare dso_local i32 @netif_carrier_off(i32) #1

declare dso_local i32 @usbnet_link_change(%struct.usbnet*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
