; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_recovery.c_ath6kl_recovery_hb_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_recovery.c_ath6kl_recovery_hb_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath6kl = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath6kl_recovery_hb_event(%struct.ath6kl* %0, i64 %1) #0 {
  %3 = alloca %struct.ath6kl*, align 8
  %4 = alloca i64, align 8
  store %struct.ath6kl* %0, %struct.ath6kl** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %4, align 8
  %6 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %7 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp eq i64 %5, %9
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %13 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  store i32 0, i32* %14, align 8
  br label %15

15:                                               ; preds = %11, %2
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
