; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ddbridge/extr_ddbridge-core.c_tuner_tda18212_ping.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ddbridge/extr_ddbridge-core.c_tuner_tda18212_ping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ddb_input = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__*, %struct.ddb_dvb*, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.ddb_dvb = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 (%struct.TYPE_11__*, i32)* }
%struct.TYPE_7__ = type { %struct.i2c_adapter }
%struct.i2c_adapter = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"stv0367-tda18212 tuner ping\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"tda18212 ping 1 fail\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"tda18212 ping failed, expect problems\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ddb_input*, i16)* @tuner_tda18212_ping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tuner_tda18212_ping(%struct.ddb_input* %0, i16 zeroext %1) #0 {
  %3 = alloca %struct.ddb_input*, align 8
  %4 = alloca i16, align 2
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca %struct.ddb_dvb*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca [2 x i32], align 4
  %9 = alloca i32, align 4
  store %struct.ddb_input* %0, %struct.ddb_input** %3, align 8
  store i16 %1, i16* %4, align 2
  %10 = load %struct.ddb_input*, %struct.ddb_input** %3, align 8
  %11 = getelementptr inbounds %struct.ddb_input, %struct.ddb_input* %10, i32 0, i32 1
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 2
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  store %struct.i2c_adapter* %15, %struct.i2c_adapter** %5, align 8
  %16 = load %struct.ddb_input*, %struct.ddb_input** %3, align 8
  %17 = getelementptr inbounds %struct.ddb_input, %struct.ddb_input* %16, i32 0, i32 1
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 1
  %20 = load %struct.ddb_dvb*, %struct.ddb_dvb** %19, align 8
  %21 = load %struct.ddb_input*, %struct.ddb_input** %3, align 8
  %22 = getelementptr inbounds %struct.ddb_input, %struct.ddb_input* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = and i32 %23, 1
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.ddb_dvb, %struct.ddb_dvb* %20, i64 %25
  store %struct.ddb_dvb* %26, %struct.ddb_dvb** %6, align 8
  %27 = load %struct.ddb_input*, %struct.ddb_input** %3, align 8
  %28 = getelementptr inbounds %struct.ddb_input, %struct.ddb_input* %27, i32 0, i32 1
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load %struct.device*, %struct.device** %32, align 8
  store %struct.device* %33, %struct.device** %7, align 8
  store i32 0, i32* %9, align 4
  %34 = load %struct.device*, %struct.device** %7, align 8
  %35 = call i32 @dev_dbg(%struct.device* %34, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %36 = load %struct.ddb_dvb*, %struct.ddb_dvb** %6, align 8
  %37 = getelementptr inbounds %struct.ddb_dvb, %struct.ddb_dvb* %36, i32 0, i32 0
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = load i32 (%struct.TYPE_11__*, i32)*, i32 (%struct.TYPE_11__*, i32)** %40, align 8
  %42 = icmp ne i32 (%struct.TYPE_11__*, i32)* %41, null
  br i1 %42, label %43, label %54

43:                                               ; preds = %2
  %44 = load %struct.ddb_dvb*, %struct.ddb_dvb** %6, align 8
  %45 = getelementptr inbounds %struct.ddb_dvb, %struct.ddb_dvb* %44, i32 0, i32 0
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  %49 = load i32 (%struct.TYPE_11__*, i32)*, i32 (%struct.TYPE_11__*, i32)** %48, align 8
  %50 = load %struct.ddb_dvb*, %struct.ddb_dvb** %6, align 8
  %51 = getelementptr inbounds %struct.ddb_dvb, %struct.ddb_dvb* %50, i32 0, i32 0
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %51, align 8
  %53 = call i32 %49(%struct.TYPE_11__* %52, i32 1)
  br label %54

54:                                               ; preds = %43, %2
  %55 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %56 = load i16, i16* %4, align 2
  %57 = load i32, i32* %9, align 4
  %58 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %59 = call i64 @i2c_read_regs(%struct.i2c_adapter* %55, i16 zeroext %56, i32 %57, i32* %58, i32 8)
  %60 = icmp slt i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %54
  %62 = load %struct.device*, %struct.device** %7, align 8
  %63 = call i32 @dev_dbg(%struct.device* %62, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %64

64:                                               ; preds = %61, %54
  %65 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %66 = load i16, i16* %4, align 2
  %67 = load i32, i32* %9, align 4
  %68 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %69 = call i64 @i2c_read_regs(%struct.i2c_adapter* %65, i16 zeroext %66, i32 %67, i32* %68, i32 8)
  %70 = icmp slt i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %64
  %72 = load %struct.device*, %struct.device** %7, align 8
  %73 = call i32 @dev_warn(%struct.device* %72, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  br label %74

74:                                               ; preds = %71, %64
  %75 = load %struct.ddb_dvb*, %struct.ddb_dvb** %6, align 8
  %76 = getelementptr inbounds %struct.ddb_dvb, %struct.ddb_dvb* %75, i32 0, i32 0
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 0
  %80 = load i32 (%struct.TYPE_11__*, i32)*, i32 (%struct.TYPE_11__*, i32)** %79, align 8
  %81 = icmp ne i32 (%struct.TYPE_11__*, i32)* %80, null
  br i1 %81, label %82, label %93

82:                                               ; preds = %74
  %83 = load %struct.ddb_dvb*, %struct.ddb_dvb** %6, align 8
  %84 = getelementptr inbounds %struct.ddb_dvb, %struct.ddb_dvb* %83, i32 0, i32 0
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 0
  %88 = load i32 (%struct.TYPE_11__*, i32)*, i32 (%struct.TYPE_11__*, i32)** %87, align 8
  %89 = load %struct.ddb_dvb*, %struct.ddb_dvb** %6, align 8
  %90 = getelementptr inbounds %struct.ddb_dvb, %struct.ddb_dvb* %89, i32 0, i32 0
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %90, align 8
  %92 = call i32 %88(%struct.TYPE_11__* %91, i32 0)
  br label %93

93:                                               ; preds = %82, %74
  ret i32 0
}

declare dso_local i32 @dev_dbg(%struct.device*, i8*) #1

declare dso_local i64 @i2c_read_regs(%struct.i2c_adapter*, i16 zeroext, i32, i32*, i32) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
