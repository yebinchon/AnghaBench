; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_cdc_ncm.c_cdc_ncm_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_cdc_ncm.c_cdc_ncm_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.urb = type { i32, %struct.usb_cdc_notification* }
%struct.usb_cdc_notification = type { i32, i32 }
%struct.usb_cdc_speed_change = type { i32 }

@EVENT_STS_SPLIT = common dso_local global i32 0, align 4
@link = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"network connection: %sconnected\0A\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"dis\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"NCM: unexpected notification 0x%02x!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usbnet*, %struct.urb*)* @cdc_ncm_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cdc_ncm_status(%struct.usbnet* %0, %struct.urb* %1) #0 {
  %3 = alloca %struct.usbnet*, align 8
  %4 = alloca %struct.urb*, align 8
  %5 = alloca %struct.usb_cdc_notification*, align 8
  store %struct.usbnet* %0, %struct.usbnet** %3, align 8
  store %struct.urb* %1, %struct.urb** %4, align 8
  %6 = load %struct.urb*, %struct.urb** %4, align 8
  %7 = getelementptr inbounds %struct.urb, %struct.urb* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = sext i32 %8 to i64
  %10 = icmp ult i64 %9, 8
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %83

12:                                               ; preds = %2
  %13 = load i32, i32* @EVENT_STS_SPLIT, align 4
  %14 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %15 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %14, i32 0, i32 1
  %16 = call i64 @test_and_clear_bit(i32 %13, i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %12
  %19 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %20 = load %struct.urb*, %struct.urb** %4, align 8
  %21 = getelementptr inbounds %struct.urb, %struct.urb* %20, i32 0, i32 1
  %22 = load %struct.usb_cdc_notification*, %struct.usb_cdc_notification** %21, align 8
  %23 = bitcast %struct.usb_cdc_notification* %22 to %struct.usb_cdc_speed_change*
  %24 = call i32 @cdc_ncm_speed_change(%struct.usbnet* %19, %struct.usb_cdc_speed_change* %23)
  br label %83

25:                                               ; preds = %12
  %26 = load %struct.urb*, %struct.urb** %4, align 8
  %27 = getelementptr inbounds %struct.urb, %struct.urb* %26, i32 0, i32 1
  %28 = load %struct.usb_cdc_notification*, %struct.usb_cdc_notification** %27, align 8
  store %struct.usb_cdc_notification* %28, %struct.usb_cdc_notification** %5, align 8
  %29 = load %struct.usb_cdc_notification*, %struct.usb_cdc_notification** %5, align 8
  %30 = getelementptr inbounds %struct.usb_cdc_notification, %struct.usb_cdc_notification* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  switch i32 %31, label %74 [
    i32 129, label %32
    i32 128, label %56
  ]

32:                                               ; preds = %25
  %33 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %34 = load i32, i32* @link, align 4
  %35 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %36 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.usb_cdc_notification*, %struct.usb_cdc_notification** %5, align 8
  %39 = getelementptr inbounds %struct.usb_cdc_notification, %struct.usb_cdc_notification* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i64
  %45 = select i1 %43, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %46 = call i32 @netif_info(%struct.usbnet* %33, i32 %34, i32 %37, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* %45)
  %47 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %48 = load %struct.usb_cdc_notification*, %struct.usb_cdc_notification** %5, align 8
  %49 = getelementptr inbounds %struct.usb_cdc_notification, %struct.usb_cdc_notification* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  %52 = xor i1 %51, true
  %53 = xor i1 %52, true
  %54 = zext i1 %53 to i32
  %55 = call i32 @usbnet_link_change(%struct.usbnet* %47, i32 %54, i32 0)
  br label %83

56:                                               ; preds = %25
  %57 = load %struct.urb*, %struct.urb** %4, align 8
  %58 = getelementptr inbounds %struct.urb, %struct.urb* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = sext i32 %59 to i64
  %61 = icmp ult i64 %60, 12
  br i1 %61, label %62, label %67

62:                                               ; preds = %56
  %63 = load i32, i32* @EVENT_STS_SPLIT, align 4
  %64 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %65 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %64, i32 0, i32 1
  %66 = call i32 @set_bit(i32 %63, i32* %65)
  br label %73

67:                                               ; preds = %56
  %68 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %69 = load %struct.usb_cdc_notification*, %struct.usb_cdc_notification** %5, align 8
  %70 = getelementptr inbounds %struct.usb_cdc_notification, %struct.usb_cdc_notification* %69, i64 1
  %71 = bitcast %struct.usb_cdc_notification* %70 to %struct.usb_cdc_speed_change*
  %72 = call i32 @cdc_ncm_speed_change(%struct.usbnet* %68, %struct.usb_cdc_speed_change* %71)
  br label %73

73:                                               ; preds = %67, %62
  br label %83

74:                                               ; preds = %25
  %75 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %76 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %75, i32 0, i32 0
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load %struct.usb_cdc_notification*, %struct.usb_cdc_notification** %5, align 8
  %80 = getelementptr inbounds %struct.usb_cdc_notification, %struct.usb_cdc_notification* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @dev_dbg(i32* %78, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %81)
  br label %83

83:                                               ; preds = %11, %18, %74, %73, %32
  ret void
}

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @cdc_ncm_speed_change(%struct.usbnet*, %struct.usb_cdc_speed_change*) #1

declare dso_local i32 @netif_info(%struct.usbnet*, i32, i32, i8*, i8*) #1

declare dso_local i32 @usbnet_link_change(%struct.usbnet*, i32, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
