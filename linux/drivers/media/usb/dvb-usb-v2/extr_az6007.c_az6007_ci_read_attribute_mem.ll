; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_az6007.c_az6007_ci_read_attribute_mem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_az6007.c_az6007_ci_read_attribute_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_ca_en50221 = type { i64 }
%struct.dvb_usb_device = type { i32 }
%struct.az6007_device_state = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"usb in operation failed. (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_ca_en50221*, i32, i32)* @az6007_ci_read_attribute_mem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @az6007_ci_read_attribute_mem(%struct.dvb_ca_en50221* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dvb_ca_en50221*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.dvb_usb_device*, align 8
  %9 = alloca %struct.az6007_device_state*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
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
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %3
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %65

27:                                               ; preds = %3
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call i32* @kmalloc(i32 12, i32 %28)
  store i32* %29, i32** %15, align 8
  %30 = load i32*, i32** %15, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %27
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %65

35:                                               ; preds = %27
  %36 = load %struct.az6007_device_state*, %struct.az6007_device_state** %9, align 8
  %37 = getelementptr inbounds %struct.az6007_device_state, %struct.az6007_device_state* %36, i32 0, i32 0
  %38 = call i32 @mutex_lock(i32* %37)
  store i32 193, i32* %11, align 4
  %39 = load i32, i32* %7, align 4
  store i32 %39, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 1, i32* %14, align 4
  %40 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* %12, align 4
  %43 = load i32, i32* %13, align 4
  %44 = load i32*, i32** %15, align 8
  %45 = load i32, i32* %14, align 4
  %46 = call i32 @az6007_read(%struct.dvb_usb_device* %40, i32 %41, i32 %42, i32 %43, i32* %44, i32 %45)
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %10, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %35
  %50 = load i32, i32* %10, align 4
  %51 = call i32 @pr_warn(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %50)
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %10, align 4
  br label %58

54:                                               ; preds = %35
  %55 = load i32*, i32** %15, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 0
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %10, align 4
  br label %58

58:                                               ; preds = %54, %49
  %59 = load %struct.az6007_device_state*, %struct.az6007_device_state** %9, align 8
  %60 = getelementptr inbounds %struct.az6007_device_state, %struct.az6007_device_state* %59, i32 0, i32 0
  %61 = call i32 @mutex_unlock(i32* %60)
  %62 = load i32*, i32** %15, align 8
  %63 = call i32 @kfree(i32* %62)
  %64 = load i32, i32* %10, align 4
  store i32 %64, i32* %4, align 4
  br label %65

65:                                               ; preds = %58, %32, %24
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local %struct.az6007_device_state* @d_to_priv(%struct.dvb_usb_device*) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @az6007_read(%struct.dvb_usb_device*, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @pr_warn(i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
