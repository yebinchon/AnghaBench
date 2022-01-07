; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_rtl28xxu.c_rtl28xxu_frontend_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_rtl28xxu.c_rtl28xxu_frontend_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { i32 }
%struct.dvb_usb_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.rtl28xxu_dev = type { i64, i32, %struct.rtl2832_platform_data }
%struct.rtl2832_platform_data = type { i32 (i32, i32)* }

@.str = private unnamed_addr constant [16 x i8] c"fe=%d onoff=%d\0A\00", align 1
@CHIP_ID_RTL2831U = common dso_local global i64 0, align 8
@SYS_DEMOD_CTL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"failed=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32)* @rtl28xxu_frontend_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl28xxu_frontend_ctrl(%struct.dvb_frontend* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dvb_usb_device*, align 8
  %7 = alloca %struct.rtl28xxu_dev*, align 8
  %8 = alloca %struct.rtl2832_platform_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %12 = call %struct.dvb_usb_device* @fe_to_d(%struct.dvb_frontend* %11)
  store %struct.dvb_usb_device* %12, %struct.dvb_usb_device** %6, align 8
  %13 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %14 = call %struct.rtl28xxu_dev* @fe_to_priv(%struct.dvb_frontend* %13)
  store %struct.rtl28xxu_dev* %14, %struct.rtl28xxu_dev** %7, align 8
  %15 = load %struct.rtl28xxu_dev*, %struct.rtl28xxu_dev** %7, align 8
  %16 = getelementptr inbounds %struct.rtl28xxu_dev, %struct.rtl28xxu_dev* %15, i32 0, i32 2
  store %struct.rtl2832_platform_data* %16, %struct.rtl2832_platform_data** %8, align 8
  %17 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %6, align 8
  %18 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %22 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %5, align 4
  %25 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %20, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %24)
  %26 = load %struct.rtl28xxu_dev*, %struct.rtl28xxu_dev** %7, align 8
  %27 = getelementptr inbounds %struct.rtl28xxu_dev, %struct.rtl28xxu_dev* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @CHIP_ID_RTL2831U, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %79

32:                                               ; preds = %2
  %33 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %34 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %51

37:                                               ; preds = %32
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  store i32 72, i32* %10, align 4
  br label %42

41:                                               ; preds = %37
  store i32 0, i32* %10, align 4
  br label %42

42:                                               ; preds = %41, %40
  %43 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %6, align 8
  %44 = load i32, i32* @SYS_DEMOD_CTL, align 4
  %45 = load i32, i32* %10, align 4
  %46 = call i32 @rtl28xxu_wr_reg_mask(%struct.dvb_usb_device* %43, i32 %44, i32 %45, i32 72)
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %9, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %42
  br label %71

50:                                               ; preds = %42
  br label %70

51:                                               ; preds = %32
  %52 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %53 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp eq i32 %54, 1
  br i1 %55, label %56, label %69

56:                                               ; preds = %51
  %57 = load %struct.rtl2832_platform_data*, %struct.rtl2832_platform_data** %8, align 8
  %58 = getelementptr inbounds %struct.rtl2832_platform_data, %struct.rtl2832_platform_data* %57, i32 0, i32 0
  %59 = load i32 (i32, i32)*, i32 (i32, i32)** %58, align 8
  %60 = load %struct.rtl28xxu_dev*, %struct.rtl28xxu_dev** %7, align 8
  %61 = getelementptr inbounds %struct.rtl28xxu_dev, %struct.rtl28xxu_dev* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* %5, align 4
  %64 = call i32 %59(i32 %62, i32 %63)
  store i32 %64, i32* %9, align 4
  %65 = load i32, i32* %9, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %56
  br label %71

68:                                               ; preds = %56
  br label %69

69:                                               ; preds = %68, %51
  br label %70

70:                                               ; preds = %69, %50
  store i32 0, i32* %3, align 4
  br label %79

71:                                               ; preds = %67, %49
  %72 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %6, align 8
  %73 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %72, i32 0, i32 0
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i32, i32* %9, align 4
  %77 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %75, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %76)
  %78 = load i32, i32* %9, align 4
  store i32 %78, i32* %3, align 4
  br label %79

79:                                               ; preds = %71, %70, %31
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local %struct.dvb_usb_device* @fe_to_d(%struct.dvb_frontend*) #1

declare dso_local %struct.rtl28xxu_dev* @fe_to_priv(%struct.dvb_frontend*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, ...) #1

declare dso_local i32 @rtl28xxu_wr_reg_mask(%struct.dvb_usb_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
