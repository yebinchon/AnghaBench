; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/tundra/extr_tsi108_eth.c_tsi108_restart_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/tundra/extr_tsi108_eth.c_tsi108_restart_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tsi108_prv_data = type { i32 }

@TSI108_EC_TXQ_PTRHIGH = common dso_local global i32 0, align 4
@TSI108_EC_TXQ_PTRHIGH_VALID = common dso_local global i32 0, align 4
@TSI108_EC_TXCTRL = common dso_local global i32 0, align 4
@TSI108_EC_TXCTRL_IDLEINT = common dso_local global i32 0, align 4
@TSI108_EC_TXCTRL_GO = common dso_local global i32 0, align 4
@TSI108_EC_TXCTRL_QUEUE0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tsi108_prv_data*)* @tsi108_restart_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tsi108_restart_tx(%struct.tsi108_prv_data* %0) #0 {
  %2 = alloca %struct.tsi108_prv_data*, align 8
  store %struct.tsi108_prv_data* %0, %struct.tsi108_prv_data** %2, align 8
  %3 = load i32, i32* @TSI108_EC_TXQ_PTRHIGH, align 4
  %4 = load i32, i32* @TSI108_EC_TXQ_PTRHIGH_VALID, align 4
  %5 = call i32 @TSI_WRITE(i32 %3, i32 %4)
  %6 = load i32, i32* @TSI108_EC_TXCTRL, align 4
  %7 = load i32, i32* @TSI108_EC_TXCTRL_IDLEINT, align 4
  %8 = load i32, i32* @TSI108_EC_TXCTRL_GO, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @TSI108_EC_TXCTRL_QUEUE0, align 4
  %11 = or i32 %9, %10
  %12 = call i32 @TSI_WRITE(i32 %6, i32 %11)
  ret void
}

declare dso_local i32 @TSI_WRITE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
