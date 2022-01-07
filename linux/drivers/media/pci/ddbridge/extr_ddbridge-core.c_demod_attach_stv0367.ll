; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ddbridge/extr_ddbridge-core.c_demod_attach_stv0367.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ddbridge/extr_ddbridge-core.c_demod_attach_stv0367.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ddb_input = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__*, %struct.ddb_dvb*, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.ddb_dvb = type { %struct.TYPE_10__*, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.ddb_input* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_6__ = type { %struct.i2c_adapter }
%struct.i2c_adapter = type { i32 }

@stv0367ddb_attach = common dso_local global i32 0, align 4
@ddb_stv0367_config = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [19 x i8] c"No stv0367 found!\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@locked_gate_ctrl = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ddb_input*)* @demod_attach_stv0367 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @demod_attach_stv0367(%struct.ddb_input* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ddb_input*, align 8
  %4 = alloca %struct.i2c_adapter*, align 8
  %5 = alloca %struct.ddb_dvb*, align 8
  %6 = alloca %struct.device*, align 8
  store %struct.ddb_input* %0, %struct.ddb_input** %3, align 8
  %7 = load %struct.ddb_input*, %struct.ddb_input** %3, align 8
  %8 = getelementptr inbounds %struct.ddb_input, %struct.ddb_input* %7, i32 0, i32 1
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 2
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  store %struct.i2c_adapter* %12, %struct.i2c_adapter** %4, align 8
  %13 = load %struct.ddb_input*, %struct.ddb_input** %3, align 8
  %14 = getelementptr inbounds %struct.ddb_input, %struct.ddb_input* %13, i32 0, i32 1
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 1
  %17 = load %struct.ddb_dvb*, %struct.ddb_dvb** %16, align 8
  %18 = load %struct.ddb_input*, %struct.ddb_input** %3, align 8
  %19 = getelementptr inbounds %struct.ddb_input, %struct.ddb_input* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = and i32 %20, 1
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.ddb_dvb, %struct.ddb_dvb* %17, i64 %22
  store %struct.ddb_dvb* %23, %struct.ddb_dvb** %5, align 8
  %24 = load %struct.ddb_input*, %struct.ddb_input** %3, align 8
  %25 = getelementptr inbounds %struct.ddb_input, %struct.ddb_input* %24, i32 0, i32 1
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load %struct.device*, %struct.device** %29, align 8
  store %struct.device* %30, %struct.device** %6, align 8
  %31 = load i32, i32* @stv0367ddb_attach, align 4
  %32 = load i32*, i32** @ddb_stv0367_config, align 8
  %33 = load %struct.ddb_input*, %struct.ddb_input** %3, align 8
  %34 = getelementptr inbounds %struct.ddb_input, %struct.ddb_input* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = and i32 %35, 1
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %32, i64 %37
  %39 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %40 = call %struct.TYPE_10__* @dvb_attach(i32 %31, i32* %38, %struct.i2c_adapter* %39)
  %41 = load %struct.ddb_dvb*, %struct.ddb_dvb** %5, align 8
  %42 = getelementptr inbounds %struct.ddb_dvb, %struct.ddb_dvb* %41, i32 0, i32 0
  store %struct.TYPE_10__* %40, %struct.TYPE_10__** %42, align 8
  %43 = load %struct.ddb_dvb*, %struct.ddb_dvb** %5, align 8
  %44 = getelementptr inbounds %struct.ddb_dvb, %struct.ddb_dvb* %43, i32 0, i32 0
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %44, align 8
  %46 = icmp ne %struct.TYPE_10__* %45, null
  br i1 %46, label %52, label %47

47:                                               ; preds = %1
  %48 = load %struct.device*, %struct.device** %6, align 8
  %49 = call i32 @dev_err(%struct.device* %48, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %50 = load i32, i32* @ENODEV, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %2, align 4
  br label %72

52:                                               ; preds = %1
  %53 = load %struct.ddb_input*, %struct.ddb_input** %3, align 8
  %54 = load %struct.ddb_dvb*, %struct.ddb_dvb** %5, align 8
  %55 = getelementptr inbounds %struct.ddb_dvb, %struct.ddb_dvb* %54, i32 0, i32 0
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 1
  store %struct.ddb_input* %53, %struct.ddb_input** %57, align 8
  %58 = load %struct.ddb_dvb*, %struct.ddb_dvb** %5, align 8
  %59 = getelementptr inbounds %struct.ddb_dvb, %struct.ddb_dvb* %58, i32 0, i32 0
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.ddb_dvb*, %struct.ddb_dvb** %5, align 8
  %65 = getelementptr inbounds %struct.ddb_dvb, %struct.ddb_dvb* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 8
  %66 = load i32, i32* @locked_gate_ctrl, align 4
  %67 = load %struct.ddb_dvb*, %struct.ddb_dvb** %5, align 8
  %68 = getelementptr inbounds %struct.ddb_dvb, %struct.ddb_dvb* %67, i32 0, i32 0
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 0
  store i32 %66, i32* %71, align 8
  store i32 0, i32* %2, align 4
  br label %72

72:                                               ; preds = %52, %47
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local %struct.TYPE_10__* @dvb_attach(i32, i32*, %struct.i2c_adapter*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
