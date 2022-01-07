; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ngene/extr_ngene-cards.c_tuner_attach_tda18271.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ngene/extr_ngene-cards.c_tuner_attach_tda18271.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ngene_channel = type { %struct.TYPE_10__*, %struct.TYPE_8__* }
%struct.TYPE_10__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 (%struct.TYPE_10__*, i32)* }
%struct.TYPE_8__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.device }
%struct.device = type { i32 }
%struct.i2c_adapter = type { i32 }
%struct.dvb_frontend = type { i32 }

@tda18271c2dd_attach = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"No TDA18271 found!\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ngene_channel*)* @tuner_attach_tda18271 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tuner_attach_tda18271(%struct.ngene_channel* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ngene_channel*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca %struct.dvb_frontend*, align 8
  store %struct.ngene_channel* %0, %struct.ngene_channel** %3, align 8
  %7 = load %struct.ngene_channel*, %struct.ngene_channel** %3, align 8
  %8 = getelementptr inbounds %struct.ngene_channel, %struct.ngene_channel* %7, i32 0, i32 1
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  store %struct.device* %12, %struct.device** %4, align 8
  %13 = load %struct.ngene_channel*, %struct.ngene_channel** %3, align 8
  %14 = call %struct.i2c_adapter* @i2c_adapter_from_chan(%struct.ngene_channel* %13)
  store %struct.i2c_adapter* %14, %struct.i2c_adapter** %5, align 8
  %15 = load %struct.ngene_channel*, %struct.ngene_channel** %3, align 8
  %16 = getelementptr inbounds %struct.ngene_channel, %struct.ngene_channel* %15, i32 0, i32 0
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i32 (%struct.TYPE_10__*, i32)*, i32 (%struct.TYPE_10__*, i32)** %19, align 8
  %21 = icmp ne i32 (%struct.TYPE_10__*, i32)* %20, null
  br i1 %21, label %22, label %33

22:                                               ; preds = %1
  %23 = load %struct.ngene_channel*, %struct.ngene_channel** %3, align 8
  %24 = getelementptr inbounds %struct.ngene_channel, %struct.ngene_channel* %23, i32 0, i32 0
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i32 (%struct.TYPE_10__*, i32)*, i32 (%struct.TYPE_10__*, i32)** %27, align 8
  %29 = load %struct.ngene_channel*, %struct.ngene_channel** %3, align 8
  %30 = getelementptr inbounds %struct.ngene_channel, %struct.ngene_channel* %29, i32 0, i32 0
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %30, align 8
  %32 = call i32 %28(%struct.TYPE_10__* %31, i32 1)
  br label %33

33:                                               ; preds = %22, %1
  %34 = load i32, i32* @tda18271c2dd_attach, align 4
  %35 = load %struct.ngene_channel*, %struct.ngene_channel** %3, align 8
  %36 = getelementptr inbounds %struct.ngene_channel, %struct.ngene_channel* %35, i32 0, i32 0
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %36, align 8
  %38 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %39 = call %struct.dvb_frontend* @dvb_attach(i32 %34, %struct.TYPE_10__* %37, %struct.i2c_adapter* %38, i32 96)
  store %struct.dvb_frontend* %39, %struct.dvb_frontend** %6, align 8
  %40 = load %struct.ngene_channel*, %struct.ngene_channel** %3, align 8
  %41 = getelementptr inbounds %struct.ngene_channel, %struct.ngene_channel* %40, i32 0, i32 0
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load i32 (%struct.TYPE_10__*, i32)*, i32 (%struct.TYPE_10__*, i32)** %44, align 8
  %46 = icmp ne i32 (%struct.TYPE_10__*, i32)* %45, null
  br i1 %46, label %47, label %58

47:                                               ; preds = %33
  %48 = load %struct.ngene_channel*, %struct.ngene_channel** %3, align 8
  %49 = getelementptr inbounds %struct.ngene_channel, %struct.ngene_channel* %48, i32 0, i32 0
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load i32 (%struct.TYPE_10__*, i32)*, i32 (%struct.TYPE_10__*, i32)** %52, align 8
  %54 = load %struct.ngene_channel*, %struct.ngene_channel** %3, align 8
  %55 = getelementptr inbounds %struct.ngene_channel, %struct.ngene_channel* %54, i32 0, i32 0
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %55, align 8
  %57 = call i32 %53(%struct.TYPE_10__* %56, i32 0)
  br label %58

58:                                               ; preds = %47, %33
  %59 = load %struct.dvb_frontend*, %struct.dvb_frontend** %6, align 8
  %60 = icmp ne %struct.dvb_frontend* %59, null
  br i1 %60, label %66, label %61

61:                                               ; preds = %58
  %62 = load %struct.device*, %struct.device** %4, align 8
  %63 = call i32 @dev_err(%struct.device* %62, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %64 = load i32, i32* @ENODEV, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %2, align 4
  br label %67

66:                                               ; preds = %58
  store i32 0, i32* %2, align 4
  br label %67

67:                                               ; preds = %66, %61
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local %struct.i2c_adapter* @i2c_adapter_from_chan(%struct.ngene_channel*) #1

declare dso_local %struct.dvb_frontend* @dvb_attach(i32, %struct.TYPE_10__*, %struct.i2c_adapter*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
