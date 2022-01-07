; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/go7007/extr_s2250-board.c_go7007_usb_vendor_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/go7007/extr_s2250-board.c_go7007_usb_vendor_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.go7007 = type { %struct.go7007_usb* }
%struct.go7007_usb = type { i32 }

@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@USB_RECIP_DEVICE = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.go7007*, i32, i32, i32, i8*, i32, i32)* @go7007_usb_vendor_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @go7007_usb_vendor_request(%struct.go7007* %0, i32 %1, i32 %2, i32 %3, i8* %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.go7007*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.go7007_usb*, align 8
  %17 = alloca i32, align 4
  store %struct.go7007* %0, %struct.go7007** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i8* %4, i8** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %18 = load %struct.go7007*, %struct.go7007** %9, align 8
  %19 = getelementptr inbounds %struct.go7007, %struct.go7007* %18, i32 0, i32 0
  %20 = load %struct.go7007_usb*, %struct.go7007_usb** %19, align 8
  store %struct.go7007_usb* %20, %struct.go7007_usb** %16, align 8
  store i32 5000, i32* %17, align 4
  %21 = load i32, i32* %15, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %43

23:                                               ; preds = %7
  %24 = load %struct.go7007_usb*, %struct.go7007_usb** %16, align 8
  %25 = getelementptr inbounds %struct.go7007_usb, %struct.go7007_usb* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.go7007_usb*, %struct.go7007_usb** %16, align 8
  %28 = getelementptr inbounds %struct.go7007_usb, %struct.go7007_usb* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @usb_rcvctrlpipe(i32 %29, i32 0)
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %33 = load i32, i32* @USB_RECIP_DEVICE, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @USB_DIR_IN, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* %12, align 4
  %39 = load i8*, i8** %13, align 8
  %40 = load i32, i32* %14, align 4
  %41 = load i32, i32* %17, align 4
  %42 = call i32 @usb_control_msg(i32 %26, i32 %30, i32 %31, i32 %36, i32 %37, i32 %38, i8* %39, i32 %40, i32 %41)
  store i32 %42, i32* %8, align 4
  br label %61

43:                                               ; preds = %7
  %44 = load %struct.go7007_usb*, %struct.go7007_usb** %16, align 8
  %45 = getelementptr inbounds %struct.go7007_usb, %struct.go7007_usb* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.go7007_usb*, %struct.go7007_usb** %16, align 8
  %48 = getelementptr inbounds %struct.go7007_usb, %struct.go7007_usb* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @usb_sndctrlpipe(i32 %49, i32 0)
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %53 = load i32, i32* @USB_RECIP_DEVICE, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* %11, align 4
  %56 = load i32, i32* %12, align 4
  %57 = load i8*, i8** %13, align 8
  %58 = load i32, i32* %14, align 4
  %59 = load i32, i32* %17, align 4
  %60 = call i32 @usb_control_msg(i32 %46, i32 %50, i32 %51, i32 %54, i32 %55, i32 %56, i8* %57, i32 %58, i32 %59)
  store i32 %60, i32* %8, align 4
  br label %61

61:                                               ; preds = %43, %23
  %62 = load i32, i32* %8, align 4
  ret i32 %62
}

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @usb_rcvctrlpipe(i32, i32) #1

declare dso_local i32 @usb_sndctrlpipe(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
