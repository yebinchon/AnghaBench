; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_recovery.c_ath6kl_recovery_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_recovery.c_ath6kl_recovery_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath6kl = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i64, i64, i32 }

@RECOVERY_CLEANUP = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath6kl_recovery_resume(%struct.ath6kl* %0) #0 {
  %2 = alloca %struct.ath6kl*, align 8
  store %struct.ath6kl* %0, %struct.ath6kl** %2, align 8
  %3 = load %struct.ath6kl*, %struct.ath6kl** %2, align 8
  %4 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 5
  %6 = load i32, i32* %5, align 8
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %41

9:                                                ; preds = %1
  %10 = load i32, i32* @RECOVERY_CLEANUP, align 4
  %11 = load %struct.ath6kl*, %struct.ath6kl** %2, align 8
  %12 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %11, i32 0, i32 1
  %13 = call i32 @clear_bit(i32 %10, i32* %12)
  %14 = load %struct.ath6kl*, %struct.ath6kl** %2, align 8
  %15 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %9
  br label %41

20:                                               ; preds = %9
  %21 = load %struct.ath6kl*, %struct.ath6kl** %2, align 8
  %22 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store i32 0, i32* %23, align 8
  %24 = load %struct.ath6kl*, %struct.ath6kl** %2, align 8
  %25 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 4
  store i64 0, i64* %26, align 8
  %27 = load %struct.ath6kl*, %struct.ath6kl** %2, align 8
  %28 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 3
  store i64 0, i64* %29, align 8
  %30 = load %struct.ath6kl*, %struct.ath6kl** %2, align 8
  %31 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 2
  %33 = load i64, i64* @jiffies, align 8
  %34 = load %struct.ath6kl*, %struct.ath6kl** %2, align 8
  %35 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @msecs_to_jiffies(i32 %37)
  %39 = add nsw i64 %33, %38
  %40 = call i32 @mod_timer(i32* %32, i64 %39)
  br label %41

41:                                               ; preds = %20, %19, %8
  ret void
}

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
