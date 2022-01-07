; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/usbvision/extr_usbvision-core.c_usbvision_restart_isoc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/usbvision/extr_usbvision-core.c_usbvision_restart_isoc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_usbvision = type { i32 }

@USBVISION_PWR_REG = common dso_local global i32 0, align 4
@USBVISION_SSPND_EN = common dso_local global i32 0, align 4
@USBVISION_PWR_VID = common dso_local global i32 0, align 4
@USBVISION_RES2 = common dso_local global i32 0, align 4
@USBVISION_VIN_REG2 = common dso_local global i32 0, align 4
@USBVISION_KEEP_BLANK = common dso_local global i32 0, align 4
@USBVISION_NOHVALID = common dso_local global i32 0, align 4
@USBVISION_STATUS_REG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usbvision_restart_isoc(%struct.usb_usbvision* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_usbvision*, align 8
  %4 = alloca i32, align 4
  store %struct.usb_usbvision* %0, %struct.usb_usbvision** %3, align 8
  %5 = load %struct.usb_usbvision*, %struct.usb_usbvision** %3, align 8
  %6 = load i32, i32* @USBVISION_PWR_REG, align 4
  %7 = load i32, i32* @USBVISION_SSPND_EN, align 4
  %8 = load i32, i32* @USBVISION_PWR_VID, align 4
  %9 = or i32 %7, %8
  %10 = call i32 @usbvision_write_reg(%struct.usb_usbvision* %5, i32 %6, i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* %4, align 4
  store i32 %14, i32* %2, align 4
  br label %52

15:                                               ; preds = %1
  %16 = load %struct.usb_usbvision*, %struct.usb_usbvision** %3, align 8
  %17 = load i32, i32* @USBVISION_PWR_REG, align 4
  %18 = load i32, i32* @USBVISION_SSPND_EN, align 4
  %19 = load i32, i32* @USBVISION_PWR_VID, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @USBVISION_RES2, align 4
  %22 = or i32 %20, %21
  %23 = call i32 @usbvision_write_reg(%struct.usb_usbvision* %16, i32 %17, i32 %22)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %15
  %27 = load i32, i32* %4, align 4
  store i32 %27, i32* %2, align 4
  br label %52

28:                                               ; preds = %15
  %29 = load %struct.usb_usbvision*, %struct.usb_usbvision** %3, align 8
  %30 = load i32, i32* @USBVISION_VIN_REG2, align 4
  %31 = load i32, i32* @USBVISION_KEEP_BLANK, align 4
  %32 = load i32, i32* @USBVISION_NOHVALID, align 4
  %33 = or i32 %31, %32
  %34 = load %struct.usb_usbvision*, %struct.usb_usbvision** %3, align 8
  %35 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %33, %36
  %38 = call i32 @usbvision_write_reg(%struct.usb_usbvision* %29, i32 %30, i32 %37)
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* %4, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %28
  %42 = load i32, i32* %4, align 4
  store i32 %42, i32* %2, align 4
  br label %52

43:                                               ; preds = %28
  br label %44

44:                                               ; preds = %50, %43
  %45 = load %struct.usb_usbvision*, %struct.usb_usbvision** %3, align 8
  %46 = load i32, i32* @USBVISION_STATUS_REG, align 4
  %47 = call i32 @usbvision_read_reg(%struct.usb_usbvision* %45, i32 %46)
  %48 = and i32 %47, 1
  %49 = icmp ne i32 %48, 1
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  br label %44

51:                                               ; preds = %44
  store i32 0, i32* %2, align 4
  br label %52

52:                                               ; preds = %51, %41, %26, %13
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i32 @usbvision_write_reg(%struct.usb_usbvision*, i32, i32) #1

declare dso_local i32 @usbvision_read_reg(%struct.usb_usbvision*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
