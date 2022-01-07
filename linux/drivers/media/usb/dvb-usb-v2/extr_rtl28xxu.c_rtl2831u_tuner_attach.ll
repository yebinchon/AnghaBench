; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_rtl28xxu.c_rtl2831u_tuner_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_rtl28xxu.c_rtl2831u_tuner_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_adapter = type { i32* }
%struct.dvb_usb_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.rtl28xxu_dev = type { i32, i32 }
%struct.dvb_frontend = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@qt1010_attach = common dso_local global i32 0, align 4
@rtl28xxu_qt1010_config = common dso_local global i32 0, align 4
@mt2060_attach = common dso_local global i32 0, align 4
@rtl28xxu_mt2060_config = common dso_local global i32 0, align 4
@mxl5005s_attach = common dso_local global i32 0, align 4
@rtl28xxu_mxl5005s_config = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"unknown tuner %d\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"failed=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_adapter*)* @rtl2831u_tuner_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl2831u_tuner_attach(%struct.dvb_usb_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_usb_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dvb_usb_device*, align 8
  %6 = alloca %struct.rtl28xxu_dev*, align 8
  %7 = alloca %struct.dvb_frontend*, align 8
  store %struct.dvb_usb_adapter* %0, %struct.dvb_usb_adapter** %3, align 8
  %8 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %9 = call %struct.dvb_usb_device* @adap_to_d(%struct.dvb_usb_adapter* %8)
  store %struct.dvb_usb_device* %9, %struct.dvb_usb_device** %5, align 8
  %10 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %5, align 8
  %11 = call %struct.rtl28xxu_dev* @d_to_priv(%struct.dvb_usb_device* %10)
  store %struct.rtl28xxu_dev* %11, %struct.rtl28xxu_dev** %6, align 8
  %12 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %5, align 8
  %13 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.rtl28xxu_dev*, %struct.rtl28xxu_dev** %6, align 8
  %18 = getelementptr inbounds %struct.rtl28xxu_dev, %struct.rtl28xxu_dev* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %53 [
    i32 128, label %20
    i32 130, label %31
    i32 129, label %42
  ]

20:                                               ; preds = %1
  %21 = load i32, i32* @qt1010_attach, align 4
  %22 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %23 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.rtl28xxu_dev*, %struct.rtl28xxu_dev** %6, align 8
  %28 = getelementptr inbounds %struct.rtl28xxu_dev, %struct.rtl28xxu_dev* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call %struct.dvb_frontend* (i32, i32, i32, i32*, ...) @dvb_attach(i32 %21, i32 %26, i32 %29, i32* @rtl28xxu_qt1010_config)
  store %struct.dvb_frontend* %30, %struct.dvb_frontend** %7, align 8
  br label %62

31:                                               ; preds = %1
  %32 = load i32, i32* @mt2060_attach, align 4
  %33 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %34 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.rtl28xxu_dev*, %struct.rtl28xxu_dev** %6, align 8
  %39 = getelementptr inbounds %struct.rtl28xxu_dev, %struct.rtl28xxu_dev* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call %struct.dvb_frontend* (i32, i32, i32, i32*, ...) @dvb_attach(i32 %32, i32 %37, i32 %40, i32* @rtl28xxu_mt2060_config, i32 1220)
  store %struct.dvb_frontend* %41, %struct.dvb_frontend** %7, align 8
  br label %62

42:                                               ; preds = %1
  %43 = load i32, i32* @mxl5005s_attach, align 4
  %44 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %45 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.rtl28xxu_dev*, %struct.rtl28xxu_dev** %6, align 8
  %50 = getelementptr inbounds %struct.rtl28xxu_dev, %struct.rtl28xxu_dev* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call %struct.dvb_frontend* (i32, i32, i32, i32*, ...) @dvb_attach(i32 %43, i32 %48, i32 %51, i32* @rtl28xxu_mxl5005s_config)
  store %struct.dvb_frontend* %52, %struct.dvb_frontend** %7, align 8
  br label %62

53:                                               ; preds = %1
  store %struct.dvb_frontend* null, %struct.dvb_frontend** %7, align 8
  %54 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %5, align 8
  %55 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %54, i32 0, i32 0
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load %struct.rtl28xxu_dev*, %struct.rtl28xxu_dev** %6, align 8
  %59 = getelementptr inbounds %struct.rtl28xxu_dev, %struct.rtl28xxu_dev* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @dev_err(i32* %57, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %60)
  br label %62

62:                                               ; preds = %53, %42, %31, %20
  %63 = load %struct.dvb_frontend*, %struct.dvb_frontend** %7, align 8
  %64 = icmp eq %struct.dvb_frontend* %63, null
  br i1 %64, label %65, label %68

65:                                               ; preds = %62
  %66 = load i32, i32* @ENODEV, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %4, align 4
  br label %69

68:                                               ; preds = %62
  store i32 0, i32* %2, align 4
  br label %77

69:                                               ; preds = %65
  %70 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %5, align 8
  %71 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %70, i32 0, i32 0
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i32, i32* %4, align 4
  %75 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %73, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %74)
  %76 = load i32, i32* %4, align 4
  store i32 %76, i32* %2, align 4
  br label %77

77:                                               ; preds = %69, %68
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local %struct.dvb_usb_device* @adap_to_d(%struct.dvb_usb_adapter*) #1

declare dso_local %struct.rtl28xxu_dev* @d_to_priv(%struct.dvb_usb_device*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local %struct.dvb_frontend* @dvb_attach(i32, i32, i32, i32*, ...) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
