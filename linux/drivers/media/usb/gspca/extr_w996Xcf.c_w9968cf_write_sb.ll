; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_w996Xcf.c_w9968cf_write_sb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_w996Xcf.c_w9968cf_write_sb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sd = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@USB_DIR_OUT = common dso_local global i32 0, align 4
@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@USB_RECIP_DEVICE = common dso_local global i32 0, align 4
@W9968CF_I2C_BUS_DELAY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Write SB reg [01] %04x failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sd*, i32)* @w9968cf_write_sb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @w9968cf_write_sb(%struct.sd* %0, i32 %1) #0 {
  %3 = alloca %struct.sd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.sd* %0, %struct.sd** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.sd*, %struct.sd** %3, align 8
  %7 = getelementptr inbounds %struct.sd, %struct.sd* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %41

12:                                               ; preds = %2
  %13 = call i32 @udelay(i32 150)
  %14 = load %struct.sd*, %struct.sd** %3, align 8
  %15 = getelementptr inbounds %struct.sd, %struct.sd* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.sd*, %struct.sd** %3, align 8
  %19 = getelementptr inbounds %struct.sd, %struct.sd* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @usb_sndctrlpipe(i32 %21, i32 0)
  %23 = load i32, i32* @USB_DIR_OUT, align 4
  %24 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @USB_RECIP_DEVICE, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @usb_control_msg(i32 %17, i32 %22, i32 0, i32 %27, i32 %28, i32 1, i32* null, i32 0, i32 500)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* @W9968CF_I2C_BUS_DELAY, align 4
  %31 = call i32 @udelay(i32 %30)
  %32 = load i32, i32* %5, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %12
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* %5, align 4
  %38 = load %struct.sd*, %struct.sd** %3, align 8
  %39 = getelementptr inbounds %struct.sd, %struct.sd* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  store i32 %37, i32* %40, align 4
  br label %41

41:                                               ; preds = %11, %34, %12
  ret void
}

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @usb_sndctrlpipe(i32, i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
