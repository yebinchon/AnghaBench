; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/extr_iwl-phy-db.c_is_valid_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/extr_iwl-phy-db.c_is_valid_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @is_valid_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_valid_channel(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = icmp sle i32 %4, 14
  br i1 %5, label %36, label %6

6:                                                ; preds = %1
  %7 = load i32, i32* %3, align 4
  %8 = icmp sle i32 36, %7
  br i1 %8, label %9, label %16

9:                                                ; preds = %6
  %10 = load i32, i32* %3, align 4
  %11 = icmp sle i32 %10, 64
  br i1 %11, label %12, label %16

12:                                               ; preds = %9
  %13 = load i32, i32* %3, align 4
  %14 = srem i32 %13, 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %36, label %16

16:                                               ; preds = %12, %9, %6
  %17 = load i32, i32* %3, align 4
  %18 = icmp sle i32 100, %17
  br i1 %18, label %19, label %26

19:                                               ; preds = %16
  %20 = load i32, i32* %3, align 4
  %21 = icmp sle i32 %20, 140
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = load i32, i32* %3, align 4
  %24 = srem i32 %23, 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %36, label %26

26:                                               ; preds = %22, %19, %16
  %27 = load i32, i32* %3, align 4
  %28 = icmp sle i32 145, %27
  br i1 %28, label %29, label %37

29:                                               ; preds = %26
  %30 = load i32, i32* %3, align 4
  %31 = icmp sle i32 %30, 165
  br i1 %31, label %32, label %37

32:                                               ; preds = %29
  %33 = load i32, i32* %3, align 4
  %34 = srem i32 %33, 4
  %35 = icmp eq i32 %34, 1
  br i1 %35, label %36, label %37

36:                                               ; preds = %32, %22, %12, %1
  store i32 1, i32* %2, align 4
  br label %38

37:                                               ; preds = %32, %29, %26
  store i32 0, i32* %2, align 4
  br label %38

38:                                               ; preds = %37, %36
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
