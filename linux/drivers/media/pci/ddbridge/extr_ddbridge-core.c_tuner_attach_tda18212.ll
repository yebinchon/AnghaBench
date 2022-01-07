; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ddbridge/extr_ddbridge-core.c_tuner_attach_tda18212.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ddbridge/extr_ddbridge-core.c_tuner_attach_tda18212.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ddb_input = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, %struct.ddb_dvb*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.ddb_dvb = type { %struct.i2c_client**, i32 }
%struct.i2c_client = type { i32 }
%struct.TYPE_4__ = type { %struct.i2c_adapter }
%struct.i2c_adapter = type { i32 }
%struct.tda18212_config = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@DDB_TUNER_DVBCT_ST = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"tda18212\00", align 1
@.str.1 = private unnamed_addr constant [60 x i8] c"TDA18212 tuner not found. Device is not fully operational.\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ddb_input*, i64)* @tuner_attach_tda18212 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tuner_attach_tda18212(%struct.ddb_input* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ddb_input*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.i2c_adapter*, align 8
  %7 = alloca %struct.ddb_dvb*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.i2c_client*, align 8
  %10 = alloca %struct.tda18212_config, align 4
  %11 = alloca i32, align 4
  store %struct.ddb_input* %0, %struct.ddb_input** %4, align 8
  store i64 %1, i64* %5, align 8
  %12 = load %struct.ddb_input*, %struct.ddb_input** %4, align 8
  %13 = getelementptr inbounds %struct.ddb_input, %struct.ddb_input* %12, i32 0, i32 1
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 2
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  store %struct.i2c_adapter* %17, %struct.i2c_adapter** %6, align 8
  %18 = load %struct.ddb_input*, %struct.ddb_input** %4, align 8
  %19 = getelementptr inbounds %struct.ddb_input, %struct.ddb_input* %18, i32 0, i32 1
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  %22 = load %struct.ddb_dvb*, %struct.ddb_dvb** %21, align 8
  %23 = load %struct.ddb_input*, %struct.ddb_input** %4, align 8
  %24 = getelementptr inbounds %struct.ddb_input, %struct.ddb_input* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = and i32 %25, 1
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.ddb_dvb, %struct.ddb_dvb* %22, i64 %27
  store %struct.ddb_dvb* %28, %struct.ddb_dvb** %7, align 8
  %29 = load %struct.ddb_input*, %struct.ddb_input** %4, align 8
  %30 = getelementptr inbounds %struct.ddb_input, %struct.ddb_input* %29, i32 0, i32 1
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load %struct.device*, %struct.device** %34, align 8
  store %struct.device* %35, %struct.device** %8, align 8
  %36 = getelementptr inbounds %struct.tda18212_config, %struct.tda18212_config* %10, i32 0, i32 0
  store i32 3550, i32* %36, align 4
  %37 = getelementptr inbounds %struct.tda18212_config, %struct.tda18212_config* %10, i32 0, i32 1
  store i32 3700, i32* %37, align 4
  %38 = getelementptr inbounds %struct.tda18212_config, %struct.tda18212_config* %10, i32 0, i32 2
  store i32 4150, i32* %38, align 4
  %39 = getelementptr inbounds %struct.tda18212_config, %struct.tda18212_config* %10, i32 0, i32 3
  store i32 3250, i32* %39, align 4
  %40 = getelementptr inbounds %struct.tda18212_config, %struct.tda18212_config* %10, i32 0, i32 4
  store i32 4000, i32* %40, align 4
  %41 = getelementptr inbounds %struct.tda18212_config, %struct.tda18212_config* %10, i32 0, i32 5
  store i32 4000, i32* %41, align 4
  %42 = getelementptr inbounds %struct.tda18212_config, %struct.tda18212_config* %10, i32 0, i32 6
  store i32 5000, i32* %42, align 4
  %43 = getelementptr inbounds %struct.tda18212_config, %struct.tda18212_config* %10, i32 0, i32 7
  %44 = load %struct.ddb_dvb*, %struct.ddb_dvb** %7, align 8
  %45 = getelementptr inbounds %struct.ddb_dvb, %struct.ddb_dvb* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  store i32 %46, i32* %43, align 4
  %47 = load %struct.ddb_input*, %struct.ddb_input** %4, align 8
  %48 = getelementptr inbounds %struct.ddb_input, %struct.ddb_input* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = and i32 %49, 1
  %51 = icmp ne i32 %50, 0
  %52 = zext i1 %51 to i64
  %53 = select i1 %51, i32 99, i32 96
  store i32 %53, i32* %11, align 4
  %54 = load i64, i64* %5, align 8
  %55 = load i64, i64* @DDB_TUNER_DVBCT_ST, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %2
  %58 = load %struct.ddb_input*, %struct.ddb_input** %4, align 8
  %59 = load i32, i32* %11, align 4
  %60 = call i32 @tuner_tda18212_ping(%struct.ddb_input* %58, i32 %59)
  br label %61

61:                                               ; preds = %57, %2
  %62 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %63 = load i32, i32* %11, align 4
  %64 = call %struct.i2c_client* @dvb_module_probe(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32* null, %struct.i2c_adapter* %62, i32 %63, %struct.tda18212_config* %10)
  store %struct.i2c_client* %64, %struct.i2c_client** %9, align 8
  %65 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %66 = icmp ne %struct.i2c_client* %65, null
  br i1 %66, label %68, label %67

67:                                               ; preds = %61
  br label %74

68:                                               ; preds = %61
  %69 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %70 = load %struct.ddb_dvb*, %struct.ddb_dvb** %7, align 8
  %71 = getelementptr inbounds %struct.ddb_dvb, %struct.ddb_dvb* %70, i32 0, i32 0
  %72 = load %struct.i2c_client**, %struct.i2c_client*** %71, align 8
  %73 = getelementptr inbounds %struct.i2c_client*, %struct.i2c_client** %72, i64 0
  store %struct.i2c_client* %69, %struct.i2c_client** %73, align 8
  store i32 0, i32* %3, align 4
  br label %79

74:                                               ; preds = %67
  %75 = load %struct.device*, %struct.device** %8, align 8
  %76 = call i32 @dev_err(%struct.device* %75, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0))
  %77 = load i32, i32* @ENODEV, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %3, align 4
  br label %79

79:                                               ; preds = %74, %68
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local i32 @tuner_tda18212_ping(%struct.ddb_input*, i32) #1

declare dso_local %struct.i2c_client* @dvb_module_probe(i8*, i32*, %struct.i2c_adapter*, i32, %struct.tda18212_config*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
