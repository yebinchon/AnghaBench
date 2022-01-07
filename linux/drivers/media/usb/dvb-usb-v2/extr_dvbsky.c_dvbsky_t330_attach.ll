; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_dvbsky.c_dvbsky_t330_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_dvbsky.c_dvbsky_t330_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_adapter = type { i32** }
%struct.dvbsky_state = type { i8*, i8* }
%struct.dvb_usb_device = type { %struct.i2c_adapter }
%struct.i2c_adapter = type { i32 }
%struct.si2168_config = type { i32, i32, i32*, i32, %struct.i2c_adapter** }
%struct.si2157_config = type { i32, i32, i32*, i32, %struct.i2c_adapter** }

@SI2168_TS_PARALLEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"si2168\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"si2157\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_adapter*)* @dvbsky_t330_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dvbsky_t330_attach(%struct.dvb_usb_adapter* %0) #0 {
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
  %24 = getelementptr inbounds %struct.si2168_config, %struct.si2168_config* %7, i32 0, i32 0
  store i32 1, i32* %24, align 8
  %25 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %5, align 8
  %26 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %25, i32 0, i32 0
  %27 = call i8* @dvb_module_probe(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32* null, %struct.i2c_adapter* %26, i32 100, %struct.si2168_config* %7)
  %28 = load %struct.dvbsky_state*, %struct.dvbsky_state** %4, align 8
  %29 = getelementptr inbounds %struct.dvbsky_state, %struct.dvbsky_state* %28, i32 0, i32 0
  store i8* %27, i8** %29, align 8
  %30 = load %struct.dvbsky_state*, %struct.dvbsky_state** %4, align 8
  %31 = getelementptr inbounds %struct.dvbsky_state, %struct.dvbsky_state* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %1
  %35 = load i32, i32* @ENODEV, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %62

37:                                               ; preds = %1
  %38 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %39 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %38, i32 0, i32 0
  %40 = load i32**, i32*** %39, align 8
  %41 = getelementptr inbounds i32*, i32** %40, i64 0
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds %struct.si2157_config, %struct.si2157_config* %8, i32 0, i32 2
  store i32* %42, i32** %43, align 8
  %44 = getelementptr inbounds %struct.si2157_config, %struct.si2157_config* %8, i32 0, i32 1
  store i32 1, i32* %44, align 4
  %45 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %46 = bitcast %struct.si2157_config* %8 to %struct.si2168_config*
  %47 = call i8* @dvb_module_probe(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32* null, %struct.i2c_adapter* %45, i32 96, %struct.si2168_config* %46)
  %48 = load %struct.dvbsky_state*, %struct.dvbsky_state** %4, align 8
  %49 = getelementptr inbounds %struct.dvbsky_state, %struct.dvbsky_state* %48, i32 0, i32 1
  store i8* %47, i8** %49, align 8
  %50 = load %struct.dvbsky_state*, %struct.dvbsky_state** %4, align 8
  %51 = getelementptr inbounds %struct.dvbsky_state, %struct.dvbsky_state* %50, i32 0, i32 1
  %52 = load i8*, i8** %51, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %61, label %54

54:                                               ; preds = %37
  %55 = load %struct.dvbsky_state*, %struct.dvbsky_state** %4, align 8
  %56 = getelementptr inbounds %struct.dvbsky_state, %struct.dvbsky_state* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  %58 = call i32 @dvb_module_release(i8* %57)
  %59 = load i32, i32* @ENODEV, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %2, align 4
  br label %62

61:                                               ; preds = %37
  store i32 0, i32* %2, align 4
  br label %62

62:                                               ; preds = %61, %54, %34
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local %struct.dvbsky_state* @adap_to_priv(%struct.dvb_usb_adapter*) #1

declare dso_local %struct.dvb_usb_device* @adap_to_d(%struct.dvb_usb_adapter*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i8* @dvb_module_probe(i8*, i32*, %struct.i2c_adapter*, i32, %struct.si2168_config*) #1

declare dso_local i32 @dvb_module_release(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
