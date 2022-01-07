; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ddbridge/extr_ddbridge-core.c_demod_attach_cxd28xx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ddbridge/extr_ddbridge-core.c_demod_attach_cxd28xx.c"
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
%struct.cxd2841er_config = type { i32, i32, i32 }

@SONY_XTAL_24000 = common dso_local global i32 0, align 4
@SONY_XTAL_20500 = common dso_local global i32 0, align 4
@CXD2841ER_AUTO_IFHZ = common dso_local global i32 0, align 4
@CXD2841ER_EARLY_TUNE = common dso_local global i32 0, align 4
@CXD2841ER_NO_WAIT_LOCK = common dso_local global i32 0, align 4
@CXD2841ER_NO_AGCNEG = common dso_local global i32 0, align 4
@CXD2841ER_TSBITS = common dso_local global i32 0, align 4
@CXD2841ER_TS_SERIAL = common dso_local global i32 0, align 4
@cxd2841er_attach_t_c = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"No cxd2837/38/43/54 found!\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@locked_gate_ctrl = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ddb_input*, i32, i32)* @demod_attach_cxd28xx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @demod_attach_cxd28xx(%struct.ddb_input* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ddb_input*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.i2c_adapter*, align 8
  %9 = alloca %struct.ddb_dvb*, align 8
  %10 = alloca %struct.device*, align 8
  %11 = alloca %struct.cxd2841er_config, align 4
  store %struct.ddb_input* %0, %struct.ddb_input** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.ddb_input*, %struct.ddb_input** %5, align 8
  %13 = getelementptr inbounds %struct.ddb_input, %struct.ddb_input* %12, i32 0, i32 1
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 2
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  store %struct.i2c_adapter* %17, %struct.i2c_adapter** %8, align 8
  %18 = load %struct.ddb_input*, %struct.ddb_input** %5, align 8
  %19 = getelementptr inbounds %struct.ddb_input, %struct.ddb_input* %18, i32 0, i32 1
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 1
  %22 = load %struct.ddb_dvb*, %struct.ddb_dvb** %21, align 8
  %23 = load %struct.ddb_input*, %struct.ddb_input** %5, align 8
  %24 = getelementptr inbounds %struct.ddb_input, %struct.ddb_input* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = and i32 %25, 1
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.ddb_dvb, %struct.ddb_dvb* %22, i64 %27
  store %struct.ddb_dvb* %28, %struct.ddb_dvb** %9, align 8
  %29 = load %struct.ddb_input*, %struct.ddb_input** %5, align 8
  %30 = getelementptr inbounds %struct.ddb_input, %struct.ddb_input* %29, i32 0, i32 1
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load %struct.device*, %struct.device** %34, align 8
  store %struct.device* %35, %struct.device** %10, align 8
  %36 = load %struct.ddb_input*, %struct.ddb_input** %5, align 8
  %37 = getelementptr inbounds %struct.ddb_input, %struct.ddb_input* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = and i32 %38, 1
  %40 = icmp ne i32 %39, 0
  %41 = zext i1 %40 to i64
  %42 = select i1 %40, i32 109, i32 108
  %43 = shl i32 %42, 1
  %44 = getelementptr inbounds %struct.cxd2841er_config, %struct.cxd2841er_config* %11, i32 0, i32 0
  store i32 %43, i32* %44, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %3
  %48 = load i32, i32* @SONY_XTAL_24000, align 4
  br label %51

49:                                               ; preds = %3
  %50 = load i32, i32* @SONY_XTAL_20500, align 4
  br label %51

51:                                               ; preds = %49, %47
  %52 = phi i32 [ %48, %47 ], [ %50, %49 ]
  %53 = getelementptr inbounds %struct.cxd2841er_config, %struct.cxd2841er_config* %11, i32 0, i32 2
  store i32 %52, i32* %53, align 4
  %54 = load i32, i32* @CXD2841ER_AUTO_IFHZ, align 4
  %55 = load i32, i32* @CXD2841ER_EARLY_TUNE, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @CXD2841ER_NO_WAIT_LOCK, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @CXD2841ER_NO_AGCNEG, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @CXD2841ER_TSBITS, align 4
  %62 = or i32 %60, %61
  %63 = getelementptr inbounds %struct.cxd2841er_config, %struct.cxd2841er_config* %11, i32 0, i32 1
  store i32 %62, i32* %63, align 4
  %64 = load i32, i32* %6, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %71, label %66

66:                                               ; preds = %51
  %67 = load i32, i32* @CXD2841ER_TS_SERIAL, align 4
  %68 = getelementptr inbounds %struct.cxd2841er_config, %struct.cxd2841er_config* %11, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = or i32 %69, %67
  store i32 %70, i32* %68, align 4
  br label %71

71:                                               ; preds = %66, %51
  %72 = load i32, i32* @cxd2841er_attach_t_c, align 4
  %73 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  %74 = call %struct.TYPE_10__* @dvb_attach(i32 %72, %struct.cxd2841er_config* %11, %struct.i2c_adapter* %73)
  %75 = load %struct.ddb_dvb*, %struct.ddb_dvb** %9, align 8
  %76 = getelementptr inbounds %struct.ddb_dvb, %struct.ddb_dvb* %75, i32 0, i32 0
  store %struct.TYPE_10__* %74, %struct.TYPE_10__** %76, align 8
  %77 = load %struct.ddb_dvb*, %struct.ddb_dvb** %9, align 8
  %78 = getelementptr inbounds %struct.ddb_dvb, %struct.ddb_dvb* %77, i32 0, i32 0
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %78, align 8
  %80 = icmp ne %struct.TYPE_10__* %79, null
  br i1 %80, label %86, label %81

81:                                               ; preds = %71
  %82 = load %struct.device*, %struct.device** %10, align 8
  %83 = call i32 @dev_err(%struct.device* %82, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %84 = load i32, i32* @ENODEV, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %4, align 4
  br label %106

86:                                               ; preds = %71
  %87 = load %struct.ddb_input*, %struct.ddb_input** %5, align 8
  %88 = load %struct.ddb_dvb*, %struct.ddb_dvb** %9, align 8
  %89 = getelementptr inbounds %struct.ddb_dvb, %struct.ddb_dvb* %88, i32 0, i32 0
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 1
  store %struct.ddb_input* %87, %struct.ddb_input** %91, align 8
  %92 = load %struct.ddb_dvb*, %struct.ddb_dvb** %9, align 8
  %93 = getelementptr inbounds %struct.ddb_dvb, %struct.ddb_dvb* %92, i32 0, i32 0
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.ddb_dvb*, %struct.ddb_dvb** %9, align 8
  %99 = getelementptr inbounds %struct.ddb_dvb, %struct.ddb_dvb* %98, i32 0, i32 1
  store i32 %97, i32* %99, align 8
  %100 = load i32, i32* @locked_gate_ctrl, align 4
  %101 = load %struct.ddb_dvb*, %struct.ddb_dvb** %9, align 8
  %102 = getelementptr inbounds %struct.ddb_dvb, %struct.ddb_dvb* %101, i32 0, i32 0
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 0
  store i32 %100, i32* %105, align 8
  store i32 0, i32* %4, align 4
  br label %106

106:                                              ; preds = %86, %81
  %107 = load i32, i32* %4, align 4
  ret i32 %107
}

declare dso_local %struct.TYPE_10__* @dvb_attach(i32, %struct.cxd2841er_config*, %struct.i2c_adapter*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
