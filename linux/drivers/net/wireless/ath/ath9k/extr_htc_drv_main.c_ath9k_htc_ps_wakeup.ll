; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_htc_drv_main.c_ath9k_htc_ps_wakeup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_htc_drv_main.c_ath9k_htc_ps_wakeup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath9k_htc_priv = type { i32, i32, i32 }

@ATH9K_PM_AWAKE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath9k_htc_ps_wakeup(%struct.ath9k_htc_priv* %0) #0 {
  %2 = alloca %struct.ath9k_htc_priv*, align 8
  store %struct.ath9k_htc_priv* %0, %struct.ath9k_htc_priv** %2, align 8
  %3 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %2, align 8
  %4 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %3, i32 0, i32 1
  %5 = call i32 @mutex_lock(i32* %4)
  %6 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %2, align 8
  %7 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = add nsw i32 %8, 1
  store i32 %9, i32* %7, align 4
  %10 = icmp ne i32 %9, 1
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %18

12:                                               ; preds = %1
  %13 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %2, align 8
  %14 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @ATH9K_PM_AWAKE, align 4
  %17 = call i32 @ath9k_hw_setpower(i32 %15, i32 %16)
  br label %18

18:                                               ; preds = %12, %11
  %19 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %2, align 8
  %20 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %19, i32 0, i32 1
  %21 = call i32 @mutex_unlock(i32* %20)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ath9k_hw_setpower(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
