; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_usbnet.c___usbnet_write_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_usbnet.c___usbnet_write_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [76 x i8] c"usbnet_write_cmd cmd=0x%02x reqtype=%02x value=0x%04x index=0x%04x size=%d\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@USB_CTRL_SET_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbnet*, i32, i32, i32, i32, i8*, i32)* @__usbnet_write_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__usbnet_write_cmd(%struct.usbnet* %0, i32 %1, i32 %2, i32 %3, i32 %4, i8* %5, i32 %6) #0 {
  %8 = alloca %struct.usbnet*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  store %struct.usbnet* %0, %struct.usbnet** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  store i32 %6, i32* %14, align 4
  store i8* null, i8** %15, align 8
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %16, align 4
  %19 = load %struct.usbnet*, %struct.usbnet** %8, align 8
  %20 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* %11, align 4
  %25 = load i32, i32* %12, align 4
  %26 = load i32, i32* %14, align 4
  %27 = call i32 @netdev_dbg(i32 %21, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %23, i32 %24, i32 %25, i32 %26)
  %28 = load i8*, i8** %13, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %39

30:                                               ; preds = %7
  %31 = load i8*, i8** %13, align 8
  %32 = load i32, i32* %14, align 4
  %33 = load i32, i32* @GFP_KERNEL, align 4
  %34 = call i8* @kmemdup(i8* %31, i32 %32, i32 %33)
  store i8* %34, i8** %15, align 8
  %35 = load i8*, i8** %15, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %30
  br label %65

38:                                               ; preds = %30
  br label %47

39:                                               ; preds = %7
  %40 = load i32, i32* %14, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %39
  %43 = call i32 @WARN_ON_ONCE(i32 1)
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %16, align 4
  br label %65

46:                                               ; preds = %39
  br label %47

47:                                               ; preds = %46, %38
  %48 = load %struct.usbnet*, %struct.usbnet** %8, align 8
  %49 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.usbnet*, %struct.usbnet** %8, align 8
  %52 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @usb_sndctrlpipe(i32 %53, i32 0)
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* %12, align 4
  %59 = load i8*, i8** %15, align 8
  %60 = load i32, i32* %14, align 4
  %61 = load i32, i32* @USB_CTRL_SET_TIMEOUT, align 4
  %62 = call i32 @usb_control_msg(i32 %50, i32 %54, i32 %55, i32 %56, i32 %57, i32 %58, i8* %59, i32 %60, i32 %61)
  store i32 %62, i32* %16, align 4
  %63 = load i8*, i8** %15, align 8
  %64 = call i32 @kfree(i8* %63)
  br label %65

65:                                               ; preds = %47, %42, %37
  %66 = load i32, i32* %16, align 4
  ret i32 %66
}

declare dso_local i32 @netdev_dbg(i32, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i8* @kmemdup(i8*, i32, i32) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @usb_sndctrlpipe(i32, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
