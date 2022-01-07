; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_phy.c_ath5k_hw_rf5111_chan2athchan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_phy.c_ath5k_hw_rf5111_chan2athchan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath5k_athchan_2ghz = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.ath5k_athchan_2ghz*)* @ath5k_hw_rf5111_chan2athchan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath5k_hw_rf5111_chan2athchan(i32 %0, %struct.ath5k_athchan_2ghz* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath5k_athchan_2ghz*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.ath5k_athchan_2ghz* %1, %struct.ath5k_athchan_2ghz** %5, align 8
  %7 = load i32, i32* %4, align 4
  store i32 %7, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = icmp sle i32 %8, 13
  br i1 %9, label %10, label %17

10:                                               ; preds = %2
  %11 = load i32, i32* %6, align 4
  %12 = add nsw i32 115, %11
  %13 = load %struct.ath5k_athchan_2ghz*, %struct.ath5k_athchan_2ghz** %5, align 8
  %14 = getelementptr inbounds %struct.ath5k_athchan_2ghz, %struct.ath5k_athchan_2ghz* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  %15 = load %struct.ath5k_athchan_2ghz*, %struct.ath5k_athchan_2ghz** %5, align 8
  %16 = getelementptr inbounds %struct.ath5k_athchan_2ghz, %struct.ath5k_athchan_2ghz* %15, i32 0, i32 1
  store i32 70, i32* %16, align 4
  br label %45

17:                                               ; preds = %2
  %18 = load i32, i32* %6, align 4
  %19 = icmp eq i32 %18, 14
  br i1 %19, label %20, label %25

20:                                               ; preds = %17
  %21 = load %struct.ath5k_athchan_2ghz*, %struct.ath5k_athchan_2ghz** %5, align 8
  %22 = getelementptr inbounds %struct.ath5k_athchan_2ghz, %struct.ath5k_athchan_2ghz* %21, i32 0, i32 0
  store i32 124, i32* %22, align 4
  %23 = load %struct.ath5k_athchan_2ghz*, %struct.ath5k_athchan_2ghz** %5, align 8
  %24 = getelementptr inbounds %struct.ath5k_athchan_2ghz, %struct.ath5k_athchan_2ghz* %23, i32 0, i32 1
  store i32 68, i32* %24, align 4
  br label %44

25:                                               ; preds = %17
  %26 = load i32, i32* %6, align 4
  %27 = icmp sge i32 %26, 15
  br i1 %27, label %28, label %40

28:                                               ; preds = %25
  %29 = load i32, i32* %6, align 4
  %30 = icmp sle i32 %29, 26
  br i1 %30, label %31, label %40

31:                                               ; preds = %28
  %32 = load i32, i32* %6, align 4
  %33 = sub nsw i32 %32, 14
  %34 = mul nsw i32 %33, 4
  %35 = add nsw i32 %34, 132
  %36 = load %struct.ath5k_athchan_2ghz*, %struct.ath5k_athchan_2ghz** %5, align 8
  %37 = getelementptr inbounds %struct.ath5k_athchan_2ghz, %struct.ath5k_athchan_2ghz* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  %38 = load %struct.ath5k_athchan_2ghz*, %struct.ath5k_athchan_2ghz** %5, align 8
  %39 = getelementptr inbounds %struct.ath5k_athchan_2ghz, %struct.ath5k_athchan_2ghz* %38, i32 0, i32 1
  store i32 70, i32* %39, align 4
  br label %43

40:                                               ; preds = %28, %25
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %46

43:                                               ; preds = %31
  br label %44

44:                                               ; preds = %43, %20
  br label %45

45:                                               ; preds = %44, %10
  store i32 0, i32* %3, align 4
  br label %46

46:                                               ; preds = %45, %40
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
