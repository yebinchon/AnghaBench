; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_anysee.c_anysee_ci_slot_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_anysee.c_anysee_ci_slot_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_ca_en50221 = type { %struct.dvb_usb_device* }
%struct.dvb_usb_device = type { i32 }

@REG_IOA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_ca_en50221*, i32)* @anysee_ci_slot_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @anysee_ci_slot_shutdown(%struct.dvb_ca_en50221* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_ca_en50221*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dvb_usb_device*, align 8
  %7 = alloca i32, align 4
  store %struct.dvb_ca_en50221* %0, %struct.dvb_ca_en50221** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.dvb_ca_en50221*, %struct.dvb_ca_en50221** %4, align 8
  %9 = getelementptr inbounds %struct.dvb_ca_en50221, %struct.dvb_ca_en50221* %8, i32 0, i32 0
  %10 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %9, align 8
  store %struct.dvb_usb_device* %10, %struct.dvb_usb_device** %6, align 8
  %11 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %6, align 8
  %12 = load i32, i32* @REG_IOA, align 4
  %13 = call i32 @anysee_wr_reg_mask(%struct.dvb_usb_device* %11, i32 %12, i32 0, i32 128)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* %7, align 4
  store i32 %17, i32* %3, align 4
  br label %28

18:                                               ; preds = %2
  %19 = call i32 @msleep(i32 30)
  %20 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %6, align 8
  %21 = load i32, i32* @REG_IOA, align 4
  %22 = call i32 @anysee_wr_reg_mask(%struct.dvb_usb_device* %20, i32 %21, i32 128, i32 128)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %18
  %26 = load i32, i32* %7, align 4
  store i32 %26, i32* %3, align 4
  br label %28

27:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %28

28:                                               ; preds = %27, %25, %16
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i32 @anysee_wr_reg_mask(%struct.dvb_usb_device*, i32, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
