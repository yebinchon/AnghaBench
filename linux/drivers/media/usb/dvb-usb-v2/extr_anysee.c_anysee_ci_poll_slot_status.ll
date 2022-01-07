; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_anysee.c_anysee_ci_poll_slot_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_anysee.c_anysee_ci_poll_slot_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_ca_en50221 = type { %struct.dvb_usb_device* }
%struct.dvb_usb_device = type { i32 }
%struct.anysee_state = type { i32 }

@REG_IOC = common dso_local global i32 0, align 4
@DVB_CA_EN50221_POLL_CAM_PRESENT = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@DVB_CA_EN50221_POLL_CAM_READY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_ca_en50221*, i32, i32)* @anysee_ci_poll_slot_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @anysee_ci_poll_slot_status(%struct.dvb_ca_en50221* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dvb_ca_en50221*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.dvb_usb_device*, align 8
  %9 = alloca %struct.anysee_state*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.dvb_ca_en50221* %0, %struct.dvb_ca_en50221** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.dvb_ca_en50221*, %struct.dvb_ca_en50221** %5, align 8
  %13 = getelementptr inbounds %struct.dvb_ca_en50221, %struct.dvb_ca_en50221* %12, i32 0, i32 0
  %14 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %13, align 8
  store %struct.dvb_usb_device* %14, %struct.dvb_usb_device** %8, align 8
  %15 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %16 = call %struct.anysee_state* @d_to_priv(%struct.dvb_usb_device* %15)
  store %struct.anysee_state* %16, %struct.anysee_state** %9, align 8
  store i64 0, i64* %11, align 8
  %17 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %18 = load i32, i32* @REG_IOC, align 4
  %19 = call i32 @anysee_rd_reg_mask(%struct.dvb_usb_device* %17, i32 %18, i64* %11, i32 64)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load i32, i32* %10, align 4
  store i32 %23, i32* %4, align 4
  br label %42

24:                                               ; preds = %3
  %25 = load i64, i64* %11, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %40

27:                                               ; preds = %24
  %28 = load i32, i32* @DVB_CA_EN50221_POLL_CAM_PRESENT, align 4
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* @jiffies, align 4
  %30 = load %struct.anysee_state*, %struct.anysee_state** %9, align 8
  %31 = getelementptr inbounds %struct.anysee_state, %struct.anysee_state* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @time_after(i32 %29, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %27
  %36 = load i32, i32* @DVB_CA_EN50221_POLL_CAM_READY, align 4
  %37 = load i32, i32* %10, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %10, align 4
  br label %39

39:                                               ; preds = %35, %27
  br label %40

40:                                               ; preds = %39, %24
  %41 = load i32, i32* %10, align 4
  store i32 %41, i32* %4, align 4
  br label %42

42:                                               ; preds = %40, %22
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local %struct.anysee_state* @d_to_priv(%struct.dvb_usb_device*) #1

declare dso_local i32 @anysee_rd_reg_mask(%struct.dvb_usb_device*, i32, i64*, i32) #1

declare dso_local i64 @time_after(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
