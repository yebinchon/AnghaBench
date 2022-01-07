; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_pm.c_wil_can_suspend_vif.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_pm.c_wil_can_suspend_vif.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wil6210_priv = type { i32 }
%struct.wil6210_vif = type { i32 }
%struct.wireless_dev = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"Sniffer\0A\00", align 1
@wil_vif_fwconnecting = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Delay suspend when connecting\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"STA-like interface\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"AP-like interface\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wil6210_priv*, %struct.wil6210_vif*, i32)* @wil_can_suspend_vif to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wil_can_suspend_vif(%struct.wil6210_priv* %0, %struct.wil6210_vif* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wil6210_priv*, align 8
  %6 = alloca %struct.wil6210_vif*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.wireless_dev*, align 8
  store %struct.wil6210_priv* %0, %struct.wil6210_priv** %5, align 8
  store %struct.wil6210_vif* %1, %struct.wil6210_vif** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.wil6210_vif*, %struct.wil6210_vif** %6, align 8
  %10 = call %struct.wireless_dev* @vif_to_wdev(%struct.wil6210_vif* %9)
  store %struct.wireless_dev* %10, %struct.wireless_dev** %8, align 8
  %11 = load %struct.wireless_dev*, %struct.wireless_dev** %8, align 8
  %12 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %34 [
    i32 130, label %14
    i32 128, label %17
    i32 129, label %17
  ]

14:                                               ; preds = %3
  %15 = load %struct.wil6210_priv*, %struct.wil6210_priv** %5, align 8
  %16 = call i32 @wil_dbg_pm(%struct.wil6210_priv* %15, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %38

17:                                               ; preds = %3, %3
  %18 = load i32, i32* @wil_vif_fwconnecting, align 4
  %19 = load %struct.wil6210_vif*, %struct.wil6210_vif** %6, align 8
  %20 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @test_bit(i32 %18, i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %17
  %25 = load %struct.wil6210_priv*, %struct.wil6210_priv** %5, align 8
  %26 = call i32 @wil_dbg_pm(%struct.wil6210_priv* %25, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %38

27:                                               ; preds = %17
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load %struct.wil6210_priv*, %struct.wil6210_priv** %5, align 8
  %32 = call i32 @wil_dbg_pm(%struct.wil6210_priv* %31, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %38

33:                                               ; preds = %27
  br label %37

34:                                               ; preds = %3
  %35 = load %struct.wil6210_priv*, %struct.wil6210_priv** %5, align 8
  %36 = call i32 @wil_dbg_pm(%struct.wil6210_priv* %35, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %38

37:                                               ; preds = %33
  store i32 1, i32* %4, align 4
  br label %38

38:                                               ; preds = %37, %34, %30, %24, %14
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local %struct.wireless_dev* @vif_to_wdev(%struct.wil6210_vif*) #1

declare dso_local i32 @wil_dbg_pm(%struct.wil6210_priv*, i8*) #1

declare dso_local i32 @test_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
