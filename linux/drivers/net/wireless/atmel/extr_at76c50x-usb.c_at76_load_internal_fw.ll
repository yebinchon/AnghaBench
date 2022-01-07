; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/atmel/extr_at76c50x-usb.c_at76_load_internal_fw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/atmel/extr_at76c50x-usb.c_at76_load_internal_fw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32 }
%struct.fwentry = type { i32, i32, i32 }

@HZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"downloading internal fw failed with %d\0A\00", align 1
@DBG_DEVSTART = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"sending REMAP\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"sending REMAP failed with %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"sleeping for 2 seconds\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_device*, %struct.fwentry*)* @at76_load_internal_fw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @at76_load_internal_fw(%struct.usb_device* %0, %struct.fwentry* %1) #0 {
  %3 = alloca %struct.usb_device*, align 8
  %4 = alloca %struct.fwentry*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.usb_device* %0, %struct.usb_device** %3, align 8
  store %struct.fwentry* %1, %struct.fwentry** %4, align 8
  %7 = load %struct.fwentry*, %struct.fwentry** %4, align 8
  %8 = getelementptr inbounds %struct.fwentry, %struct.fwentry* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @at76_is_505a(i32 %9)
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  store i32 %13, i32* %6, align 4
  %14 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %15 = load %struct.fwentry*, %struct.fwentry** %4, align 8
  %16 = getelementptr inbounds %struct.fwentry, %struct.fwentry* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.fwentry*, %struct.fwentry** %4, align 8
  %19 = getelementptr inbounds %struct.fwentry, %struct.fwentry* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  br label %27

24:                                               ; preds = %2
  %25 = load i32, i32* @HZ, align 4
  %26 = mul nsw i32 2, %25
  br label %27

27:                                               ; preds = %24, %23
  %28 = phi i32 [ 0, %23 ], [ %26, %24 ]
  %29 = call i32 @at76_usbdfu_download(%struct.usb_device* %14, i32 %17, i32 %20, i32 %28)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %27
  %33 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %34 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %33, i32 0, i32 0
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @dev_err(i32* %34, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %35)
  br label %62

37:                                               ; preds = %27
  %38 = load i32, i32* @DBG_DEVSTART, align 4
  %39 = call i32 @at76_dbg(i32 %38, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %53

42:                                               ; preds = %37
  %43 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %44 = call i32 @at76_remap(%struct.usb_device* %43)
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %5, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %42
  %48 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %49 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %48, i32 0, i32 0
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @dev_err(i32* %49, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %50)
  br label %62

52:                                               ; preds = %42
  br label %53

53:                                               ; preds = %52, %37
  %54 = load i32, i32* @DBG_DEVSTART, align 4
  %55 = call i32 @at76_dbg(i32 %54, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %56 = load i32, i32* @HZ, align 4
  %57 = mul nsw i32 2, %56
  %58 = add nsw i32 %57, 1
  %59 = call i32 @schedule_timeout_interruptible(i32 %58)
  %60 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %61 = call i32 @usb_reset_device(%struct.usb_device* %60)
  br label %62

62:                                               ; preds = %53, %47, %32
  %63 = load i32, i32* %5, align 4
  ret i32 %63
}

declare dso_local i32 @at76_is_505a(i32) #1

declare dso_local i32 @at76_usbdfu_download(%struct.usb_device*, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @at76_dbg(i32, i8*) #1

declare dso_local i32 @at76_remap(%struct.usb_device*) #1

declare dso_local i32 @schedule_timeout_interruptible(i32) #1

declare dso_local i32 @usb_reset_device(%struct.usb_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
