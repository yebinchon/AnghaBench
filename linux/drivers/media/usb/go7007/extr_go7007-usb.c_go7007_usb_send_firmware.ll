; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/go7007/extr_go7007-usb.c_go7007_usb_send_firmware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/go7007/extr_go7007-usb.c_go7007_usb_send_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.go7007 = type { %struct.go7007_usb* }
%struct.go7007_usb = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"DownloadBuffer sending %d bytes\0A\00", align 1
@GO7007_USB_EZUSB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.go7007*, i32*, i32)* @go7007_usb_send_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @go7007_usb_send_firmware(%struct.go7007* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.go7007*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.go7007_usb*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.go7007* %0, %struct.go7007** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.go7007*, %struct.go7007** %4, align 8
  %12 = getelementptr inbounds %struct.go7007, %struct.go7007* %11, i32 0, i32 0
  %13 = load %struct.go7007_usb*, %struct.go7007_usb** %12, align 8
  store %struct.go7007_usb* %13, %struct.go7007_usb** %7, align 8
  store i32 500, i32* %10, align 4
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @pr_debug(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load %struct.go7007_usb*, %struct.go7007_usb** %7, align 8
  %17 = getelementptr inbounds %struct.go7007_usb, %struct.go7007_usb* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @GO7007_USB_EZUSB, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %3
  %25 = load %struct.go7007_usb*, %struct.go7007_usb** %7, align 8
  %26 = getelementptr inbounds %struct.go7007_usb, %struct.go7007_usb* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @usb_sndbulkpipe(i32 %27, i32 2)
  store i32 %28, i32* %9, align 4
  br label %34

29:                                               ; preds = %3
  %30 = load %struct.go7007_usb*, %struct.go7007_usb** %7, align 8
  %31 = getelementptr inbounds %struct.go7007_usb, %struct.go7007_usb* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @usb_sndbulkpipe(i32 %32, i32 3)
  store i32 %33, i32* %9, align 4
  br label %34

34:                                               ; preds = %29, %24
  %35 = load %struct.go7007_usb*, %struct.go7007_usb** %7, align 8
  %36 = getelementptr inbounds %struct.go7007_usb, %struct.go7007_usb* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %9, align 4
  %39 = load i32*, i32** %5, align 8
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* %10, align 4
  %42 = call i32 @usb_bulk_msg(i32 %37, i32 %38, i32* %39, i32 %40, i32* %8, i32 %41)
  ret i32 %42
}

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @usb_sndbulkpipe(i32, i32) #1

declare dso_local i32 @usb_bulk_msg(i32, i32, i32*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
