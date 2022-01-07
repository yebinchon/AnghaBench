; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_dib0700_core.c_dib0700_ctrl_wr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_dib0700_core.c_dib0700_ctrl_wr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_device = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c">>> \00", align 1
@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@USB_DIR_OUT = common dso_local global i32 0, align 4
@USB_CTRL_GET_TIMEOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"ep 0 write error (status = %d, len: %d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_device*, i32*, i32)* @dib0700_ctrl_wr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dib0700_ctrl_wr(%struct.dvb_usb_device* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.dvb_usb_device*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.dvb_usb_device* %0, %struct.dvb_usb_device** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = call i32 (i8*, ...) @deb_data(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %9 = load i32*, i32** %5, align 8
  %10 = load i32, i32* %6, align 4
  %11 = call i32 @debug_dump(i32* %9, i32 %10, i32 (i8*, i32, i32)* bitcast (i32 (i8*, ...)* @deb_data to i32 (i8*, i32, i32)*))
  %12 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %13 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %16 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @usb_sndctrlpipe(i32 %17, i32 0)
  %19 = load i32*, i32** %5, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %23 = load i32, i32* @USB_DIR_OUT, align 4
  %24 = or i32 %22, %23
  %25 = load i32*, i32** %5, align 8
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @USB_CTRL_GET_TIMEOUT, align 4
  %28 = call i32 @usb_control_msg(i32 %14, i32 %18, i32 %21, i32 %24, i32 0, i32 0, i32* %25, i32 %26, i32 %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %3
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %6, align 4
  %35 = call i32 (i8*, ...) @deb_data(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %33, i32 %34)
  br label %36

36:                                               ; preds = %32, %3
  %37 = load i32, i32* %7, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %36
  %40 = load i32, i32* %7, align 4
  br label %42

41:                                               ; preds = %36
  br label %42

42:                                               ; preds = %41, %39
  %43 = phi i32 [ %40, %39 ], [ 0, %41 ]
  ret i32 %43
}

declare dso_local i32 @deb_data(i8*, ...) #1

declare dso_local i32 @debug_dump(i32*, i32, i32 (i8*, i32, i32)*) #1

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @usb_sndctrlpipe(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
