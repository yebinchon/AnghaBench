; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_az6007.c_az6007_ci_write_cam_control.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_az6007.c_az6007_ci_write_cam_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_ca_en50221 = type { i64 }
%struct.dvb_usb_device = type { i32 }
%struct.az6007_device_state = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"usb out operation failed. (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_ca_en50221*, i32, i32, i32)* @az6007_ci_write_cam_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @az6007_ci_write_cam_control(%struct.dvb_ca_en50221* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dvb_ca_en50221*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.dvb_usb_device*, align 8
  %11 = alloca %struct.az6007_device_state*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.dvb_ca_en50221* %0, %struct.dvb_ca_en50221** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %17 = load %struct.dvb_ca_en50221*, %struct.dvb_ca_en50221** %6, align 8
  %18 = getelementptr inbounds %struct.dvb_ca_en50221, %struct.dvb_ca_en50221* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.dvb_usb_device*
  store %struct.dvb_usb_device* %20, %struct.dvb_usb_device** %10, align 8
  %21 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %10, align 8
  %22 = call %struct.az6007_device_state* @d_to_priv(%struct.dvb_usb_device* %21)
  store %struct.az6007_device_state* %22, %struct.az6007_device_state** %11, align 8
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %4
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %5, align 4
  br label %51

28:                                               ; preds = %4
  %29 = load %struct.az6007_device_state*, %struct.az6007_device_state** %11, align 8
  %30 = getelementptr inbounds %struct.az6007_device_state, %struct.az6007_device_state* %29, i32 0, i32 0
  %31 = call i32 @mutex_lock(i32* %30)
  store i32 196, i32* %13, align 4
  %32 = load i32, i32* %8, align 4
  store i32 %32, i32* %14, align 4
  %33 = load i32, i32* %9, align 4
  store i32 %33, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %34 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %10, align 8
  %35 = load i32, i32* %13, align 4
  %36 = load i32, i32* %14, align 4
  %37 = load i32, i32* %15, align 4
  %38 = load i32, i32* %16, align 4
  %39 = call i32 @az6007_write(%struct.dvb_usb_device* %34, i32 %35, i32 %36, i32 %37, i32* null, i32 %38)
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %12, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %28
  %43 = load i32, i32* %12, align 4
  %44 = call i32 @pr_warn(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %43)
  br label %46

45:                                               ; preds = %28
  br label %46

46:                                               ; preds = %45, %42
  %47 = load %struct.az6007_device_state*, %struct.az6007_device_state** %11, align 8
  %48 = getelementptr inbounds %struct.az6007_device_state, %struct.az6007_device_state* %47, i32 0, i32 0
  %49 = call i32 @mutex_unlock(i32* %48)
  %50 = load i32, i32* %12, align 4
  store i32 %50, i32* %5, align 4
  br label %51

51:                                               ; preds = %46, %25
  %52 = load i32, i32* %5, align 4
  ret i32 %52
}

declare dso_local %struct.az6007_device_state* @d_to_priv(%struct.dvb_usb_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @az6007_write(%struct.dvb_usb_device*, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @pr_warn(i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
