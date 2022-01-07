; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ngene/extr_ngene-cards.c_demod_attach_stv0367.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ngene/extr_ngene-cards.c_demod_attach_stv0367.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ngene_channel = type { i32, %struct.TYPE_8__*, i32, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { %struct.TYPE_5__, %struct.ngene_channel* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.device }
%struct.device = type { i32 }
%struct.i2c_adapter = type { i32 }

@stv0367ddb_attach = common dso_local global i32 0, align 4
@ddb_stv0367_config = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [29 x i8] c"stv0367ddb_attach() failed!\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@drxk_gate_ctrl = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ngene_channel*, %struct.i2c_adapter*)* @demod_attach_stv0367 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @demod_attach_stv0367(%struct.ngene_channel* %0, %struct.i2c_adapter* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ngene_channel*, align 8
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca %struct.device*, align 8
  store %struct.ngene_channel* %0, %struct.ngene_channel** %4, align 8
  store %struct.i2c_adapter* %1, %struct.i2c_adapter** %5, align 8
  %7 = load %struct.ngene_channel*, %struct.ngene_channel** %4, align 8
  %8 = getelementptr inbounds %struct.ngene_channel, %struct.ngene_channel* %7, i32 0, i32 3
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  store %struct.device* %12, %struct.device** %6, align 8
  %13 = load i32, i32* @stv0367ddb_attach, align 4
  %14 = load i32*, i32** @ddb_stv0367_config, align 8
  %15 = load %struct.ngene_channel*, %struct.ngene_channel** %4, align 8
  %16 = getelementptr inbounds %struct.ngene_channel, %struct.ngene_channel* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = and i32 %17, 1
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %14, i64 %19
  %21 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %22 = call %struct.TYPE_8__* @dvb_attach(i32 %13, i32* %20, %struct.i2c_adapter* %21)
  %23 = load %struct.ngene_channel*, %struct.ngene_channel** %4, align 8
  %24 = getelementptr inbounds %struct.ngene_channel, %struct.ngene_channel* %23, i32 0, i32 1
  store %struct.TYPE_8__* %22, %struct.TYPE_8__** %24, align 8
  %25 = load %struct.ngene_channel*, %struct.ngene_channel** %4, align 8
  %26 = getelementptr inbounds %struct.ngene_channel, %struct.ngene_channel* %25, i32 0, i32 1
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %26, align 8
  %28 = icmp ne %struct.TYPE_8__* %27, null
  br i1 %28, label %34, label %29

29:                                               ; preds = %2
  %30 = load %struct.device*, %struct.device** %6, align 8
  %31 = call i32 @dev_err(%struct.device* %30, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @ENODEV, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %54

34:                                               ; preds = %2
  %35 = load %struct.ngene_channel*, %struct.ngene_channel** %4, align 8
  %36 = load %struct.ngene_channel*, %struct.ngene_channel** %4, align 8
  %37 = getelementptr inbounds %struct.ngene_channel, %struct.ngene_channel* %36, i32 0, i32 1
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 1
  store %struct.ngene_channel* %35, %struct.ngene_channel** %39, align 8
  %40 = load %struct.ngene_channel*, %struct.ngene_channel** %4, align 8
  %41 = getelementptr inbounds %struct.ngene_channel, %struct.ngene_channel* %40, i32 0, i32 1
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.ngene_channel*, %struct.ngene_channel** %4, align 8
  %47 = getelementptr inbounds %struct.ngene_channel, %struct.ngene_channel* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 8
  %48 = load i32, i32* @drxk_gate_ctrl, align 4
  %49 = load %struct.ngene_channel*, %struct.ngene_channel** %4, align 8
  %50 = getelementptr inbounds %struct.ngene_channel, %struct.ngene_channel* %49, i32 0, i32 1
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  store i32 %48, i32* %53, align 8
  store i32 0, i32* %3, align 4
  br label %54

54:                                               ; preds = %34, %29
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local %struct.TYPE_8__* @dvb_attach(i32, i32*, %struct.i2c_adapter*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
