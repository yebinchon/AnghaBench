; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_rtl28xxu.c_rtl2831u_frontend_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_rtl28xxu.c_rtl2831u_frontend_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl2830_platform_data = type { i32 (%struct.i2c_client.0*)*, i32 (%struct.i2c_client.1*)* }
%struct.i2c_client.0 = type opaque
%struct.i2c_client.1 = type opaque
%struct.dvb_usb_adapter = type { i32* }
%struct.dvb_usb_device = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.rtl28xxu_dev = type { i32, %struct.i2c_client*, i32, i32, %struct.rtl2830_platform_data }
%struct.i2c_client = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.i2c_board_info = type { i32, i32, %struct.rtl2830_platform_data* }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@rtl2830_qt1010_platform_data = common dso_local global %struct.rtl2830_platform_data zeroinitializer, align 8
@rtl2830_mt2060_platform_data = common dso_local global %struct.rtl2830_platform_data zeroinitializer, align 8
@rtl2830_mxl5005s_platform_data = common dso_local global %struct.rtl2830_platform_data zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"unknown tuner %s\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"rtl2830\00", align 1
@I2C_NAME_SIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"failed=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_adapter*)* @rtl2831u_frontend_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl2831u_frontend_attach(%struct.dvb_usb_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_usb_adapter*, align 8
  %4 = alloca %struct.dvb_usb_device*, align 8
  %5 = alloca %struct.rtl28xxu_dev*, align 8
  %6 = alloca %struct.rtl2830_platform_data*, align 8
  %7 = alloca %struct.i2c_board_info, align 8
  %8 = alloca %struct.i2c_client*, align 8
  %9 = alloca i32, align 4
  store %struct.dvb_usb_adapter* %0, %struct.dvb_usb_adapter** %3, align 8
  %10 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %11 = call %struct.dvb_usb_device* @adap_to_d(%struct.dvb_usb_adapter* %10)
  store %struct.dvb_usb_device* %11, %struct.dvb_usb_device** %4, align 8
  %12 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %13 = call %struct.rtl28xxu_dev* @d_to_priv(%struct.dvb_usb_device* %12)
  store %struct.rtl28xxu_dev* %13, %struct.rtl28xxu_dev** %5, align 8
  %14 = load %struct.rtl28xxu_dev*, %struct.rtl28xxu_dev** %5, align 8
  %15 = getelementptr inbounds %struct.rtl28xxu_dev, %struct.rtl28xxu_dev* %14, i32 0, i32 4
  store %struct.rtl2830_platform_data* %15, %struct.rtl2830_platform_data** %6, align 8
  %16 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %17 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %16, i32 0, i32 0
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %19, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.rtl28xxu_dev*, %struct.rtl28xxu_dev** %5, align 8
  %22 = getelementptr inbounds %struct.rtl28xxu_dev, %struct.rtl28xxu_dev* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  switch i32 %23, label %33 [
    i32 128, label %24
    i32 130, label %27
    i32 129, label %30
  ]

24:                                               ; preds = %1
  %25 = load %struct.rtl2830_platform_data*, %struct.rtl2830_platform_data** %6, align 8
  %26 = bitcast %struct.rtl2830_platform_data* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %26, i8* align 8 bitcast (%struct.rtl2830_platform_data* @rtl2830_qt1010_platform_data to i8*), i64 16, i1 false)
  br label %44

27:                                               ; preds = %1
  %28 = load %struct.rtl2830_platform_data*, %struct.rtl2830_platform_data** %6, align 8
  %29 = bitcast %struct.rtl2830_platform_data* %28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %29, i8* align 8 bitcast (%struct.rtl2830_platform_data* @rtl2830_mt2060_platform_data to i8*), i64 16, i1 false)
  br label %44

30:                                               ; preds = %1
  %31 = load %struct.rtl2830_platform_data*, %struct.rtl2830_platform_data** %6, align 8
  %32 = bitcast %struct.rtl2830_platform_data* %31 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %32, i8* align 8 bitcast (%struct.rtl2830_platform_data* @rtl2830_mxl5005s_platform_data to i8*), i64 16, i1 false)
  br label %44

33:                                               ; preds = %1
  %34 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %35 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %34, i32 0, i32 0
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load %struct.rtl28xxu_dev*, %struct.rtl28xxu_dev** %5, align 8
  %39 = getelementptr inbounds %struct.rtl28xxu_dev, %struct.rtl28xxu_dev* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @dev_err(i32* %37, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* @ENODEV, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %9, align 4
  br label %106

44:                                               ; preds = %30, %27, %24
  %45 = call i32 @memset(%struct.i2c_board_info* %7, i32 0, i32 16)
  %46 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %7, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @I2C_NAME_SIZE, align 4
  %49 = call i32 @strscpy(i32 %47, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %48)
  %50 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %7, i32 0, i32 0
  store i32 16, i32* %50, align 8
  %51 = load %struct.rtl2830_platform_data*, %struct.rtl2830_platform_data** %6, align 8
  %52 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %7, i32 0, i32 2
  store %struct.rtl2830_platform_data* %51, %struct.rtl2830_platform_data** %52, align 8
  %53 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %7, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @request_module(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %54)
  %56 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %57 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %56, i32 0, i32 1
  %58 = call %struct.i2c_client* @i2c_new_device(i32* %57, %struct.i2c_board_info* %7)
  store %struct.i2c_client* %58, %struct.i2c_client** %8, align 8
  %59 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %60 = icmp eq %struct.i2c_client* %59, null
  br i1 %60, label %67, label %61

61:                                               ; preds = %44
  %62 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %63 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = icmp eq %struct.TYPE_4__* %65, null
  br i1 %66, label %67, label %70

67:                                               ; preds = %61, %44
  %68 = load i32, i32* @ENODEV, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %9, align 4
  br label %106

70:                                               ; preds = %61
  %71 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %72 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @try_module_get(i32 %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %84, label %79

79:                                               ; preds = %70
  %80 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %81 = call i32 @i2c_unregister_device(%struct.i2c_client* %80)
  %82 = load i32, i32* @ENODEV, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %9, align 4
  br label %106

84:                                               ; preds = %70
  %85 = load %struct.rtl2830_platform_data*, %struct.rtl2830_platform_data** %6, align 8
  %86 = getelementptr inbounds %struct.rtl2830_platform_data, %struct.rtl2830_platform_data* %85, i32 0, i32 1
  %87 = load i32 (%struct.i2c_client.1*)*, i32 (%struct.i2c_client.1*)** %86, align 8
  %88 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %89 = bitcast %struct.i2c_client* %88 to %struct.i2c_client.1*
  %90 = call i32 %87(%struct.i2c_client.1* %89)
  %91 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %92 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 0
  store i32 %90, i32* %94, align 4
  %95 = load %struct.rtl2830_platform_data*, %struct.rtl2830_platform_data** %6, align 8
  %96 = getelementptr inbounds %struct.rtl2830_platform_data, %struct.rtl2830_platform_data* %95, i32 0, i32 0
  %97 = load i32 (%struct.i2c_client.0*)*, i32 (%struct.i2c_client.0*)** %96, align 8
  %98 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %99 = bitcast %struct.i2c_client* %98 to %struct.i2c_client.0*
  %100 = call i32 %97(%struct.i2c_client.0* %99)
  %101 = load %struct.rtl28xxu_dev*, %struct.rtl28xxu_dev** %5, align 8
  %102 = getelementptr inbounds %struct.rtl28xxu_dev, %struct.rtl28xxu_dev* %101, i32 0, i32 2
  store i32 %100, i32* %102, align 8
  %103 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %104 = load %struct.rtl28xxu_dev*, %struct.rtl28xxu_dev** %5, align 8
  %105 = getelementptr inbounds %struct.rtl28xxu_dev, %struct.rtl28xxu_dev* %104, i32 0, i32 1
  store %struct.i2c_client* %103, %struct.i2c_client** %105, align 8
  store i32 0, i32* %2, align 4
  br label %114

106:                                              ; preds = %79, %67, %33
  %107 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %108 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %107, i32 0, i32 0
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 0
  %111 = load i32, i32* %9, align 4
  %112 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %110, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 %111)
  %113 = load i32, i32* %9, align 4
  store i32 %113, i32* %2, align 4
  br label %114

114:                                              ; preds = %106, %84
  %115 = load i32, i32* %2, align 4
  ret i32 %115
}

declare dso_local %struct.dvb_usb_device* @adap_to_d(%struct.dvb_usb_adapter*) #1

declare dso_local %struct.rtl28xxu_dev* @d_to_priv(%struct.dvb_usb_device*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @memset(%struct.i2c_board_info*, i32, i32) #1

declare dso_local i32 @strscpy(i32, i8*, i32) #1

declare dso_local i32 @request_module(i8*, i32) #1

declare dso_local %struct.i2c_client* @i2c_new_device(i32*, %struct.i2c_board_info*) #1

declare dso_local i32 @try_module_get(i32) #1

declare dso_local i32 @i2c_unregister_device(%struct.i2c_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
