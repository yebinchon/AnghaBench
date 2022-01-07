; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/go7007/extr_go7007-usb.c_go7007_usb_interface_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/go7007/extr_go7007-usb.c_go7007_usb_interface_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.go7007 = type { i64, i32, %struct.go7007_usb* }
%struct.go7007_usb = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@STATUS_SHUTDOWN = common dso_local global i64 0, align 8
@GO7007_USB_EZUSB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"resetting EZ-USB buffers\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"unable to reset the USB interface\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.go7007*)* @go7007_usb_interface_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @go7007_usb_interface_reset(%struct.go7007* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.go7007*, align 8
  %4 = alloca %struct.go7007_usb*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.go7007* %0, %struct.go7007** %3, align 8
  %7 = load %struct.go7007*, %struct.go7007** %3, align 8
  %8 = getelementptr inbounds %struct.go7007, %struct.go7007* %7, i32 0, i32 2
  %9 = load %struct.go7007_usb*, %struct.go7007_usb** %8, align 8
  store %struct.go7007_usb* %9, %struct.go7007_usb** %4, align 8
  %10 = load %struct.go7007*, %struct.go7007** %3, align 8
  %11 = getelementptr inbounds %struct.go7007, %struct.go7007* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @STATUS_SHUTDOWN, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %62

16:                                               ; preds = %1
  %17 = load %struct.go7007*, %struct.go7007** %3, align 8
  %18 = call i64 @go7007_write_interrupt(%struct.go7007* %17, i32 1, i32 1)
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  store i32 -1, i32* %2, align 4
  br label %62

21:                                               ; preds = %16
  %22 = call i32 @msleep(i32 100)
  %23 = load %struct.go7007_usb*, %struct.go7007_usb** %4, align 8
  %24 = getelementptr inbounds %struct.go7007_usb, %struct.go7007_usb* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @GO7007_USB_EZUSB, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %48

31:                                               ; preds = %21
  %32 = call i32 @pr_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %33 = load %struct.go7007*, %struct.go7007** %3, align 8
  %34 = call i64 @go7007_usb_vendor_request(%struct.go7007* %33, i32 16, i32 0, i32 0, i32* null, i32 0, i32 0)
  %35 = icmp slt i64 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %31
  %37 = load %struct.go7007*, %struct.go7007** %3, align 8
  %38 = call i64 @go7007_usb_vendor_request(%struct.go7007* %37, i32 16, i32 0, i32 0, i32* null, i32 0, i32 0)
  %39 = icmp slt i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %36, %31
  store i32 -1, i32* %2, align 4
  br label %62

41:                                               ; preds = %36
  %42 = load %struct.go7007*, %struct.go7007** %3, align 8
  %43 = call i64 @go7007_write_interrupt(%struct.go7007* %42, i32 1, i32 1)
  %44 = icmp slt i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  store i32 -1, i32* %2, align 4
  br label %62

46:                                               ; preds = %41
  %47 = call i32 @msleep(i32 100)
  br label %48

48:                                               ; preds = %46, %21
  %49 = load %struct.go7007*, %struct.go7007** %3, align 8
  %50 = call i64 @go7007_read_interrupt(%struct.go7007* %49, i32* %5, i32* %6)
  %51 = icmp slt i64 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %48
  %53 = load i32, i32* %5, align 4
  %54 = and i32 %53, -2
  %55 = icmp ne i32 %54, 21930
  br i1 %55, label %56, label %61

56:                                               ; preds = %52, %48
  %57 = load %struct.go7007*, %struct.go7007** %3, align 8
  %58 = getelementptr inbounds %struct.go7007, %struct.go7007* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @dev_err(i32 %59, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %62

61:                                               ; preds = %52
  store i32 0, i32* %2, align 4
  br label %62

62:                                               ; preds = %61, %56, %45, %40, %20, %15
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i64 @go7007_write_interrupt(%struct.go7007*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i64 @go7007_usb_vendor_request(%struct.go7007*, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i64 @go7007_read_interrupt(%struct.go7007*, i32*, i32*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
