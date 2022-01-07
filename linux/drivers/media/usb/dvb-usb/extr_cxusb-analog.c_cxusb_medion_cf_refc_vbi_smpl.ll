; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_cxusb-analog.c_cxusb_medion_cf_refc_vbi_smpl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_cxusb-analog.c_cxusb_medion_cf_refc_vbi_smpl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_device = type { i32 }
%struct.cxusb_bt656_params = type { i32, i32 }

@CXUSB_BT656_SEAV_MASK = common dso_local global i8 0, align 1
@CXUSB_BT656_SEAV_SAV = common dso_local global i8 0, align 1
@BT656 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"SAV in VBI samples @ pos %u\0A\00", align 1
@START_SEARCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dvb_usb_device*, %struct.cxusb_bt656_params*, i8*)* @cxusb_medion_cf_refc_vbi_smpl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cxusb_medion_cf_refc_vbi_smpl(%struct.dvb_usb_device* %0, %struct.cxusb_bt656_params* %1, i8* %2) #0 {
  %4 = alloca %struct.dvb_usb_device*, align 8
  %5 = alloca %struct.cxusb_bt656_params*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.dvb_usb_device* %0, %struct.dvb_usb_device** %4, align 8
  store %struct.cxusb_bt656_params* %1, %struct.cxusb_bt656_params** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load i8*, i8** %6, align 8
  %9 = getelementptr inbounds i8, i8* %8, i64 3
  %10 = load i8, i8* %9, align 1
  %11 = zext i8 %10 to i32
  %12 = load i8, i8* @CXUSB_BT656_SEAV_MASK, align 1
  %13 = zext i8 %12 to i32
  %14 = and i32 %11, %13
  %15 = load i8, i8* @CXUSB_BT656_SEAV_SAV, align 1
  %16 = zext i8 %15 to i32
  %17 = icmp eq i32 %14, %16
  %18 = zext i1 %17 to i32
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %3
  %22 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %23 = load i32, i32* @BT656, align 4
  %24 = load %struct.cxusb_bt656_params*, %struct.cxusb_bt656_params** %5, align 8
  %25 = getelementptr inbounds %struct.cxusb_bt656_params, %struct.cxusb_bt656_params* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @cxusb_vprintk(%struct.dvb_usb_device* %22, i32 %23, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %26)
  br label %28

28:                                               ; preds = %21, %3
  %29 = load i32, i32* @START_SEARCH, align 4
  %30 = load %struct.cxusb_bt656_params*, %struct.cxusb_bt656_params** %5, align 8
  %31 = getelementptr inbounds %struct.cxusb_bt656_params, %struct.cxusb_bt656_params* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  ret void
}

declare dso_local i32 @cxusb_vprintk(%struct.dvb_usb_device*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
