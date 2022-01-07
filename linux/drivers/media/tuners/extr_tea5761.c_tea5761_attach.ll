; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/tuners/extr_tea5761.c_tea5761_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/tuners/extr_tea5761.c_tea5761_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.TYPE_4__, %struct.tea5761_priv* }
%struct.TYPE_4__ = type { i32 }
%struct.tea5761_priv = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8*, %struct.i2c_adapter*, i32 }
%struct.i2c_adapter = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"tea5761\00", align 1
@tea5761_tuner_ops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"type set to %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Philips TEA5761HN FM Radio\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dvb_frontend* @tea5761_attach(%struct.dvb_frontend* %0, %struct.i2c_adapter* %1, i32 %2) #0 {
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca %struct.dvb_frontend*, align 8
  %6 = alloca %struct.i2c_adapter*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.tea5761_priv*, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %5, align 8
  store %struct.i2c_adapter* %1, %struct.i2c_adapter** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.tea5761_priv* null, %struct.tea5761_priv** %8, align 8
  %9 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %10 = load i32, i32* %7, align 4
  %11 = call i64 @tea5761_autodetection(%struct.i2c_adapter* %9, i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store %struct.dvb_frontend* null, %struct.dvb_frontend** %4, align 8
  br label %41

14:                                               ; preds = %3
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.tea5761_priv* @kzalloc(i32 24, i32 %15)
  store %struct.tea5761_priv* %16, %struct.tea5761_priv** %8, align 8
  %17 = load %struct.tea5761_priv*, %struct.tea5761_priv** %8, align 8
  %18 = icmp eq %struct.tea5761_priv* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  store %struct.dvb_frontend* null, %struct.dvb_frontend** %4, align 8
  br label %41

20:                                               ; preds = %14
  %21 = load %struct.tea5761_priv*, %struct.tea5761_priv** %8, align 8
  %22 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %23 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %22, i32 0, i32 1
  store %struct.tea5761_priv* %21, %struct.tea5761_priv** %23, align 8
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.tea5761_priv*, %struct.tea5761_priv** %8, align 8
  %26 = getelementptr inbounds %struct.tea5761_priv, %struct.tea5761_priv* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 2
  store i32 %24, i32* %27, align 8
  %28 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %29 = load %struct.tea5761_priv*, %struct.tea5761_priv** %8, align 8
  %30 = getelementptr inbounds %struct.tea5761_priv, %struct.tea5761_priv* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  store %struct.i2c_adapter* %28, %struct.i2c_adapter** %31, align 8
  %32 = load %struct.tea5761_priv*, %struct.tea5761_priv** %8, align 8
  %33 = getelementptr inbounds %struct.tea5761_priv, %struct.tea5761_priv* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %34, align 8
  %35 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %36 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = call i32 @memcpy(i32* %37, i32* @tea5761_tuner_ops, i32 4)
  %39 = call i32 @tuner_info(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %40 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  store %struct.dvb_frontend* %40, %struct.dvb_frontend** %4, align 8
  br label %41

41:                                               ; preds = %20, %19, %13
  %42 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  ret %struct.dvb_frontend* %42
}

declare dso_local i64 @tea5761_autodetection(%struct.i2c_adapter*, i32) #1

declare dso_local %struct.tea5761_priv* @kzalloc(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @tuner_info(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
