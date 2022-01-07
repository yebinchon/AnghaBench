; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_farch.c_efx_farch_tx_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_farch.c_efx_farch_tx_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_tx_queue = type { i32, %struct.TYPE_6__, %struct.TYPE_4__*, %struct.efx_nic* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.efx_nic = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@EFX_TXQ_TYPE_OFFLOAD = common dso_local global i32 0, align 4
@FRF_AZ_TX_DESCQ_EN = common dso_local global i32 0, align 4
@FRF_AZ_TX_ISCSI_DDIG_EN = common dso_local global i32 0, align 4
@FRF_AZ_TX_ISCSI_HDIG_EN = common dso_local global i32 0, align 4
@FRF_AZ_TX_DESCQ_BUF_BASE_ID = common dso_local global i32 0, align 4
@FRF_AZ_TX_DESCQ_EVQ_ID = common dso_local global i32 0, align 4
@FRF_AZ_TX_DESCQ_OWNER_ID = common dso_local global i32 0, align 4
@FRF_AZ_TX_DESCQ_LABEL = common dso_local global i32 0, align 4
@FRF_AZ_TX_DESCQ_SIZE = common dso_local global i32 0, align 4
@FRF_AZ_TX_DESCQ_TYPE = common dso_local global i32 0, align 4
@FRF_BZ_TX_NON_IP_DROP_DIS = common dso_local global i32 0, align 4
@FRF_BZ_TX_IP_CHKSM_DIS = common dso_local global i32 0, align 4
@FRF_BZ_TX_TCP_CHKSM_DIS = common dso_local global i32 0, align 4
@FRF_BZ_TX_PACE = common dso_local global i32 0, align 4
@EFX_TXQ_TYPE_HIGHPRI = common dso_local global i32 0, align 4
@FFE_BZ_TX_PACE_OFF = common dso_local global i32 0, align 4
@FFE_BZ_TX_PACE_RESERVED = common dso_local global i32 0, align 4
@FR_BZ_TX_PACE_TBL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @efx_farch_tx_init(%struct.efx_tx_queue* %0) #0 {
  %2 = alloca %struct.efx_tx_queue*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.efx_nic*, align 8
  %5 = alloca i32, align 4
  store %struct.efx_tx_queue* %0, %struct.efx_tx_queue** %2, align 8
  %6 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %2, align 8
  %7 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @EFX_TXQ_TYPE_OFFLOAD, align 4
  %10 = and i32 %8, %9
  store i32 %10, i32* %3, align 4
  %11 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %2, align 8
  %12 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %11, i32 0, i32 3
  %13 = load %struct.efx_nic*, %struct.efx_nic** %12, align 8
  store %struct.efx_nic* %13, %struct.efx_nic** %4, align 8
  %14 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %15 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %2, align 8
  %16 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %15, i32 0, i32 1
  %17 = call i32 @efx_init_special_buffer(%struct.efx_nic* %14, %struct.TYPE_6__* %16)
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @FRF_AZ_TX_DESCQ_EN, align 4
  %20 = load i32, i32* @FRF_AZ_TX_ISCSI_DDIG_EN, align 4
  %21 = load i32, i32* @FRF_AZ_TX_ISCSI_HDIG_EN, align 4
  %22 = load i32, i32* @FRF_AZ_TX_DESCQ_BUF_BASE_ID, align 4
  %23 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %2, align 8
  %24 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @FRF_AZ_TX_DESCQ_EVQ_ID, align 4
  %28 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %2, align 8
  %29 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %28, i32 0, i32 2
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @FRF_AZ_TX_DESCQ_OWNER_ID, align 4
  %34 = load i32, i32* @FRF_AZ_TX_DESCQ_LABEL, align 4
  %35 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %2, align 8
  %36 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @FRF_AZ_TX_DESCQ_SIZE, align 4
  %39 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %2, align 8
  %40 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @__ffs(i32 %42)
  %44 = load i32, i32* @FRF_AZ_TX_DESCQ_TYPE, align 4
  %45 = load i32, i32* @FRF_BZ_TX_NON_IP_DROP_DIS, align 4
  %46 = call i32 @EFX_POPULATE_OWORD_10(i32 %18, i32 %19, i32 1, i32 %20, i32 0, i32 %21, i32 0, i32 %22, i32 %26, i32 %27, i32 %32, i32 %33, i32 0, i32 %34, i32 %37, i32 %38, i32 %43, i32 %44, i32 0, i32 %45, i32 1)
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* @FRF_BZ_TX_IP_CHKSM_DIS, align 4
  %49 = load i32, i32* %3, align 4
  %50 = icmp ne i32 %49, 0
  %51 = xor i1 %50, true
  %52 = zext i1 %51 to i32
  %53 = call i32 @EFX_SET_OWORD_FIELD(i32 %47, i32 %48, i32 %52)
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* @FRF_BZ_TX_TCP_CHKSM_DIS, align 4
  %56 = load i32, i32* %3, align 4
  %57 = icmp ne i32 %56, 0
  %58 = xor i1 %57, true
  %59 = zext i1 %58 to i32
  %60 = call i32 @EFX_SET_OWORD_FIELD(i32 %54, i32 %55, i32 %59)
  %61 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %62 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %63 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %62, i32 0, i32 0
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %2, align 8
  %68 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @efx_writeo_table(%struct.efx_nic* %61, i32* %5, i32 %66, i32 %69)
  %71 = load i32, i32* %5, align 4
  %72 = load i32, i32* @FRF_BZ_TX_PACE, align 4
  %73 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %2, align 8
  %74 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @EFX_TXQ_TYPE_HIGHPRI, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %1
  %80 = load i32, i32* @FFE_BZ_TX_PACE_OFF, align 4
  br label %83

81:                                               ; preds = %1
  %82 = load i32, i32* @FFE_BZ_TX_PACE_RESERVED, align 4
  br label %83

83:                                               ; preds = %81, %79
  %84 = phi i32 [ %80, %79 ], [ %82, %81 ]
  %85 = call i32 @EFX_POPULATE_OWORD_1(i32 %71, i32 %72, i32 %84)
  %86 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %87 = load i32, i32* @FR_BZ_TX_PACE_TBL, align 4
  %88 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %2, align 8
  %89 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @efx_writeo_table(%struct.efx_nic* %86, i32* %5, i32 %87, i32 %90)
  ret void
}

declare dso_local i32 @efx_init_special_buffer(%struct.efx_nic*, %struct.TYPE_6__*) #1

declare dso_local i32 @EFX_POPULATE_OWORD_10(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @__ffs(i32) #1

declare dso_local i32 @EFX_SET_OWORD_FIELD(i32, i32, i32) #1

declare dso_local i32 @efx_writeo_table(%struct.efx_nic*, i32*, i32, i32) #1

declare dso_local i32 @EFX_POPULATE_OWORD_1(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
