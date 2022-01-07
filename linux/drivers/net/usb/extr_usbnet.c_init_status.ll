; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_usbnet.c_init_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_usbnet.c_init_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { %struct.TYPE_13__*, %struct.TYPE_12__*, %struct.TYPE_11__*, %struct.TYPE_9__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i64 }
%struct.TYPE_9__ = type { i32 }
%struct.usb_interface = type { i32 }

@USB_ENDPOINT_NUMBER_MASK = common dso_local global i32 0, align 4
@USB_SPEED_HIGH = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@intr_complete = common dso_local global i32 0, align 4
@URB_FREE_BUFFER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"status ep%din, %d bytes period %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbnet*, %struct.usb_interface*)* @init_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_status(%struct.usbnet* %0, %struct.usb_interface* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usbnet*, align 8
  %5 = alloca %struct.usb_interface*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.usbnet* %0, %struct.usbnet** %4, align 8
  store %struct.usb_interface* %1, %struct.usb_interface** %5, align 8
  store i8* null, i8** %6, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %11 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %10, i32 0, i32 3
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %101

17:                                               ; preds = %2
  %18 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %19 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %18, i32 0, i32 1
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %21 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %22 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %21, i32 0, i32 2
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @USB_ENDPOINT_NUMBER_MASK, align 4
  %28 = and i32 %26, %27
  %29 = call i32 @usb_rcvintpipe(%struct.TYPE_12__* %20, i32 %28)
  store i32 %29, i32* %7, align 4
  %30 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %31 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %30, i32 0, i32 1
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %31, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @usb_maxpacket(%struct.TYPE_12__* %32, i32 %33, i32 0)
  store i32 %34, i32* %8, align 4
  %35 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %36 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %35, i32 0, i32 2
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = trunc i64 %40 to i32
  %42 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %43 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %42, i32 0, i32 1
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @USB_SPEED_HIGH, align 8
  %48 = icmp eq i64 %46, %47
  %49 = zext i1 %48 to i64
  %50 = select i1 %48, i32 7, i32 3
  %51 = call i32 @max(i32 %41, i32 %50)
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* @GFP_KERNEL, align 4
  %54 = call i8* @kmalloc(i32 %52, i32 %53)
  store i8* %54, i8** %6, align 8
  %55 = load i8*, i8** %6, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %57, label %100

57:                                               ; preds = %17
  %58 = load i32, i32* @GFP_KERNEL, align 4
  %59 = call %struct.TYPE_13__* @usb_alloc_urb(i32 0, i32 %58)
  %60 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %61 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %60, i32 0, i32 0
  store %struct.TYPE_13__* %59, %struct.TYPE_13__** %61, align 8
  %62 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %63 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %62, i32 0, i32 0
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %63, align 8
  %65 = icmp ne %struct.TYPE_13__* %64, null
  br i1 %65, label %71, label %66

66:                                               ; preds = %57
  %67 = load i8*, i8** %6, align 8
  %68 = call i32 @kfree(i8* %67)
  %69 = load i32, i32* @ENOMEM, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %3, align 4
  br label %101

71:                                               ; preds = %57
  %72 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %73 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %72, i32 0, i32 0
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %73, align 8
  %75 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %76 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %75, i32 0, i32 1
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %76, align 8
  %78 = load i32, i32* %7, align 4
  %79 = load i8*, i8** %6, align 8
  %80 = load i32, i32* %8, align 4
  %81 = load i32, i32* @intr_complete, align 4
  %82 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %83 = load i32, i32* %9, align 4
  %84 = call i32 @usb_fill_int_urb(%struct.TYPE_13__* %74, %struct.TYPE_12__* %77, i32 %78, i8* %79, i32 %80, i32 %81, %struct.usbnet* %82, i32 %83)
  %85 = load i32, i32* @URB_FREE_BUFFER, align 4
  %86 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %87 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %86, i32 0, i32 0
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = or i32 %90, %85
  store i32 %91, i32* %89, align 4
  %92 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %93 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %92, i32 0, i32 0
  %94 = load i32, i32* %7, align 4
  %95 = call i32 @usb_pipeendpoint(i32 %94)
  %96 = load i32, i32* %8, align 4
  %97 = load i32, i32* %9, align 4
  %98 = call i32 @dev_dbg(i32* %93, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %95, i32 %96, i32 %97)
  br label %99

99:                                               ; preds = %71
  br label %100

100:                                              ; preds = %99, %17
  store i32 0, i32* %3, align 4
  br label %101

101:                                              ; preds = %100, %66, %16
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

declare dso_local i32 @usb_rcvintpipe(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @usb_maxpacket(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local %struct.TYPE_13__* @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @usb_fill_int_urb(%struct.TYPE_13__*, %struct.TYPE_12__*, i32, i8*, i32, i32, %struct.usbnet*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @usb_pipeendpoint(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
