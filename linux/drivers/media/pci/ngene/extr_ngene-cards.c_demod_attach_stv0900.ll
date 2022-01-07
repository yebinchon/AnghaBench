; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ngene/extr_ngene-cards.c_demod_attach_stv0900.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ngene/extr_ngene-cards.c_demod_attach_stv0900.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ngene_channel = type { i64, %struct.TYPE_9__*, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { %struct.ngene_channel* }
%struct.TYPE_8__ = type { %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32*, i64* }
%struct.TYPE_6__ = type { %struct.device }
%struct.device = type { i32 }
%struct.i2c_adapter = type { i32 }
%struct.stv090x_config = type { i64 }

@stv090x_attach = common dso_local global i32 0, align 4
@STV090x_DEMODULATOR_0 = common dso_local global i32 0, align 4
@STV090x_DEMODULATOR_1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"No STV0900 found!\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@lnbh24_attach = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"No LNBH24 found!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ngene_channel*)* @demod_attach_stv0900 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @demod_attach_stv0900(%struct.ngene_channel* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ngene_channel*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca %struct.stv090x_config*, align 8
  store %struct.ngene_channel* %0, %struct.ngene_channel** %3, align 8
  %7 = load %struct.ngene_channel*, %struct.ngene_channel** %3, align 8
  %8 = getelementptr inbounds %struct.ngene_channel, %struct.ngene_channel* %7, i32 0, i32 2
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 1
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  store %struct.device* %12, %struct.device** %4, align 8
  %13 = load %struct.ngene_channel*, %struct.ngene_channel** %3, align 8
  %14 = call %struct.i2c_adapter* @i2c_adapter_from_chan(%struct.ngene_channel* %13)
  store %struct.i2c_adapter* %14, %struct.i2c_adapter** %5, align 8
  %15 = load %struct.ngene_channel*, %struct.ngene_channel** %3, align 8
  %16 = getelementptr inbounds %struct.ngene_channel, %struct.ngene_channel* %15, i32 0, i32 2
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 1
  %21 = load i64*, i64** %20, align 8
  %22 = load %struct.ngene_channel*, %struct.ngene_channel** %3, align 8
  %23 = getelementptr inbounds %struct.ngene_channel, %struct.ngene_channel* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds i64, i64* %21, i64 %24
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to %struct.stv090x_config*
  store %struct.stv090x_config* %27, %struct.stv090x_config** %6, align 8
  %28 = load i32, i32* @stv090x_attach, align 4
  %29 = load %struct.stv090x_config*, %struct.stv090x_config** %6, align 8
  %30 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %31 = load %struct.ngene_channel*, %struct.ngene_channel** %3, align 8
  %32 = getelementptr inbounds %struct.ngene_channel, %struct.ngene_channel* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = and i64 %33, 1
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %1
  %37 = load i32, i32* @STV090x_DEMODULATOR_0, align 4
  br label %40

38:                                               ; preds = %1
  %39 = load i32, i32* @STV090x_DEMODULATOR_1, align 4
  br label %40

40:                                               ; preds = %38, %36
  %41 = phi i32 [ %37, %36 ], [ %39, %38 ]
  %42 = call %struct.TYPE_9__* (i32, ...) @dvb_attach(i32 %28, %struct.stv090x_config* %29, %struct.i2c_adapter* %30, i32 %41)
  %43 = load %struct.ngene_channel*, %struct.ngene_channel** %3, align 8
  %44 = getelementptr inbounds %struct.ngene_channel, %struct.ngene_channel* %43, i32 0, i32 1
  store %struct.TYPE_9__* %42, %struct.TYPE_9__** %44, align 8
  %45 = load %struct.ngene_channel*, %struct.ngene_channel** %3, align 8
  %46 = getelementptr inbounds %struct.ngene_channel, %struct.ngene_channel* %45, i32 0, i32 1
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %46, align 8
  %48 = icmp eq %struct.TYPE_9__* %47, null
  br i1 %48, label %49, label %54

49:                                               ; preds = %40
  %50 = load %struct.device*, %struct.device** %4, align 8
  %51 = call i32 @dev_err(%struct.device* %50, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %52 = load i32, i32* @ENODEV, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %2, align 4
  br label %97

54:                                               ; preds = %40
  %55 = load %struct.stv090x_config*, %struct.stv090x_config** %6, align 8
  %56 = getelementptr inbounds %struct.stv090x_config, %struct.stv090x_config* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %54
  %60 = load %struct.ngene_channel*, %struct.ngene_channel** %3, align 8
  %61 = load %struct.ngene_channel*, %struct.ngene_channel** %3, align 8
  %62 = getelementptr inbounds %struct.ngene_channel, %struct.ngene_channel* %61, i32 0, i32 1
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  store %struct.ngene_channel* %60, %struct.ngene_channel** %64, align 8
  br label %65

65:                                               ; preds = %59, %54
  %66 = load i32, i32* @lnbh24_attach, align 4
  %67 = load %struct.ngene_channel*, %struct.ngene_channel** %3, align 8
  %68 = getelementptr inbounds %struct.ngene_channel, %struct.ngene_channel* %67, i32 0, i32 1
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %68, align 8
  %70 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %71 = load %struct.ngene_channel*, %struct.ngene_channel** %3, align 8
  %72 = getelementptr inbounds %struct.ngene_channel, %struct.ngene_channel* %71, i32 0, i32 2
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = load %struct.ngene_channel*, %struct.ngene_channel** %3, align 8
  %79 = getelementptr inbounds %struct.ngene_channel, %struct.ngene_channel* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = getelementptr inbounds i32, i32* %77, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = call %struct.TYPE_9__* (i32, ...) @dvb_attach(i32 %66, %struct.TYPE_9__* %69, %struct.i2c_adapter* %70, i32 0, i32 0, i32 %82)
  %84 = icmp ne %struct.TYPE_9__* %83, null
  br i1 %84, label %96, label %85

85:                                               ; preds = %65
  %86 = load %struct.device*, %struct.device** %4, align 8
  %87 = call i32 @dev_err(%struct.device* %86, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %88 = load %struct.ngene_channel*, %struct.ngene_channel** %3, align 8
  %89 = getelementptr inbounds %struct.ngene_channel, %struct.ngene_channel* %88, i32 0, i32 1
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %89, align 8
  %91 = call i32 @dvb_frontend_detach(%struct.TYPE_9__* %90)
  %92 = load %struct.ngene_channel*, %struct.ngene_channel** %3, align 8
  %93 = getelementptr inbounds %struct.ngene_channel, %struct.ngene_channel* %92, i32 0, i32 1
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %93, align 8
  %94 = load i32, i32* @ENODEV, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %2, align 4
  br label %97

96:                                               ; preds = %65
  store i32 0, i32* %2, align 4
  br label %97

97:                                               ; preds = %96, %85, %49
  %98 = load i32, i32* %2, align 4
  ret i32 %98
}

declare dso_local %struct.i2c_adapter* @i2c_adapter_from_chan(%struct.ngene_channel*) #1

declare dso_local %struct.TYPE_9__* @dvb_attach(i32, ...) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @dvb_frontend_detach(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
