; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_gp8psk.c_gp8psk_usb_in_op.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_gp8psk.c_gp8psk_usb_in_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_device = type { i32, i32, %struct.gp8psk_state* }
%struct.gp8psk_state = type { i32 }

@EIO = common dso_local global i32 0, align 4
@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"reading number %d (ret: %d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"usb in %d operation failed.\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"in: req. %x, val: %x, ind: %x, buffer: \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_device*, i32, i32, i32, i32*, i32)* @gp8psk_usb_in_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gp8psk_usb_in_op(%struct.dvb_usb_device* %0, i32 %1, i32 %2, i32 %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.dvb_usb_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.gp8psk_state*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.dvb_usb_device* %0, %struct.dvb_usb_device** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  %17 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %18 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %17, i32 0, i32 2
  %19 = load %struct.gp8psk_state*, %struct.gp8psk_state** %18, align 8
  store %struct.gp8psk_state* %19, %struct.gp8psk_state** %14, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %20 = load i32, i32* %13, align 4
  %21 = sext i32 %20 to i64
  %22 = icmp ugt i64 %21, 4
  br i1 %22, label %23, label %26

23:                                               ; preds = %6
  %24 = load i32, i32* @EIO, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %7, align 4
  br label %101

26:                                               ; preds = %6
  %27 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %28 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %27, i32 0, i32 0
  %29 = call i32 @mutex_lock_interruptible(i32* %28)
  store i32 %29, i32* %15, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load i32, i32* %15, align 4
  store i32 %32, i32* %7, align 4
  br label %101

33:                                               ; preds = %26
  br label %34

34:                                               ; preds = %46, %33
  %35 = load i32, i32* %15, align 4
  %36 = icmp sge i32 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %34
  %38 = load i32, i32* %15, align 4
  %39 = load i32, i32* %13, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = load i32, i32* %16, align 4
  %43 = icmp slt i32 %42, 3
  br label %44

44:                                               ; preds = %41, %37, %34
  %45 = phi i1 [ false, %37 ], [ false, %34 ], [ %43, %41 ]
  br i1 %45, label %46, label %70

46:                                               ; preds = %44
  %47 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %48 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %51 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @usb_rcvctrlpipe(i32 %52, i32 0)
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %56 = load i32, i32* @USB_DIR_IN, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* %11, align 4
  %60 = load %struct.gp8psk_state*, %struct.gp8psk_state** %14, align 8
  %61 = getelementptr inbounds %struct.gp8psk_state, %struct.gp8psk_state* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %13, align 4
  %64 = call i32 @usb_control_msg(i32 %49, i32 %53, i32 %54, i32 %57, i32 %58, i32 %59, i32 %62, i32 %63, i32 2000)
  store i32 %64, i32* %15, align 4
  %65 = load i32, i32* %16, align 4
  %66 = load i32, i32* %15, align 4
  %67 = call i32 @deb_info(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %65, i32 %66)
  %68 = load i32, i32* %16, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %16, align 4
  br label %34

70:                                               ; preds = %44
  %71 = load i32, i32* %15, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %77, label %73

73:                                               ; preds = %70
  %74 = load i32, i32* %15, align 4
  %75 = load i32, i32* %13, align 4
  %76 = icmp ne i32 %74, %75
  br i1 %76, label %77, label %82

77:                                               ; preds = %73, %70
  %78 = load i32, i32* %9, align 4
  %79 = call i32 @warn(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %78)
  %80 = load i32, i32* @EIO, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %15, align 4
  br label %89

82:                                               ; preds = %73
  store i32 0, i32* %15, align 4
  %83 = load i32*, i32** %12, align 8
  %84 = load %struct.gp8psk_state*, %struct.gp8psk_state** %14, align 8
  %85 = getelementptr inbounds %struct.gp8psk_state, %struct.gp8psk_state* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %13, align 4
  %88 = call i32 @memcpy(i32* %83, i32 %86, i32 %87)
  br label %89

89:                                               ; preds = %82, %77
  %90 = load i32, i32* %9, align 4
  %91 = load i32, i32* %10, align 4
  %92 = load i32, i32* %11, align 4
  %93 = call i32 @deb_xfer(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %90, i32 %91, i32 %92)
  %94 = load i32*, i32** %12, align 8
  %95 = load i32, i32* %13, align 4
  %96 = call i32 @debug_dump(i32* %94, i32 %95, i32 (i8*, i32, i32, i32)* @deb_xfer)
  %97 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %98 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %97, i32 0, i32 0
  %99 = call i32 @mutex_unlock(i32* %98)
  %100 = load i32, i32* %15, align 4
  store i32 %100, i32* %7, align 4
  br label %101

101:                                              ; preds = %89, %31, %23
  %102 = load i32, i32* %7, align 4
  ret i32 %102
}

declare dso_local i32 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @usb_rcvctrlpipe(i32, i32) #1

declare dso_local i32 @deb_info(i8*, i32, i32) #1

declare dso_local i32 @warn(i8*, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @deb_xfer(i8*, i32, i32, i32) #1

declare dso_local i32 @debug_dump(i32*, i32, i32 (i8*, i32, i32, i32)*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
