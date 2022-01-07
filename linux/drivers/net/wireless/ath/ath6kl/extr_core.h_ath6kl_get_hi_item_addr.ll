; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_core.h_ath6kl_get_hi_item_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_core.h_ath6kl_get_hi_item_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath6kl = type { i64 }

@TARGET_TYPE_AR6003 = common dso_local global i64 0, align 8
@ATH6KL_AR6003_HI_START_ADDR = common dso_local global i64 0, align 8
@TARGET_TYPE_AR6004 = common dso_local global i64 0, align 8
@ATH6KL_AR6004_HI_START_ADDR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ath6kl*, i64)* @ath6kl_get_hi_item_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ath6kl_get_hi_item_addr(%struct.ath6kl* %0, i64 %1) #0 {
  %3 = alloca %struct.ath6kl*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.ath6kl* %0, %struct.ath6kl** %3, align 8
  store i64 %1, i64* %4, align 8
  store i64 0, i64* %5, align 8
  %6 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %7 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @TARGET_TYPE_AR6003, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load i64, i64* @ATH6KL_AR6003_HI_START_ADDR, align 8
  %13 = load i64, i64* %4, align 8
  %14 = add nsw i64 %12, %13
  store i64 %14, i64* %5, align 8
  br label %26

15:                                               ; preds = %2
  %16 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %17 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @TARGET_TYPE_AR6004, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %15
  %22 = load i64, i64* @ATH6KL_AR6004_HI_START_ADDR, align 8
  %23 = load i64, i64* %4, align 8
  %24 = add nsw i64 %22, %23
  store i64 %24, i64* %5, align 8
  br label %25

25:                                               ; preds = %21, %15
  br label %26

26:                                               ; preds = %25, %11
  %27 = load i64, i64* %5, align 8
  ret i64 %27
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
