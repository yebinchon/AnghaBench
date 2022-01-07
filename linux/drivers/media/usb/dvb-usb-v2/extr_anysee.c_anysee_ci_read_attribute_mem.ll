; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_anysee.c_anysee_ci_read_attribute_mem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_anysee.c_anysee_ci_read_attribute_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_ca_en50221 = type { %struct.dvb_usb_device* }
%struct.dvb_usb_device = type { i32 }

@CMD_CI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_ca_en50221*, i32, i32)* @anysee_ci_read_attribute_mem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @anysee_ci_read_attribute_mem(%struct.dvb_ca_en50221* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dvb_ca_en50221*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.dvb_usb_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [6 x i32], align 16
  %11 = alloca i32, align 4
  store %struct.dvb_ca_en50221* %0, %struct.dvb_ca_en50221** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.dvb_ca_en50221*, %struct.dvb_ca_en50221** %5, align 8
  %13 = getelementptr inbounds %struct.dvb_ca_en50221, %struct.dvb_ca_en50221* %12, i32 0, i32 0
  %14 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %13, align 8
  store %struct.dvb_usb_device* %14, %struct.dvb_usb_device** %8, align 8
  %15 = getelementptr inbounds [6 x i32], [6 x i32]* %10, i64 0, i64 0
  %16 = load i32, i32* @CMD_CI, align 4
  store i32 %16, i32* %15, align 4
  %17 = getelementptr inbounds i32, i32* %15, i64 1
  store i32 2, i32* %17, align 4
  %18 = getelementptr inbounds i32, i32* %17, i64 1
  %19 = load i32, i32* %7, align 4
  %20 = ashr i32 %19, 8
  %21 = or i32 64, %20
  store i32 %21, i32* %18, align 4
  %22 = getelementptr inbounds i32, i32* %18, i64 1
  %23 = load i32, i32* %7, align 4
  %24 = and i32 %23, 255
  store i32 %24, i32* %22, align 4
  %25 = getelementptr inbounds i32, i32* %22, i64 1
  store i32 0, i32* %25, align 4
  %26 = getelementptr inbounds i32, i32* %25, i64 1
  store i32 1, i32* %26, align 4
  %27 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %28 = getelementptr inbounds [6 x i32], [6 x i32]* %10, i64 0, i64 0
  %29 = call i32 @anysee_ctrl_msg(%struct.dvb_usb_device* %27, i32* %28, i32 24, i32* %11, i32 1)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %3
  %33 = load i32, i32* %9, align 4
  store i32 %33, i32* %4, align 4
  br label %36

34:                                               ; preds = %3
  %35 = load i32, i32* %11, align 4
  store i32 %35, i32* %4, align 4
  br label %36

36:                                               ; preds = %34, %32
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local i32 @anysee_ctrl_msg(%struct.dvb_usb_device*, i32*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
