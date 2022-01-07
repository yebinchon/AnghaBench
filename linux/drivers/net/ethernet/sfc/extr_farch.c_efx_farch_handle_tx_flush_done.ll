; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_farch.c_efx_farch_handle_tx_flush_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_farch.c_efx_farch_handle_tx_flush_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { i32, i32 }
%struct.efx_tx_queue = type { i32, i32 }

@FSF_AZ_DRIVER_EV_SUBDATA = common dso_local global i32 0, align 4
@EFX_TXQ_TYPES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.efx_nic*, i32*)* @efx_farch_handle_tx_flush_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @efx_farch_handle_tx_flush_done(%struct.efx_nic* %0, i32* %1) #0 {
  %3 = alloca %struct.efx_nic*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.efx_tx_queue*, align 8
  %6 = alloca i32, align 4
  store %struct.efx_nic* %0, %struct.efx_nic** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @FSF_AZ_DRIVER_EV_SUBDATA, align 4
  %10 = call i32 @EFX_QWORD_FIELD(i32 %8, i32 %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @EFX_TXQ_TYPES, align 4
  %13 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %14 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %17 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = add nsw i32 %15, %18
  %20 = mul nsw i32 %12, %19
  %21 = icmp slt i32 %11, %20
  br i1 %21, label %22, label %43

22:                                               ; preds = %2
  %23 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @EFX_TXQ_TYPES, align 4
  %26 = sdiv i32 %24, %25
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @EFX_TXQ_TYPES, align 4
  %29 = srem i32 %27, %28
  %30 = call %struct.efx_tx_queue* @efx_get_tx_queue(%struct.efx_nic* %23, i32 %26, i32 %29)
  store %struct.efx_tx_queue* %30, %struct.efx_tx_queue** %5, align 8
  %31 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %5, align 8
  %32 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %31, i32 0, i32 1
  %33 = call i64 @atomic_cmpxchg(i32* %32, i32 1, i32 0)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %22
  %36 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %5, align 8
  %37 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %5, align 8
  %40 = call i32 @EFX_CHANNEL_MAGIC_TX_DRAIN(%struct.efx_tx_queue* %39)
  %41 = call i32 @efx_farch_magic_event(i32 %38, i32 %40)
  br label %42

42:                                               ; preds = %35, %22
  br label %43

43:                                               ; preds = %42, %2
  ret void
}

declare dso_local i32 @EFX_QWORD_FIELD(i32, i32) #1

declare dso_local %struct.efx_tx_queue* @efx_get_tx_queue(%struct.efx_nic*, i32, i32) #1

declare dso_local i64 @atomic_cmpxchg(i32*, i32, i32) #1

declare dso_local i32 @efx_farch_magic_event(i32, i32) #1

declare dso_local i32 @EFX_CHANNEL_MAGIC_TX_DRAIN(%struct.efx_tx_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
