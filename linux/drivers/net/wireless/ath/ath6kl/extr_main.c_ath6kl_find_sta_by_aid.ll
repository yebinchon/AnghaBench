; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_main.c_ath6kl_find_sta_by_aid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_main.c_ath6kl_find_sta_by_aid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath6kl_sta = type { i64 }
%struct.ath6kl = type { %struct.ath6kl_sta* }

@AP_MAX_NUM_STA = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ath6kl_sta* @ath6kl_find_sta_by_aid(%struct.ath6kl* %0, i64 %1) #0 {
  %3 = alloca %struct.ath6kl*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.ath6kl_sta*, align 8
  %6 = alloca i64, align 8
  store %struct.ath6kl* %0, %struct.ath6kl** %3, align 8
  store i64 %1, i64* %4, align 8
  store %struct.ath6kl_sta* null, %struct.ath6kl_sta** %5, align 8
  store i64 0, i64* %6, align 8
  br label %7

7:                                                ; preds = %28, %2
  %8 = load i64, i64* %6, align 8
  %9 = load i64, i64* @AP_MAX_NUM_STA, align 8
  %10 = icmp ult i64 %8, %9
  br i1 %10, label %11, label %31

11:                                               ; preds = %7
  %12 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %13 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %12, i32 0, i32 0
  %14 = load %struct.ath6kl_sta*, %struct.ath6kl_sta** %13, align 8
  %15 = load i64, i64* %6, align 8
  %16 = getelementptr inbounds %struct.ath6kl_sta, %struct.ath6kl_sta* %14, i64 %15
  %17 = getelementptr inbounds %struct.ath6kl_sta, %struct.ath6kl_sta* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* %4, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %27

21:                                               ; preds = %11
  %22 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %23 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %22, i32 0, i32 0
  %24 = load %struct.ath6kl_sta*, %struct.ath6kl_sta** %23, align 8
  %25 = load i64, i64* %6, align 8
  %26 = getelementptr inbounds %struct.ath6kl_sta, %struct.ath6kl_sta* %24, i64 %25
  store %struct.ath6kl_sta* %26, %struct.ath6kl_sta** %5, align 8
  br label %31

27:                                               ; preds = %11
  br label %28

28:                                               ; preds = %27
  %29 = load i64, i64* %6, align 8
  %30 = add i64 %29, 1
  store i64 %30, i64* %6, align 8
  br label %7

31:                                               ; preds = %21, %7
  %32 = load %struct.ath6kl_sta*, %struct.ath6kl_sta** %5, align 8
  ret %struct.ath6kl_sta* %32
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
