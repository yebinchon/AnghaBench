; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_ch9200.c_control_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_ch9200.c_control_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { i32, i32 }

@REQUEST_READ = common dso_local global i8 0, align 1
@USB_DIR_IN = common dso_local global i8 0, align 1
@USB_TYPE_VENDOR = common dso_local global i8 0, align 1
@USB_RECIP_OTHER = common dso_local global i8 0, align 1
@USB_RECIP_DEVICE = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [37 x i8] c"Control_read() index=0x%02x size=%d\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbnet*, i8, i16, i16, i8*, i16, i32)* @control_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @control_read(%struct.usbnet* %0, i8 zeroext %1, i16 zeroext %2, i16 zeroext %3, i8* %4, i16 zeroext %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.usbnet*, align 8
  %10 = alloca i8, align 1
  %11 = alloca i16, align 2
  %12 = alloca i16, align 2
  %13 = alloca i8*, align 8
  %14 = alloca i16, align 2
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i8, align 1
  %18 = alloca i32, align 4
  store %struct.usbnet* %0, %struct.usbnet** %9, align 8
  store i8 %1, i8* %10, align 1
  store i16 %2, i16* %11, align 2
  store i16 %3, i16* %12, align 2
  store i8* %4, i8** %13, align 8
  store i16 %5, i16* %14, align 2
  store i32 %6, i32* %15, align 4
  store i8* null, i8** %16, align 8
  store i32 0, i32* %18, align 4
  %19 = load i8, i8* %10, align 1
  %20 = zext i8 %19 to i32
  %21 = load i8, i8* @REQUEST_READ, align 1
  %22 = zext i8 %21 to i32
  %23 = icmp eq i32 %20, %22
  br i1 %23, label %24, label %34

24:                                               ; preds = %7
  %25 = load i8, i8* @USB_DIR_IN, align 1
  %26 = zext i8 %25 to i32
  %27 = load i8, i8* @USB_TYPE_VENDOR, align 1
  %28 = zext i8 %27 to i32
  %29 = or i32 %26, %28
  %30 = load i8, i8* @USB_RECIP_OTHER, align 1
  %31 = zext i8 %30 to i32
  %32 = or i32 %29, %31
  %33 = trunc i32 %32 to i8
  store i8 %33, i8* %17, align 1
  br label %44

34:                                               ; preds = %7
  %35 = load i8, i8* @USB_DIR_IN, align 1
  %36 = zext i8 %35 to i32
  %37 = load i8, i8* @USB_TYPE_VENDOR, align 1
  %38 = zext i8 %37 to i32
  %39 = or i32 %36, %38
  %40 = load i8, i8* @USB_RECIP_DEVICE, align 1
  %41 = zext i8 %40 to i32
  %42 = or i32 %39, %41
  %43 = trunc i32 %42 to i8
  store i8 %43, i8* %17, align 1
  br label %44

44:                                               ; preds = %34, %24
  %45 = load %struct.usbnet*, %struct.usbnet** %9, align 8
  %46 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i16, i16* %12, align 2
  %49 = load i16, i16* %14, align 2
  %50 = call i32 @netdev_dbg(i32 %47, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i16 zeroext %48, i16 zeroext %49)
  %51 = load i16, i16* %14, align 2
  %52 = load i32, i32* @GFP_KERNEL, align 4
  %53 = call i8* @kmalloc(i16 zeroext %51, i32 %52)
  store i8* %53, i8** %16, align 8
  %54 = load i8*, i8** %16, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %59, label %56

56:                                               ; preds = %44
  %57 = load i32, i32* @ENOMEM, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %18, align 4
  br label %95

59:                                               ; preds = %44
  %60 = load %struct.usbnet*, %struct.usbnet** %9, align 8
  %61 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.usbnet*, %struct.usbnet** %9, align 8
  %64 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @usb_rcvctrlpipe(i32 %65, i32 0)
  %67 = load i8, i8* %10, align 1
  %68 = load i8, i8* %17, align 1
  %69 = load i16, i16* %11, align 2
  %70 = load i16, i16* %12, align 2
  %71 = load i8*, i8** %16, align 8
  %72 = load i16, i16* %14, align 2
  %73 = load i32, i32* %15, align 4
  %74 = call i32 @usb_control_msg(i32 %62, i32 %66, i8 zeroext %67, i8 zeroext %68, i16 zeroext %69, i16 zeroext %70, i8* %71, i16 zeroext %72, i32 %73)
  store i32 %74, i32* %18, align 4
  %75 = load i32, i32* %18, align 4
  %76 = load i16, i16* %14, align 2
  %77 = zext i16 %76 to i32
  %78 = icmp eq i32 %75, %77
  br i1 %78, label %79, label %84

79:                                               ; preds = %59
  %80 = load i8*, i8** %13, align 8
  %81 = load i8*, i8** %16, align 8
  %82 = load i16, i16* %14, align 2
  %83 = call i32 @memcpy(i8* %80, i8* %81, i16 zeroext %82)
  br label %91

84:                                               ; preds = %59
  %85 = load i32, i32* %18, align 4
  %86 = icmp sge i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %84
  %88 = load i32, i32* @EINVAL, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %18, align 4
  br label %90

90:                                               ; preds = %87, %84
  br label %91

91:                                               ; preds = %90, %79
  %92 = load i8*, i8** %16, align 8
  %93 = call i32 @kfree(i8* %92)
  %94 = load i32, i32* %18, align 4
  store i32 %94, i32* %8, align 4
  br label %97

95:                                               ; preds = %56
  %96 = load i32, i32* %18, align 4
  store i32 %96, i32* %8, align 4
  br label %97

97:                                               ; preds = %95, %91
  %98 = load i32, i32* %8, align 4
  ret i32 %98
}

declare dso_local i32 @netdev_dbg(i32, i8*, i16 zeroext, i16 zeroext) #1

declare dso_local i8* @kmalloc(i16 zeroext, i32) #1

declare dso_local i32 @usb_control_msg(i32, i32, i8 zeroext, i8 zeroext, i16 zeroext, i16 zeroext, i8*, i16 zeroext, i32) #1

declare dso_local i32 @usb_rcvctrlpipe(i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i16 zeroext) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
