; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/tuners/extr_tda18271-fe.c_tda18271_agc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/tuners/extr_tda18271-fe.c_tda18271_agc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { i32 (i32, i32, i32, i32)*, %struct.tda18271_priv* }
%struct.tda18271_priv = type { i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@tda18271_debug = common dso_local global i32 0, align 4
@DBG_ADV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"no agc configuration provided\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"invoking callback\0A\00", align 1
@DVB_FRONTEND_COMPONENT_TUNER = common dso_local global i32 0, align 4
@TDA18271_CALLBACK_CMD_AGC_ENABLE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"unsupported configuration: %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @tda18271_agc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tda18271_agc(%struct.dvb_frontend* %0) #0 {
  %2 = alloca %struct.dvb_frontend*, align 8
  %3 = alloca %struct.tda18271_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %2, align 8
  %5 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %6 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %5, i32 0, i32 1
  %7 = load %struct.tda18271_priv*, %struct.tda18271_priv** %6, align 8
  store %struct.tda18271_priv* %7, %struct.tda18271_priv** %3, align 8
  store i32 0, i32* %4, align 4
  %8 = load %struct.tda18271_priv*, %struct.tda18271_priv** %3, align 8
  %9 = getelementptr inbounds %struct.tda18271_priv, %struct.tda18271_priv* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  switch i32 %10, label %43 [
    i32 129, label %11
    i32 128, label %19
    i32 130, label %42
    i32 131, label %42
  ]

11:                                               ; preds = %1
  %12 = load i32, i32* @tda18271_debug, align 4
  %13 = load i32, i32* @DBG_ADV, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = call i32 @tda_dbg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %18

18:                                               ; preds = %16, %11
  br label %50

19:                                               ; preds = %1
  %20 = call i32 @tda_dbg(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %21 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %22 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %21, i32 0, i32 0
  %23 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** %22, align 8
  %24 = icmp ne i32 (i32, i32, i32, i32)* %23, null
  br i1 %24, label %25, label %41

25:                                               ; preds = %19
  %26 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %27 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %26, i32 0, i32 0
  %28 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** %27, align 8
  %29 = load %struct.tda18271_priv*, %struct.tda18271_priv** %3, align 8
  %30 = getelementptr inbounds %struct.tda18271_priv, %struct.tda18271_priv* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @DVB_FRONTEND_COMPONENT_TUNER, align 4
  %36 = load i32, i32* @TDA18271_CALLBACK_CMD_AGC_ENABLE, align 4
  %37 = load %struct.tda18271_priv*, %struct.tda18271_priv** %3, align 8
  %38 = getelementptr inbounds %struct.tda18271_priv, %struct.tda18271_priv* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 %28(i32 %34, i32 %35, i32 %36, i32 %39)
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %25, %19
  br label %50

42:                                               ; preds = %1, %1
  br label %43

43:                                               ; preds = %1, %42
  %44 = load %struct.tda18271_priv*, %struct.tda18271_priv** %3, align 8
  %45 = getelementptr inbounds %struct.tda18271_priv, %struct.tda18271_priv* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @tda_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %46)
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %4, align 4
  br label %50

50:                                               ; preds = %43, %41, %18
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local i32 @tda_dbg(i8*) #1

declare dso_local i32 @tda_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
