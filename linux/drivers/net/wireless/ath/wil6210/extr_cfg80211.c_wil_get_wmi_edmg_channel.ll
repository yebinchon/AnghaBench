; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_cfg80211.c_wil_get_wmi_edmg_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_cfg80211.c_wil_get_wmi_edmg_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wil6210_priv = type { i32 }

@WIL_EDMG_BW_CONFIGURATION = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"Unsupported edmg channel bitmap 0x%x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Unsupported EDMG BW configuration %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wil6210_priv*, i64, i64, i64*)* @wil_get_wmi_edmg_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wil_get_wmi_edmg_channel(%struct.wil6210_priv* %0, i64 %1, i64 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.wil6210_priv*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  store %struct.wil6210_priv* %0, %struct.wil6210_priv** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  %10 = load i64, i64* %7, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %4
  %13 = load i64*, i64** %9, align 8
  store i64 0, i64* %13, align 8
  store i32 0, i32* %5, align 4
  br label %41

14:                                               ; preds = %4
  %15 = load i64, i64* %7, align 8
  %16 = load i64, i64* @WIL_EDMG_BW_CONFIGURATION, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %35

18:                                               ; preds = %14
  %19 = load i64, i64* %8, align 8
  switch i64 %19, label %29 [
    i64 128, label %20
    i64 130, label %23
    i64 129, label %26
  ]

20:                                               ; preds = %18
  %21 = load i64*, i64** %9, align 8
  %22 = call i32 @wil_spec2wmi_ch(i32 9, i64* %21)
  store i32 %22, i32* %5, align 4
  br label %41

23:                                               ; preds = %18
  %24 = load i64*, i64** %9, align 8
  %25 = call i32 @wil_spec2wmi_ch(i32 10, i64* %24)
  store i32 %25, i32* %5, align 4
  br label %41

26:                                               ; preds = %18
  %27 = load i64*, i64** %9, align 8
  %28 = call i32 @wil_spec2wmi_ch(i32 11, i64* %27)
  store i32 %28, i32* %5, align 4
  br label %41

29:                                               ; preds = %18
  %30 = load %struct.wil6210_priv*, %struct.wil6210_priv** %6, align 8
  %31 = load i64, i64* %8, align 8
  %32 = call i32 @wil_err(%struct.wil6210_priv* %30, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i64 %31)
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %5, align 4
  br label %41

35:                                               ; preds = %14
  %36 = load %struct.wil6210_priv*, %struct.wil6210_priv** %6, align 8
  %37 = load i64, i64* %7, align 8
  %38 = call i32 @wil_err(%struct.wil6210_priv* %36, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i64 %37)
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %5, align 4
  br label %41

41:                                               ; preds = %35, %29, %26, %23, %20, %12
  %42 = load i32, i32* %5, align 4
  ret i32 %42
}

declare dso_local i32 @wil_spec2wmi_ch(i32, i64*) #1

declare dso_local i32 @wil_err(%struct.wil6210_priv*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
