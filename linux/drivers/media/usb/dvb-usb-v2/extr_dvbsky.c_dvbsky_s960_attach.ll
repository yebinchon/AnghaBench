; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_dvbsky.c_dvbsky_s960_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_dvbsky.c_dvbsky_s960_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_adapter = type { %struct.TYPE_6__** }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.dvbsky_state = type { i32, i32, i8*, i8* }
%struct.dvb_usb_device = type { %struct.i2c_adapter }
%struct.i2c_adapter = type { i32 }
%struct.m88ds3103_platform_data = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_6__*, %struct.i2c_adapter* (i8*)*, %struct.TYPE_6__* (i8*)*, i64, i32, i64 }
%struct.ts2020_config = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_6__*, %struct.i2c_adapter* (i8*)*, %struct.TYPE_6__* (i8*)*, i64, i32, i64 }

@M88DS3103_TS_CI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"m88ds3103\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@m88ds3103_get_agc_pwm = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"ts2020\00", align 1
@dvbsky_usb_read_status = common dso_local global i32 0, align 4
@dvbsky_usb_set_voltage = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_adapter*)* @dvbsky_s960_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dvbsky_s960_attach(%struct.dvb_usb_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_usb_adapter*, align 8
  %4 = alloca %struct.dvbsky_state*, align 8
  %5 = alloca %struct.dvb_usb_device*, align 8
  %6 = alloca %struct.i2c_adapter*, align 8
  %7 = alloca %struct.m88ds3103_platform_data, align 8
  %8 = alloca %struct.ts2020_config, align 8
  store %struct.dvb_usb_adapter* %0, %struct.dvb_usb_adapter** %3, align 8
  %9 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %10 = call %struct.dvbsky_state* @adap_to_priv(%struct.dvb_usb_adapter* %9)
  store %struct.dvbsky_state* %10, %struct.dvbsky_state** %4, align 8
  %11 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %12 = call %struct.dvb_usb_device* @adap_to_d(%struct.dvb_usb_adapter* %11)
  store %struct.dvb_usb_device* %12, %struct.dvb_usb_device** %5, align 8
  %13 = bitcast %struct.m88ds3103_platform_data* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %13, i8 0, i64 80, i1 false)
  %14 = bitcast %struct.ts2020_config* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %14, i8 0, i64 80, i1 false)
  %15 = getelementptr inbounds %struct.m88ds3103_platform_data, %struct.m88ds3103_platform_data* %7, i32 0, i32 0
  store i32 27000000, i32* %15, align 8
  %16 = getelementptr inbounds %struct.m88ds3103_platform_data, %struct.m88ds3103_platform_data* %7, i32 0, i32 1
  store i32 33, i32* %16, align 4
  %17 = getelementptr inbounds %struct.m88ds3103_platform_data, %struct.m88ds3103_platform_data* %7, i32 0, i32 12
  store i64 0, i64* %17, align 8
  %18 = load i32, i32* @M88DS3103_TS_CI, align 4
  %19 = getelementptr inbounds %struct.m88ds3103_platform_data, %struct.m88ds3103_platform_data* %7, i32 0, i32 11
  store i32 %18, i32* %19, align 8
  %20 = getelementptr inbounds %struct.m88ds3103_platform_data, %struct.m88ds3103_platform_data* %7, i32 0, i32 2
  store i32 16000, i32* %20, align 8
  %21 = getelementptr inbounds %struct.m88ds3103_platform_data, %struct.m88ds3103_platform_data* %7, i32 0, i32 10
  store i64 0, i64* %21, align 8
  %22 = getelementptr inbounds %struct.m88ds3103_platform_data, %struct.m88ds3103_platform_data* %7, i32 0, i32 3
  store i32 153, i32* %22, align 4
  %23 = getelementptr inbounds %struct.m88ds3103_platform_data, %struct.m88ds3103_platform_data* %7, i32 0, i32 4
  store i32 1, i32* %23, align 8
  %24 = getelementptr inbounds %struct.m88ds3103_platform_data, %struct.m88ds3103_platform_data* %7, i32 0, i32 5
  store i32 1, i32* %24, align 4
  %25 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %5, align 8
  %26 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %25, i32 0, i32 0
  %27 = bitcast %struct.m88ds3103_platform_data* %7 to %struct.ts2020_config*
  %28 = call i8* @dvb_module_probe(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32* null, %struct.i2c_adapter* %26, i32 104, %struct.ts2020_config* %27)
  %29 = load %struct.dvbsky_state*, %struct.dvbsky_state** %4, align 8
  %30 = getelementptr inbounds %struct.dvbsky_state, %struct.dvbsky_state* %29, i32 0, i32 2
  store i8* %28, i8** %30, align 8
  %31 = load %struct.dvbsky_state*, %struct.dvbsky_state** %4, align 8
  %32 = getelementptr inbounds %struct.dvbsky_state, %struct.dvbsky_state* %31, i32 0, i32 2
  %33 = load i8*, i8** %32, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %1
  %36 = load i32, i32* @ENODEV, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %131

38:                                               ; preds = %1
  %39 = getelementptr inbounds %struct.m88ds3103_platform_data, %struct.m88ds3103_platform_data* %7, i32 0, i32 9
  %40 = load %struct.TYPE_6__* (i8*)*, %struct.TYPE_6__* (i8*)** %39, align 8
  %41 = load %struct.dvbsky_state*, %struct.dvbsky_state** %4, align 8
  %42 = getelementptr inbounds %struct.dvbsky_state, %struct.dvbsky_state* %41, i32 0, i32 2
  %43 = load i8*, i8** %42, align 8
  %44 = call %struct.TYPE_6__* %40(i8* %43)
  %45 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %46 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %45, i32 0, i32 0
  %47 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %47, i64 0
  store %struct.TYPE_6__* %44, %struct.TYPE_6__** %48, align 8
  %49 = getelementptr inbounds %struct.m88ds3103_platform_data, %struct.m88ds3103_platform_data* %7, i32 0, i32 8
  %50 = load %struct.i2c_adapter* (i8*)*, %struct.i2c_adapter* (i8*)** %49, align 8
  %51 = load %struct.dvbsky_state*, %struct.dvbsky_state** %4, align 8
  %52 = getelementptr inbounds %struct.dvbsky_state, %struct.dvbsky_state* %51, i32 0, i32 2
  %53 = load i8*, i8** %52, align 8
  %54 = call %struct.i2c_adapter* %50(i8* %53)
  store %struct.i2c_adapter* %54, %struct.i2c_adapter** %6, align 8
  %55 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %56 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %55, i32 0, i32 0
  %57 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %57, i64 0
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %58, align 8
  %60 = getelementptr inbounds %struct.ts2020_config, %struct.ts2020_config* %8, i32 0, i32 7
  store %struct.TYPE_6__* %59, %struct.TYPE_6__** %60, align 8
  %61 = load i32, i32* @m88ds3103_get_agc_pwm, align 4
  %62 = getelementptr inbounds %struct.ts2020_config, %struct.ts2020_config* %8, i32 0, i32 6
  store i32 %61, i32* %62, align 8
  %63 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %64 = call i8* @dvb_module_probe(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32* null, %struct.i2c_adapter* %63, i32 96, %struct.ts2020_config* %8)
  %65 = load %struct.dvbsky_state*, %struct.dvbsky_state** %4, align 8
  %66 = getelementptr inbounds %struct.dvbsky_state, %struct.dvbsky_state* %65, i32 0, i32 3
  store i8* %64, i8** %66, align 8
  %67 = load %struct.dvbsky_state*, %struct.dvbsky_state** %4, align 8
  %68 = getelementptr inbounds %struct.dvbsky_state, %struct.dvbsky_state* %67, i32 0, i32 3
  %69 = load i8*, i8** %68, align 8
  %70 = icmp ne i8* %69, null
  br i1 %70, label %78, label %71

71:                                               ; preds = %38
  %72 = load %struct.dvbsky_state*, %struct.dvbsky_state** %4, align 8
  %73 = getelementptr inbounds %struct.dvbsky_state, %struct.dvbsky_state* %72, i32 0, i32 2
  %74 = load i8*, i8** %73, align 8
  %75 = call i32 @dvb_module_release(i8* %74)
  %76 = load i32, i32* @ENODEV, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %2, align 4
  br label %131

78:                                               ; preds = %38
  %79 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %80 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %79, i32 0, i32 0
  %81 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %81, i64 0
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %89 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %88, i32 0, i32 0
  %90 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %90, i64 0
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 3
  store i32 %87, i32* %94, align 4
  %95 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %96 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %95, i32 0, i32 0
  %97 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %97, i64 0
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.dvbsky_state*, %struct.dvbsky_state** %4, align 8
  %104 = getelementptr inbounds %struct.dvbsky_state, %struct.dvbsky_state* %103, i32 0, i32 1
  store i32 %102, i32* %104, align 4
  %105 = load i32, i32* @dvbsky_usb_read_status, align 4
  %106 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %107 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %106, i32 0, i32 0
  %108 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %108, i64 0
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 1
  store i32 %105, i32* %112, align 4
  %113 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %114 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %113, i32 0, i32 0
  %115 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %115, i64 0
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.dvbsky_state*, %struct.dvbsky_state** %4, align 8
  %122 = getelementptr inbounds %struct.dvbsky_state, %struct.dvbsky_state* %121, i32 0, i32 0
  store i32 %120, i32* %122, align 8
  %123 = load i32, i32* @dvbsky_usb_set_voltage, align 4
  %124 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %125 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %124, i32 0, i32 0
  %126 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %126, i64 0
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 0
  store i32 %123, i32* %130, align 4
  store i32 0, i32* %2, align 4
  br label %131

131:                                              ; preds = %78, %71, %35
  %132 = load i32, i32* %2, align 4
  ret i32 %132
}

declare dso_local %struct.dvbsky_state* @adap_to_priv(%struct.dvb_usb_adapter*) #1

declare dso_local %struct.dvb_usb_device* @adap_to_d(%struct.dvb_usb_adapter*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i8* @dvb_module_probe(i8*, i32*, %struct.i2c_adapter*, i32, %struct.ts2020_config*) #1

declare dso_local i32 @dvb_module_release(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
