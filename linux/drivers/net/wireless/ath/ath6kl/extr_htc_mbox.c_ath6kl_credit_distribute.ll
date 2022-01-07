; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_htc_mbox.c_ath6kl_credit_distribute.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_htc_mbox.c_ath6kl_credit_distribute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath6kl_htc_credit_info = type { i64, i64 }
%struct.list_head = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath6kl_htc_credit_info*, %struct.list_head*, i32)* @ath6kl_credit_distribute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath6kl_credit_distribute(%struct.ath6kl_htc_credit_info* %0, %struct.list_head* %1, i32 %2) #0 {
  %4 = alloca %struct.ath6kl_htc_credit_info*, align 8
  %5 = alloca %struct.list_head*, align 8
  %6 = alloca i32, align 4
  store %struct.ath6kl_htc_credit_info* %0, %struct.ath6kl_htc_credit_info** %4, align 8
  store %struct.list_head* %1, %struct.list_head** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %16 [
    i32 128, label %8
    i32 129, label %12
  ]

8:                                                ; preds = %3
  %9 = load %struct.ath6kl_htc_credit_info*, %struct.ath6kl_htc_credit_info** %4, align 8
  %10 = load %struct.list_head*, %struct.list_head** %5, align 8
  %11 = call i32 @ath6kl_credit_update(%struct.ath6kl_htc_credit_info* %9, %struct.list_head* %10)
  br label %17

12:                                               ; preds = %3
  %13 = load %struct.ath6kl_htc_credit_info*, %struct.ath6kl_htc_credit_info** %4, align 8
  %14 = load %struct.list_head*, %struct.list_head** %5, align 8
  %15 = call i32 @ath6kl_credit_redistribute(%struct.ath6kl_htc_credit_info* %13, %struct.list_head* %14)
  br label %17

16:                                               ; preds = %3
  br label %17

17:                                               ; preds = %16, %12, %8
  %18 = load %struct.ath6kl_htc_credit_info*, %struct.ath6kl_htc_credit_info** %4, align 8
  %19 = getelementptr inbounds %struct.ath6kl_htc_credit_info, %struct.ath6kl_htc_credit_info* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.ath6kl_htc_credit_info*, %struct.ath6kl_htc_credit_info** %4, align 8
  %22 = getelementptr inbounds %struct.ath6kl_htc_credit_info, %struct.ath6kl_htc_credit_info* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp sgt i64 %20, %23
  %25 = zext i1 %24 to i32
  %26 = call i32 @WARN_ON(i32 %25)
  %27 = load %struct.ath6kl_htc_credit_info*, %struct.ath6kl_htc_credit_info** %4, align 8
  %28 = getelementptr inbounds %struct.ath6kl_htc_credit_info, %struct.ath6kl_htc_credit_info* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp slt i64 %29, 0
  %31 = zext i1 %30 to i32
  %32 = call i32 @WARN_ON(i32 %31)
  ret void
}

declare dso_local i32 @ath6kl_credit_update(%struct.ath6kl_htc_credit_info*, %struct.list_head*) #1

declare dso_local i32 @ath6kl_credit_redistribute(%struct.ath6kl_htc_credit_info*, %struct.list_head*) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
