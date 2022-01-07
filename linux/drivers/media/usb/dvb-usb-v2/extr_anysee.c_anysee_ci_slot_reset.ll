; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_anysee.c_anysee_ci_slot_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_anysee.c_anysee_ci_slot_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_ca_en50221 = type { %struct.dvb_usb_device* }
%struct.dvb_usb_device = type { i32 }
%struct.anysee_state = type { i64 }

@jiffies = common dso_local global i64 0, align 8
@REG_IOA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_ca_en50221*, i32)* @anysee_ci_slot_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @anysee_ci_slot_reset(%struct.dvb_ca_en50221* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_ca_en50221*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dvb_usb_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.anysee_state*, align 8
  store %struct.dvb_ca_en50221* %0, %struct.dvb_ca_en50221** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.dvb_ca_en50221*, %struct.dvb_ca_en50221** %4, align 8
  %10 = getelementptr inbounds %struct.dvb_ca_en50221, %struct.dvb_ca_en50221* %9, i32 0, i32 0
  %11 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %10, align 8
  store %struct.dvb_usb_device* %11, %struct.dvb_usb_device** %6, align 8
  %12 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %6, align 8
  %13 = call %struct.anysee_state* @d_to_priv(%struct.dvb_usb_device* %12)
  store %struct.anysee_state* %13, %struct.anysee_state** %8, align 8
  %14 = load i64, i64* @jiffies, align 8
  %15 = call i64 @msecs_to_jiffies(i32 1000)
  %16 = add nsw i64 %14, %15
  %17 = load %struct.anysee_state*, %struct.anysee_state** %8, align 8
  %18 = getelementptr inbounds %struct.anysee_state, %struct.anysee_state* %17, i32 0, i32 0
  store i64 %16, i64* %18, align 8
  %19 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %6, align 8
  %20 = load i32, i32* @REG_IOA, align 4
  %21 = call i32 @anysee_wr_reg_mask(%struct.dvb_usb_device* %19, i32 %20, i32 0, i32 128)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = load i32, i32* %7, align 4
  store i32 %25, i32* %3, align 4
  br label %36

26:                                               ; preds = %2
  %27 = call i32 @msleep(i32 300)
  %28 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %6, align 8
  %29 = load i32, i32* @REG_IOA, align 4
  %30 = call i32 @anysee_wr_reg_mask(%struct.dvb_usb_device* %28, i32 %29, i32 128, i32 128)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %26
  %34 = load i32, i32* %7, align 4
  store i32 %34, i32* %3, align 4
  br label %36

35:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %35, %33, %24
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local %struct.anysee_state* @d_to_priv(%struct.dvb_usb_device*) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @anysee_wr_reg_mask(%struct.dvb_usb_device*, i32, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
