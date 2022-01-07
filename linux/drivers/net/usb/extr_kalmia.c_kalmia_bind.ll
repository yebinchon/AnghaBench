; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_kalmia.c_kalmia_bind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_kalmia.c_kalmia_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { i32, i32, %struct.TYPE_5__*, i32*, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.usb_interface = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }

@ETH_ALEN = common dso_local global i32 0, align 4
@USB_CLASS_VENDOR_SPEC = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@USB_ENDPOINT_NUMBER_MASK = common dso_local global i32 0, align 4
@KALMIA_HEADER_LENGTH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbnet*, %struct.usb_interface*)* @kalmia_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kalmia_bind(%struct.usbnet* %0, %struct.usb_interface* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usbnet*, align 8
  %5 = alloca %struct.usb_interface*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.usbnet* %0, %struct.usbnet** %4, align 8
  store %struct.usb_interface* %1, %struct.usb_interface** %5, align 8
  %10 = load i32, i32* @ETH_ALEN, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %7, align 8
  %13 = alloca i32, i64 %11, align 16
  store i64 %11, i64* %8, align 8
  %14 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %15 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @USB_CLASS_VENDOR_SPEC, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %76

25:                                               ; preds = %2
  %26 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %27 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @USB_ENDPOINT_NUMBER_MASK, align 4
  %30 = and i32 129, %29
  %31 = call i32 @usb_rcvbulkpipe(i32 %28, i32 %30)
  %32 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %33 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %32, i32 0, i32 6
  store i32 %31, i32* %33, align 8
  %34 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %35 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @USB_ENDPOINT_NUMBER_MASK, align 4
  %38 = and i32 2, %37
  %39 = call i32 @usb_sndbulkpipe(i32 %36, i32 %38)
  %40 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %41 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %40, i32 0, i32 5
  store i32 %39, i32* %41, align 4
  %42 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %43 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %42, i32 0, i32 3
  store i32* null, i32** %43, align 8
  %44 = load i64, i64* @KALMIA_HEADER_LENGTH, align 8
  %45 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %46 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %45, i32 0, i32 2
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = sext i32 %49 to i64
  %51 = add nsw i64 %50, %44
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %48, align 4
  %53 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %54 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %53, i32 0, i32 0
  store i32 1400, i32* %54, align 8
  %55 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %56 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = mul nsw i32 %57, 10
  %59 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %60 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  %61 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %62 = call i32 @kalmia_init_and_get_ethernet_addr(%struct.usbnet* %61, i32* %13)
  store i32 %62, i32* %6, align 4
  %63 = load i32, i32* %6, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %25
  %66 = load i32, i32* %6, align 4
  store i32 %66, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %76

67:                                               ; preds = %25
  %68 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %69 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %68, i32 0, i32 2
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @ETH_ALEN, align 4
  %74 = call i32 @memcpy(i32 %72, i32* %13, i32 %73)
  %75 = load i32, i32* %6, align 4
  store i32 %75, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %76

76:                                               ; preds = %67, %65, %22
  %77 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %77)
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @usb_rcvbulkpipe(i32, i32) #2

declare dso_local i32 @usb_sndbulkpipe(i32, i32) #2

declare dso_local i32 @kalmia_init_and_get_ethernet_addr(%struct.usbnet*, i32*) #2

declare dso_local i32 @memcpy(i32, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
