; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_kalmia.c_kalmia_send_init_packet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_kalmia.c_kalmia_send_init_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { i32, i32 }

@.str = private unnamed_addr constant [20 x i8] c"Sending init packet\00", align 1
@KALMIA_USB_TIMEOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"Error sending init packet. Status %i, length %i\0A\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"Did not send all of init packet. Bytes sent: %i\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"Successfully sent init packet.\00", align 1
@.str.4 = private unnamed_addr constant [51 x i8] c"Error receiving init result. Status %i, length %i\0A\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"Unexpected init result length: %i\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbnet*, i32*, i32, i32*, i32)* @kalmia_send_init_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kalmia_send_init_packet(%struct.usbnet* %0, i32* %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.usbnet*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.usbnet* %0, %struct.usbnet** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load %struct.usbnet*, %struct.usbnet** %7, align 8
  %15 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @netdev_dbg(i32 %16, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.usbnet*, %struct.usbnet** %7, align 8
  %19 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.usbnet*, %struct.usbnet** %7, align 8
  %22 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @usb_sndbulkpipe(i32 %23, i32 2)
  %25 = load i32*, i32** %8, align 8
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* @KALMIA_USB_TIMEOUT, align 4
  %28 = call i32 @usb_bulk_msg(i32 %20, i32 %24, i32* %25, i32 %26, i32* %12, i32 %27)
  store i32 %28, i32* %13, align 4
  %29 = load i32, i32* %13, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %5
  %32 = load %struct.usbnet*, %struct.usbnet** %7, align 8
  %33 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %13, align 4
  %36 = load i32, i32* %12, align 4
  %37 = call i32 (i32, i8*, i32, ...) @netdev_err(i32 %34, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %35, i32 %36)
  %38 = load i32, i32* %13, align 4
  store i32 %38, i32* %6, align 4
  br label %89

39:                                               ; preds = %5
  %40 = load i32, i32* %12, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %39
  %44 = load %struct.usbnet*, %struct.usbnet** %7, align 8
  %45 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %12, align 4
  %48 = call i32 (i32, i8*, i32, ...) @netdev_err(i32 %46, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i32 %47)
  br label %54

49:                                               ; preds = %39
  %50 = load %struct.usbnet*, %struct.usbnet** %7, align 8
  %51 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @netdev_dbg(i32 %52, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  br label %54

54:                                               ; preds = %49, %43
  br label %55

55:                                               ; preds = %54
  %56 = load %struct.usbnet*, %struct.usbnet** %7, align 8
  %57 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.usbnet*, %struct.usbnet** %7, align 8
  %60 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @usb_rcvbulkpipe(i32 %61, i32 129)
  %63 = load i32*, i32** %10, align 8
  %64 = load i32, i32* %11, align 4
  %65 = load i32, i32* @KALMIA_USB_TIMEOUT, align 4
  %66 = call i32 @usb_bulk_msg(i32 %58, i32 %62, i32* %63, i32 %64, i32* %12, i32 %65)
  store i32 %66, i32* %13, align 4
  %67 = load i32, i32* %13, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %55
  %70 = load %struct.usbnet*, %struct.usbnet** %7, align 8
  %71 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %13, align 4
  %74 = load i32, i32* %12, align 4
  %75 = call i32 (i32, i8*, i32, ...) @netdev_err(i32 %72, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i64 0, i64 0), i32 %73, i32 %74)
  br label %87

76:                                               ; preds = %55
  %77 = load i32, i32* %12, align 4
  %78 = load i32, i32* %11, align 4
  %79 = icmp ne i32 %77, %78
  br i1 %79, label %80, label %86

80:                                               ; preds = %76
  %81 = load %struct.usbnet*, %struct.usbnet** %7, align 8
  %82 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %12, align 4
  %85 = call i32 (i32, i8*, i32, ...) @netdev_err(i32 %83, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i32 %84)
  br label %86

86:                                               ; preds = %80, %76
  br label %87

87:                                               ; preds = %86, %69
  %88 = load i32, i32* %13, align 4
  store i32 %88, i32* %6, align 4
  br label %89

89:                                               ; preds = %87, %31
  %90 = load i32, i32* %6, align 4
  ret i32 %90
}

declare dso_local i32 @netdev_dbg(i32, i8*) #1

declare dso_local i32 @usb_bulk_msg(i32, i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @usb_sndbulkpipe(i32, i32) #1

declare dso_local i32 @netdev_err(i32, i8*, i32, ...) #1

declare dso_local i32 @usb_rcvbulkpipe(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
