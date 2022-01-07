; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_recovery.c_ath6kl_recovery_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_recovery.c_ath6kl_recovery_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath6kl = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }

@ATH6KL_STATE_ON = common dso_local global i64 0, align 8
@ATH6KL_STATE_RECOVERY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath6kl_recovery_suspend(%struct.ath6kl* %0) #0 {
  %2 = alloca %struct.ath6kl*, align 8
  store %struct.ath6kl* %0, %struct.ath6kl** %2, align 8
  %3 = load %struct.ath6kl*, %struct.ath6kl** %2, align 8
  %4 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %3, i32 0, i32 1
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 8
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %37

9:                                                ; preds = %1
  %10 = load %struct.ath6kl*, %struct.ath6kl** %2, align 8
  %11 = call i32 @ath6kl_recovery_cleanup(%struct.ath6kl* %10)
  %12 = load %struct.ath6kl*, %struct.ath6kl** %2, align 8
  %13 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %9
  br label %37

18:                                               ; preds = %9
  %19 = load %struct.ath6kl*, %struct.ath6kl** %2, align 8
  %20 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  store i64 0, i64* %21, align 8
  %22 = load %struct.ath6kl*, %struct.ath6kl** %2, align 8
  %23 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @ATH6KL_STATE_ON, align 8
  %26 = icmp ne i64 %24, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 @WARN_ON(i32 %27)
  %29 = load i64, i64* @ATH6KL_STATE_RECOVERY, align 8
  %30 = load %struct.ath6kl*, %struct.ath6kl** %2, align 8
  %31 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %30, i32 0, i32 0
  store i64 %29, i64* %31, align 8
  %32 = load %struct.ath6kl*, %struct.ath6kl** %2, align 8
  %33 = call i32 @ath6kl_init_hw_restart(%struct.ath6kl* %32)
  %34 = load i64, i64* @ATH6KL_STATE_ON, align 8
  %35 = load %struct.ath6kl*, %struct.ath6kl** %2, align 8
  %36 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  br label %37

37:                                               ; preds = %18, %17, %8
  ret void
}

declare dso_local i32 @ath6kl_recovery_cleanup(%struct.ath6kl*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @ath6kl_init_hw_restart(%struct.ath6kl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
