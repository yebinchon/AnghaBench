; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_anysee.c_anysee_ci_write_attribute_mem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_anysee.c_anysee_ci_write_attribute_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_ca_en50221 = type { %struct.dvb_usb_device* }
%struct.dvb_usb_device = type { i32 }

@CMD_CI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_ca_en50221*, i32, i32, i32)* @anysee_ci_write_attribute_mem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @anysee_ci_write_attribute_mem(%struct.dvb_ca_en50221* %0, i32 %1, i32 %2, i32 %3) #0 {
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
  store i32 3, i32* %18, align 4
  %19 = getelementptr inbounds i32, i32* %18, i64 1
  %20 = load i32, i32* %8, align 4
  %21 = ashr i32 %20, 8
  %22 = or i32 64, %21
  store i32 %22, i32* %19, align 4
  %23 = getelementptr inbounds i32, i32* %19, i64 1
  %24 = load i32, i32* %8, align 4
  %25 = and i32 %24, 255
  store i32 %25, i32* %23, align 4
  %26 = getelementptr inbounds i32, i32* %23, i64 1
  store i32 0, i32* %26, align 4
  %27 = getelementptr inbounds i32, i32* %26, i64 1
  store i32 1, i32* %27, align 4
  %28 = getelementptr inbounds i32, i32* %27, i64 1
  %29 = load i32, i32* %9, align 4
  store i32 %29, i32* %28, align 4
  %30 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %10, align 8
  %31 = getelementptr inbounds [7 x i32], [7 x i32]* %12, i64 0, i64 0
  %32 = call i32 @anysee_ctrl_msg(%struct.dvb_usb_device* %30, i32* %31, i32 28, i32* null, i32 0)
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %11, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %4
  %36 = load i32, i32* %11, align 4
  store i32 %36, i32* %5, align 4
  br label %38

37:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %38

38:                                               ; preds = %37, %35
  %39 = load i32, i32* %5, align 4
  ret i32 %39
}

declare dso_local i32 @anysee_ctrl_msg(%struct.dvb_usb_device*, i32*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
