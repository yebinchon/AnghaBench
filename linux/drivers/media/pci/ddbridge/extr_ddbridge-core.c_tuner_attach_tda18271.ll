; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ddbridge/extr_ddbridge-core.c_tuner_attach_tda18271.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ddbridge/extr_ddbridge-core.c_tuner_attach_tda18271.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ddb_input = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__*, %struct.ddb_dvb*, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.ddb_dvb = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 (%struct.TYPE_12__*, i32)* }
%struct.TYPE_8__ = type { %struct.i2c_adapter }
%struct.i2c_adapter = type { i32 }
%struct.dvb_frontend = type { i32 }

@tda18271c2dd_attach = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"No TDA18271 found!\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ddb_input*)* @tuner_attach_tda18271 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tuner_attach_tda18271(%struct.ddb_input* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ddb_input*, align 8
  %4 = alloca %struct.i2c_adapter*, align 8
  %5 = alloca %struct.ddb_dvb*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.dvb_frontend*, align 8
  store %struct.ddb_input* %0, %struct.ddb_input** %3, align 8
  %8 = load %struct.ddb_input*, %struct.ddb_input** %3, align 8
  %9 = getelementptr inbounds %struct.ddb_input, %struct.ddb_input* %8, i32 0, i32 1
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 2
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  store %struct.i2c_adapter* %13, %struct.i2c_adapter** %4, align 8
  %14 = load %struct.ddb_input*, %struct.ddb_input** %3, align 8
  %15 = getelementptr inbounds %struct.ddb_input, %struct.ddb_input* %14, i32 0, i32 1
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 1
  %18 = load %struct.ddb_dvb*, %struct.ddb_dvb** %17, align 8
  %19 = load %struct.ddb_input*, %struct.ddb_input** %3, align 8
  %20 = getelementptr inbounds %struct.ddb_input, %struct.ddb_input* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = and i32 %21, 1
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.ddb_dvb, %struct.ddb_dvb* %18, i64 %23
  store %struct.ddb_dvb* %24, %struct.ddb_dvb** %5, align 8
  %25 = load %struct.ddb_input*, %struct.ddb_input** %3, align 8
  %26 = getelementptr inbounds %struct.ddb_input, %struct.ddb_input* %25, i32 0, i32 1
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = load %struct.device*, %struct.device** %30, align 8
  store %struct.device* %31, %struct.device** %6, align 8
  %32 = load %struct.ddb_dvb*, %struct.ddb_dvb** %5, align 8
  %33 = getelementptr inbounds %struct.ddb_dvb, %struct.ddb_dvb* %32, i32 0, i32 0
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 0
  %37 = load i32 (%struct.TYPE_12__*, i32)*, i32 (%struct.TYPE_12__*, i32)** %36, align 8
  %38 = icmp ne i32 (%struct.TYPE_12__*, i32)* %37, null
  br i1 %38, label %39, label %50

39:                                               ; preds = %1
  %40 = load %struct.ddb_dvb*, %struct.ddb_dvb** %5, align 8
  %41 = getelementptr inbounds %struct.ddb_dvb, %struct.ddb_dvb* %40, i32 0, i32 0
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 0
  %45 = load i32 (%struct.TYPE_12__*, i32)*, i32 (%struct.TYPE_12__*, i32)** %44, align 8
  %46 = load %struct.ddb_dvb*, %struct.ddb_dvb** %5, align 8
  %47 = getelementptr inbounds %struct.ddb_dvb, %struct.ddb_dvb* %46, i32 0, i32 0
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %47, align 8
  %49 = call i32 %45(%struct.TYPE_12__* %48, i32 1)
  br label %50

50:                                               ; preds = %39, %1
  %51 = load i32, i32* @tda18271c2dd_attach, align 4
  %52 = load %struct.ddb_dvb*, %struct.ddb_dvb** %5, align 8
  %53 = getelementptr inbounds %struct.ddb_dvb, %struct.ddb_dvb* %52, i32 0, i32 0
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %53, align 8
  %55 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %56 = call %struct.dvb_frontend* @dvb_attach(i32 %51, %struct.TYPE_12__* %54, %struct.i2c_adapter* %55, i32 96)
  store %struct.dvb_frontend* %56, %struct.dvb_frontend** %7, align 8
  %57 = load %struct.ddb_dvb*, %struct.ddb_dvb** %5, align 8
  %58 = getelementptr inbounds %struct.ddb_dvb, %struct.ddb_dvb* %57, i32 0, i32 0
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 0
  %62 = load i32 (%struct.TYPE_12__*, i32)*, i32 (%struct.TYPE_12__*, i32)** %61, align 8
  %63 = icmp ne i32 (%struct.TYPE_12__*, i32)* %62, null
  br i1 %63, label %64, label %75

64:                                               ; preds = %50
  %65 = load %struct.ddb_dvb*, %struct.ddb_dvb** %5, align 8
  %66 = getelementptr inbounds %struct.ddb_dvb, %struct.ddb_dvb* %65, i32 0, i32 0
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 0
  %70 = load i32 (%struct.TYPE_12__*, i32)*, i32 (%struct.TYPE_12__*, i32)** %69, align 8
  %71 = load %struct.ddb_dvb*, %struct.ddb_dvb** %5, align 8
  %72 = getelementptr inbounds %struct.ddb_dvb, %struct.ddb_dvb* %71, i32 0, i32 0
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %72, align 8
  %74 = call i32 %70(%struct.TYPE_12__* %73, i32 0)
  br label %75

75:                                               ; preds = %64, %50
  %76 = load %struct.dvb_frontend*, %struct.dvb_frontend** %7, align 8
  %77 = icmp ne %struct.dvb_frontend* %76, null
  br i1 %77, label %83, label %78

78:                                               ; preds = %75
  %79 = load %struct.device*, %struct.device** %6, align 8
  %80 = call i32 @dev_err(%struct.device* %79, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %81 = load i32, i32* @ENODEV, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %2, align 4
  br label %84

83:                                               ; preds = %75
  store i32 0, i32* %2, align 4
  br label %84

84:                                               ; preds = %83, %78
  %85 = load i32, i32* %2, align 4
  ret i32 %85
}

declare dso_local %struct.dvb_frontend* @dvb_attach(i32, %struct.TYPE_12__*, %struct.i2c_adapter*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
