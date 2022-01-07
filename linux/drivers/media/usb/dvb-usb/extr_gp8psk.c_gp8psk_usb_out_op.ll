; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_gp8psk.c_gp8psk_usb_out_op.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_gp8psk.c_gp8psk_usb_out_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_device = type { i32, i32, %struct.gp8psk_state* }
%struct.gp8psk_state = type { i32 }

@.str = private unnamed_addr constant [41 x i8] c"out: req. %x, val: %x, ind: %x, buffer: \00", align 1
@EIO = common dso_local global i32 0, align 4
@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@USB_DIR_OUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"usb out operation failed.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_device*, i32, i32, i32, i32*, i32)* @gp8psk_usb_out_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gp8psk_usb_out_op(%struct.dvb_usb_device* %0, i32 %1, i32 %2, i32 %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.dvb_usb_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.gp8psk_state*, align 8
  %15 = alloca i32, align 4
  store %struct.dvb_usb_device* %0, %struct.dvb_usb_device** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  %16 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %17 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %16, i32 0, i32 2
  %18 = load %struct.gp8psk_state*, %struct.gp8psk_state** %17, align 8
  store %struct.gp8psk_state* %18, %struct.gp8psk_state** %14, align 8
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* %11, align 4
  %22 = call i32 @deb_xfer(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %20, i32 %21)
  %23 = load i32*, i32** %12, align 8
  %24 = load i32, i32* %13, align 4
  %25 = call i32 @debug_dump(i32* %23, i32 %24, i32 (i8*, i32, i32, i32)* @deb_xfer)
  %26 = load i32, i32* %13, align 4
  %27 = sext i32 %26 to i64
  %28 = icmp ugt i64 %27, 4
  br i1 %28, label %29, label %32

29:                                               ; preds = %6
  %30 = load i32, i32* @EIO, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %7, align 4
  br label %76

32:                                               ; preds = %6
  %33 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %34 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %33, i32 0, i32 0
  %35 = call i32 @mutex_lock_interruptible(i32* %34)
  store i32 %35, i32* %15, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = load i32, i32* %15, align 4
  store i32 %38, i32* %7, align 4
  br label %76

39:                                               ; preds = %32
  %40 = load %struct.gp8psk_state*, %struct.gp8psk_state** %14, align 8
  %41 = getelementptr inbounds %struct.gp8psk_state, %struct.gp8psk_state* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32*, i32** %12, align 8
  %44 = load i32, i32* %13, align 4
  %45 = call i32 @memcpy(i32 %42, i32* %43, i32 %44)
  %46 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %47 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %50 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @usb_sndctrlpipe(i32 %51, i32 0)
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %55 = load i32, i32* @USB_DIR_OUT, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* %11, align 4
  %59 = load %struct.gp8psk_state*, %struct.gp8psk_state** %14, align 8
  %60 = getelementptr inbounds %struct.gp8psk_state, %struct.gp8psk_state* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %13, align 4
  %63 = call i32 @usb_control_msg(i32 %48, i32 %52, i32 %53, i32 %56, i32 %57, i32 %58, i32 %61, i32 %62, i32 2000)
  %64 = load i32, i32* %13, align 4
  %65 = icmp ne i32 %63, %64
  br i1 %65, label %66, label %70

66:                                               ; preds = %39
  %67 = call i32 @warn(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %68 = load i32, i32* @EIO, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %15, align 4
  br label %71

70:                                               ; preds = %39
  store i32 0, i32* %15, align 4
  br label %71

71:                                               ; preds = %70, %66
  %72 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %73 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %72, i32 0, i32 0
  %74 = call i32 @mutex_unlock(i32* %73)
  %75 = load i32, i32* %15, align 4
  store i32 %75, i32* %7, align 4
  br label %76

76:                                               ; preds = %71, %37, %29
  %77 = load i32, i32* %7, align 4
  ret i32 %77
}

declare dso_local i32 @deb_xfer(i8*, i32, i32, i32) #1

declare dso_local i32 @debug_dump(i32*, i32, i32 (i8*, i32, i32, i32)*) #1

declare dso_local i32 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @usb_sndctrlpipe(i32, i32) #1

declare dso_local i32 @warn(i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
