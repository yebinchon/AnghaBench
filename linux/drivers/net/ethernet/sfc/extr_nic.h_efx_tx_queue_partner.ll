; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_nic.h_efx_tx_queue_partner.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_nic.h_efx_tx_queue_partner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_tx_queue = type { i32 }

@EFX_TXQ_TYPE_OFFLOAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.efx_tx_queue* (%struct.efx_tx_queue*)* @efx_tx_queue_partner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.efx_tx_queue* @efx_tx_queue_partner(%struct.efx_tx_queue* %0) #0 {
  %2 = alloca %struct.efx_tx_queue*, align 8
  %3 = alloca %struct.efx_tx_queue*, align 8
  store %struct.efx_tx_queue* %0, %struct.efx_tx_queue** %3, align 8
  %4 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %3, align 8
  %5 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @EFX_TXQ_TYPE_OFFLOAD, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %1
  %11 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %3, align 8
  %12 = load i32, i32* @EFX_TXQ_TYPE_OFFLOAD, align 4
  %13 = sext i32 %12 to i64
  %14 = sub i64 0, %13
  %15 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %11, i64 %14
  store %struct.efx_tx_queue* %15, %struct.efx_tx_queue** %2, align 8
  br label %21

16:                                               ; preds = %1
  %17 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %3, align 8
  %18 = load i32, i32* @EFX_TXQ_TYPE_OFFLOAD, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %17, i64 %19
  store %struct.efx_tx_queue* %20, %struct.efx_tx_queue** %2, align 8
  br label %21

21:                                               ; preds = %16, %10
  %22 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %2, align 8
  ret %struct.efx_tx_queue* %22
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
