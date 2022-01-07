; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ngene/extr_ngene-cards.c_demod_attach_cxd28xx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ngene/extr_ngene-cards.c_demod_attach_cxd28xx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ngene_channel = type { i32, %struct.TYPE_8__*, i32, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.ngene_channel* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.device }
%struct.device = type { i32 }
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
@.str = private unnamed_addr constant [24 x i8] c"CXD28XX attach failed!\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@drxk_gate_ctrl = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ngene_channel*, %struct.i2c_adapter*, i32)* @demod_attach_cxd28xx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @demod_attach_cxd28xx(%struct.ngene_channel* %0, %struct.i2c_adapter* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ngene_channel*, align 8
  %6 = alloca %struct.i2c_adapter*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.cxd2841er_config, align 4
  store %struct.ngene_channel* %0, %struct.ngene_channel** %5, align 8
  store %struct.i2c_adapter* %1, %struct.i2c_adapter** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.ngene_channel*, %struct.ngene_channel** %5, align 8
  %11 = getelementptr inbounds %struct.ngene_channel, %struct.ngene_channel* %10, i32 0, i32 3
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  store %struct.device* %15, %struct.device** %8, align 8
  %16 = load %struct.ngene_channel*, %struct.ngene_channel** %5, align 8
  %17 = getelementptr inbounds %struct.ngene_channel, %struct.ngene_channel* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = and i32 %18, 1
  %20 = icmp ne i32 %19, 0
  %21 = zext i1 %20 to i64
  %22 = select i1 %20, i32 109, i32 108
  %23 = shl i32 %22, 1
  %24 = getelementptr inbounds %struct.cxd2841er_config, %struct.cxd2841er_config* %9, i32 0, i32 0
  store i32 %23, i32* %24, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %3
  %28 = load i32, i32* @SONY_XTAL_24000, align 4
  br label %31

29:                                               ; preds = %3
  %30 = load i32, i32* @SONY_XTAL_20500, align 4
  br label %31

31:                                               ; preds = %29, %27
  %32 = phi i32 [ %28, %27 ], [ %30, %29 ]
  %33 = getelementptr inbounds %struct.cxd2841er_config, %struct.cxd2841er_config* %9, i32 0, i32 2
  store i32 %32, i32* %33, align 4
  %34 = load i32, i32* @CXD2841ER_AUTO_IFHZ, align 4
  %35 = load i32, i32* @CXD2841ER_EARLY_TUNE, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @CXD2841ER_NO_WAIT_LOCK, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @CXD2841ER_NO_AGCNEG, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @CXD2841ER_TSBITS, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @CXD2841ER_TS_SERIAL, align 4
  %44 = or i32 %42, %43
  %45 = getelementptr inbounds %struct.cxd2841er_config, %struct.cxd2841er_config* %9, i32 0, i32 1
  store i32 %44, i32* %45, align 4
  %46 = load i32, i32* @cxd2841er_attach_t_c, align 4
  %47 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %48 = call %struct.TYPE_8__* @dvb_attach(i32 %46, %struct.cxd2841er_config* %9, %struct.i2c_adapter* %47)
  %49 = load %struct.ngene_channel*, %struct.ngene_channel** %5, align 8
  %50 = getelementptr inbounds %struct.ngene_channel, %struct.ngene_channel* %49, i32 0, i32 1
  store %struct.TYPE_8__* %48, %struct.TYPE_8__** %50, align 8
  %51 = load %struct.ngene_channel*, %struct.ngene_channel** %5, align 8
  %52 = getelementptr inbounds %struct.ngene_channel, %struct.ngene_channel* %51, i32 0, i32 1
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %52, align 8
  %54 = icmp ne %struct.TYPE_8__* %53, null
  br i1 %54, label %60, label %55

55:                                               ; preds = %31
  %56 = load %struct.device*, %struct.device** %8, align 8
  %57 = call i32 @dev_err(%struct.device* %56, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %58 = load i32, i32* @ENODEV, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %4, align 4
  br label %80

60:                                               ; preds = %31
  %61 = load %struct.ngene_channel*, %struct.ngene_channel** %5, align 8
  %62 = load %struct.ngene_channel*, %struct.ngene_channel** %5, align 8
  %63 = getelementptr inbounds %struct.ngene_channel, %struct.ngene_channel* %62, i32 0, i32 1
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 1
  store %struct.ngene_channel* %61, %struct.ngene_channel** %65, align 8
  %66 = load %struct.ngene_channel*, %struct.ngene_channel** %5, align 8
  %67 = getelementptr inbounds %struct.ngene_channel, %struct.ngene_channel* %66, i32 0, i32 1
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.ngene_channel*, %struct.ngene_channel** %5, align 8
  %73 = getelementptr inbounds %struct.ngene_channel, %struct.ngene_channel* %72, i32 0, i32 2
  store i32 %71, i32* %73, align 8
  %74 = load i32, i32* @drxk_gate_ctrl, align 4
  %75 = load %struct.ngene_channel*, %struct.ngene_channel** %5, align 8
  %76 = getelementptr inbounds %struct.ngene_channel, %struct.ngene_channel* %75, i32 0, i32 1
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  store i32 %74, i32* %79, align 8
  store i32 0, i32* %4, align 4
  br label %80

80:                                               ; preds = %60, %55
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local %struct.TYPE_8__* @dvb_attach(i32, %struct.cxd2841er_config*, %struct.i2c_adapter*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
