; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_mci.c_ath_mci_adjust_aggr_limit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_mci.c_ath_mci_adjust_aggr_limit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_btcoex = type { i32, i32, %struct.ath_mci_profile }
%struct.ath_mci_profile = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_btcoex*)* @ath_mci_adjust_aggr_limit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath_mci_adjust_aggr_limit(%struct.ath_btcoex* %0) #0 {
  %2 = alloca %struct.ath_btcoex*, align 8
  %3 = alloca %struct.ath_mci_profile*, align 8
  %4 = alloca i32, align 4
  store %struct.ath_btcoex* %0, %struct.ath_btcoex** %2, align 8
  %5 = load %struct.ath_btcoex*, %struct.ath_btcoex** %2, align 8
  %6 = getelementptr inbounds %struct.ath_btcoex, %struct.ath_btcoex* %5, i32 0, i32 2
  store %struct.ath_mci_profile* %6, %struct.ath_mci_profile** %3, align 8
  %7 = load %struct.ath_btcoex*, %struct.ath_btcoex** %2, align 8
  %8 = getelementptr inbounds %struct.ath_btcoex, %struct.ath_btcoex* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.ath_btcoex*, %struct.ath_btcoex** %2, align 8
  %11 = getelementptr inbounds %struct.ath_btcoex, %struct.ath_btcoex* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = sub nsw i32 100, %12
  %14 = mul nsw i32 %9, %13
  %15 = sdiv i32 %14, 100
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp sle i32 %16, 4
  br i1 %17, label %18, label %35

18:                                               ; preds = %1
  %19 = load %struct.ath_mci_profile*, %struct.ath_mci_profile** %3, align 8
  %20 = getelementptr inbounds %struct.ath_mci_profile, %struct.ath_mci_profile* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %18
  %24 = load %struct.ath_mci_profile*, %struct.ath_mci_profile** %3, align 8
  %25 = getelementptr inbounds %struct.ath_mci_profile, %struct.ath_mci_profile* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %4, align 4
  %28 = mul nsw i32 2, %27
  %29 = icmp sgt i32 %26, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %23, %18
  %31 = load i32, i32* %4, align 4
  %32 = mul nsw i32 2, %31
  %33 = load %struct.ath_mci_profile*, %struct.ath_mci_profile** %3, align 8
  %34 = getelementptr inbounds %struct.ath_mci_profile, %struct.ath_mci_profile* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  br label %35

35:                                               ; preds = %30, %23, %1
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
