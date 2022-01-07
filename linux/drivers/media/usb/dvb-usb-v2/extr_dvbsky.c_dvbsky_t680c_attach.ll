; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_dvbsky.c_dvbsky_t680c_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_dvbsky.c_dvbsky_t680c_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_adapter = type { i32, i32** }
%struct.dvbsky_state = type { i8*, i8*, i8* }
%struct.dvb_usb_device = type { %struct.i2c_adapter }
%struct.i2c_adapter = type { i32 }
%struct.si2168_config = type { i32, i32, %struct.dvb_usb_device*, i32*, i32*, i32, %struct.i2c_adapter** }
%struct.si2157_config = type { i32, i32, %struct.dvb_usb_device*, i32*, i32*, i32, %struct.i2c_adapter** }
%struct.sp2_config = type { i32, i32, %struct.dvb_usb_device*, i32*, i32*, i32, %struct.i2c_adapter** }

@SI2168_TS_PARALLEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"si2168\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"si2157\00", align 1
@dvbsky_ci_ctrl = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"sp2\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_adapter*)* @dvbsky_t680c_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dvbsky_t680c_attach(%struct.dvb_usb_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_usb_adapter*, align 8
  %4 = alloca %struct.dvbsky_state*, align 8
  %5 = alloca %struct.dvb_usb_device*, align 8
  %6 = alloca %struct.i2c_adapter*, align 8
  %7 = alloca %struct.si2168_config, align 8
  %8 = alloca %struct.si2157_config, align 8
  %9 = alloca %struct.sp2_config, align 8
  store %struct.dvb_usb_adapter* %0, %struct.dvb_usb_adapter** %3, align 8
  %10 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %11 = call %struct.dvbsky_state* @adap_to_priv(%struct.dvb_usb_adapter* %10)
  store %struct.dvbsky_state* %11, %struct.dvbsky_state** %4, align 8
  %12 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %13 = call %struct.dvb_usb_device* @adap_to_d(%struct.dvb_usb_adapter* %12)
  store %struct.dvb_usb_device* %13, %struct.dvb_usb_device** %5, align 8
  %14 = bitcast %struct.si2168_config* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %14, i8 0, i64 48, i1 false)
  %15 = bitcast %struct.si2157_config* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %15, i8 0, i64 48, i1 false)
  %16 = bitcast %struct.sp2_config* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %16, i8 0, i64 48, i1 false)
  %17 = getelementptr inbounds %struct.si2168_config, %struct.si2168_config* %7, i32 0, i32 6
  store %struct.i2c_adapter** %6, %struct.i2c_adapter*** %17, align 8
  %18 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %19 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %18, i32 0, i32 1
  %20 = load i32**, i32*** %19, align 8
  %21 = getelementptr inbounds i32*, i32** %20, i64 0
  %22 = bitcast i32** %21 to i32*
  %23 = getelementptr inbounds %struct.si2168_config, %struct.si2168_config* %7, i32 0, i32 4
  store i32* %22, i32** %23, align 8
  %24 = load i32, i32* @SI2168_TS_PARALLEL, align 4
  %25 = getelementptr inbounds %struct.si2168_config, %struct.si2168_config* %7, i32 0, i32 5
  store i32 %24, i32* %25, align 8
  %26 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %5, align 8
  %27 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %26, i32 0, i32 0
  %28 = bitcast %struct.si2168_config* %7 to %struct.sp2_config*
  %29 = call i8* @dvb_module_probe(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32* null, %struct.i2c_adapter* %27, i32 100, %struct.sp2_config* %28)
  %30 = load %struct.dvbsky_state*, %struct.dvbsky_state** %4, align 8
  %31 = getelementptr inbounds %struct.dvbsky_state, %struct.dvbsky_state* %30, i32 0, i32 0
  store i8* %29, i8** %31, align 8
  %32 = load %struct.dvbsky_state*, %struct.dvbsky_state** %4, align 8
  %33 = getelementptr inbounds %struct.dvbsky_state, %struct.dvbsky_state* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %1
  %37 = load i32, i32* @ENODEV, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %92

39:                                               ; preds = %1
  %40 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %41 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %40, i32 0, i32 1
  %42 = load i32**, i32*** %41, align 8
  %43 = getelementptr inbounds i32*, i32** %42, i64 0
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds %struct.si2157_config, %struct.si2157_config* %8, i32 0, i32 4
  store i32* %44, i32** %45, align 8
  %46 = getelementptr inbounds %struct.si2157_config, %struct.si2157_config* %8, i32 0, i32 0
  store i32 1, i32* %46, align 8
  %47 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %48 = bitcast %struct.si2157_config* %8 to %struct.sp2_config*
  %49 = call i8* @dvb_module_probe(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32* null, %struct.i2c_adapter* %47, i32 96, %struct.sp2_config* %48)
  %50 = load %struct.dvbsky_state*, %struct.dvbsky_state** %4, align 8
  %51 = getelementptr inbounds %struct.dvbsky_state, %struct.dvbsky_state* %50, i32 0, i32 1
  store i8* %49, i8** %51, align 8
  %52 = load %struct.dvbsky_state*, %struct.dvbsky_state** %4, align 8
  %53 = getelementptr inbounds %struct.dvbsky_state, %struct.dvbsky_state* %52, i32 0, i32 1
  %54 = load i8*, i8** %53, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %63, label %56

56:                                               ; preds = %39
  %57 = load %struct.dvbsky_state*, %struct.dvbsky_state** %4, align 8
  %58 = getelementptr inbounds %struct.dvbsky_state, %struct.dvbsky_state* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = call i32 @dvb_module_release(i8* %59)
  %61 = load i32, i32* @ENODEV, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %2, align 4
  br label %92

63:                                               ; preds = %39
  %64 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %65 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.sp2_config, %struct.sp2_config* %9, i32 0, i32 3
  store i32* %65, i32** %66, align 8
  %67 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %5, align 8
  %68 = getelementptr inbounds %struct.sp2_config, %struct.sp2_config* %9, i32 0, i32 2
  store %struct.dvb_usb_device* %67, %struct.dvb_usb_device** %68, align 8
  %69 = load i32, i32* @dvbsky_ci_ctrl, align 4
  %70 = getelementptr inbounds %struct.sp2_config, %struct.sp2_config* %9, i32 0, i32 1
  store i32 %69, i32* %70, align 4
  %71 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %5, align 8
  %72 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %71, i32 0, i32 0
  %73 = call i8* @dvb_module_probe(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32* null, %struct.i2c_adapter* %72, i32 64, %struct.sp2_config* %9)
  %74 = load %struct.dvbsky_state*, %struct.dvbsky_state** %4, align 8
  %75 = getelementptr inbounds %struct.dvbsky_state, %struct.dvbsky_state* %74, i32 0, i32 2
  store i8* %73, i8** %75, align 8
  %76 = load %struct.dvbsky_state*, %struct.dvbsky_state** %4, align 8
  %77 = getelementptr inbounds %struct.dvbsky_state, %struct.dvbsky_state* %76, i32 0, i32 2
  %78 = load i8*, i8** %77, align 8
  %79 = icmp ne i8* %78, null
  br i1 %79, label %91, label %80

80:                                               ; preds = %63
  %81 = load %struct.dvbsky_state*, %struct.dvbsky_state** %4, align 8
  %82 = getelementptr inbounds %struct.dvbsky_state, %struct.dvbsky_state* %81, i32 0, i32 1
  %83 = load i8*, i8** %82, align 8
  %84 = call i32 @dvb_module_release(i8* %83)
  %85 = load %struct.dvbsky_state*, %struct.dvbsky_state** %4, align 8
  %86 = getelementptr inbounds %struct.dvbsky_state, %struct.dvbsky_state* %85, i32 0, i32 0
  %87 = load i8*, i8** %86, align 8
  %88 = call i32 @dvb_module_release(i8* %87)
  %89 = load i32, i32* @ENODEV, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %2, align 4
  br label %92

91:                                               ; preds = %63
  store i32 0, i32* %2, align 4
  br label %92

92:                                               ; preds = %91, %80, %56, %36
  %93 = load i32, i32* %2, align 4
  ret i32 %93
}

declare dso_local %struct.dvbsky_state* @adap_to_priv(%struct.dvb_usb_adapter*) #1

declare dso_local %struct.dvb_usb_device* @adap_to_d(%struct.dvb_usb_adapter*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i8* @dvb_module_probe(i8*, i32*, %struct.i2c_adapter*, i32, %struct.sp2_config*) #1

declare dso_local i32 @dvb_module_release(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
