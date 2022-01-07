; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/s2255/extr_s2255drv.c_s2255_vendor_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/s2255/extr_s2255drv.c_s2255_vendor_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s2255_dev = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i64 0, align 8
@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@USB_RECIP_DEVICE = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.s2255_dev*, i8, i32, i32, i8*, i32, i32)* @s2255_vendor_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @s2255_vendor_req(%struct.s2255_dev* %0, i8 zeroext %1, i32 %2, i32 %3, i8* %4, i32 %5, i32 %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca %struct.s2255_dev*, align 8
  %10 = alloca i8, align 1
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  store %struct.s2255_dev* %0, %struct.s2255_dev** %9, align 8
  store i8 %1, i8* %10, align 1
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i8* %4, i8** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %18 = load i32, i32* %14, align 4
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call i8* @kmalloc(i32 %18, i32 %19)
  store i8* %20, i8** %17, align 8
  %21 = load i8*, i8** %17, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %7
  %24 = load i64, i64* @ENOMEM, align 8
  %25 = sub nsw i64 0, %24
  store i64 %25, i64* %8, align 8
  br label %86

26:                                               ; preds = %7
  %27 = load i32, i32* %15, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %58, label %29

29:                                               ; preds = %26
  %30 = load %struct.s2255_dev*, %struct.s2255_dev** %9, align 8
  %31 = getelementptr inbounds %struct.s2255_dev, %struct.s2255_dev* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.s2255_dev*, %struct.s2255_dev** %9, align 8
  %34 = getelementptr inbounds %struct.s2255_dev, %struct.s2255_dev* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @usb_rcvctrlpipe(i32 %35, i32 0)
  %37 = load i8, i8* %10, align 1
  %38 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %39 = load i32, i32* @USB_RECIP_DEVICE, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @USB_DIR_IN, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* %12, align 4
  %44 = load i32, i32* %11, align 4
  %45 = load i8*, i8** %17, align 8
  %46 = load i32, i32* %14, align 4
  %47 = load i32, i32* @HZ, align 4
  %48 = mul nsw i32 %47, 5
  %49 = call i32 @usb_control_msg(i32 %32, i32 %36, i8 zeroext %37, i32 %42, i32 %43, i32 %44, i8* %45, i32 %46, i32 %48)
  store i32 %49, i32* %16, align 4
  %50 = load i32, i32* %16, align 4
  %51 = icmp sge i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %29
  %53 = load i8*, i8** %13, align 8
  %54 = load i8*, i8** %17, align 8
  %55 = load i32, i32* %14, align 4
  %56 = call i32 @memcpy(i8* %53, i8* %54, i32 %55)
  br label %57

57:                                               ; preds = %52, %29
  br label %81

58:                                               ; preds = %26
  %59 = load i8*, i8** %17, align 8
  %60 = load i8*, i8** %13, align 8
  %61 = load i32, i32* %14, align 4
  %62 = call i32 @memcpy(i8* %59, i8* %60, i32 %61)
  %63 = load %struct.s2255_dev*, %struct.s2255_dev** %9, align 8
  %64 = getelementptr inbounds %struct.s2255_dev, %struct.s2255_dev* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.s2255_dev*, %struct.s2255_dev** %9, align 8
  %67 = getelementptr inbounds %struct.s2255_dev, %struct.s2255_dev* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @usb_sndctrlpipe(i32 %68, i32 0)
  %70 = load i8, i8* %10, align 1
  %71 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %72 = load i32, i32* @USB_RECIP_DEVICE, align 4
  %73 = or i32 %71, %72
  %74 = load i32, i32* %12, align 4
  %75 = load i32, i32* %11, align 4
  %76 = load i8*, i8** %17, align 8
  %77 = load i32, i32* %14, align 4
  %78 = load i32, i32* @HZ, align 4
  %79 = mul nsw i32 %78, 5
  %80 = call i32 @usb_control_msg(i32 %65, i32 %69, i8 zeroext %70, i32 %73, i32 %74, i32 %75, i8* %76, i32 %77, i32 %79)
  store i32 %80, i32* %16, align 4
  br label %81

81:                                               ; preds = %58, %57
  %82 = load i8*, i8** %17, align 8
  %83 = call i32 @kfree(i8* %82)
  %84 = load i32, i32* %16, align 4
  %85 = sext i32 %84 to i64
  store i64 %85, i64* %8, align 8
  br label %86

86:                                               ; preds = %81, %23
  %87 = load i64, i64* %8, align 8
  ret i64 %87
}

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @usb_control_msg(i32, i32, i8 zeroext, i32, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @usb_rcvctrlpipe(i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @usb_sndctrlpipe(i32, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
