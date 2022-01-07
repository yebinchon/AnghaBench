; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_dvbsky.c_dvbsky_mygica_t230c_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_dvbsky.c_dvbsky_mygica_t230c_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_adapter = type { i32** }
%struct.dvbsky_state = type { i8*, i8* }
%struct.dvb_usb_device = type { %struct.TYPE_4__*, %struct.i2c_adapter }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.i2c_adapter = type { i32 }
%struct.si2168_config = type { i32, i32, i32*, i32, %struct.i2c_adapter** }
%struct.si2157_config = type { i32, i32, i32*, i32, %struct.i2c_adapter** }

@SI2168_TS_PARALLEL = common dso_local global i32 0, align 4
@USB_PID_MYGICA_T230C2 = common dso_local global i64 0, align 8
@SI2168_TS_CLK_MANUAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"si2168\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@USB_PID_MYGICA_T230 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"si2157\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"si2141\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_adapter*)* @dvbsky_mygica_t230c_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dvbsky_mygica_t230c_attach(%struct.dvb_usb_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_usb_adapter*, align 8
  %4 = alloca %struct.dvbsky_state*, align 8
  %5 = alloca %struct.dvb_usb_device*, align 8
  %6 = alloca %struct.i2c_adapter*, align 8
  %7 = alloca %struct.si2168_config, align 8
  %8 = alloca %struct.si2157_config, align 8
  store %struct.dvb_usb_adapter* %0, %struct.dvb_usb_adapter** %3, align 8
  %9 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %10 = call %struct.dvbsky_state* @adap_to_priv(%struct.dvb_usb_adapter* %9)
  store %struct.dvbsky_state* %10, %struct.dvbsky_state** %4, align 8
  %11 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %12 = call %struct.dvb_usb_device* @adap_to_d(%struct.dvb_usb_adapter* %11)
  store %struct.dvb_usb_device* %12, %struct.dvb_usb_device** %5, align 8
  %13 = bitcast %struct.si2168_config* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %13, i8 0, i64 32, i1 false)
  %14 = bitcast %struct.si2157_config* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %14, i8 0, i64 32, i1 false)
  %15 = getelementptr inbounds %struct.si2168_config, %struct.si2168_config* %7, i32 0, i32 4
  store %struct.i2c_adapter** %6, %struct.i2c_adapter*** %15, align 8
  %16 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %17 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %16, i32 0, i32 0
  %18 = load i32**, i32*** %17, align 8
  %19 = getelementptr inbounds i32*, i32** %18, i64 0
  %20 = bitcast i32** %19 to i32*
  %21 = getelementptr inbounds %struct.si2168_config, %struct.si2168_config* %7, i32 0, i32 2
  store i32* %20, i32** %21, align 8
  %22 = load i32, i32* @SI2168_TS_PARALLEL, align 4
  %23 = getelementptr inbounds %struct.si2168_config, %struct.si2168_config* %7, i32 0, i32 3
  store i32 %22, i32* %23, align 8
  %24 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %5, align 8
  %25 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @le16_to_cpu(i32 %29)
  %31 = load i64, i64* @USB_PID_MYGICA_T230C2, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %1
  %34 = load i32, i32* @SI2168_TS_CLK_MANUAL, align 4
  %35 = getelementptr inbounds %struct.si2168_config, %struct.si2168_config* %7, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = or i32 %36, %34
  store i32 %37, i32* %35, align 8
  br label %38

38:                                               ; preds = %33, %1
  %39 = getelementptr inbounds %struct.si2168_config, %struct.si2168_config* %7, i32 0, i32 0
  store i32 1, i32* %39, align 8
  %40 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %5, align 8
  %41 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %40, i32 0, i32 1
  %42 = call i8* @dvb_module_probe(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* null, %struct.i2c_adapter* %41, i32 100, %struct.si2168_config* %7)
  %43 = load %struct.dvbsky_state*, %struct.dvbsky_state** %4, align 8
  %44 = getelementptr inbounds %struct.dvbsky_state, %struct.dvbsky_state* %43, i32 0, i32 0
  store i8* %42, i8** %44, align 8
  %45 = load %struct.dvbsky_state*, %struct.dvbsky_state** %4, align 8
  %46 = getelementptr inbounds %struct.dvbsky_state, %struct.dvbsky_state* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %38
  %50 = load i32, i32* @ENODEV, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %2, align 4
  br label %95

52:                                               ; preds = %38
  %53 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %54 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %53, i32 0, i32 0
  %55 = load i32**, i32*** %54, align 8
  %56 = getelementptr inbounds i32*, i32** %55, i64 0
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds %struct.si2157_config, %struct.si2157_config* %8, i32 0, i32 2
  store i32* %57, i32** %58, align 8
  %59 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %5, align 8
  %60 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %59, i32 0, i32 0
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i64 @le16_to_cpu(i32 %64)
  %66 = load i64, i64* @USB_PID_MYGICA_T230, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %75

68:                                               ; preds = %52
  %69 = getelementptr inbounds %struct.si2157_config, %struct.si2157_config* %8, i32 0, i32 1
  store i32 1, i32* %69, align 4
  %70 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %71 = bitcast %struct.si2157_config* %8 to %struct.si2168_config*
  %72 = call i8* @dvb_module_probe(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* null, %struct.i2c_adapter* %70, i32 96, %struct.si2168_config* %71)
  %73 = load %struct.dvbsky_state*, %struct.dvbsky_state** %4, align 8
  %74 = getelementptr inbounds %struct.dvbsky_state, %struct.dvbsky_state* %73, i32 0, i32 1
  store i8* %72, i8** %74, align 8
  br label %82

75:                                               ; preds = %52
  %76 = getelementptr inbounds %struct.si2157_config, %struct.si2157_config* %8, i32 0, i32 1
  store i32 0, i32* %76, align 4
  %77 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %78 = bitcast %struct.si2157_config* %8 to %struct.si2168_config*
  %79 = call i8* @dvb_module_probe(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), %struct.i2c_adapter* %77, i32 96, %struct.si2168_config* %78)
  %80 = load %struct.dvbsky_state*, %struct.dvbsky_state** %4, align 8
  %81 = getelementptr inbounds %struct.dvbsky_state, %struct.dvbsky_state* %80, i32 0, i32 1
  store i8* %79, i8** %81, align 8
  br label %82

82:                                               ; preds = %75, %68
  %83 = load %struct.dvbsky_state*, %struct.dvbsky_state** %4, align 8
  %84 = getelementptr inbounds %struct.dvbsky_state, %struct.dvbsky_state* %83, i32 0, i32 1
  %85 = load i8*, i8** %84, align 8
  %86 = icmp ne i8* %85, null
  br i1 %86, label %94, label %87

87:                                               ; preds = %82
  %88 = load %struct.dvbsky_state*, %struct.dvbsky_state** %4, align 8
  %89 = getelementptr inbounds %struct.dvbsky_state, %struct.dvbsky_state* %88, i32 0, i32 0
  %90 = load i8*, i8** %89, align 8
  %91 = call i32 @dvb_module_release(i8* %90)
  %92 = load i32, i32* @ENODEV, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %2, align 4
  br label %95

94:                                               ; preds = %82
  store i32 0, i32* %2, align 4
  br label %95

95:                                               ; preds = %94, %87, %49
  %96 = load i32, i32* %2, align 4
  ret i32 %96
}

declare dso_local %struct.dvbsky_state* @adap_to_priv(%struct.dvb_usb_adapter*) #1

declare dso_local %struct.dvb_usb_device* @adap_to_d(%struct.dvb_usb_adapter*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i8* @dvb_module_probe(i8*, i8*, %struct.i2c_adapter*, i32, %struct.si2168_config*) #1

declare dso_local i32 @dvb_module_release(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
