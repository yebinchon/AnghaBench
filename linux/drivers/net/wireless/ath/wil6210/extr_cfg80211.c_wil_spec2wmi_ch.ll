; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_cfg80211.c_wil_spec2wmi_ch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_cfg80211.c_wil_spec2wmi_ch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@WMI_CHANNEL_1 = common dso_local global i32 0, align 4
@WMI_CHANNEL_2 = common dso_local global i32 0, align 4
@WMI_CHANNEL_3 = common dso_local global i32 0, align 4
@WMI_CHANNEL_4 = common dso_local global i32 0, align 4
@WMI_CHANNEL_5 = common dso_local global i32 0, align 4
@WMI_CHANNEL_6 = common dso_local global i32 0, align 4
@WMI_CHANNEL_9 = common dso_local global i32 0, align 4
@WMI_CHANNEL_10 = common dso_local global i32 0, align 4
@WMI_CHANNEL_11 = common dso_local global i32 0, align 4
@WMI_CHANNEL_12 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wil_spec2wmi_ch(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %37 [
    i32 1, label %7
    i32 2, label %10
    i32 3, label %13
    i32 4, label %16
    i32 5, label %19
    i32 6, label %22
    i32 9, label %25
    i32 10, label %28
    i32 11, label %31
    i32 12, label %34
  ]

7:                                                ; preds = %2
  %8 = load i32, i32* @WMI_CHANNEL_1, align 4
  %9 = load i32*, i32** %5, align 8
  store i32 %8, i32* %9, align 4
  br label %40

10:                                               ; preds = %2
  %11 = load i32, i32* @WMI_CHANNEL_2, align 4
  %12 = load i32*, i32** %5, align 8
  store i32 %11, i32* %12, align 4
  br label %40

13:                                               ; preds = %2
  %14 = load i32, i32* @WMI_CHANNEL_3, align 4
  %15 = load i32*, i32** %5, align 8
  store i32 %14, i32* %15, align 4
  br label %40

16:                                               ; preds = %2
  %17 = load i32, i32* @WMI_CHANNEL_4, align 4
  %18 = load i32*, i32** %5, align 8
  store i32 %17, i32* %18, align 4
  br label %40

19:                                               ; preds = %2
  %20 = load i32, i32* @WMI_CHANNEL_5, align 4
  %21 = load i32*, i32** %5, align 8
  store i32 %20, i32* %21, align 4
  br label %40

22:                                               ; preds = %2
  %23 = load i32, i32* @WMI_CHANNEL_6, align 4
  %24 = load i32*, i32** %5, align 8
  store i32 %23, i32* %24, align 4
  br label %40

25:                                               ; preds = %2
  %26 = load i32, i32* @WMI_CHANNEL_9, align 4
  %27 = load i32*, i32** %5, align 8
  store i32 %26, i32* %27, align 4
  br label %40

28:                                               ; preds = %2
  %29 = load i32, i32* @WMI_CHANNEL_10, align 4
  %30 = load i32*, i32** %5, align 8
  store i32 %29, i32* %30, align 4
  br label %40

31:                                               ; preds = %2
  %32 = load i32, i32* @WMI_CHANNEL_11, align 4
  %33 = load i32*, i32** %5, align 8
  store i32 %32, i32* %33, align 4
  br label %40

34:                                               ; preds = %2
  %35 = load i32, i32* @WMI_CHANNEL_12, align 4
  %36 = load i32*, i32** %5, align 8
  store i32 %35, i32* %36, align 4
  br label %40

37:                                               ; preds = %2
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %41

40:                                               ; preds = %34, %31, %28, %25, %22, %19, %16, %13, %10, %7
  store i32 0, i32* %3, align 4
  br label %41

41:                                               ; preds = %40, %37
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
