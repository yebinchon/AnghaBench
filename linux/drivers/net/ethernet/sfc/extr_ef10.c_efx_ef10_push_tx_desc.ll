; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_ef10.c_efx_ef10_push_tx_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_ef10.c_efx_ef10_push_tx_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_tx_queue = type { i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32* }

@ERF_DZ_TX_DESC_WPTR = common dso_local global i32 0, align 4
@ER_DZ_TX_DESC_UPD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.efx_tx_queue*, i32*)* @efx_ef10_push_tx_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @efx_ef10_push_tx_desc(%struct.efx_tx_queue* %0, i32* %1) #0 {
  %3 = alloca %struct.efx_tx_queue*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__, align 8
  store %struct.efx_tx_queue* %0, %struct.efx_tx_queue** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %3, align 8
  %8 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %3, align 8
  %11 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = and i32 %9, %12
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* @ERF_DZ_TX_DESC_WPTR, align 4
  %15 = load i32, i32* %5, align 4
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = call i32 @EFX_POPULATE_OWORD_1(i32* %17, i32 %14, i32 %15)
  %19 = load i32*, i32** %4, align 8
  %20 = load i32, i32* %19, align 4
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  store i32 %20, i32* %23, align 4
  %24 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %3, align 8
  %25 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @ER_DZ_TX_DESC_UPD, align 4
  %28 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %3, align 8
  %29 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @efx_writeo_page(i32 %26, %struct.TYPE_4__* %6, i32 %27, i32 %30)
  ret void
}

declare dso_local i32 @EFX_POPULATE_OWORD_1(i32*, i32, i32) #1

declare dso_local i32 @efx_writeo_page(i32, %struct.TYPE_4__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
