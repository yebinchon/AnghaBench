; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_az6007.c_az6007_ci_poll_slot_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_az6007.c_az6007_ci_poll_slot_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_ca_en50221 = type { i64 }
%struct.dvb_usb_device = type { i32 }
%struct.az6007_device_state = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"usb in operation failed. (%d)\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@DVB_CA_EN50221_POLL_CAM_PRESENT = common dso_local global i32 0, align 4
@DVB_CA_EN50221_POLL_CAM_READY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_ca_en50221*, i32, i32)* @az6007_ci_poll_slot_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @az6007_ci_poll_slot_status(%struct.dvb_ca_en50221* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dvb_ca_en50221*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.dvb_usb_device*, align 8
  %9 = alloca %struct.az6007_device_state*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  store %struct.dvb_ca_en50221* %0, %struct.dvb_ca_en50221** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %16 = load %struct.dvb_ca_en50221*, %struct.dvb_ca_en50221** %5, align 8
  %17 = getelementptr inbounds %struct.dvb_ca_en50221, %struct.dvb_ca_en50221* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.dvb_usb_device*
  store %struct.dvb_usb_device* %19, %struct.dvb_usb_device** %8, align 8
  %20 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %21 = call %struct.az6007_device_state* @d_to_priv(%struct.dvb_usb_device* %20)
  store %struct.az6007_device_state* %21, %struct.az6007_device_state** %9, align 8
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call i32* @kmalloc(i32 12, i32 %22)
  store i32* %23, i32** %15, align 8
  %24 = load i32*, i32** %15, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %3
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %67

29:                                               ; preds = %3
  %30 = load %struct.az6007_device_state*, %struct.az6007_device_state** %9, align 8
  %31 = getelementptr inbounds %struct.az6007_device_state, %struct.az6007_device_state* %30, i32 0, i32 0
  %32 = call i32 @mutex_lock(i32* %31)
  store i32 197, i32* %11, align 4
  store i64 0, i64* %12, align 8
  store i64 0, i64* %13, align 8
  store i32 1, i32* %14, align 4
  %33 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %34 = load i32, i32* %11, align 4
  %35 = load i64, i64* %12, align 8
  %36 = load i64, i64* %13, align 8
  %37 = load i32*, i32** %15, align 8
  %38 = load i32, i32* %14, align 4
  %39 = call i32 @az6007_read(%struct.dvb_usb_device* %33, i32 %34, i64 %35, i64 %36, i32* %37, i32 %38)
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %10, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %29
  %43 = load i32, i32* %10, align 4
  %44 = call i32 @pr_warn(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* @EIO, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %10, align 4
  br label %48

47:                                               ; preds = %29
  store i32 0, i32* %10, align 4
  br label %48

48:                                               ; preds = %47, %42
  %49 = load i32, i32* %10, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %60, label %51

51:                                               ; preds = %48
  %52 = load i32*, i32** %15, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp eq i32 %54, 1
  br i1 %55, label %56, label %60

56:                                               ; preds = %51
  %57 = load i32, i32* @DVB_CA_EN50221_POLL_CAM_PRESENT, align 4
  %58 = load i32, i32* @DVB_CA_EN50221_POLL_CAM_READY, align 4
  %59 = or i32 %57, %58
  store i32 %59, i32* %10, align 4
  br label %60

60:                                               ; preds = %56, %51, %48
  %61 = load %struct.az6007_device_state*, %struct.az6007_device_state** %9, align 8
  %62 = getelementptr inbounds %struct.az6007_device_state, %struct.az6007_device_state* %61, i32 0, i32 0
  %63 = call i32 @mutex_unlock(i32* %62)
  %64 = load i32*, i32** %15, align 8
  %65 = call i32 @kfree(i32* %64)
  %66 = load i32, i32* %10, align 4
  store i32 %66, i32* %4, align 4
  br label %67

67:                                               ; preds = %60, %26
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local %struct.az6007_device_state* @d_to_priv(%struct.dvb_usb_device*) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @az6007_read(%struct.dvb_usb_device*, i32, i64, i64, i32*, i32) #1

declare dso_local i32 @pr_warn(i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
