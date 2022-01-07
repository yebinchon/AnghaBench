; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_cfg80211.c_is_rate_ht40.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_cfg80211.c_is_rate_ht40.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@is_rate_ht40.ht40 = internal constant [9 x i32] [i32 13500, i32 27000, i32 40500, i32 54000, i32 81000, i32 108000, i32 121500, i32 135000, i32 150000], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64*, i32*)* @is_rate_ht40 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_rate_ht40(i32 %0, i64* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i64* %1, i64** %6, align 8
  store i32* %2, i32** %7, align 8
  store i64 0, i64* %8, align 8
  br label %9

9:                                                ; preds = %34, %3
  %10 = load i64, i64* %8, align 8
  %11 = call i32 @ARRAY_SIZE(i32* getelementptr inbounds ([9 x i32], [9 x i32]* @is_rate_ht40.ht40, i64 0, i64 0))
  %12 = sext i32 %11 to i64
  %13 = icmp ult i64 %10, %12
  br i1 %13, label %14, label %37

14:                                               ; preds = %9
  %15 = load i32, i32* %5, align 4
  %16 = load i64, i64* %8, align 8
  %17 = getelementptr inbounds [9 x i32], [9 x i32]* @is_rate_ht40.ht40, i64 0, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = icmp eq i32 %15, %18
  br i1 %19, label %20, label %33

20:                                               ; preds = %14
  %21 = load i64, i64* %8, align 8
  %22 = call i32 @ARRAY_SIZE(i32* getelementptr inbounds ([9 x i32], [9 x i32]* @is_rate_ht40.ht40, i64 0, i64 0))
  %23 = sub nsw i32 %22, 1
  %24 = sext i32 %23 to i64
  %25 = icmp eq i64 %21, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = load i32*, i32** %7, align 8
  store i32 1, i32* %27, align 4
  br label %30

28:                                               ; preds = %20
  %29 = load i32*, i32** %7, align 8
  store i32 0, i32* %29, align 4
  br label %30

30:                                               ; preds = %28, %26
  %31 = load i64, i64* %8, align 8
  %32 = load i64*, i64** %6, align 8
  store i64 %31, i64* %32, align 8
  store i32 1, i32* %4, align 4
  br label %38

33:                                               ; preds = %14
  br label %34

34:                                               ; preds = %33
  %35 = load i64, i64* %8, align 8
  %36 = add i64 %35, 1
  store i64 %36, i64* %8, align 8
  br label %9

37:                                               ; preds = %9
  store i32 0, i32* %4, align 4
  br label %38

38:                                               ; preds = %37, %30
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
