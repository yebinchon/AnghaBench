; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_rtl28xxu.c_rtl28xxu_pid_filter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_rtl28xxu.c_rtl28xxu_pid_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_adapter = type { i32* }
%struct.rtl28xxu_dev = type { i64, %struct.rtl2832_platform_data, %struct.rtl2830_platform_data }
%struct.rtl2832_platform_data = type { i32 (i32, i32, i32, i32)* }
%struct.rtl2830_platform_data = type { i32 (i32, i32, i32, i32)* }

@CHIP_ID_RTL2831U = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_adapter*, i32, i32, i32)* @rtl28xxu_pid_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl28xxu_pid_filter(%struct.dvb_usb_adapter* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dvb_usb_adapter*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.rtl28xxu_dev*, align 8
  %11 = alloca %struct.rtl2830_platform_data*, align 8
  %12 = alloca %struct.rtl2832_platform_data*, align 8
  store %struct.dvb_usb_adapter* %0, %struct.dvb_usb_adapter** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %6, align 8
  %14 = call %struct.rtl28xxu_dev* @adap_to_priv(%struct.dvb_usb_adapter* %13)
  store %struct.rtl28xxu_dev* %14, %struct.rtl28xxu_dev** %10, align 8
  %15 = load %struct.rtl28xxu_dev*, %struct.rtl28xxu_dev** %10, align 8
  %16 = getelementptr inbounds %struct.rtl28xxu_dev, %struct.rtl28xxu_dev* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @CHIP_ID_RTL2831U, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %35

20:                                               ; preds = %4
  %21 = load %struct.rtl28xxu_dev*, %struct.rtl28xxu_dev** %10, align 8
  %22 = getelementptr inbounds %struct.rtl28xxu_dev, %struct.rtl28xxu_dev* %21, i32 0, i32 2
  store %struct.rtl2830_platform_data* %22, %struct.rtl2830_platform_data** %11, align 8
  %23 = load %struct.rtl2830_platform_data*, %struct.rtl2830_platform_data** %11, align 8
  %24 = getelementptr inbounds %struct.rtl2830_platform_data, %struct.rtl2830_platform_data* %23, i32 0, i32 0
  %25 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** %24, align 8
  %26 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %6, align 8
  %27 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* %9, align 4
  %34 = call i32 %25(i32 %30, i32 %31, i32 %32, i32 %33)
  store i32 %34, i32* %5, align 4
  br label %50

35:                                               ; preds = %4
  %36 = load %struct.rtl28xxu_dev*, %struct.rtl28xxu_dev** %10, align 8
  %37 = getelementptr inbounds %struct.rtl28xxu_dev, %struct.rtl28xxu_dev* %36, i32 0, i32 1
  store %struct.rtl2832_platform_data* %37, %struct.rtl2832_platform_data** %12, align 8
  %38 = load %struct.rtl2832_platform_data*, %struct.rtl2832_platform_data** %12, align 8
  %39 = getelementptr inbounds %struct.rtl2832_platform_data, %struct.rtl2832_platform_data* %38, i32 0, i32 0
  %40 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** %39, align 8
  %41 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %6, align 8
  %42 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* %9, align 4
  %49 = call i32 %40(i32 %45, i32 %46, i32 %47, i32 %48)
  store i32 %49, i32* %5, align 4
  br label %50

50:                                               ; preds = %35, %20
  %51 = load i32, i32* %5, align 4
  ret i32 %51
}

declare dso_local %struct.rtl28xxu_dev* @adap_to_priv(%struct.dvb_usb_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
