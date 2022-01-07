; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_htc_drv_main.c_ath9k_htc_ps_restore.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_htc_drv_main.c_ath9k_htc_ps_restore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath9k_htc_priv = type { i64, i32, i32, i64, i64 }

@ATH9K_PM_FULL_SLEEP = common dso_local global i32 0, align 4
@ATH9K_PM_NETWORK_SLEEP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath9k_htc_ps_restore(%struct.ath9k_htc_priv* %0) #0 {
  %2 = alloca %struct.ath9k_htc_priv*, align 8
  %3 = alloca i32, align 4
  store %struct.ath9k_htc_priv* %0, %struct.ath9k_htc_priv** %2, align 8
  %4 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %2, align 8
  %5 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %4, i32 0, i32 1
  %6 = call i32 @mutex_lock(i32* %5)
  %7 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %2, align 8
  %8 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = add nsw i64 %9, -1
  store i64 %10, i64* %8, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %45

13:                                               ; preds = %1
  %14 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %2, align 8
  %15 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %14, i32 0, i32 4
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %32

18:                                               ; preds = %13
  %19 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %2, align 8
  %20 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @ath9k_hw_setrxabort(i32 %21, i32 1)
  %23 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %2, align 8
  %24 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @ath9k_hw_stopdmarecv(i32 %25, i32* %3)
  %27 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %2, align 8
  %28 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @ATH9K_PM_FULL_SLEEP, align 4
  %31 = call i32 @ath9k_hw_setpower(i32 %29, i32 %30)
  br label %44

32:                                               ; preds = %13
  %33 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %2, align 8
  %34 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %32
  %38 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %2, align 8
  %39 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @ATH9K_PM_NETWORK_SLEEP, align 4
  %42 = call i32 @ath9k_hw_setpower(i32 %40, i32 %41)
  br label %43

43:                                               ; preds = %37, %32
  br label %44

44:                                               ; preds = %43, %18
  br label %45

45:                                               ; preds = %44, %12
  %46 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %2, align 8
  %47 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %46, i32 0, i32 1
  %48 = call i32 @mutex_unlock(i32* %47)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ath9k_hw_setrxabort(i32, i32) #1

declare dso_local i32 @ath9k_hw_stopdmarecv(i32, i32*) #1

declare dso_local i32 @ath9k_hw_setpower(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
