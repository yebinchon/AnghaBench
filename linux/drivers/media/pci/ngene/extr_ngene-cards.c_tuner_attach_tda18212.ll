; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ngene/extr_ngene-cards.c_tuner_attach_tda18212.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ngene/extr_ngene-cards.c_tuner_attach_tda18212.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ngene_channel = type { i32, i32, %struct.i2c_client**, i32, %struct.TYPE_3__* }
%struct.i2c_client = type { i32 }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.device }
%struct.device = type { i32 }
%struct.i2c_adapter = type { i32 }
%struct.tda18212_config = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@DEMOD_TYPE_STV0367 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"tda18212\00", align 1
@.str.1 = private unnamed_addr constant [60 x i8] c"TDA18212 tuner not found. Device is not fully operational.\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ngene_channel*, i64)* @tuner_attach_tda18212 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tuner_attach_tda18212(%struct.ngene_channel* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ngene_channel*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.i2c_adapter*, align 8
  %8 = alloca %struct.i2c_client*, align 8
  %9 = alloca %struct.tda18212_config, align 4
  %10 = alloca i32, align 4
  store %struct.ngene_channel* %0, %struct.ngene_channel** %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = load %struct.ngene_channel*, %struct.ngene_channel** %4, align 8
  %12 = getelementptr inbounds %struct.ngene_channel, %struct.ngene_channel* %11, i32 0, i32 4
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  store %struct.device* %16, %struct.device** %6, align 8
  %17 = load %struct.ngene_channel*, %struct.ngene_channel** %4, align 8
  %18 = call %struct.i2c_adapter* @i2c_adapter_from_chan(%struct.ngene_channel* %17)
  store %struct.i2c_adapter* %18, %struct.i2c_adapter** %7, align 8
  %19 = getelementptr inbounds %struct.tda18212_config, %struct.tda18212_config* %9, i32 0, i32 0
  store i32 3550, i32* %19, align 4
  %20 = getelementptr inbounds %struct.tda18212_config, %struct.tda18212_config* %9, i32 0, i32 1
  store i32 3700, i32* %20, align 4
  %21 = getelementptr inbounds %struct.tda18212_config, %struct.tda18212_config* %9, i32 0, i32 2
  store i32 4150, i32* %21, align 4
  %22 = getelementptr inbounds %struct.tda18212_config, %struct.tda18212_config* %9, i32 0, i32 3
  store i32 3250, i32* %22, align 4
  %23 = getelementptr inbounds %struct.tda18212_config, %struct.tda18212_config* %9, i32 0, i32 4
  store i32 4000, i32* %23, align 4
  %24 = getelementptr inbounds %struct.tda18212_config, %struct.tda18212_config* %9, i32 0, i32 5
  store i32 4000, i32* %24, align 4
  %25 = getelementptr inbounds %struct.tda18212_config, %struct.tda18212_config* %9, i32 0, i32 6
  store i32 5000, i32* %25, align 4
  %26 = getelementptr inbounds %struct.tda18212_config, %struct.tda18212_config* %9, i32 0, i32 7
  %27 = load %struct.ngene_channel*, %struct.ngene_channel** %4, align 8
  %28 = getelementptr inbounds %struct.ngene_channel, %struct.ngene_channel* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %26, align 4
  %30 = load %struct.ngene_channel*, %struct.ngene_channel** %4, align 8
  %31 = getelementptr inbounds %struct.ngene_channel, %struct.ngene_channel* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = and i32 %32, 1
  %34 = icmp ne i32 %33, 0
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i32 99, i32 96
  store i32 %36, i32* %10, align 4
  %37 = load i64, i64* %5, align 8
  %38 = load i64, i64* @DEMOD_TYPE_STV0367, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %2
  %41 = load %struct.ngene_channel*, %struct.ngene_channel** %4, align 8
  %42 = load %struct.i2c_adapter*, %struct.i2c_adapter** %7, align 8
  %43 = load i32, i32* %10, align 4
  %44 = call i32 @tuner_tda18212_ping(%struct.ngene_channel* %41, %struct.i2c_adapter* %42, i32 %43)
  br label %45

45:                                               ; preds = %40, %2
  %46 = load %struct.i2c_adapter*, %struct.i2c_adapter** %7, align 8
  %47 = load i32, i32* %10, align 4
  %48 = call %struct.i2c_client* @dvb_module_probe(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32* null, %struct.i2c_adapter* %46, i32 %47, %struct.tda18212_config* %9)
  store %struct.i2c_client* %48, %struct.i2c_client** %8, align 8
  %49 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %50 = icmp ne %struct.i2c_client* %49, null
  br i1 %50, label %52, label %51

51:                                               ; preds = %45
  br label %60

52:                                               ; preds = %45
  %53 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %54 = load %struct.ngene_channel*, %struct.ngene_channel** %4, align 8
  %55 = getelementptr inbounds %struct.ngene_channel, %struct.ngene_channel* %54, i32 0, i32 2
  %56 = load %struct.i2c_client**, %struct.i2c_client*** %55, align 8
  %57 = getelementptr inbounds %struct.i2c_client*, %struct.i2c_client** %56, i64 0
  store %struct.i2c_client* %53, %struct.i2c_client** %57, align 8
  %58 = load %struct.ngene_channel*, %struct.ngene_channel** %4, align 8
  %59 = getelementptr inbounds %struct.ngene_channel, %struct.ngene_channel* %58, i32 0, i32 1
  store i32 1, i32* %59, align 4
  store i32 0, i32* %3, align 4
  br label %65

60:                                               ; preds = %51
  %61 = load %struct.device*, %struct.device** %6, align 8
  %62 = call i32 @dev_err(%struct.device* %61, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0))
  %63 = load i32, i32* @ENODEV, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %3, align 4
  br label %65

65:                                               ; preds = %60, %52
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local %struct.i2c_adapter* @i2c_adapter_from_chan(%struct.ngene_channel*) #1

declare dso_local i32 @tuner_tda18212_ping(%struct.ngene_channel*, %struct.i2c_adapter*, i32) #1

declare dso_local %struct.i2c_client* @dvb_module_probe(i8*, i32*, %struct.i2c_adapter*, i32, %struct.tda18212_config*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
