; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_dvbsky.c_dvbsky_s960c_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_dvbsky.c_dvbsky_s960c_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_adapter = type { %struct.TYPE_6__**, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.dvbsky_state = type { i32, i32, i8*, i8*, i8* }
%struct.dvb_usb_device = type { %struct.i2c_adapter }
%struct.i2c_adapter = type { i32 }
%struct.m88ds3103_platform_data = type { i32, i32, i32, i32, i32, i32, i32, %struct.dvb_usb_device*, i32*, i32, %struct.TYPE_6__*, %struct.i2c_adapter* (i8*)*, %struct.TYPE_6__* (i8*)*, i64, i32, i64 }
%struct.ts2020_config = type { i32, i32, i32, i32, i32, i32, i32, %struct.dvb_usb_device*, i32*, i32, %struct.TYPE_6__*, %struct.i2c_adapter* (i8*)*, %struct.TYPE_6__* (i8*)*, i64, i32, i64 }
%struct.sp2_config = type { i32, i32, i32, i32, i32, i32, i32, %struct.dvb_usb_device*, i32*, i32, %struct.TYPE_6__*, %struct.i2c_adapter* (i8*)*, %struct.TYPE_6__* (i8*)*, i64, i32, i64 }

@M88DS3103_TS_CI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"m88ds3103\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@m88ds3103_get_agc_pwm = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"ts2020\00", align 1
@dvbsky_ci_ctrl = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"sp2\00", align 1
@dvbsky_usb_read_status = common dso_local global i32 0, align 4
@dvbsky_usb_ci_set_voltage = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_adapter*)* @dvbsky_s960c_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dvbsky_s960c_attach(%struct.dvb_usb_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_usb_adapter*, align 8
  %4 = alloca %struct.dvbsky_state*, align 8
  %5 = alloca %struct.dvb_usb_device*, align 8
  %6 = alloca %struct.i2c_adapter*, align 8
  %7 = alloca %struct.m88ds3103_platform_data, align 8
  %8 = alloca %struct.ts2020_config, align 8
  %9 = alloca %struct.sp2_config, align 8
  store %struct.dvb_usb_adapter* %0, %struct.dvb_usb_adapter** %3, align 8
  %10 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %11 = call %struct.dvbsky_state* @adap_to_priv(%struct.dvb_usb_adapter* %10)
  store %struct.dvbsky_state* %11, %struct.dvbsky_state** %4, align 8
  %12 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %13 = call %struct.dvb_usb_device* @adap_to_d(%struct.dvb_usb_adapter* %12)
  store %struct.dvb_usb_device* %13, %struct.dvb_usb_device** %5, align 8
  %14 = bitcast %struct.m88ds3103_platform_data* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %14, i8 0, i64 104, i1 false)
  %15 = bitcast %struct.ts2020_config* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %15, i8 0, i64 104, i1 false)
  %16 = bitcast %struct.sp2_config* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %16, i8 0, i64 104, i1 false)
  %17 = getelementptr inbounds %struct.m88ds3103_platform_data, %struct.m88ds3103_platform_data* %7, i32 0, i32 0
  store i32 27000000, i32* %17, align 8
  %18 = getelementptr inbounds %struct.m88ds3103_platform_data, %struct.m88ds3103_platform_data* %7, i32 0, i32 1
  store i32 33, i32* %18, align 4
  %19 = getelementptr inbounds %struct.m88ds3103_platform_data, %struct.m88ds3103_platform_data* %7, i32 0, i32 15
  store i64 0, i64* %19, align 8
  %20 = load i32, i32* @M88DS3103_TS_CI, align 4
  %21 = getelementptr inbounds %struct.m88ds3103_platform_data, %struct.m88ds3103_platform_data* %7, i32 0, i32 14
  store i32 %20, i32* %21, align 8
  %22 = getelementptr inbounds %struct.m88ds3103_platform_data, %struct.m88ds3103_platform_data* %7, i32 0, i32 2
  store i32 10000, i32* %22, align 8
  %23 = getelementptr inbounds %struct.m88ds3103_platform_data, %struct.m88ds3103_platform_data* %7, i32 0, i32 3
  store i32 1, i32* %23, align 4
  %24 = getelementptr inbounds %struct.m88ds3103_platform_data, %struct.m88ds3103_platform_data* %7, i32 0, i32 4
  store i32 153, i32* %24, align 8
  %25 = getelementptr inbounds %struct.m88ds3103_platform_data, %struct.m88ds3103_platform_data* %7, i32 0, i32 13
  store i64 0, i64* %25, align 8
  %26 = getelementptr inbounds %struct.m88ds3103_platform_data, %struct.m88ds3103_platform_data* %7, i32 0, i32 5
  store i32 1, i32* %26, align 4
  %27 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %5, align 8
  %28 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %27, i32 0, i32 0
  %29 = bitcast %struct.m88ds3103_platform_data* %7 to %struct.ts2020_config*
  %30 = call i8* @dvb_module_probe(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32* null, %struct.i2c_adapter* %28, i32 104, %struct.ts2020_config* %29)
  %31 = load %struct.dvbsky_state*, %struct.dvbsky_state** %4, align 8
  %32 = getelementptr inbounds %struct.dvbsky_state, %struct.dvbsky_state* %31, i32 0, i32 2
  store i8* %30, i8** %32, align 8
  %33 = load %struct.dvbsky_state*, %struct.dvbsky_state** %4, align 8
  %34 = getelementptr inbounds %struct.dvbsky_state, %struct.dvbsky_state* %33, i32 0, i32 2
  %35 = load i8*, i8** %34, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %1
  %38 = load i32, i32* @ENODEV, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %162

40:                                               ; preds = %1
  %41 = getelementptr inbounds %struct.m88ds3103_platform_data, %struct.m88ds3103_platform_data* %7, i32 0, i32 12
  %42 = load %struct.TYPE_6__* (i8*)*, %struct.TYPE_6__* (i8*)** %41, align 8
  %43 = load %struct.dvbsky_state*, %struct.dvbsky_state** %4, align 8
  %44 = getelementptr inbounds %struct.dvbsky_state, %struct.dvbsky_state* %43, i32 0, i32 2
  %45 = load i8*, i8** %44, align 8
  %46 = call %struct.TYPE_6__* %42(i8* %45)
  %47 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %48 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %47, i32 0, i32 0
  %49 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %49, i64 0
  store %struct.TYPE_6__* %46, %struct.TYPE_6__** %50, align 8
  %51 = getelementptr inbounds %struct.m88ds3103_platform_data, %struct.m88ds3103_platform_data* %7, i32 0, i32 11
  %52 = load %struct.i2c_adapter* (i8*)*, %struct.i2c_adapter* (i8*)** %51, align 8
  %53 = load %struct.dvbsky_state*, %struct.dvbsky_state** %4, align 8
  %54 = getelementptr inbounds %struct.dvbsky_state, %struct.dvbsky_state* %53, i32 0, i32 2
  %55 = load i8*, i8** %54, align 8
  %56 = call %struct.i2c_adapter* %52(i8* %55)
  store %struct.i2c_adapter* %56, %struct.i2c_adapter** %6, align 8
  %57 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %58 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %57, i32 0, i32 0
  %59 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %59, i64 0
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %60, align 8
  %62 = getelementptr inbounds %struct.ts2020_config, %struct.ts2020_config* %8, i32 0, i32 10
  store %struct.TYPE_6__* %61, %struct.TYPE_6__** %62, align 8
  %63 = load i32, i32* @m88ds3103_get_agc_pwm, align 4
  %64 = getelementptr inbounds %struct.ts2020_config, %struct.ts2020_config* %8, i32 0, i32 9
  store i32 %63, i32* %64, align 8
  %65 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %66 = call i8* @dvb_module_probe(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32* null, %struct.i2c_adapter* %65, i32 96, %struct.ts2020_config* %8)
  %67 = load %struct.dvbsky_state*, %struct.dvbsky_state** %4, align 8
  %68 = getelementptr inbounds %struct.dvbsky_state, %struct.dvbsky_state* %67, i32 0, i32 3
  store i8* %66, i8** %68, align 8
  %69 = load %struct.dvbsky_state*, %struct.dvbsky_state** %4, align 8
  %70 = getelementptr inbounds %struct.dvbsky_state, %struct.dvbsky_state* %69, i32 0, i32 3
  %71 = load i8*, i8** %70, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %80, label %73

73:                                               ; preds = %40
  %74 = load %struct.dvbsky_state*, %struct.dvbsky_state** %4, align 8
  %75 = getelementptr inbounds %struct.dvbsky_state, %struct.dvbsky_state* %74, i32 0, i32 2
  %76 = load i8*, i8** %75, align 8
  %77 = call i32 @dvb_module_release(i8* %76)
  %78 = load i32, i32* @ENODEV, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %2, align 4
  br label %162

80:                                               ; preds = %40
  %81 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %82 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.sp2_config, %struct.sp2_config* %9, i32 0, i32 8
  store i32* %82, i32** %83, align 8
  %84 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %5, align 8
  %85 = getelementptr inbounds %struct.sp2_config, %struct.sp2_config* %9, i32 0, i32 7
  store %struct.dvb_usb_device* %84, %struct.dvb_usb_device** %85, align 8
  %86 = load i32, i32* @dvbsky_ci_ctrl, align 4
  %87 = getelementptr inbounds %struct.sp2_config, %struct.sp2_config* %9, i32 0, i32 6
  store i32 %86, i32* %87, align 8
  %88 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %5, align 8
  %89 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %88, i32 0, i32 0
  %90 = bitcast %struct.sp2_config* %9 to %struct.ts2020_config*
  %91 = call i8* @dvb_module_probe(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32* null, %struct.i2c_adapter* %89, i32 64, %struct.ts2020_config* %90)
  %92 = load %struct.dvbsky_state*, %struct.dvbsky_state** %4, align 8
  %93 = getelementptr inbounds %struct.dvbsky_state, %struct.dvbsky_state* %92, i32 0, i32 4
  store i8* %91, i8** %93, align 8
  %94 = load %struct.dvbsky_state*, %struct.dvbsky_state** %4, align 8
  %95 = getelementptr inbounds %struct.dvbsky_state, %struct.dvbsky_state* %94, i32 0, i32 4
  %96 = load i8*, i8** %95, align 8
  %97 = icmp ne i8* %96, null
  br i1 %97, label %109, label %98

98:                                               ; preds = %80
  %99 = load %struct.dvbsky_state*, %struct.dvbsky_state** %4, align 8
  %100 = getelementptr inbounds %struct.dvbsky_state, %struct.dvbsky_state* %99, i32 0, i32 3
  %101 = load i8*, i8** %100, align 8
  %102 = call i32 @dvb_module_release(i8* %101)
  %103 = load %struct.dvbsky_state*, %struct.dvbsky_state** %4, align 8
  %104 = getelementptr inbounds %struct.dvbsky_state, %struct.dvbsky_state* %103, i32 0, i32 2
  %105 = load i8*, i8** %104, align 8
  %106 = call i32 @dvb_module_release(i8* %105)
  %107 = load i32, i32* @ENODEV, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %2, align 4
  br label %162

109:                                              ; preds = %80
  %110 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %111 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %110, i32 0, i32 0
  %112 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %112, i64 0
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 2
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %120 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %119, i32 0, i32 0
  %121 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %121, i64 0
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 3
  store i32 %118, i32* %125, align 4
  %126 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %127 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %126, i32 0, i32 0
  %128 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %128, i64 0
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.dvbsky_state*, %struct.dvbsky_state** %4, align 8
  %135 = getelementptr inbounds %struct.dvbsky_state, %struct.dvbsky_state* %134, i32 0, i32 1
  store i32 %133, i32* %135, align 4
  %136 = load i32, i32* @dvbsky_usb_read_status, align 4
  %137 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %138 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %137, i32 0, i32 0
  %139 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %139, i64 0
  %141 = load %struct.TYPE_6__*, %struct.TYPE_6__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 1
  store i32 %136, i32* %143, align 4
  %144 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %145 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %144, i32 0, i32 0
  %146 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %146, i64 0
  %148 = load %struct.TYPE_6__*, %struct.TYPE_6__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.dvbsky_state*, %struct.dvbsky_state** %4, align 8
  %153 = getelementptr inbounds %struct.dvbsky_state, %struct.dvbsky_state* %152, i32 0, i32 0
  store i32 %151, i32* %153, align 8
  %154 = load i32, i32* @dvbsky_usb_ci_set_voltage, align 4
  %155 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %156 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %155, i32 0, i32 0
  %157 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %157, i64 0
  %159 = load %struct.TYPE_6__*, %struct.TYPE_6__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i32 0, i32 0
  store i32 %154, i32* %161, align 4
  store i32 0, i32* %2, align 4
  br label %162

162:                                              ; preds = %109, %98, %73, %37
  %163 = load i32, i32* %2, align 4
  ret i32 %163
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
