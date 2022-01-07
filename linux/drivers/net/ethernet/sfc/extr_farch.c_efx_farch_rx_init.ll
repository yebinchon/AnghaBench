; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_farch.c_efx_farch_rx_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_farch.c_efx_farch_rx_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_rx_queue = type { %struct.TYPE_6__, i64, %struct.efx_nic* }
%struct.TYPE_6__ = type { i64, i64 }
%struct.efx_nic = type { i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@hw = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"RX queue %d ring in special buffers %d-%d\0A\00", align 1
@FRF_AZ_RX_ISCSI_DDIG_EN = common dso_local global i32 0, align 4
@FRF_AZ_RX_ISCSI_HDIG_EN = common dso_local global i32 0, align 4
@FRF_AZ_RX_DESCQ_BUF_BASE_ID = common dso_local global i32 0, align 4
@FRF_AZ_RX_DESCQ_EVQ_ID = common dso_local global i32 0, align 4
@FRF_AZ_RX_DESCQ_OWNER_ID = common dso_local global i32 0, align 4
@FRF_AZ_RX_DESCQ_LABEL = common dso_local global i32 0, align 4
@FRF_AZ_RX_DESCQ_SIZE = common dso_local global i32 0, align 4
@FRF_AZ_RX_DESCQ_TYPE = common dso_local global i32 0, align 4
@FRF_AZ_RX_DESCQ_JUMBO = common dso_local global i32 0, align 4
@FRF_AZ_RX_DESCQ_EN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @efx_farch_rx_init(%struct.efx_rx_queue* %0) #0 {
  %2 = alloca %struct.efx_rx_queue*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.efx_nic*, align 8
  %5 = alloca i32, align 4
  store %struct.efx_rx_queue* %0, %struct.efx_rx_queue** %2, align 8
  %6 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %2, align 8
  %7 = getelementptr inbounds %struct.efx_rx_queue, %struct.efx_rx_queue* %6, i32 0, i32 2
  %8 = load %struct.efx_nic*, %struct.efx_nic** %7, align 8
  store %struct.efx_nic* %8, %struct.efx_nic** %4, align 8
  %9 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %10 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %5, align 4
  %12 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %13 = load i32, i32* @hw, align 4
  %14 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %15 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %2, align 8
  %18 = call i32 @efx_rx_queue_index(%struct.efx_rx_queue* %17)
  %19 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %2, align 8
  %20 = getelementptr inbounds %struct.efx_rx_queue, %struct.efx_rx_queue* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %2, align 8
  %24 = getelementptr inbounds %struct.efx_rx_queue, %struct.efx_rx_queue* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %2, align 8
  %28 = getelementptr inbounds %struct.efx_rx_queue, %struct.efx_rx_queue* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %26, %30
  %32 = sub nsw i64 %31, 1
  %33 = call i32 @netif_dbg(%struct.efx_nic* %12, i32 %13, i32 %16, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %18, i64 %22, i64 %32)
  %34 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %2, align 8
  %35 = getelementptr inbounds %struct.efx_rx_queue, %struct.efx_rx_queue* %34, i32 0, i32 1
  store i64 0, i64* %35, align 8
  %36 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %37 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %2, align 8
  %38 = getelementptr inbounds %struct.efx_rx_queue, %struct.efx_rx_queue* %37, i32 0, i32 0
  %39 = call i32 @efx_init_special_buffer(%struct.efx_nic* %36, %struct.TYPE_6__* %38)
  %40 = load i32, i32* %3, align 4
  %41 = load i32, i32* @FRF_AZ_RX_ISCSI_DDIG_EN, align 4
  %42 = load i32, i32* @FRF_AZ_RX_ISCSI_HDIG_EN, align 4
  %43 = load i32, i32* @FRF_AZ_RX_DESCQ_BUF_BASE_ID, align 4
  %44 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %2, align 8
  %45 = getelementptr inbounds %struct.efx_rx_queue, %struct.efx_rx_queue* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i32, i32* @FRF_AZ_RX_DESCQ_EVQ_ID, align 4
  %49 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %2, align 8
  %50 = call %struct.TYPE_5__* @efx_rx_queue_channel(%struct.efx_rx_queue* %49)
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @FRF_AZ_RX_DESCQ_OWNER_ID, align 4
  %54 = load i32, i32* @FRF_AZ_RX_DESCQ_LABEL, align 4
  %55 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %2, align 8
  %56 = call i32 @efx_rx_queue_index(%struct.efx_rx_queue* %55)
  %57 = load i32, i32* @FRF_AZ_RX_DESCQ_SIZE, align 4
  %58 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %2, align 8
  %59 = getelementptr inbounds %struct.efx_rx_queue, %struct.efx_rx_queue* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = call i32 @__ffs(i64 %61)
  %63 = load i32, i32* @FRF_AZ_RX_DESCQ_TYPE, align 4
  %64 = load i32, i32* @FRF_AZ_RX_DESCQ_JUMBO, align 4
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* @FRF_AZ_RX_DESCQ_EN, align 4
  %67 = call i32 @EFX_POPULATE_OWORD_10(i32 %40, i32 %41, i32 1, i32 %42, i32 1, i32 %43, i64 %47, i32 %48, i32 %52, i32 %53, i32 0, i32 %54, i32 %56, i32 %57, i32 %62, i32 %63, i32 0, i32 %64, i32 %65, i32 %66, i32 1)
  %68 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %69 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %70 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %69, i32 0, i32 1
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %2, align 8
  %75 = call i32 @efx_rx_queue_index(%struct.efx_rx_queue* %74)
  %76 = call i32 @efx_writeo_table(%struct.efx_nic* %68, i32* %3, i32 %73, i32 %75)
  ret void
}

declare dso_local i32 @netif_dbg(%struct.efx_nic*, i32, i32, i8*, i32, i64, i64) #1

declare dso_local i32 @efx_rx_queue_index(%struct.efx_rx_queue*) #1

declare dso_local i32 @efx_init_special_buffer(%struct.efx_nic*, %struct.TYPE_6__*) #1

declare dso_local i32 @EFX_POPULATE_OWORD_10(i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local %struct.TYPE_5__* @efx_rx_queue_channel(%struct.efx_rx_queue*) #1

declare dso_local i32 @__ffs(i64) #1

declare dso_local i32 @efx_writeo_table(%struct.efx_nic*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
