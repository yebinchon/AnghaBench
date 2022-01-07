; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_pm.c_wil_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_pm.c_wil_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wil6210_priv = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"suspend: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"runtime\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"system\00", align 1
@wil_status_suspended = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"trying to suspend while suspended\0A\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"suspend: %s => %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wil_suspend(%struct.wil6210_priv* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wil6210_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.wil6210_priv* %0, %struct.wil6210_priv** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %9 = load %struct.wil6210_priv*, %struct.wil6210_priv** %5, align 8
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  %12 = zext i1 %11 to i64
  %13 = select i1 %11, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)
  %14 = call i32 (%struct.wil6210_priv*, i8*, ...) @wil_dbg_pm(%struct.wil6210_priv* %9, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* %13)
  %15 = load i32, i32* @wil_status_suspended, align 4
  %16 = load %struct.wil6210_priv*, %struct.wil6210_priv** %5, align 8
  %17 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @test_bit(i32 %15, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load %struct.wil6210_priv*, %struct.wil6210_priv** %5, align 8
  %23 = call i32 (%struct.wil6210_priv*, i8*, ...) @wil_dbg_pm(%struct.wil6210_priv* %22, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %42

24:                                               ; preds = %3
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %24
  %28 = load %struct.wil6210_priv*, %struct.wil6210_priv** %5, align 8
  %29 = call i32 @wil_suspend_radio_off(%struct.wil6210_priv* %28)
  store i32 %29, i32* %8, align 4
  br label %33

30:                                               ; preds = %24
  %31 = load %struct.wil6210_priv*, %struct.wil6210_priv** %5, align 8
  %32 = call i32 @wil_suspend_keep_radio_on(%struct.wil6210_priv* %31)
  store i32 %32, i32* %8, align 4
  br label %33

33:                                               ; preds = %30, %27
  %34 = load %struct.wil6210_priv*, %struct.wil6210_priv** %5, align 8
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)
  %39 = load i32, i32* %8, align 4
  %40 = call i32 (%struct.wil6210_priv*, i8*, ...) @wil_dbg_pm(%struct.wil6210_priv* %34, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i8* %38, i32 %39)
  %41 = load i32, i32* %8, align 4
  store i32 %41, i32* %4, align 4
  br label %42

42:                                               ; preds = %33, %21
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local i32 @wil_dbg_pm(%struct.wil6210_priv*, i8*, ...) #1

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i32 @wil_suspend_radio_off(%struct.wil6210_priv*) #1

declare dso_local i32 @wil_suspend_keep_radio_on(%struct.wil6210_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
