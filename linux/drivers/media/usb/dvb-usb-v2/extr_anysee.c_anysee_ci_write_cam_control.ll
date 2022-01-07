; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_anysee.c_anysee_ci_write_cam_control.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_anysee.c_anysee_ci_write_cam_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_ca_en50221 = type { %struct.dvb_usb_device* }
%struct.dvb_usb_device = type { i32 }

@CMD_CI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_ca_en50221*, i32, i32, i32)* @anysee_ci_write_cam_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @anysee_ci_write_cam_control(%struct.dvb_ca_en50221* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dvb_ca_en50221*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.dvb_usb_device*, align 8
  %11 = alloca i32, align 4
  %12 = alloca [7 x i32], align 16
  store %struct.dvb_ca_en50221* %0, %struct.dvb_ca_en50221** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.dvb_ca_en50221*, %struct.dvb_ca_en50221** %6, align 8
  %14 = getelementptr inbounds %struct.dvb_ca_en50221, %struct.dvb_ca_en50221* %13, i32 0, i32 0
  %15 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %14, align 8
  store %struct.dvb_usb_device* %15, %struct.dvb_usb_device** %10, align 8
  %16 = getelementptr inbounds [7 x i32], [7 x i32]* %12, i64 0, i64 0
  %17 = load i32, i32* @CMD_CI, align 4
  store i32 %17, i32* %16, align 4
  %18 = getelementptr inbounds i32, i32* %16, i64 1
  store i32 5, i32* %18, align 4
  %19 = getelementptr inbounds i32, i32* %18, i64 1
  store i32 64, i32* %19, align 4
  %20 = getelementptr inbounds i32, i32* %19, i64 1
  %21 = load i32, i32* %8, align 4
  store i32 %21, i32* %20, align 4
  %22 = getelementptr inbounds i32, i32* %20, i64 1
  store i32 0, i32* %22, align 4
  %23 = getelementptr inbounds i32, i32* %22, i64 1
  store i32 1, i32* %23, align 4
  %24 = getelementptr inbounds i32, i32* %23, i64 1
  %25 = load i32, i32* %9, align 4
  store i32 %25, i32* %24, align 4
  %26 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %10, align 8
  %27 = getelementptr inbounds [7 x i32], [7 x i32]* %12, i64 0, i64 0
  %28 = call i32 @anysee_ctrl_msg(%struct.dvb_usb_device* %26, i32* %27, i32 28, i32* null, i32 0)
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %11, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %4
  %32 = load i32, i32* %11, align 4
  store i32 %32, i32* %5, align 4
  br label %34

33:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %34

34:                                               ; preds = %33, %31
  %35 = load i32, i32* %5, align 4
  ret i32 %35
}

declare dso_local i32 @anysee_ctrl_msg(%struct.dvb_usb_device*, i32*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
