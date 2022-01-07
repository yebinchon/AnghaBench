; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_htc_drv_txrx.c_ath9k_host_rx_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_htc_drv_txrx.c_ath9k_host_rx_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath9k_htc_priv = type { i32 }
%struct.ath_common = type { i32 }

@ATH_OP_SCANNING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath9k_host_rx_init(%struct.ath9k_htc_priv* %0) #0 {
  %2 = alloca %struct.ath9k_htc_priv*, align 8
  %3 = alloca %struct.ath_common*, align 8
  store %struct.ath9k_htc_priv* %0, %struct.ath9k_htc_priv** %2, align 8
  %4 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %2, align 8
  %5 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call %struct.ath_common* @ath9k_hw_common(i32 %6)
  store %struct.ath_common* %7, %struct.ath_common** %3, align 8
  %8 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %2, align 8
  %9 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @ath9k_hw_rxena(i32 %10)
  %12 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %2, align 8
  %13 = call i32 @ath9k_htc_opmode_init(%struct.ath9k_htc_priv* %12)
  %14 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %2, align 8
  %15 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @ATH_OP_SCANNING, align 4
  %18 = load %struct.ath_common*, %struct.ath_common** %3, align 8
  %19 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %18, i32 0, i32 0
  %20 = call i32 @test_bit(i32 %17, i32* %19)
  %21 = call i32 @ath9k_hw_startpcureceive(i32 %16, i32 %20)
  ret void
}

declare dso_local %struct.ath_common* @ath9k_hw_common(i32) #1

declare dso_local i32 @ath9k_hw_rxena(i32) #1

declare dso_local i32 @ath9k_htc_opmode_init(%struct.ath9k_htc_priv*) #1

declare dso_local i32 @ath9k_hw_startpcureceive(i32, i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
