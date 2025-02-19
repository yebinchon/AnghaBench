; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_az6027.c_az6027_ci_slot_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_az6027.c_az6027_ci_slot_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_ca_en50221 = type { i64 }
%struct.dvb_usb_device = type { i64 }
%struct.az6027_device_state = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"usb out operation failed. (%d)\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"CAM Ready\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_ca_en50221*, i32)* @az6027_ci_slot_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @az6027_ci_slot_reset(%struct.dvb_ca_en50221* %0, i32 %1) #0 {
  %3 = alloca %struct.dvb_ca_en50221*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dvb_usb_device*, align 8
  %6 = alloca %struct.az6027_device_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.dvb_ca_en50221* %0, %struct.dvb_ca_en50221** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = load %struct.dvb_ca_en50221*, %struct.dvb_ca_en50221** %3, align 8
  %14 = getelementptr inbounds %struct.dvb_ca_en50221, %struct.dvb_ca_en50221* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.dvb_usb_device*
  store %struct.dvb_usb_device* %16, %struct.dvb_usb_device** %5, align 8
  %17 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %5, align 8
  %18 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.az6027_device_state*
  store %struct.az6027_device_state* %20, %struct.az6027_device_state** %6, align 8
  %21 = load %struct.az6027_device_state*, %struct.az6027_device_state** %6, align 8
  %22 = getelementptr inbounds %struct.az6027_device_state, %struct.az6027_device_state* %21, i32 0, i32 0
  %23 = call i32 @mutex_lock(i32* %22)
  store i32 198, i32* %9, align 4
  store i32 1, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %24 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %5, align 8
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* %11, align 4
  %28 = load i32, i32* %12, align 4
  %29 = call i32 @az6027_usb_out_op(%struct.dvb_usb_device* %24, i32 %25, i32 %26, i32 %27, i32* null, i32 %28)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %2
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @warn(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %33)
  br label %66

35:                                               ; preds = %2
  %36 = call i32 @msleep(i32 500)
  store i32 198, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %37 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %5, align 8
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* %12, align 4
  %42 = call i32 @az6027_usb_out_op(%struct.dvb_usb_device* %37, i32 %38, i32 %39, i32 %40, i32* null, i32 %41)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %35
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @warn(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %46)
  br label %66

48:                                               ; preds = %35
  store i32 0, i32* %8, align 4
  br label %49

49:                                               ; preds = %61, %48
  %50 = load i32, i32* %8, align 4
  %51 = icmp slt i32 %50, 15
  br i1 %51, label %52, label %64

52:                                               ; preds = %49
  %53 = call i32 @msleep(i32 100)
  %54 = load %struct.dvb_ca_en50221*, %struct.dvb_ca_en50221** %3, align 8
  %55 = load i32, i32* %4, align 4
  %56 = call i64 @CI_CamReady(%struct.dvb_ca_en50221* %54, i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %52
  %59 = call i32 @deb_info(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  br label %64

60:                                               ; preds = %52
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %8, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %8, align 4
  br label %49

64:                                               ; preds = %58, %49
  %65 = call i32 @msleep(i32 5000)
  br label %66

66:                                               ; preds = %64, %45, %32
  %67 = load %struct.az6027_device_state*, %struct.az6027_device_state** %6, align 8
  %68 = getelementptr inbounds %struct.az6027_device_state, %struct.az6027_device_state* %67, i32 0, i32 0
  %69 = call i32 @mutex_unlock(i32* %68)
  %70 = load i32, i32* %7, align 4
  ret i32 %70
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @az6027_usb_out_op(%struct.dvb_usb_device*, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @warn(i8*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i64 @CI_CamReady(%struct.dvb_ca_en50221*, i32) #1

declare dso_local i32 @deb_info(i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
