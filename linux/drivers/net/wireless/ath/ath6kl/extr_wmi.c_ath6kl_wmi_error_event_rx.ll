; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_wmi.c_ath6kl_wmi_error_event_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_wmi.c_ath6kl_wmi_error_event_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wmi = type { i32 }
%struct.wmi_cmd_error_event = type { i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"unknown error\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"invalid parameter\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"invalid state\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"internal error\00", align 1
@ATH6KL_DBG_WMI = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"programming error, cmd=%d %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wmi*, i32*, i32)* @ath6kl_wmi_error_event_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath6kl_wmi_error_event_rx(%struct.wmi* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.wmi*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.wmi_cmd_error_event*, align 8
  store %struct.wmi* %0, %struct.wmi** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = bitcast i32* %9 to %struct.wmi_cmd_error_event*
  store %struct.wmi_cmd_error_event* %10, %struct.wmi_cmd_error_event** %8, align 8
  %11 = load %struct.wmi_cmd_error_event*, %struct.wmi_cmd_error_event** %8, align 8
  %12 = getelementptr inbounds %struct.wmi_cmd_error_event, %struct.wmi_cmd_error_event* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %17 [
    i32 128, label %14
    i32 130, label %15
    i32 129, label %16
  ]

14:                                               ; preds = %3
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8** %7, align 8
  br label %17

15:                                               ; preds = %3
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8** %7, align 8
  br label %17

16:                                               ; preds = %3
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8** %7, align 8
  br label %17

17:                                               ; preds = %3, %16, %15, %14
  %18 = load i32, i32* @ATH6KL_DBG_WMI, align 4
  %19 = load %struct.wmi_cmd_error_event*, %struct.wmi_cmd_error_event** %8, align 8
  %20 = getelementptr inbounds %struct.wmi_cmd_error_event, %struct.wmi_cmd_error_event* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i8*, i8** %7, align 8
  %23 = call i32 @ath6kl_dbg(i32 %18, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %21, i8* %22)
  ret i32 0
}

declare dso_local i32 @ath6kl_dbg(i32, i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
