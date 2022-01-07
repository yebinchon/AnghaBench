; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/usbvision/extr_usbvision-core.c_usbvision_power_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/usbvision/extr_usbvision-core.c_usbvision_power_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.usb_usbvision = type { i64, i32 }

@DBG_FUNC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@USBVISION_PWR_REG = common dso_local global i32 0, align 4
@USBVISION_SSPND_EN = common dso_local global i32 0, align 4
@USBVISION_RES2 = common dso_local global i32 0, align 4
@usbvision_device_data = common dso_local global %struct.TYPE_2__* null, align 8
@CODEC_WEBCAM = common dso_local global i64 0, align 8
@USBVISION_VIN_REG1 = common dso_local global i32 0, align 4
@USBVISION_16_422_SYNC = common dso_local global i32 0, align 4
@USBVISION_HVALID_PO = common dso_local global i32 0, align 4
@USBVISION_VIN_REG2 = common dso_local global i32 0, align 4
@USBVISION_NOHVALID = common dso_local global i32 0, align 4
@USBVISION_KEEP_BLANK = common dso_local global i32 0, align 4
@USBVISION_PWR_VID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"%s: err_code %d\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"ERROR\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"power is on\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usbvision_power_on(%struct.usb_usbvision* %0) #0 {
  %2 = alloca %struct.usb_usbvision*, align 8
  %3 = alloca i32, align 4
  store %struct.usb_usbvision* %0, %struct.usb_usbvision** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load i32, i32* @DBG_FUNC, align 4
  %5 = call i32 (i32, i8*, ...) @PDEBUG(i32 %4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %6 = load %struct.usb_usbvision*, %struct.usb_usbvision** %2, align 8
  %7 = load i32, i32* @USBVISION_PWR_REG, align 4
  %8 = load i32, i32* @USBVISION_SSPND_EN, align 4
  %9 = call i32 @usbvision_write_reg(%struct.usb_usbvision* %6, i32 %7, i32 %8)
  %10 = load %struct.usb_usbvision*, %struct.usb_usbvision** %2, align 8
  %11 = load i32, i32* @USBVISION_PWR_REG, align 4
  %12 = load i32, i32* @USBVISION_SSPND_EN, align 4
  %13 = load i32, i32* @USBVISION_RES2, align 4
  %14 = or i32 %12, %13
  %15 = call i32 @usbvision_write_reg(%struct.usb_usbvision* %10, i32 %11, i32 %14)
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @usbvision_device_data, align 8
  %17 = load %struct.usb_usbvision*, %struct.usb_usbvision** %2, align 8
  %18 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @CODEC_WEBCAM, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %38

25:                                               ; preds = %1
  %26 = load %struct.usb_usbvision*, %struct.usb_usbvision** %2, align 8
  %27 = load i32, i32* @USBVISION_VIN_REG1, align 4
  %28 = load i32, i32* @USBVISION_16_422_SYNC, align 4
  %29 = load i32, i32* @USBVISION_HVALID_PO, align 4
  %30 = or i32 %28, %29
  %31 = call i32 @usbvision_write_reg(%struct.usb_usbvision* %26, i32 %27, i32 %30)
  %32 = load %struct.usb_usbvision*, %struct.usb_usbvision** %2, align 8
  %33 = load i32, i32* @USBVISION_VIN_REG2, align 4
  %34 = load i32, i32* @USBVISION_NOHVALID, align 4
  %35 = load i32, i32* @USBVISION_KEEP_BLANK, align 4
  %36 = or i32 %34, %35
  %37 = call i32 @usbvision_write_reg(%struct.usb_usbvision* %32, i32 %33, i32 %36)
  br label %38

38:                                               ; preds = %25, %1
  %39 = load %struct.usb_usbvision*, %struct.usb_usbvision** %2, align 8
  %40 = load i32, i32* @USBVISION_PWR_REG, align 4
  %41 = load i32, i32* @USBVISION_SSPND_EN, align 4
  %42 = load i32, i32* @USBVISION_PWR_VID, align 4
  %43 = or i32 %41, %42
  %44 = call i32 @usbvision_write_reg(%struct.usb_usbvision* %39, i32 %40, i32 %43)
  %45 = call i32 @mdelay(i32 10)
  %46 = load %struct.usb_usbvision*, %struct.usb_usbvision** %2, align 8
  %47 = load i32, i32* @USBVISION_PWR_REG, align 4
  %48 = load i32, i32* @USBVISION_SSPND_EN, align 4
  %49 = load i32, i32* @USBVISION_PWR_VID, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @USBVISION_RES2, align 4
  %52 = or i32 %50, %51
  %53 = call i32 @usbvision_write_reg(%struct.usb_usbvision* %46, i32 %47, i32 %52)
  store i32 %53, i32* %3, align 4
  %54 = load i32, i32* %3, align 4
  %55 = icmp eq i32 %54, 1
  br i1 %55, label %56, label %59

56:                                               ; preds = %38
  %57 = load %struct.usb_usbvision*, %struct.usb_usbvision** %2, align 8
  %58 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %57, i32 0, i32 1
  store i32 1, i32* %58, align 8
  br label %59

59:                                               ; preds = %56, %38
  %60 = load i32, i32* @DBG_FUNC, align 4
  %61 = load i32, i32* %3, align 4
  %62 = icmp slt i32 %61, 0
  %63 = zext i1 %62 to i64
  %64 = select i1 %62, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0)
  %65 = load i32, i32* %3, align 4
  %66 = call i32 (i32, i8*, ...) @PDEBUG(i32 %60, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* %64, i32 %65)
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i32 @PDEBUG(i32, i8*, ...) #1

declare dso_local i32 @usbvision_write_reg(%struct.usb_usbvision*, i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
