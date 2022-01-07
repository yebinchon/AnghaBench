; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_cxusb-analog.c_cxusb_medion_v_buf_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_cxusb-analog.c_cxusb_medion_v_buf_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_buffer = type { i32 }
%struct.dvb_usb_device = type { %struct.cxusb_medion_dev* }
%struct.cxusb_medion_dev = type { i32, i32 }

@OPS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"buffer init\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"buffer OK\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vb2_buffer*)* @cxusb_medion_v_buf_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cxusb_medion_v_buf_init(%struct.vb2_buffer* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vb2_buffer*, align 8
  %4 = alloca %struct.dvb_usb_device*, align 8
  %5 = alloca %struct.cxusb_medion_dev*, align 8
  store %struct.vb2_buffer* %0, %struct.vb2_buffer** %3, align 8
  %6 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %7 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.dvb_usb_device* @vb2_get_drv_priv(i32 %8)
  store %struct.dvb_usb_device* %9, %struct.dvb_usb_device** %4, align 8
  %10 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %11 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %10, i32 0, i32 0
  %12 = load %struct.cxusb_medion_dev*, %struct.cxusb_medion_dev** %11, align 8
  store %struct.cxusb_medion_dev* %12, %struct.cxusb_medion_dev** %5, align 8
  %13 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %14 = load i32, i32* @OPS, align 4
  %15 = call i32 @cxusb_vprintk(%struct.dvb_usb_device* %13, i32 %14, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %17 = call i32 @vb2_plane_size(%struct.vb2_buffer* %16, i32 0)
  %18 = load %struct.cxusb_medion_dev*, %struct.cxusb_medion_dev** %5, align 8
  %19 = getelementptr inbounds %struct.cxusb_medion_dev, %struct.cxusb_medion_dev* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.cxusb_medion_dev*, %struct.cxusb_medion_dev** %5, align 8
  %22 = getelementptr inbounds %struct.cxusb_medion_dev, %struct.cxusb_medion_dev* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = mul nsw i32 %20, %23
  %25 = mul nsw i32 %24, 2
  %26 = icmp slt i32 %17, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %1
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %34

30:                                               ; preds = %1
  %31 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %32 = load i32, i32* @OPS, align 4
  %33 = call i32 @cxusb_vprintk(%struct.dvb_usb_device* %31, i32 %32, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %34

34:                                               ; preds = %30, %27
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local %struct.dvb_usb_device* @vb2_get_drv_priv(i32) #1

declare dso_local i32 @cxusb_vprintk(%struct.dvb_usb_device*, i32, i8*) #1

declare dso_local i32 @vb2_plane_size(%struct.vb2_buffer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
