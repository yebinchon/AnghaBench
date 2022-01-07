; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/stv06xx/extr_stv06xx.c_stv06xx_write_bridge.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/stv06xx/extr_stv06xx.c_stv06xx_write_bridge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sd = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32*, %struct.usb_device* }
%struct.usb_device = type { i32 }
%struct.gspca_dev = type { i32 }

@STV06XX_URB_MSG_TIMEOUT = common dso_local global i32 0, align 4
@D_CONF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Written 0x%x to address 0x%x, status: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stv06xx_write_bridge(%struct.sd* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.sd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.gspca_dev*, align 8
  %9 = alloca %struct.usb_device*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.sd* %0, %struct.sd** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load %struct.sd*, %struct.sd** %4, align 8
  %13 = bitcast %struct.sd* %12 to %struct.gspca_dev*
  store %struct.gspca_dev* %13, %struct.gspca_dev** %8, align 8
  %14 = load %struct.sd*, %struct.sd** %4, align 8
  %15 = getelementptr inbounds %struct.sd, %struct.sd* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load %struct.usb_device*, %struct.usb_device** %16, align 8
  store %struct.usb_device* %17, %struct.usb_device** %9, align 8
  %18 = load %struct.sd*, %struct.sd** %4, align 8
  %19 = getelementptr inbounds %struct.sd, %struct.sd* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  store i32* %21, i32** %10, align 8
  %22 = load i32, i32* %6, align 4
  %23 = icmp sgt i32 %22, 255
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i32 2, i32 1
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %6, align 4
  %27 = and i32 %26, 255
  %28 = load i32*, i32** %10, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* %6, align 4
  %31 = ashr i32 %30, 8
  %32 = and i32 %31, 255
  %33 = load i32*, i32** %10, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 1
  store i32 %32, i32* %34, align 4
  %35 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  %36 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  %37 = call i32 @usb_sndctrlpipe(%struct.usb_device* %36, i32 0)
  %38 = load i32, i32* %5, align 4
  %39 = load i32*, i32** %10, align 8
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* @STV06XX_URB_MSG_TIMEOUT, align 4
  %42 = call i32 @usb_control_msg(%struct.usb_device* %35, i32 %37, i32 4, i32 64, i32 %38, i32 0, i32* %39, i32 %40, i32 %41)
  store i32 %42, i32* %7, align 4
  %43 = load %struct.gspca_dev*, %struct.gspca_dev** %8, align 8
  %44 = load i32, i32* @D_CONF, align 4
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @gspca_dbg(%struct.gspca_dev* %43, i32 %44, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %45, i32 %46, i32 %47)
  %49 = load i32, i32* %7, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %3
  %52 = load i32, i32* %7, align 4
  br label %54

53:                                               ; preds = %3
  br label %54

54:                                               ; preds = %53, %51
  %55 = phi i32 [ %52, %51 ], [ 0, %53 ]
  ret i32 %55
}

declare dso_local i32 @usb_control_msg(%struct.usb_device*, i32, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @usb_sndctrlpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @gspca_dbg(%struct.gspca_dev*, i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
