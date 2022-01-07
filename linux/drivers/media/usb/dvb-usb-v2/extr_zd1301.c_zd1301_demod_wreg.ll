; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_zd1301.c_zd1301_demod_wreg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_zd1301.c_zd1301_demod_wreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_device = type { %struct.usb_interface* }
%struct.usb_interface = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"failed=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32)* @zd1301_demod_wreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zd1301_demod_wreg(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.dvb_usb_device*, align 8
  %9 = alloca %struct.usb_interface*, align 8
  %10 = alloca i32, align 4
  %11 = alloca [7 x i32], align 16
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.dvb_usb_device*
  store %struct.dvb_usb_device* %13, %struct.dvb_usb_device** %8, align 8
  %14 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %15 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %14, i32 0, i32 0
  %16 = load %struct.usb_interface*, %struct.usb_interface** %15, align 8
  store %struct.usb_interface* %16, %struct.usb_interface** %9, align 8
  %17 = getelementptr inbounds [7 x i32], [7 x i32]* %11, i64 0, i64 0
  store i32 7, i32* %17, align 4
  %18 = getelementptr inbounds i32, i32* %17, i64 1
  store i32 0, i32* %18, align 4
  %19 = getelementptr inbounds i32, i32* %18, i64 1
  store i32 3, i32* %19, align 4
  %20 = getelementptr inbounds i32, i32* %19, i64 1
  store i32 1, i32* %20, align 4
  %21 = getelementptr inbounds i32, i32* %20, i64 1
  %22 = load i32, i32* %6, align 4
  %23 = ashr i32 %22, 0
  %24 = and i32 %23, 255
  store i32 %24, i32* %21, align 4
  %25 = getelementptr inbounds i32, i32* %21, i64 1
  %26 = load i32, i32* %6, align 4
  %27 = ashr i32 %26, 8
  %28 = and i32 %27, 255
  store i32 %28, i32* %25, align 4
  %29 = getelementptr inbounds i32, i32* %25, i64 1
  %30 = load i32, i32* %7, align 4
  store i32 %30, i32* %29, align 4
  %31 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %32 = getelementptr inbounds [7 x i32], [7 x i32]* %11, i64 0, i64 0
  %33 = call i32 @zd1301_ctrl_msg(%struct.dvb_usb_device* %31, i32* %32, i32 7, i32* null, i32 0)
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %10, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %3
  br label %38

37:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %44

38:                                               ; preds = %36
  %39 = load %struct.usb_interface*, %struct.usb_interface** %9, align 8
  %40 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %39, i32 0, i32 0
  %41 = load i32, i32* %10, align 4
  %42 = call i32 @dev_dbg(i32* %40, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %41)
  %43 = load i32, i32* %10, align 4
  store i32 %43, i32* %4, align 4
  br label %44

44:                                               ; preds = %38, %37
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local i32 @zd1301_ctrl_msg(%struct.dvb_usb_device*, i32*, i32, i32*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
