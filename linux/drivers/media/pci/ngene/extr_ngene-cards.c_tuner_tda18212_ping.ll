; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ngene/extr_ngene-cards.c_tuner_tda18212_ping.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ngene/extr_ngene-cards.c_tuner_tda18212_ping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ngene_channel = type { %struct.TYPE_9__*, %struct.TYPE_7__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 (%struct.TYPE_9__*, i32)* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.device }
%struct.device = type { i32 }
%struct.i2c_adapter = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"stv0367-tda18212 tuner ping\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"tda18212 ping 1 fail\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"tda18212 ping failed, expect problems\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ngene_channel*, %struct.i2c_adapter*, i16)* @tuner_tda18212_ping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tuner_tda18212_ping(%struct.ngene_channel* %0, %struct.i2c_adapter* %1, i16 zeroext %2) #0 {
  %4 = alloca %struct.ngene_channel*, align 8
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca i16, align 2
  %7 = alloca %struct.device*, align 8
  %8 = alloca [2 x i32], align 4
  %9 = alloca i32, align 4
  store %struct.ngene_channel* %0, %struct.ngene_channel** %4, align 8
  store %struct.i2c_adapter* %1, %struct.i2c_adapter** %5, align 8
  store i16 %2, i16* %6, align 2
  %10 = load %struct.ngene_channel*, %struct.ngene_channel** %4, align 8
  %11 = getelementptr inbounds %struct.ngene_channel, %struct.ngene_channel* %10, i32 0, i32 1
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  store %struct.device* %15, %struct.device** %7, align 8
  store i32 0, i32* %9, align 4
  %16 = load %struct.device*, %struct.device** %7, align 8
  %17 = call i32 @dev_dbg(%struct.device* %16, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.ngene_channel*, %struct.ngene_channel** %4, align 8
  %19 = getelementptr inbounds %struct.ngene_channel, %struct.ngene_channel* %18, i32 0, i32 0
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i32 (%struct.TYPE_9__*, i32)*, i32 (%struct.TYPE_9__*, i32)** %22, align 8
  %24 = icmp ne i32 (%struct.TYPE_9__*, i32)* %23, null
  br i1 %24, label %25, label %36

25:                                               ; preds = %3
  %26 = load %struct.ngene_channel*, %struct.ngene_channel** %4, align 8
  %27 = getelementptr inbounds %struct.ngene_channel, %struct.ngene_channel* %26, i32 0, i32 0
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i32 (%struct.TYPE_9__*, i32)*, i32 (%struct.TYPE_9__*, i32)** %30, align 8
  %32 = load %struct.ngene_channel*, %struct.ngene_channel** %4, align 8
  %33 = getelementptr inbounds %struct.ngene_channel, %struct.ngene_channel* %32, i32 0, i32 0
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %33, align 8
  %35 = call i32 %31(%struct.TYPE_9__* %34, i32 1)
  br label %36

36:                                               ; preds = %25, %3
  %37 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %38 = load i16, i16* %6, align 2
  %39 = load i32, i32* %9, align 4
  %40 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %41 = call i64 @i2c_read_regs(%struct.i2c_adapter* %37, i16 zeroext %38, i32 %39, i32* %40, i32 8)
  %42 = icmp slt i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %36
  %44 = load %struct.device*, %struct.device** %7, align 8
  %45 = call i32 @dev_dbg(%struct.device* %44, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %46

46:                                               ; preds = %43, %36
  %47 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %48 = load i16, i16* %6, align 2
  %49 = load i32, i32* %9, align 4
  %50 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %51 = call i64 @i2c_read_regs(%struct.i2c_adapter* %47, i16 zeroext %48, i32 %49, i32* %50, i32 8)
  %52 = icmp slt i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %46
  %54 = load %struct.device*, %struct.device** %7, align 8
  %55 = call i32 @dev_warn(%struct.device* %54, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  br label %56

56:                                               ; preds = %53, %46
  %57 = load %struct.ngene_channel*, %struct.ngene_channel** %4, align 8
  %58 = getelementptr inbounds %struct.ngene_channel, %struct.ngene_channel* %57, i32 0, i32 0
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = load i32 (%struct.TYPE_9__*, i32)*, i32 (%struct.TYPE_9__*, i32)** %61, align 8
  %63 = icmp ne i32 (%struct.TYPE_9__*, i32)* %62, null
  br i1 %63, label %64, label %75

64:                                               ; preds = %56
  %65 = load %struct.ngene_channel*, %struct.ngene_channel** %4, align 8
  %66 = getelementptr inbounds %struct.ngene_channel, %struct.ngene_channel* %65, i32 0, i32 0
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = load i32 (%struct.TYPE_9__*, i32)*, i32 (%struct.TYPE_9__*, i32)** %69, align 8
  %71 = load %struct.ngene_channel*, %struct.ngene_channel** %4, align 8
  %72 = getelementptr inbounds %struct.ngene_channel, %struct.ngene_channel* %71, i32 0, i32 0
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %72, align 8
  %74 = call i32 %70(%struct.TYPE_9__* %73, i32 0)
  br label %75

75:                                               ; preds = %64, %56
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
