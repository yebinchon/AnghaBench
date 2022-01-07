; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi.c_ath10k_wmi_event_scan_type_str.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi.c_ath10k_wmi_event_scan_type_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"started\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"completed\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"completed [cancelled]\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"completed [preempted]\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"completed [timedout]\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"completed [internal err]\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"completed [unknown]\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"bss channel\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"foreign channel\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"dequeued\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"preempted\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"start failed\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"restarted\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"foreign channel exit\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, i32)* @ath10k_wmi_event_scan_type_str to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ath10k_wmi_event_scan_type_str(i32 %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %24 [
    i32 135, label %7
    i32 141, label %8
    i32 142, label %17
    i32 139, label %18
    i32 140, label %19
    i32 137, label %20
    i32 134, label %21
    i32 136, label %22
    i32 138, label %23
  ]

7:                                                ; preds = %2
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  br label %25

8:                                                ; preds = %2
  %9 = load i32, i32* %5, align 4
  switch i32 %9, label %16 [
    i32 132, label %10
    i32 133, label %11
    i32 129, label %12
    i32 128, label %13
    i32 131, label %14
    i32 130, label %15
  ]

10:                                               ; preds = %8
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8** %3, align 8
  br label %25

11:                                               ; preds = %8
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8** %3, align 8
  br label %25

12:                                               ; preds = %8
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i8** %3, align 8
  br label %25

13:                                               ; preds = %8
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i8** %3, align 8
  br label %25

14:                                               ; preds = %8
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i8** %3, align 8
  br label %25

15:                                               ; preds = %8
  br label %16

16:                                               ; preds = %8, %15
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i8** %3, align 8
  br label %25

17:                                               ; preds = %2
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i8** %3, align 8
  br label %25

18:                                               ; preds = %2
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0), i8** %3, align 8
  br label %25

19:                                               ; preds = %2
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i8** %3, align 8
  br label %25

20:                                               ; preds = %2
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i8** %3, align 8
  br label %25

21:                                               ; preds = %2
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0), i8** %3, align 8
  br label %25

22:                                               ; preds = %2
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), i8** %3, align 8
  br label %25

23:                                               ; preds = %2
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13, i64 0, i64 0), i8** %3, align 8
  br label %25

24:                                               ; preds = %2
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0), i8** %3, align 8
  br label %25

25:                                               ; preds = %24, %23, %22, %21, %20, %19, %18, %17, %16, %14, %13, %12, %11, %10, %7
  %26 = load i8*, i8** %3, align 8
  ret i8* %26
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
