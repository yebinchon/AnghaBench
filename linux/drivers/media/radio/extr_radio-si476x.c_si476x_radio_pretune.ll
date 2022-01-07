; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/radio/extr_radio-si476x.c_si476x_radio_pretune.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/radio/extr_radio-si476x.c_si476x_radio_pretune.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.si476x_radio = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32, %struct.si476x_tune_freq_args*)* }
%struct.si476x_tune_freq_args = type { i32, i32, i8*, i32, i32, i32, i32 }

@SI476X_SM_INITIALIZE_AUDIO = common dso_local global i32 0, align 4
@SI476X_TM_VALIDATED_NORMAL_TUNE = common dso_local global i32 0, align 4
@SI476X_INJSIDE_AUTO = common dso_local global i32 0, align 4
@FREQ_MUL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Unexpected tuner function value\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.si476x_radio*, i32)* @si476x_radio_pretune to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si476x_radio_pretune(%struct.si476x_radio* %0, i32 %1) #0 {
  %3 = alloca %struct.si476x_radio*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.si476x_tune_freq_args, align 8
  store %struct.si476x_radio* %0, %struct.si476x_radio** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = getelementptr inbounds %struct.si476x_tune_freq_args, %struct.si476x_tune_freq_args* %6, i32 0, i32 0
  store i32 0, i32* %7, align 8
  %8 = getelementptr inbounds %struct.si476x_tune_freq_args, %struct.si476x_tune_freq_args* %6, i32 0, i32 1
  store i32 0, i32* %8, align 4
  %9 = getelementptr inbounds %struct.si476x_tune_freq_args, %struct.si476x_tune_freq_args* %6, i32 0, i32 2
  store i8* null, i8** %9, align 8
  %10 = getelementptr inbounds %struct.si476x_tune_freq_args, %struct.si476x_tune_freq_args* %6, i32 0, i32 3
  store i32 0, i32* %10, align 8
  %11 = getelementptr inbounds %struct.si476x_tune_freq_args, %struct.si476x_tune_freq_args* %6, i32 0, i32 4
  %12 = load i32, i32* @SI476X_SM_INITIALIZE_AUDIO, align 4
  store i32 %12, i32* %11, align 4
  %13 = getelementptr inbounds %struct.si476x_tune_freq_args, %struct.si476x_tune_freq_args* %6, i32 0, i32 5
  %14 = load i32, i32* @SI476X_TM_VALIDATED_NORMAL_TUNE, align 4
  store i32 %14, i32* %13, align 8
  %15 = getelementptr inbounds %struct.si476x_tune_freq_args, %struct.si476x_tune_freq_args* %6, i32 0, i32 6
  %16 = load i32, i32* @SI476X_INJSIDE_AUTO, align 4
  store i32 %16, i32* %15, align 4
  %17 = load i32, i32* %4, align 4
  switch i32 %17, label %54 [
    i32 128, label %18
    i32 129, label %36
  ]

18:                                               ; preds = %2
  %19 = load %struct.si476x_radio*, %struct.si476x_radio** %3, align 8
  %20 = getelementptr inbounds %struct.si476x_radio, %struct.si476x_radio* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @FREQ_MUL, align 4
  %23 = mul nsw i32 92, %22
  %24 = sitofp i32 %23 to double
  %25 = call i8* @v4l2_to_si476x(i32 %21, double %24)
  %26 = getelementptr inbounds %struct.si476x_tune_freq_args, %struct.si476x_tune_freq_args* %6, i32 0, i32 2
  store i8* %25, i8** %26, align 8
  %27 = load %struct.si476x_radio*, %struct.si476x_radio** %3, align 8
  %28 = getelementptr inbounds %struct.si476x_radio, %struct.si476x_radio* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32 (i32, %struct.si476x_tune_freq_args*)*, i32 (i32, %struct.si476x_tune_freq_args*)** %30, align 8
  %32 = load %struct.si476x_radio*, %struct.si476x_radio** %3, align 8
  %33 = getelementptr inbounds %struct.si476x_radio, %struct.si476x_radio* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 %31(i32 %34, %struct.si476x_tune_freq_args* %6)
  store i32 %35, i32* %5, align 4
  br label %58

36:                                               ; preds = %2
  %37 = load %struct.si476x_radio*, %struct.si476x_radio** %3, align 8
  %38 = getelementptr inbounds %struct.si476x_radio, %struct.si476x_radio* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @FREQ_MUL, align 4
  %41 = sitofp i32 %40 to double
  %42 = fmul double 6.000000e-01, %41
  %43 = call i8* @v4l2_to_si476x(i32 %39, double %42)
  %44 = getelementptr inbounds %struct.si476x_tune_freq_args, %struct.si476x_tune_freq_args* %6, i32 0, i32 2
  store i8* %43, i8** %44, align 8
  %45 = load %struct.si476x_radio*, %struct.si476x_radio** %3, align 8
  %46 = getelementptr inbounds %struct.si476x_radio, %struct.si476x_radio* %45, i32 0, i32 1
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32 (i32, %struct.si476x_tune_freq_args*)*, i32 (i32, %struct.si476x_tune_freq_args*)** %48, align 8
  %50 = load %struct.si476x_radio*, %struct.si476x_radio** %3, align 8
  %51 = getelementptr inbounds %struct.si476x_radio, %struct.si476x_radio* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 %49(i32 %52, %struct.si476x_tune_freq_args* %6)
  store i32 %53, i32* %5, align 4
  br label %58

54:                                               ; preds = %2
  %55 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %5, align 4
  br label %58

58:                                               ; preds = %54, %36, %18
  %59 = load i32, i32* %5, align 4
  ret i32 %59
}

declare dso_local i8* @v4l2_to_si476x(i32, double) #1

declare dso_local i32 @WARN(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
