; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/microchip/extr_encx24j600.c_encx24j600_hw_init_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/microchip/extr_encx24j600.c_encx24j600_hw_init_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.encx24j600_priv = type { i32 }

@EIR = common dso_local global i32 0, align 4
@TXIF = common dso_local global i32 0, align 4
@TXABTIF = common dso_local global i32 0, align 4
@EGPWRPT = common dso_local global i32 0, align 4
@ENC_TX_BUF_START = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.encx24j600_priv*)* @encx24j600_hw_init_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @encx24j600_hw_init_tx(%struct.encx24j600_priv* %0) #0 {
  %2 = alloca %struct.encx24j600_priv*, align 8
  store %struct.encx24j600_priv* %0, %struct.encx24j600_priv** %2, align 8
  %3 = load %struct.encx24j600_priv*, %struct.encx24j600_priv** %2, align 8
  %4 = call i32 @encx24j600_reset_hw_tx(%struct.encx24j600_priv* %3)
  %5 = load %struct.encx24j600_priv*, %struct.encx24j600_priv** %2, align 8
  %6 = load i32, i32* @EIR, align 4
  %7 = load i32, i32* @TXIF, align 4
  %8 = load i32, i32* @TXABTIF, align 4
  %9 = or i32 %7, %8
  %10 = call i32 @encx24j600_clr_bits(%struct.encx24j600_priv* %5, i32 %6, i32 %9)
  %11 = load %struct.encx24j600_priv*, %struct.encx24j600_priv** %2, align 8
  %12 = load i32, i32* @EGPWRPT, align 4
  %13 = load i32, i32* @ENC_TX_BUF_START, align 4
  %14 = call i32 @encx24j600_write_reg(%struct.encx24j600_priv* %11, i32 %12, i32 %13)
  ret void
}

declare dso_local i32 @encx24j600_reset_hw_tx(%struct.encx24j600_priv*) #1

declare dso_local i32 @encx24j600_clr_bits(%struct.encx24j600_priv*, i32, i32) #1

declare dso_local i32 @encx24j600_write_reg(%struct.encx24j600_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
