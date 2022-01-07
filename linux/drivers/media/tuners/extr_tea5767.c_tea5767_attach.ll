; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/tuners/extr_tea5767.c_tea5767_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/tuners/extr_tea5767.c_tea5767_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.TYPE_6__, %struct.tea5767_priv* }
%struct.TYPE_6__ = type { i32 }
%struct.tea5767_priv = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i8*, %struct.i2c_adapter*, i32 }
%struct.i2c_adapter = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"tea5767\00", align 1
@TEA5767_HIGH_LO_32768 = common dso_local global i32 0, align 4
@tea5767_tuner_ops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"type set to %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Philips TEA5767HN FM Radio\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dvb_frontend* @tea5767_attach(%struct.dvb_frontend* %0, %struct.i2c_adapter* %1, i32 %2) #0 {
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca %struct.dvb_frontend*, align 8
  %6 = alloca %struct.i2c_adapter*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.tea5767_priv*, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %5, align 8
  store %struct.i2c_adapter* %1, %struct.i2c_adapter** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.tea5767_priv* null, %struct.tea5767_priv** %8, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.tea5767_priv* @kzalloc(i32 48, i32 %9)
  store %struct.tea5767_priv* %10, %struct.tea5767_priv** %8, align 8
  %11 = load %struct.tea5767_priv*, %struct.tea5767_priv** %8, align 8
  %12 = icmp eq %struct.tea5767_priv* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store %struct.dvb_frontend* null, %struct.dvb_frontend** %4, align 8
  br label %54

14:                                               ; preds = %3
  %15 = load %struct.tea5767_priv*, %struct.tea5767_priv** %8, align 8
  %16 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %17 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %16, i32 0, i32 1
  store %struct.tea5767_priv* %15, %struct.tea5767_priv** %17, align 8
  %18 = load i32, i32* %7, align 4
  %19 = load %struct.tea5767_priv*, %struct.tea5767_priv** %8, align 8
  %20 = getelementptr inbounds %struct.tea5767_priv, %struct.tea5767_priv* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 2
  store i32 %18, i32* %21, align 8
  %22 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %23 = load %struct.tea5767_priv*, %struct.tea5767_priv** %8, align 8
  %24 = getelementptr inbounds %struct.tea5767_priv, %struct.tea5767_priv* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  store %struct.i2c_adapter* %22, %struct.i2c_adapter** %25, align 8
  %26 = load %struct.tea5767_priv*, %struct.tea5767_priv** %8, align 8
  %27 = getelementptr inbounds %struct.tea5767_priv, %struct.tea5767_priv* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %28, align 8
  %29 = load i32, i32* @TEA5767_HIGH_LO_32768, align 4
  %30 = load %struct.tea5767_priv*, %struct.tea5767_priv** %8, align 8
  %31 = getelementptr inbounds %struct.tea5767_priv, %struct.tea5767_priv* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 5
  store i32 %29, i32* %32, align 4
  %33 = load %struct.tea5767_priv*, %struct.tea5767_priv** %8, align 8
  %34 = getelementptr inbounds %struct.tea5767_priv, %struct.tea5767_priv* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  store i32 1, i32* %35, align 8
  %36 = load %struct.tea5767_priv*, %struct.tea5767_priv** %8, align 8
  %37 = getelementptr inbounds %struct.tea5767_priv, %struct.tea5767_priv* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 1
  store i32 1, i32* %38, align 4
  %39 = load %struct.tea5767_priv*, %struct.tea5767_priv** %8, align 8
  %40 = getelementptr inbounds %struct.tea5767_priv, %struct.tea5767_priv* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 2
  store i32 1, i32* %41, align 8
  %42 = load %struct.tea5767_priv*, %struct.tea5767_priv** %8, align 8
  %43 = getelementptr inbounds %struct.tea5767_priv, %struct.tea5767_priv* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 3
  store i32 1, i32* %44, align 4
  %45 = load %struct.tea5767_priv*, %struct.tea5767_priv** %8, align 8
  %46 = getelementptr inbounds %struct.tea5767_priv, %struct.tea5767_priv* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 4
  store i32 1, i32* %47, align 8
  %48 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %49 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = call i32 @memcpy(i32* %50, i32* @tea5767_tuner_ops, i32 4)
  %52 = call i32 @tuner_info(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %53 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  store %struct.dvb_frontend* %53, %struct.dvb_frontend** %4, align 8
  br label %54

54:                                               ; preds = %14, %13
  %55 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  ret %struct.dvb_frontend* %55
}

declare dso_local %struct.tea5767_priv* @kzalloc(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @tuner_info(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
