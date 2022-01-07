; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_init_nic.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_init_nic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnxt*, i32)* @bnxt_init_nic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnxt_init_nic(%struct.bnxt* %0, i32 %1) #0 {
  %3 = alloca %struct.bnxt*, align 8
  %4 = alloca i32, align 4
  store %struct.bnxt* %0, %struct.bnxt** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %6 = call i32 @bnxt_init_cp_rings(%struct.bnxt* %5)
  %7 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %8 = call i32 @bnxt_init_rx_rings(%struct.bnxt* %7)
  %9 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %10 = call i32 @bnxt_init_tx_rings(%struct.bnxt* %9)
  %11 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @bnxt_init_ring_grps(%struct.bnxt* %11, i32 %12)
  %14 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %15 = call i32 @bnxt_init_vnics(%struct.bnxt* %14)
  %16 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @bnxt_init_chip(%struct.bnxt* %16, i32 %17)
  ret i32 %18
}

declare dso_local i32 @bnxt_init_cp_rings(%struct.bnxt*) #1

declare dso_local i32 @bnxt_init_rx_rings(%struct.bnxt*) #1

declare dso_local i32 @bnxt_init_tx_rings(%struct.bnxt*) #1

declare dso_local i32 @bnxt_init_ring_grps(%struct.bnxt*, i32) #1

declare dso_local i32 @bnxt_init_vnics(%struct.bnxt*) #1

declare dso_local i32 @bnxt_init_chip(%struct.bnxt*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
