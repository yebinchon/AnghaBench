; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/tuners/extr_tuner-simple.c_simple_get_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/tuners/extr_tuner-simple.c_simple_get_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.tuner_simple_priv* }
%struct.tuner_simple_priv = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@EINVAL = common dso_local global i32 0, align 4
@TUNER_STATUS_LOCKED = common dso_local global i32 0, align 4
@TUNER_STATUS_STEREO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"AFC Status: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32*)* @simple_get_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @simple_get_status(%struct.dvb_frontend* %0, i32* %1) #0 {
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
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %45

19:                                               ; preds = %2
  %20 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %21 = call i32 @tuner_read_status(%struct.dvb_frontend* %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32*, i32** %5, align 8
  store i32 0, i32* %22, align 4
  %23 = load i32, i32* %7, align 4
  %24 = call i64 @tuner_islocked(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %19
  %27 = load i32, i32* @TUNER_STATUS_LOCKED, align 4
  %28 = load i32*, i32** %5, align 8
  store i32 %27, i32* %28, align 4
  br label %29

29:                                               ; preds = %26, %19
  %30 = load %struct.tuner_simple_priv*, %struct.tuner_simple_priv** %6, align 8
  %31 = getelementptr inbounds %struct.tuner_simple_priv, %struct.tuner_simple_priv* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call i64 @tuner_stereo(i32 %32, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %29
  %37 = load i32, i32* @TUNER_STATUS_STEREO, align 4
  %38 = load i32*, i32** %5, align 8
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %39, %37
  store i32 %40, i32* %38, align 4
  br label %41

41:                                               ; preds = %36, %29
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @tuner_afcstatus(i32 %42)
  %44 = call i32 @tuner_dbg(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %43)
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %41, %16
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @tuner_read_status(%struct.dvb_frontend*) #1

declare dso_local i64 @tuner_islocked(i32) #1

declare dso_local i64 @tuner_stereo(i32, i32) #1

declare dso_local i32 @tuner_dbg(i8*, i32) #1

declare dso_local i32 @tuner_afcstatus(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
