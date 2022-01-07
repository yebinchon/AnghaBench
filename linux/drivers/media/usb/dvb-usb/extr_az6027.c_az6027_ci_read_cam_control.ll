; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_az6027.c_az6027_ci_read_cam_control.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_az6027.c_az6027_ci_read_cam_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_ca_en50221 = type { i64 }
%struct.dvb_usb_device = type { i64 }
%struct.az6027_device_state = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"usb in operation failed. (%d)\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"Read CI IO error\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"read cam data = %x from 0x%x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_ca_en50221*, i32, i32)* @az6027_ci_read_cam_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @az6027_ci_read_cam_control(%struct.dvb_ca_en50221* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dvb_ca_en50221*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.dvb_usb_device*, align 8
  %9 = alloca %struct.az6027_device_state*, align 8
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
  %21 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to %struct.az6027_device_state*
  store %struct.az6027_device_state* %23, %struct.az6027_device_state** %9, align 8
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %3
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %79

29:                                               ; preds = %3
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call i32* @kmalloc(i32 12, i32 %30)
  store i32* %31, i32** %15, align 8
  %32 = load i32*, i32** %15, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %29
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %79

37:                                               ; preds = %29
  %38 = load %struct.az6027_device_state*, %struct.az6027_device_state** %9, align 8
  %39 = getelementptr inbounds %struct.az6027_device_state, %struct.az6027_device_state* %38, i32 0, i32 0
  %40 = call i32 @mutex_lock(i32* %39)
  store i32 195, i32* %11, align 4
  %41 = load i32, i32* %7, align 4
  store i32 %41, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 2, i32* %14, align 4
  %42 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* %12, align 4
  %45 = load i32, i32* %13, align 4
  %46 = load i32*, i32** %15, align 8
  %47 = load i32, i32* %14, align 4
  %48 = call i32 @az6027_usb_in_op(%struct.dvb_usb_device* %42, i32 %43, i32 %44, i32 %45, i32* %46, i32 %47)
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %10, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %37
  %52 = load i32, i32* %10, align 4
  %53 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %10, align 4
  br label %72

56:                                               ; preds = %37
  %57 = load i32*, i32** %15, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %56
  %62 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %63

63:                                               ; preds = %61, %56
  %64 = load i32*, i32** %15, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 1
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %10, align 4
  %67 = load i32*, i32** %15, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 1
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %12, align 4
  %71 = call i32 @deb_info(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %69, i32 %70)
  br label %72

72:                                               ; preds = %63, %51
  %73 = load %struct.az6027_device_state*, %struct.az6027_device_state** %9, align 8
  %74 = getelementptr inbounds %struct.az6027_device_state, %struct.az6027_device_state* %73, i32 0, i32 0
  %75 = call i32 @mutex_unlock(i32* %74)
  %76 = load i32*, i32** %15, align 8
  %77 = call i32 @kfree(i32* %76)
  %78 = load i32, i32* %10, align 4
  store i32 %78, i32* %4, align 4
  br label %79

79:                                               ; preds = %72, %34, %26
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @az6027_usb_in_op(%struct.dvb_usb_device*, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @warn(i8*, ...) #1

declare dso_local i32 @deb_info(i8*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
