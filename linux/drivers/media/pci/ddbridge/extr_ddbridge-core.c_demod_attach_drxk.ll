; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ddbridge/extr_ddbridge-core.c_demod_attach_drxk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ddbridge/extr_ddbridge-core.c_demod_attach_drxk.c"
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
%struct.drxk_config = type { i32, i8* }

@.str = private unnamed_addr constant [11 x i8] c"drxk_a3.mc\00", align 1
@drxk_attach = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"No DRXK found!\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@locked_gate_ctrl = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ddb_input*)* @demod_attach_drxk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @demod_attach_drxk(%struct.ddb_input* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ddb_input*, align 8
  %4 = alloca %struct.i2c_adapter*, align 8
  %5 = alloca %struct.ddb_dvb*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.drxk_config, align 8
  store %struct.ddb_input* %0, %struct.ddb_input** %3, align 8
  %8 = load %struct.ddb_input*, %struct.ddb_input** %3, align 8
  %9 = getelementptr inbounds %struct.ddb_input, %struct.ddb_input* %8, i32 0, i32 1
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 2
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  store %struct.i2c_adapter* %13, %struct.i2c_adapter** %4, align 8
  %14 = load %struct.ddb_input*, %struct.ddb_input** %3, align 8
  %15 = getelementptr inbounds %struct.ddb_input, %struct.ddb_input* %14, i32 0, i32 1
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 1
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
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load %struct.device*, %struct.device** %30, align 8
  store %struct.device* %31, %struct.device** %6, align 8
  %32 = call i32 @memset(%struct.drxk_config* %7, i32 0, i32 16)
  %33 = load %struct.ddb_input*, %struct.ddb_input** %3, align 8
  %34 = getelementptr inbounds %struct.ddb_input, %struct.ddb_input* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = and i32 %35, 1
  %37 = add nsw i32 41, %36
  %38 = getelementptr inbounds %struct.drxk_config, %struct.drxk_config* %7, i32 0, i32 0
  store i32 %37, i32* %38, align 8
  %39 = getelementptr inbounds %struct.drxk_config, %struct.drxk_config* %7, i32 0, i32 1
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8** %39, align 8
  %40 = load i32, i32* @drxk_attach, align 4
  %41 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %42 = call %struct.TYPE_10__* @dvb_attach(i32 %40, %struct.drxk_config* %7, %struct.i2c_adapter* %41)
  %43 = load %struct.ddb_dvb*, %struct.ddb_dvb** %5, align 8
  %44 = getelementptr inbounds %struct.ddb_dvb, %struct.ddb_dvb* %43, i32 0, i32 0
  store %struct.TYPE_10__* %42, %struct.TYPE_10__** %44, align 8
  %45 = load %struct.ddb_dvb*, %struct.ddb_dvb** %5, align 8
  %46 = getelementptr inbounds %struct.ddb_dvb, %struct.ddb_dvb* %45, i32 0, i32 0
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %46, align 8
  %48 = icmp ne %struct.TYPE_10__* %47, null
  br i1 %48, label %54, label %49

49:                                               ; preds = %1
  %50 = load %struct.device*, %struct.device** %6, align 8
  %51 = call i32 @dev_err(%struct.device* %50, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %52 = load i32, i32* @ENODEV, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %2, align 4
  br label %74

54:                                               ; preds = %1
  %55 = load %struct.ddb_input*, %struct.ddb_input** %3, align 8
  %56 = load %struct.ddb_dvb*, %struct.ddb_dvb** %5, align 8
  %57 = getelementptr inbounds %struct.ddb_dvb, %struct.ddb_dvb* %56, i32 0, i32 0
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 1
  store %struct.ddb_input* %55, %struct.ddb_input** %59, align 8
  %60 = load %struct.ddb_dvb*, %struct.ddb_dvb** %5, align 8
  %61 = getelementptr inbounds %struct.ddb_dvb, %struct.ddb_dvb* %60, i32 0, i32 0
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.ddb_dvb*, %struct.ddb_dvb** %5, align 8
  %67 = getelementptr inbounds %struct.ddb_dvb, %struct.ddb_dvb* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 8
  %68 = load i32, i32* @locked_gate_ctrl, align 4
  %69 = load %struct.ddb_dvb*, %struct.ddb_dvb** %5, align 8
  %70 = getelementptr inbounds %struct.ddb_dvb, %struct.ddb_dvb* %69, i32 0, i32 0
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 0
  store i32 %68, i32* %73, align 8
  store i32 0, i32* %2, align 4
  br label %74

74:                                               ; preds = %54, %49
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local i32 @memset(%struct.drxk_config*, i32, i32) #1

declare dso_local %struct.TYPE_10__* @dvb_attach(i32, %struct.drxk_config*, %struct.i2c_adapter*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
