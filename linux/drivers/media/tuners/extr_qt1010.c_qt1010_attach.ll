; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/tuners/extr_qt1010.c_qt1010_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/tuners/extr_qt1010.c_qt1010_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.qt1010_priv*, %struct.TYPE_2__ }
%struct.qt1010_priv = type { %struct.i2c_adapter*, %struct.qt1010_config* }
%struct.TYPE_2__ = type { i32, i32 (%struct.dvb_frontend.0*, i32)* }
%struct.dvb_frontend.0 = type opaque
%struct.i2c_adapter = type { i32 }
%struct.qt1010_config = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"%s: Quantek QT1010 successfully identified\0A\00", align 1
@KBUILD_MODNAME = common dso_local global i32 0, align 4
@qt1010_tuner_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dvb_frontend* @qt1010_attach(%struct.dvb_frontend* %0, %struct.i2c_adapter* %1, %struct.qt1010_config* %2) #0 {
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca %struct.dvb_frontend*, align 8
  %6 = alloca %struct.i2c_adapter*, align 8
  %7 = alloca %struct.qt1010_config*, align 8
  %8 = alloca %struct.qt1010_priv*, align 8
  %9 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %5, align 8
  store %struct.i2c_adapter* %1, %struct.i2c_adapter** %6, align 8
  store %struct.qt1010_config* %2, %struct.qt1010_config** %7, align 8
  store %struct.qt1010_priv* null, %struct.qt1010_priv** %8, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.qt1010_priv* @kzalloc(i32 16, i32 %10)
  store %struct.qt1010_priv* %11, %struct.qt1010_priv** %8, align 8
  %12 = load %struct.qt1010_priv*, %struct.qt1010_priv** %8, align 8
  %13 = icmp eq %struct.qt1010_priv* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store %struct.dvb_frontend* null, %struct.dvb_frontend** %4, align 8
  br label %74

15:                                               ; preds = %3
  %16 = load %struct.qt1010_config*, %struct.qt1010_config** %7, align 8
  %17 = load %struct.qt1010_priv*, %struct.qt1010_priv** %8, align 8
  %18 = getelementptr inbounds %struct.qt1010_priv, %struct.qt1010_priv* %17, i32 0, i32 1
  store %struct.qt1010_config* %16, %struct.qt1010_config** %18, align 8
  %19 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %20 = load %struct.qt1010_priv*, %struct.qt1010_priv** %8, align 8
  %21 = getelementptr inbounds %struct.qt1010_priv, %struct.qt1010_priv* %20, i32 0, i32 0
  store %struct.i2c_adapter* %19, %struct.i2c_adapter** %21, align 8
  %22 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %23 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %24, align 8
  %26 = icmp ne i32 (%struct.dvb_frontend.0*, i32)* %25, null
  br i1 %26, label %27, label %35

27:                                               ; preds = %15
  %28 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %29 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %30, align 8
  %32 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %33 = bitcast %struct.dvb_frontend* %32 to %struct.dvb_frontend.0*
  %34 = call i32 %31(%struct.dvb_frontend.0* %33, i32 1)
  br label %35

35:                                               ; preds = %27, %15
  %36 = load %struct.qt1010_priv*, %struct.qt1010_priv** %8, align 8
  %37 = call i64 @qt1010_readreg(%struct.qt1010_priv* %36, i32 41, i32* %9)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %35
  %40 = load i32, i32* %9, align 4
  %41 = icmp ne i32 %40, 57
  br i1 %41, label %42, label %45

42:                                               ; preds = %39, %35
  %43 = load %struct.qt1010_priv*, %struct.qt1010_priv** %8, align 8
  %44 = call i32 @kfree(%struct.qt1010_priv* %43)
  store %struct.dvb_frontend* null, %struct.dvb_frontend** %4, align 8
  br label %74

45:                                               ; preds = %39
  %46 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %47 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %48, align 8
  %50 = icmp ne i32 (%struct.dvb_frontend.0*, i32)* %49, null
  br i1 %50, label %51, label %59

51:                                               ; preds = %45
  %52 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %53 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %54, align 8
  %56 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %57 = bitcast %struct.dvb_frontend* %56 to %struct.dvb_frontend.0*
  %58 = call i32 %55(%struct.dvb_frontend.0* %57, i32 0)
  br label %59

59:                                               ; preds = %51, %45
  %60 = load %struct.qt1010_priv*, %struct.qt1010_priv** %8, align 8
  %61 = getelementptr inbounds %struct.qt1010_priv, %struct.qt1010_priv* %60, i32 0, i32 0
  %62 = load %struct.i2c_adapter*, %struct.i2c_adapter** %61, align 8
  %63 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %62, i32 0, i32 0
  %64 = load i32, i32* @KBUILD_MODNAME, align 4
  %65 = call i32 @dev_info(i32* %63, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %64)
  %66 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %67 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = call i32 @memcpy(i32* %68, i32* @qt1010_tuner_ops, i32 4)
  %70 = load %struct.qt1010_priv*, %struct.qt1010_priv** %8, align 8
  %71 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %72 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %71, i32 0, i32 0
  store %struct.qt1010_priv* %70, %struct.qt1010_priv** %72, align 8
  %73 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  store %struct.dvb_frontend* %73, %struct.dvb_frontend** %4, align 8
  br label %74

74:                                               ; preds = %59, %42, %14
  %75 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  ret %struct.dvb_frontend* %75
}

declare dso_local %struct.qt1010_priv* @kzalloc(i32, i32) #1

declare dso_local i64 @qt1010_readreg(%struct.qt1010_priv*, i32, i32*) #1

declare dso_local i32 @kfree(%struct.qt1010_priv*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
