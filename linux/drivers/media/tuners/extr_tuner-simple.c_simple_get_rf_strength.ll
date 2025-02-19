; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/tuners/extr_tuner-simple.c_simple_get_rf_strength.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/tuners/extr_tuner-simple.c_simple_get_rf_strength.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.tuner_simple_priv* }
%struct.tuner_simple_priv = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Signal strength: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32*)* @simple_get_rf_strength to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @simple_get_rf_strength(%struct.dvb_frontend* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.tuner_simple_priv*, align 8
  %7 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %9 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %8, i32 0, i32 0
  %10 = load %struct.tuner_simple_priv*, %struct.tuner_simple_priv** %9, align 8
  store %struct.tuner_simple_priv* %10, %struct.tuner_simple_priv** %6, align 8
  %11 = load %struct.tuner_simple_priv*, %struct.tuner_simple_priv** %6, align 8
  %12 = getelementptr inbounds %struct.tuner_simple_priv, %struct.tuner_simple_priv* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %2
  %17 = load %struct.tuner_simple_priv*, %struct.tuner_simple_priv** %6, align 8
  %18 = getelementptr inbounds %struct.tuner_simple_priv, %struct.tuner_simple_priv* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %16, %2
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %32

24:                                               ; preds = %16
  %25 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %26 = call i32 @tuner_read_status(%struct.dvb_frontend* %25)
  %27 = call i32 @tuner_signal(i32 %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = load i32*, i32** %5, align 8
  store i32 %28, i32* %29, align 4
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @tuner_dbg(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %30)
  store i32 0, i32* %3, align 4
  br label %32

32:                                               ; preds = %24, %21
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i32 @tuner_signal(i32) #1

declare dso_local i32 @tuner_read_status(%struct.dvb_frontend*) #1

declare dso_local i32 @tuner_dbg(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
