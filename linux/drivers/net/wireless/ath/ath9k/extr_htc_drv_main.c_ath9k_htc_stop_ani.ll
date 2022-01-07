; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_htc_drv_main.c_ath9k_htc_stop_ani.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_htc_drv_main.c_ath9k_htc_stop_ani.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath9k_htc_priv = type { i32, i32 }
%struct.ath_common = type { i32 }

@ATH_OP_ANI_RUN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath9k_htc_stop_ani(%struct.ath9k_htc_priv* %0) #0 {
  %2 = alloca %struct.ath9k_htc_priv*, align 8
  %3 = alloca %struct.ath_common*, align 8
  store %struct.ath9k_htc_priv* %0, %struct.ath9k_htc_priv** %2, align 8
  %4 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %2, align 8
  %5 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 4
  %7 = call %struct.ath_common* @ath9k_hw_common(i32 %6)
  store %struct.ath_common* %7, %struct.ath_common** %3, align 8
  %8 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %2, align 8
  %9 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %8, i32 0, i32 0
  %10 = call i32 @cancel_delayed_work_sync(i32* %9)
  %11 = load i32, i32* @ATH_OP_ANI_RUN, align 4
  %12 = load %struct.ath_common*, %struct.ath_common** %3, align 8
  %13 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %12, i32 0, i32 0
  %14 = call i32 @clear_bit(i32 %11, i32* %13)
  ret void
}

declare dso_local %struct.ath_common* @ath9k_hw_common(i32) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
