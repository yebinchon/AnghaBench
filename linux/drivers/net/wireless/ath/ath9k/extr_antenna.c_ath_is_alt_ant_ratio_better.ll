; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_antenna.c_ath_is_alt_ant_ratio_better.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_antenna.c_ath_is_alt_ant_ratio_better.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_ant_comb = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_ant_comb*, i32, i32, i32, i32, i32, i32)* @ath_is_alt_ant_ratio_better to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath_is_alt_ant_ratio_better(%struct.ath_ant_comb* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.ath_ant_comb*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.ath_ant_comb* %0, %struct.ath_ant_comb** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %16 = load i32, i32* %15, align 4
  %17 = icmp sle i32 %16, 50
  br i1 %17, label %18, label %19

18:                                               ; preds = %7
  store i32 0, i32* %8, align 4
  br label %46

19:                                               ; preds = %7
  %20 = load i32, i32* %14, align 4
  %21 = load i32, i32* %13, align 4
  %22 = load i32, i32* %12, align 4
  %23 = add nsw i32 %21, %22
  %24 = icmp sgt i32 %20, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  store i32 1, i32* %8, align 4
  br label %46

26:                                               ; preds = %19
  %27 = load i32, i32* %10, align 4
  %28 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %9, align 8
  %29 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp sge i32 %27, %30
  br i1 %31, label %32, label %45

32:                                               ; preds = %26
  %33 = load i32, i32* %14, align 4
  %34 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %9, align 8
  %35 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp sge i32 %33, %36
  br i1 %37, label %38, label %45

38:                                               ; preds = %32
  %39 = load i32, i32* %14, align 4
  %40 = load i32, i32* %13, align 4
  %41 = load i32, i32* %11, align 4
  %42 = add nsw i32 %40, %41
  %43 = icmp sgt i32 %39, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  store i32 1, i32* %8, align 4
  br label %46

45:                                               ; preds = %38, %32, %26
  store i32 0, i32* %8, align 4
  br label %46

46:                                               ; preds = %45, %44, %25, %18
  %47 = load i32, i32* %8, align 4
  ret i32 %47
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
