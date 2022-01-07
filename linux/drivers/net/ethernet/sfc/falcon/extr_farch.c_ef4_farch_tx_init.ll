; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_farch.c_ef4_farch_tx_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_farch.c_ef4_farch_tx_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ef4_tx_queue = type { i32, %struct.TYPE_6__, %struct.TYPE_4__*, %struct.ef4_nic* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.ef4_nic = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

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
@EF4_REV_FALCON_B0 = common dso_local global i64 0, align 8
@EF4_TXQ_TYPE_OFFLOAD = common dso_local global i32 0, align 4
@FRF_BZ_TX_IP_CHKSM_DIS = common dso_local global i32 0, align 4
@FRF_BZ_TX_TCP_CHKSM_DIS = common dso_local global i32 0, align 4
@EF4_MAX_TX_QUEUES = common dso_local global i32 0, align 4
@FR_AA_TX_CHKSM_CFG = common dso_local global i32 0, align 4
@FRF_BZ_TX_PACE = common dso_local global i32 0, align 4
@EF4_TXQ_TYPE_HIGHPRI = common dso_local global i32 0, align 4
@FFE_BZ_TX_PACE_OFF = common dso_local global i32 0, align 4
@FFE_BZ_TX_PACE_RESERVED = common dso_local global i32 0, align 4
@FR_BZ_TX_PACE_TBL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ef4_farch_tx_init(%struct.ef4_tx_queue* %0) #0 {
  %2 = alloca %struct.ef4_tx_queue*, align 8
  %3 = alloca %struct.ef4_nic*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ef4_tx_queue* %0, %struct.ef4_tx_queue** %2, align 8
  %6 = load %struct.ef4_tx_queue*, %struct.ef4_tx_queue** %2, align 8
  %7 = getelementptr inbounds %struct.ef4_tx_queue, %struct.ef4_tx_queue* %6, i32 0, i32 3
  %8 = load %struct.ef4_nic*, %struct.ef4_nic** %7, align 8
  store %struct.ef4_nic* %8, %struct.ef4_nic** %3, align 8
  %9 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %10 = load %struct.ef4_tx_queue*, %struct.ef4_tx_queue** %2, align 8
  %11 = getelementptr inbounds %struct.ef4_tx_queue, %struct.ef4_tx_queue* %10, i32 0, i32 1
  %12 = call i32 @ef4_init_special_buffer(%struct.ef4_nic* %9, %struct.TYPE_6__* %11)
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @FRF_AZ_TX_DESCQ_EN, align 4
  %15 = load i32, i32* @FRF_AZ_TX_ISCSI_DDIG_EN, align 4
  %16 = load i32, i32* @FRF_AZ_TX_ISCSI_HDIG_EN, align 4
  %17 = load i32, i32* @FRF_AZ_TX_DESCQ_BUF_BASE_ID, align 4
  %18 = load %struct.ef4_tx_queue*, %struct.ef4_tx_queue** %2, align 8
  %19 = getelementptr inbounds %struct.ef4_tx_queue, %struct.ef4_tx_queue* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @FRF_AZ_TX_DESCQ_EVQ_ID, align 4
  %23 = load %struct.ef4_tx_queue*, %struct.ef4_tx_queue** %2, align 8
  %24 = getelementptr inbounds %struct.ef4_tx_queue, %struct.ef4_tx_queue* %23, i32 0, i32 2
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @FRF_AZ_TX_DESCQ_OWNER_ID, align 4
  %29 = load i32, i32* @FRF_AZ_TX_DESCQ_LABEL, align 4
  %30 = load %struct.ef4_tx_queue*, %struct.ef4_tx_queue** %2, align 8
  %31 = getelementptr inbounds %struct.ef4_tx_queue, %struct.ef4_tx_queue* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @FRF_AZ_TX_DESCQ_SIZE, align 4
  %34 = load %struct.ef4_tx_queue*, %struct.ef4_tx_queue** %2, align 8
  %35 = getelementptr inbounds %struct.ef4_tx_queue, %struct.ef4_tx_queue* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @__ffs(i32 %37)
  %39 = load i32, i32* @FRF_AZ_TX_DESCQ_TYPE, align 4
  %40 = load i32, i32* @FRF_BZ_TX_NON_IP_DROP_DIS, align 4
  %41 = call i32 @EF4_POPULATE_OWORD_10(i32 %13, i32 %14, i32 1, i32 %15, i32 0, i32 %16, i32 0, i32 %17, i32 %21, i32 %22, i32 %27, i32 %28, i32 0, i32 %29, i32 %32, i32 %33, i32 %38, i32 %39, i32 0, i32 %40, i32 1)
  %42 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %43 = call i64 @ef4_nic_rev(%struct.ef4_nic* %42)
  %44 = load i64, i64* @EF4_REV_FALCON_B0, align 8
  %45 = icmp sge i64 %43, %44
  br i1 %45, label %46, label %66

46:                                               ; preds = %1
  %47 = load %struct.ef4_tx_queue*, %struct.ef4_tx_queue** %2, align 8
  %48 = getelementptr inbounds %struct.ef4_tx_queue, %struct.ef4_tx_queue* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @EF4_TXQ_TYPE_OFFLOAD, align 4
  %51 = and i32 %49, %50
  store i32 %51, i32* %5, align 4
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* @FRF_BZ_TX_IP_CHKSM_DIS, align 4
  %54 = load i32, i32* %5, align 4
  %55 = icmp ne i32 %54, 0
  %56 = xor i1 %55, true
  %57 = zext i1 %56 to i32
  %58 = call i32 @EF4_SET_OWORD_FIELD(i32 %52, i32 %53, i32 %57)
  %59 = load i32, i32* %4, align 4
  %60 = load i32, i32* @FRF_BZ_TX_TCP_CHKSM_DIS, align 4
  %61 = load i32, i32* %5, align 4
  %62 = icmp ne i32 %61, 0
  %63 = xor i1 %62, true
  %64 = zext i1 %63 to i32
  %65 = call i32 @EF4_SET_OWORD_FIELD(i32 %59, i32 %60, i32 %64)
  br label %66

66:                                               ; preds = %46, %1
  %67 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %68 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %69 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %68, i32 0, i32 0
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.ef4_tx_queue*, %struct.ef4_tx_queue** %2, align 8
  %74 = getelementptr inbounds %struct.ef4_tx_queue, %struct.ef4_tx_queue* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @ef4_writeo_table(%struct.ef4_nic* %67, i32* %4, i32 %72, i32 %75)
  %77 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %78 = call i64 @ef4_nic_rev(%struct.ef4_nic* %77)
  %79 = load i64, i64* @EF4_REV_FALCON_B0, align 8
  %80 = icmp slt i64 %78, %79
  br i1 %80, label %81, label %109

81:                                               ; preds = %66
  %82 = load i32, i32* @EF4_MAX_TX_QUEUES, align 4
  %83 = icmp sgt i32 %82, 128
  %84 = zext i1 %83 to i32
  %85 = call i32 @BUILD_BUG_ON(i32 %84)
  %86 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %87 = load i32, i32* @FR_AA_TX_CHKSM_CFG, align 4
  %88 = call i32 @ef4_reado(%struct.ef4_nic* %86, i32* %4, i32 %87)
  %89 = load %struct.ef4_tx_queue*, %struct.ef4_tx_queue** %2, align 8
  %90 = getelementptr inbounds %struct.ef4_tx_queue, %struct.ef4_tx_queue* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @EF4_TXQ_TYPE_OFFLOAD, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %81
  %96 = load %struct.ef4_tx_queue*, %struct.ef4_tx_queue** %2, align 8
  %97 = getelementptr inbounds %struct.ef4_tx_queue, %struct.ef4_tx_queue* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @__clear_bit_le(i32 %98, i32* %4)
  br label %105

100:                                              ; preds = %81
  %101 = load %struct.ef4_tx_queue*, %struct.ef4_tx_queue** %2, align 8
  %102 = getelementptr inbounds %struct.ef4_tx_queue, %struct.ef4_tx_queue* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @__set_bit_le(i32 %103, i32* %4)
  br label %105

105:                                              ; preds = %100, %95
  %106 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %107 = load i32, i32* @FR_AA_TX_CHKSM_CFG, align 4
  %108 = call i32 @ef4_writeo(%struct.ef4_nic* %106, i32* %4, i32 %107)
  br label %109

109:                                              ; preds = %105, %66
  %110 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %111 = call i64 @ef4_nic_rev(%struct.ef4_nic* %110)
  %112 = load i64, i64* @EF4_REV_FALCON_B0, align 8
  %113 = icmp sge i64 %111, %112
  br i1 %113, label %114, label %136

114:                                              ; preds = %109
  %115 = load i32, i32* %4, align 4
  %116 = load i32, i32* @FRF_BZ_TX_PACE, align 4
  %117 = load %struct.ef4_tx_queue*, %struct.ef4_tx_queue** %2, align 8
  %118 = getelementptr inbounds %struct.ef4_tx_queue, %struct.ef4_tx_queue* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* @EF4_TXQ_TYPE_HIGHPRI, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %114
  %124 = load i32, i32* @FFE_BZ_TX_PACE_OFF, align 4
  br label %127

125:                                              ; preds = %114
  %126 = load i32, i32* @FFE_BZ_TX_PACE_RESERVED, align 4
  br label %127

127:                                              ; preds = %125, %123
  %128 = phi i32 [ %124, %123 ], [ %126, %125 ]
  %129 = call i32 @EF4_POPULATE_OWORD_1(i32 %115, i32 %116, i32 %128)
  %130 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %131 = load i32, i32* @FR_BZ_TX_PACE_TBL, align 4
  %132 = load %struct.ef4_tx_queue*, %struct.ef4_tx_queue** %2, align 8
  %133 = getelementptr inbounds %struct.ef4_tx_queue, %struct.ef4_tx_queue* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = call i32 @ef4_writeo_table(%struct.ef4_nic* %130, i32* %4, i32 %131, i32 %134)
  br label %136

136:                                              ; preds = %127, %109
  ret void
}

declare dso_local i32 @ef4_init_special_buffer(%struct.ef4_nic*, %struct.TYPE_6__*) #1

declare dso_local i32 @EF4_POPULATE_OWORD_10(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @__ffs(i32) #1

declare dso_local i64 @ef4_nic_rev(%struct.ef4_nic*) #1

declare dso_local i32 @EF4_SET_OWORD_FIELD(i32, i32, i32) #1

declare dso_local i32 @ef4_writeo_table(%struct.ef4_nic*, i32*, i32, i32) #1

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @ef4_reado(%struct.ef4_nic*, i32*, i32) #1

declare dso_local i32 @__clear_bit_le(i32, i32*) #1

declare dso_local i32 @__set_bit_le(i32, i32*) #1

declare dso_local i32 @ef4_writeo(%struct.ef4_nic*, i32*, i32) #1

declare dso_local i32 @EF4_POPULATE_OWORD_1(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
