; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_antenna.c_ath_ant_short_scan_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_antenna.c_ath_ant_short_scan_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_ant_comb = type { i32, i32, i32, i64, i32, i32 }

@jiffies = common dso_local global i32 0, align 4
@ATH_ANT_DIV_COMB_SHORT_SCAN_INTR = common dso_local global i32 0, align 4
@ATH_ANT_DIV_COMB_SHORT_SCAN_PKTCOUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_ant_comb*)* @ath_ant_short_scan_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath_ant_short_scan_check(%struct.ath_ant_comb* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath_ant_comb*, align 8
  %4 = alloca i32, align 4
  store %struct.ath_ant_comb* %0, %struct.ath_ant_comb** %3, align 8
  %5 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %3, align 8
  %6 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %5, i32 0, i32 5
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %3, align 8
  %11 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %9, %1
  store i32 0, i32* %2, align 4
  br label %49

15:                                               ; preds = %9
  %16 = load i32, i32* @jiffies, align 4
  %17 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %3, align 8
  %18 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %17, i32 0, i32 3
  %19 = load i64, i64* %18, align 8
  %20 = load i32, i32* @ATH_ANT_DIV_COMB_SHORT_SCAN_INTR, align 4
  %21 = call i64 @msecs_to_jiffies(i32 %20)
  %22 = add nsw i64 %19, %21
  %23 = call i64 @time_after(i32 %16, i64 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %15
  store i32 1, i32* %2, align 4
  br label %49

26:                                               ; preds = %15
  %27 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %3, align 8
  %28 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @ATH_ANT_DIV_COMB_SHORT_SCAN_PKTCOUNT, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %48

32:                                               ; preds = %26
  %33 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %3, align 8
  %34 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = mul nsw i32 %35, 100
  %37 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %3, align 8
  %38 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = sdiv i32 %36, %39
  store i32 %40, i32* %4, align 4
  %41 = load i32, i32* %4, align 4
  %42 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %3, align 8
  %43 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = icmp slt i32 %41, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %32
  store i32 1, i32* %2, align 4
  br label %49

47:                                               ; preds = %32
  br label %48

48:                                               ; preds = %47, %26
  store i32 0, i32* %2, align 4
  br label %49

49:                                               ; preds = %48, %46, %25, %14
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i64 @time_after(i32, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
