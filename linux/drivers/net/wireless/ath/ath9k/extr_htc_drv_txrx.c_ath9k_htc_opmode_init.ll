; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_htc_drv_txrx.c_ath9k_htc_opmode_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_htc_drv_txrx.c_ath9k_htc_opmode_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath9k_htc_priv = type { %struct.ath_hw* }
%struct.ath_hw = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath9k_htc_priv*)* @ath9k_htc_opmode_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath9k_htc_opmode_init(%struct.ath9k_htc_priv* %0) #0 {
  %2 = alloca %struct.ath9k_htc_priv*, align 8
  %3 = alloca %struct.ath_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [2 x i32], align 4
  store %struct.ath9k_htc_priv* %0, %struct.ath9k_htc_priv** %2, align 8
  %6 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %2, align 8
  %7 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %6, i32 0, i32 0
  %8 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  store %struct.ath_hw* %8, %struct.ath_hw** %3, align 8
  %9 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %2, align 8
  %10 = call i32 @ath9k_htc_calcrxfilter(%struct.ath9k_htc_priv* %9)
  store i32 %10, i32* %4, align 4
  %11 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @ath9k_hw_setrxfilter(%struct.ath_hw* %11, i32 %12)
  %14 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  store i32 -1, i32* %14, align 4
  %15 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  store i32 -1, i32* %15, align 4
  %16 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %17 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %18 = load i32, i32* %17, align 4
  %19 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @ath9k_hw_setmcastfilter(%struct.ath_hw* %16, i32 %18, i32 %20)
  ret void
}

declare dso_local i32 @ath9k_htc_calcrxfilter(%struct.ath9k_htc_priv*) #1

declare dso_local i32 @ath9k_hw_setrxfilter(%struct.ath_hw*, i32) #1

declare dso_local i32 @ath9k_hw_setmcastfilter(%struct.ath_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
