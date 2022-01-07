; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_finepix.c_command.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_finepix.c_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.gspca_dev = type { i32, i32 }

@command.order_values = internal global [2 x <{ %struct.TYPE_3__, [11 x %struct.TYPE_3__] }>] [<{ %struct.TYPE_3__, [11 x %struct.TYPE_3__] }> <{ %struct.TYPE_3__ { i32 198, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 32, i32 0, i32 0, i32 0 }, [11 x %struct.TYPE_3__] zeroinitializer }>, <{ %struct.TYPE_3__, [11 x %struct.TYPE_3__] }> <{ %struct.TYPE_3__ { i32 211, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0 }, [11 x %struct.TYPE_3__] zeroinitializer }>], align 16
@USB_REQ_GET_STATUS = common dso_local global i32 0, align 4
@USB_DIR_OUT = common dso_local global i32 0, align 4
@USB_TYPE_CLASS = common dso_local global i32 0, align 4
@USB_RECIP_INTERFACE = common dso_local global i32 0, align 4
@FPIX_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*, i32)* @command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @command(%struct.gspca_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.gspca_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %6 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* %4, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [2 x [12 x %struct.TYPE_3__]], [2 x [12 x %struct.TYPE_3__]]* bitcast ([2 x <{ %struct.TYPE_3__, [11 x %struct.TYPE_3__] }>]* @command.order_values to [2 x [12 x %struct.TYPE_3__]]*), i64 0, i64 %9
  %11 = getelementptr inbounds [12 x %struct.TYPE_3__], [12 x %struct.TYPE_3__]* %10, i64 0, i64 0
  %12 = call i32 @memcpy(i32 %7, %struct.TYPE_3__* %11, i32 12)
  %13 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %14 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %17 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @usb_sndctrlpipe(i32 %18, i32 0)
  %20 = load i32, i32* @USB_REQ_GET_STATUS, align 4
  %21 = load i32, i32* @USB_DIR_OUT, align 4
  %22 = load i32, i32* @USB_TYPE_CLASS, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @USB_RECIP_INTERFACE, align 4
  %25 = or i32 %23, %24
  %26 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %27 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @FPIX_TIMEOUT, align 4
  %30 = call i32 @usb_control_msg(i32 %15, i32 %19, i32 %20, i32 %25, i32 0, i32 0, i32 %28, i32 12, i32 %29)
  ret i32 %30
}

declare dso_local i32 @memcpy(i32, %struct.TYPE_3__*, i32) #1

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @usb_sndctrlpipe(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
