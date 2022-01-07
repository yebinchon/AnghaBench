; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/msi2500/extr_msi2500.c_msi2500_ctrl_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/msi2500/extr_msi2500.c_msi2500_ctrl_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msi2500_dev = type { i32, i32 }

@USB_DIR_OUT = common dso_local global i32 0, align 4
@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"failed %d, cmd %02x, data %04x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.msi2500_dev*, i32, i32)* @msi2500_ctrl_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msi2500_ctrl_msg(%struct.msi2500_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.msi2500_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.msi2500_dev* %0, %struct.msi2500_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load i32, i32* %5, align 4
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* @USB_DIR_OUT, align 4
  %14 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %15 = or i32 %13, %14
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %6, align 4
  %17 = ashr i32 %16, 0
  %18 = and i32 %17, 65535
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %6, align 4
  %20 = ashr i32 %19, 16
  %21 = and i32 %20, 65535
  store i32 %21, i32* %11, align 4
  %22 = load %struct.msi2500_dev*, %struct.msi2500_dev** %4, align 8
  %23 = getelementptr inbounds %struct.msi2500_dev, %struct.msi2500_dev* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* %11, align 4
  %29 = call i32 @msi2500_dbg_usb_control_msg(i32 %24, i32 %25, i32 %26, i32 %27, i32 %28, i32* null, i32 0)
  %30 = load %struct.msi2500_dev*, %struct.msi2500_dev** %4, align 8
  %31 = getelementptr inbounds %struct.msi2500_dev, %struct.msi2500_dev* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.msi2500_dev*, %struct.msi2500_dev** %4, align 8
  %34 = getelementptr inbounds %struct.msi2500_dev, %struct.msi2500_dev* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @usb_sndctrlpipe(i32 %35, i32 0)
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* %11, align 4
  %41 = call i32 @usb_control_msg(i32 %32, i32 %36, i32 %37, i32 %38, i32 %39, i32 %40, i32* null, i32 0, i32 2000)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %3
  %45 = load %struct.msi2500_dev*, %struct.msi2500_dev** %4, align 8
  %46 = getelementptr inbounds %struct.msi2500_dev, %struct.msi2500_dev* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @dev_err(i32 %47, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %48, i32 %49, i32 %50)
  br label %52

52:                                               ; preds = %44, %3
  %53 = load i32, i32* %7, align 4
  ret i32 %53
}

declare dso_local i32 @msi2500_dbg_usb_control_msg(i32, i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @usb_sndctrlpipe(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
