; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ngene/extr_ngene-cards.c_demod_attach_drxk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ngene/extr_ngene-cards.c_demod_attach_drxk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ngene_channel = type { i32, %struct.TYPE_8__*, i32, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.ngene_channel* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.device }
%struct.device = type { i32 }
%struct.i2c_adapter = type { i32 }
%struct.drxk_config = type { i8*, i32, i32 }

@.str = private unnamed_addr constant [11 x i8] c"drxk_a3.mc\00", align 1
@drxk_attach = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"No DRXK found!\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@drxk_gate_ctrl = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ngene_channel*, %struct.i2c_adapter*)* @demod_attach_drxk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @demod_attach_drxk(%struct.ngene_channel* %0, %struct.i2c_adapter* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ngene_channel*, align 8
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.drxk_config, align 8
  store %struct.ngene_channel* %0, %struct.ngene_channel** %4, align 8
  store %struct.i2c_adapter* %1, %struct.i2c_adapter** %5, align 8
  %8 = load %struct.ngene_channel*, %struct.ngene_channel** %4, align 8
  %9 = getelementptr inbounds %struct.ngene_channel, %struct.ngene_channel* %8, i32 0, i32 3
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  store %struct.device* %13, %struct.device** %6, align 8
  %14 = call i32 @memset(%struct.drxk_config* %7, i32 0, i32 16)
  %15 = getelementptr inbounds %struct.drxk_config, %struct.drxk_config* %7, i32 0, i32 0
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8** %15, align 8
  %16 = getelementptr inbounds %struct.drxk_config, %struct.drxk_config* %7, i32 0, i32 1
  store i32 4, i32* %16, align 8
  %17 = load %struct.ngene_channel*, %struct.ngene_channel** %4, align 8
  %18 = getelementptr inbounds %struct.ngene_channel, %struct.ngene_channel* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = xor i32 %19, 2
  %21 = add nsw i32 41, %20
  %22 = getelementptr inbounds %struct.drxk_config, %struct.drxk_config* %7, i32 0, i32 2
  store i32 %21, i32* %22, align 4
  %23 = load i32, i32* @drxk_attach, align 4
  %24 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %25 = call %struct.TYPE_8__* @dvb_attach(i32 %23, %struct.drxk_config* %7, %struct.i2c_adapter* %24)
  %26 = load %struct.ngene_channel*, %struct.ngene_channel** %4, align 8
  %27 = getelementptr inbounds %struct.ngene_channel, %struct.ngene_channel* %26, i32 0, i32 1
  store %struct.TYPE_8__* %25, %struct.TYPE_8__** %27, align 8
  %28 = load %struct.ngene_channel*, %struct.ngene_channel** %4, align 8
  %29 = getelementptr inbounds %struct.ngene_channel, %struct.ngene_channel* %28, i32 0, i32 1
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %29, align 8
  %31 = icmp ne %struct.TYPE_8__* %30, null
  br i1 %31, label %37, label %32

32:                                               ; preds = %2
  %33 = load %struct.device*, %struct.device** %6, align 8
  %34 = call i32 @dev_err(%struct.device* %33, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %35 = load i32, i32* @ENODEV, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %57

37:                                               ; preds = %2
  %38 = load %struct.ngene_channel*, %struct.ngene_channel** %4, align 8
  %39 = load %struct.ngene_channel*, %struct.ngene_channel** %4, align 8
  %40 = getelementptr inbounds %struct.ngene_channel, %struct.ngene_channel* %39, i32 0, i32 1
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 1
  store %struct.ngene_channel* %38, %struct.ngene_channel** %42, align 8
  %43 = load %struct.ngene_channel*, %struct.ngene_channel** %4, align 8
  %44 = getelementptr inbounds %struct.ngene_channel, %struct.ngene_channel* %43, i32 0, i32 1
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.ngene_channel*, %struct.ngene_channel** %4, align 8
  %50 = getelementptr inbounds %struct.ngene_channel, %struct.ngene_channel* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 8
  %51 = load i32, i32* @drxk_gate_ctrl, align 4
  %52 = load %struct.ngene_channel*, %struct.ngene_channel** %4, align 8
  %53 = getelementptr inbounds %struct.ngene_channel, %struct.ngene_channel* %52, i32 0, i32 1
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  store i32 %51, i32* %56, align 8
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %37, %32
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @memset(%struct.drxk_config*, i32, i32) #1

declare dso_local %struct.TYPE_8__* @dvb_attach(i32, %struct.drxk_config*, %struct.i2c_adapter*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
