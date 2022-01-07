; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_dvbsky.c_dvbsky_ci_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_dvbsky.c_dvbsky_ci_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"ci control failed=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32, i32, i32*)* @dvbsky_ci_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dvbsky_ci_ctrl(i8* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.dvb_usb_device*, align 8
  %13 = alloca i32, align 4
  %14 = alloca [4 x i32], align 16
  %15 = alloca [2 x i32], align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = bitcast i8* %18 to %struct.dvb_usb_device*
  store %struct.dvb_usb_device* %19, %struct.dvb_usb_device** %12, align 8
  store i32 0, i32* %13, align 4
  %20 = load i32, i32* %9, align 4
  %21 = ashr i32 %20, 8
  %22 = and i32 %21, 255
  %23 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 1
  store i32 %22, i32* %23, align 4
  %24 = load i32, i32* %9, align 4
  %25 = and i32 %24, 255
  %26 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 2
  store i32 %25, i32* %26, align 8
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %5
  %30 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 0
  store i32 113, i32* %30, align 16
  store i32 3, i32* %16, align 4
  store i32 2, i32* %17, align 4
  br label %35

31:                                               ; preds = %5
  %32 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 0
  store i32 112, i32* %32, align 16
  %33 = load i32, i32* %10, align 4
  %34 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 3
  store i32 %33, i32* %34, align 4
  store i32 4, i32* %16, align 4
  store i32 1, i32* %17, align 4
  br label %35

35:                                               ; preds = %31, %29
  %36 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %12, align 8
  %37 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 0
  %38 = load i32, i32* %16, align 4
  %39 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 0
  %40 = load i32, i32* %17, align 4
  %41 = call i32 @dvbsky_usb_generic_rw(%struct.dvb_usb_device* %36, i32* %37, i32 %38, i32* %39, i32 %40)
  store i32 %41, i32* %13, align 4
  %42 = load i32, i32* %13, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %35
  br label %54

45:                                               ; preds = %35
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %45
  %49 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32*, i32** %11, align 8
  store i32 %50, i32* %51, align 4
  br label %52

52:                                               ; preds = %48, %45
  %53 = load i32, i32* %13, align 4
  store i32 %53, i32* %6, align 4
  br label %62

54:                                               ; preds = %44
  %55 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %12, align 8
  %56 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %55, i32 0, i32 0
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %13, align 4
  %60 = call i32 @dev_err(i32* %58, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %59)
  %61 = load i32, i32* %13, align 4
  store i32 %61, i32* %6, align 4
  br label %62

62:                                               ; preds = %54, %52
  %63 = load i32, i32* %6, align 4
  ret i32 %63
}

declare dso_local i32 @dvbsky_usb_generic_rw(%struct.dvb_usb_device*, i32*, i32, i32*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
