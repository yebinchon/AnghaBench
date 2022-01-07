; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/tuners/extr_tuner-simple.c_simple_radio_bandswitch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/tuners/extr_tuner-simple.c_simple_radio_bandswitch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.tuner_simple_priv* }
%struct.tuner_simple_priv = type { i32 }

@.str = private unnamed_addr constant [62 x i8] c"This tuner doesn't have FM. Most cards have a TEA5767 for FM\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"This tuner doesn't have FM\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32*)* @simple_radio_bandswitch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @simple_radio_bandswitch(%struct.dvb_frontend* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.tuner_simple_priv*, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %8 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %7, i32 0, i32 0
  %9 = load %struct.tuner_simple_priv*, %struct.tuner_simple_priv** %8, align 8
  store %struct.tuner_simple_priv* %9, %struct.tuner_simple_priv** %6, align 8
  %10 = load %struct.tuner_simple_priv*, %struct.tuner_simple_priv** %6, align 8
  %11 = getelementptr inbounds %struct.tuner_simple_priv, %struct.tuner_simple_priv* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %37 [
    i32 131, label %13
    i32 128, label %13
    i32 140, label %15
    i32 138, label %15
    i32 135, label %15
    i32 136, label %15
    i32 143, label %15
    i32 137, label %15
    i32 132, label %15
    i32 139, label %18
    i32 129, label %23
    i32 142, label %26
    i32 130, label %29
    i32 134, label %32
    i32 133, label %32
    i32 141, label %36
  ]

13:                                               ; preds = %2, %2
  %14 = call i32 @tuner_dbg(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %41

15:                                               ; preds = %2, %2, %2, %2, %2, %2, %2
  %16 = load i32*, i32** %5, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 3
  store i32 25, i32* %17, align 4
  br label %40

18:                                               ; preds = %2
  %19 = load i32*, i32** %5, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 2
  store i32 136, i32* %20, align 4
  %21 = load i32*, i32** %5, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 3
  store i32 9, i32* %22, align 4
  br label %40

23:                                               ; preds = %2
  %24 = load i32*, i32** %5, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 3
  store i32 17, i32* %25, align 4
  br label %40

26:                                               ; preds = %2
  %27 = load i32*, i32** %5, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 3
  store i32 165, i32* %28, align 4
  br label %40

29:                                               ; preds = %2
  %30 = load i32*, i32** %5, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 3
  store i32 57, i32* %31, align 4
  br label %40

32:                                               ; preds = %2, %2
  %33 = call i32 @tuner_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %34 = load i32*, i32** %5, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 3
  store i32 1, i32* %35, align 4
  br label %40

36:                                               ; preds = %2
  br label %37

37:                                               ; preds = %2, %36
  %38 = load i32*, i32** %5, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 3
  store i32 164, i32* %39, align 4
  br label %40

40:                                               ; preds = %37, %32, %29, %26, %23, %18, %15
  store i32 0, i32* %3, align 4
  br label %41

41:                                               ; preds = %40, %13
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @tuner_dbg(i8*) #1

declare dso_local i32 @tuner_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
