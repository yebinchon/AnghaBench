; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_rtl28xxu.c_rtl28xxu_pid_filter_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_rtl28xxu.c_rtl28xxu_pid_filter_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_adapter = type { i32* }
%struct.rtl28xxu_dev = type { i64, %struct.rtl2832_platform_data, %struct.rtl2830_platform_data }
%struct.rtl2832_platform_data = type { i32 (i32, i32)* }
%struct.rtl2830_platform_data = type { i32 (i32, i32)* }

@CHIP_ID_RTL2831U = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_adapter*, i32)* @rtl28xxu_pid_filter_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl28xxu_pid_filter_ctrl(%struct.dvb_usb_adapter* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_usb_adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.rtl28xxu_dev*, align 8
  %7 = alloca %struct.rtl2830_platform_data*, align 8
  %8 = alloca %struct.rtl2832_platform_data*, align 8
  store %struct.dvb_usb_adapter* %0, %struct.dvb_usb_adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %4, align 8
  %10 = call %struct.rtl28xxu_dev* @adap_to_priv(%struct.dvb_usb_adapter* %9)
  store %struct.rtl28xxu_dev* %10, %struct.rtl28xxu_dev** %6, align 8
  %11 = load %struct.rtl28xxu_dev*, %struct.rtl28xxu_dev** %6, align 8
  %12 = getelementptr inbounds %struct.rtl28xxu_dev, %struct.rtl28xxu_dev* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @CHIP_ID_RTL2831U, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %29

16:                                               ; preds = %2
  %17 = load %struct.rtl28xxu_dev*, %struct.rtl28xxu_dev** %6, align 8
  %18 = getelementptr inbounds %struct.rtl28xxu_dev, %struct.rtl28xxu_dev* %17, i32 0, i32 2
  store %struct.rtl2830_platform_data* %18, %struct.rtl2830_platform_data** %7, align 8
  %19 = load %struct.rtl2830_platform_data*, %struct.rtl2830_platform_data** %7, align 8
  %20 = getelementptr inbounds %struct.rtl2830_platform_data, %struct.rtl2830_platform_data* %19, i32 0, i32 0
  %21 = load i32 (i32, i32)*, i32 (i32, i32)** %20, align 8
  %22 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %4, align 8
  %23 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %5, align 4
  %28 = call i32 %21(i32 %26, i32 %27)
  store i32 %28, i32* %3, align 4
  br label %42

29:                                               ; preds = %2
  %30 = load %struct.rtl28xxu_dev*, %struct.rtl28xxu_dev** %6, align 8
  %31 = getelementptr inbounds %struct.rtl28xxu_dev, %struct.rtl28xxu_dev* %30, i32 0, i32 1
  store %struct.rtl2832_platform_data* %31, %struct.rtl2832_platform_data** %8, align 8
  %32 = load %struct.rtl2832_platform_data*, %struct.rtl2832_platform_data** %8, align 8
  %33 = getelementptr inbounds %struct.rtl2832_platform_data, %struct.rtl2832_platform_data* %32, i32 0, i32 0
  %34 = load i32 (i32, i32)*, i32 (i32, i32)** %33, align 8
  %35 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %4, align 8
  %36 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %5, align 4
  %41 = call i32 %34(i32 %39, i32 %40)
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %29, %16
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local %struct.rtl28xxu_dev* @adap_to_priv(%struct.dvb_usb_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
