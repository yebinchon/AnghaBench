; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_farch.c_ef4_farch_init_common.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_farch.c_ef4_farch_init_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ef4_nic = type { i32, i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@FRF_AZ_SRM_TX_DC_BASE_ADR = common dso_local global i32 0, align 4
@FR_AZ_SRM_TX_DC_CFG = common dso_local global i32 0, align 4
@FRF_AZ_SRM_RX_DC_BASE_ADR = common dso_local global i32 0, align 4
@FR_AZ_SRM_RX_DC_CFG = common dso_local global i32 0, align 4
@TX_DC_ENTRIES = common dso_local global i32 0, align 4
@TX_DC_ENTRIES_ORDER = common dso_local global i32 0, align 4
@FRF_AZ_TX_DC_SIZE = common dso_local global i32 0, align 4
@FR_AZ_TX_DC_CFG = common dso_local global i32 0, align 4
@RX_DC_ENTRIES = common dso_local global i32 0, align 4
@RX_DC_ENTRIES_ORDER = common dso_local global i32 0, align 4
@FRF_AZ_RX_DC_SIZE = common dso_local global i32 0, align 4
@FR_AZ_RX_DC_CFG = common dso_local global i32 0, align 4
@FRF_AZ_RX_DC_PF_LWM = common dso_local global i32 0, align 4
@FR_AZ_RX_DC_PF_WM = common dso_local global i32 0, align 4
@FRF_AZ_NORM_INT_VEC_DIS_KER = common dso_local global i32 0, align 4
@FRF_AZ_INT_ADR_KER = common dso_local global i32 0, align 4
@FR_AZ_INT_ADR_KER = common dso_local global i32 0, align 4
@FRF_AZ_ILL_ADR_INT_KER_EN = common dso_local global i32 0, align 4
@FRF_AZ_RBUF_OWN_INT_KER_EN = common dso_local global i32 0, align 4
@FRF_AZ_TBUF_OWN_INT_KER_EN = common dso_local global i32 0, align 4
@FR_AZ_FATAL_INTR_KER = common dso_local global i32 0, align 4
@FR_AZ_TX_RESERVED = common dso_local global i32 0, align 4
@FRF_AZ_TX_RX_SPACER = common dso_local global i32 0, align 4
@FRF_AZ_TX_RX_SPACER_EN = common dso_local global i32 0, align 4
@FRF_AZ_TX_ONE_PKT_PER_Q = common dso_local global i32 0, align 4
@FRF_AZ_TX_PUSH_EN = common dso_local global i32 0, align 4
@FRF_AZ_TX_DIS_NON_IP_EV = common dso_local global i32 0, align 4
@FRF_AZ_TX_SOFT_EVT_EN = common dso_local global i32 0, align 4
@FRF_AZ_TX_PREF_THRESHOLD = common dso_local global i32 0, align 4
@FRF_AZ_TX_PREF_WD_TMR = common dso_local global i32 0, align 4
@EF4_REV_FALCON_B0 = common dso_local global i64 0, align 8
@FRF_BZ_TX_FLUSH_MIN_LEN_EN = common dso_local global i32 0, align 4
@FRF_BZ_TX_PACE_SB_NOT_AF = common dso_local global i32 0, align 4
@FRF_BZ_TX_PACE_SB_AF = common dso_local global i32 0, align 4
@FRF_BZ_TX_PACE_FB_BASE = common dso_local global i32 0, align 4
@FRF_BZ_TX_PACE_BIN_TH = common dso_local global i32 0, align 4
@FFE_BZ_TX_PACE_RESERVED = common dso_local global i32 0, align 4
@FR_BZ_TX_PACE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ef4_farch_init_common(%struct.ef4_nic* %0) #0 {
  %2 = alloca %struct.ef4_nic*, align 8
  %3 = alloca i32, align 4
  store %struct.ef4_nic* %0, %struct.ef4_nic** %2, align 8
  %4 = load i32, i32* %3, align 4
  %5 = load i32, i32* @FRF_AZ_SRM_TX_DC_BASE_ADR, align 4
  %6 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %7 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @EF4_POPULATE_OWORD_1(i32 %4, i32 %5, i32 %8)
  %10 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %11 = load i32, i32* @FR_AZ_SRM_TX_DC_CFG, align 4
  %12 = call i32 @ef4_writeo(%struct.ef4_nic* %10, i32* %3, i32 %11)
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @FRF_AZ_SRM_RX_DC_BASE_ADR, align 4
  %15 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %16 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @EF4_POPULATE_OWORD_1(i32 %13, i32 %14, i32 %17)
  %19 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %20 = load i32, i32* @FR_AZ_SRM_RX_DC_CFG, align 4
  %21 = call i32 @ef4_writeo(%struct.ef4_nic* %19, i32* %3, i32 %20)
  %22 = load i32, i32* @TX_DC_ENTRIES, align 4
  %23 = load i32, i32* @TX_DC_ENTRIES_ORDER, align 4
  %24 = shl i32 8, %23
  %25 = icmp ne i32 %22, %24
  %26 = zext i1 %25 to i32
  %27 = call i32 @BUILD_BUG_ON(i32 %26)
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* @FRF_AZ_TX_DC_SIZE, align 4
  %30 = load i32, i32* @TX_DC_ENTRIES_ORDER, align 4
  %31 = call i32 @EF4_POPULATE_OWORD_1(i32 %28, i32 %29, i32 %30)
  %32 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %33 = load i32, i32* @FR_AZ_TX_DC_CFG, align 4
  %34 = call i32 @ef4_writeo(%struct.ef4_nic* %32, i32* %3, i32 %33)
  %35 = load i32, i32* @RX_DC_ENTRIES, align 4
  %36 = load i32, i32* @RX_DC_ENTRIES_ORDER, align 4
  %37 = shl i32 8, %36
  %38 = icmp ne i32 %35, %37
  %39 = zext i1 %38 to i32
  %40 = call i32 @BUILD_BUG_ON(i32 %39)
  %41 = load i32, i32* %3, align 4
  %42 = load i32, i32* @FRF_AZ_RX_DC_SIZE, align 4
  %43 = load i32, i32* @RX_DC_ENTRIES_ORDER, align 4
  %44 = call i32 @EF4_POPULATE_OWORD_1(i32 %41, i32 %42, i32 %43)
  %45 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %46 = load i32, i32* @FR_AZ_RX_DC_CFG, align 4
  %47 = call i32 @ef4_writeo(%struct.ef4_nic* %45, i32* %3, i32 %46)
  %48 = load i32, i32* %3, align 4
  %49 = load i32, i32* @FRF_AZ_RX_DC_PF_LWM, align 4
  %50 = load i32, i32* @RX_DC_ENTRIES, align 4
  %51 = sub nsw i32 %50, 8
  %52 = call i32 @EF4_POPULATE_OWORD_1(i32 %48, i32 %49, i32 %51)
  %53 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %54 = load i32, i32* @FR_AZ_RX_DC_PF_WM, align 4
  %55 = call i32 @ef4_writeo(%struct.ef4_nic* %53, i32* %3, i32 %54)
  %56 = load i32, i32* %3, align 4
  %57 = load i32, i32* @FRF_AZ_NORM_INT_VEC_DIS_KER, align 4
  %58 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %59 = call i32 @EF4_INT_MODE_USE_MSI(%struct.ef4_nic* %58)
  %60 = load i32, i32* @FRF_AZ_INT_ADR_KER, align 4
  %61 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %62 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %61, i32 0, i32 3
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @EF4_POPULATE_OWORD_2(i32 %56, i32 %57, i32 %59, i32 %60, i32 %64)
  %66 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %67 = load i32, i32* @FR_AZ_INT_ADR_KER, align 4
  %68 = call i32 @ef4_writeo(%struct.ef4_nic* %66, i32* %3, i32 %67)
  %69 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %70 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %69, i32 0, i32 2
  store i64 0, i64* %70, align 8
  %71 = load i32, i32* %3, align 4
  %72 = load i32, i32* @FRF_AZ_ILL_ADR_INT_KER_EN, align 4
  %73 = load i32, i32* @FRF_AZ_RBUF_OWN_INT_KER_EN, align 4
  %74 = load i32, i32* @FRF_AZ_TBUF_OWN_INT_KER_EN, align 4
  %75 = call i32 @EF4_POPULATE_OWORD_3(i32 %71, i32 %72, i32 1, i32 %73, i32 1, i32 %74, i32 1)
  %76 = load i32, i32* %3, align 4
  %77 = call i32 @EF4_INVERT_OWORD(i32 %76)
  %78 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %79 = load i32, i32* @FR_AZ_FATAL_INTR_KER, align 4
  %80 = call i32 @ef4_writeo(%struct.ef4_nic* %78, i32* %3, i32 %79)
  %81 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %82 = load i32, i32* @FR_AZ_TX_RESERVED, align 4
  %83 = call i32 @ef4_reado(%struct.ef4_nic* %81, i32* %3, i32 %82)
  %84 = load i32, i32* %3, align 4
  %85 = load i32, i32* @FRF_AZ_TX_RX_SPACER, align 4
  %86 = call i32 @EF4_SET_OWORD_FIELD(i32 %84, i32 %85, i32 254)
  %87 = load i32, i32* %3, align 4
  %88 = load i32, i32* @FRF_AZ_TX_RX_SPACER_EN, align 4
  %89 = call i32 @EF4_SET_OWORD_FIELD(i32 %87, i32 %88, i32 1)
  %90 = load i32, i32* %3, align 4
  %91 = load i32, i32* @FRF_AZ_TX_ONE_PKT_PER_Q, align 4
  %92 = call i32 @EF4_SET_OWORD_FIELD(i32 %90, i32 %91, i32 1)
  %93 = load i32, i32* %3, align 4
  %94 = load i32, i32* @FRF_AZ_TX_PUSH_EN, align 4
  %95 = call i32 @EF4_SET_OWORD_FIELD(i32 %93, i32 %94, i32 1)
  %96 = load i32, i32* %3, align 4
  %97 = load i32, i32* @FRF_AZ_TX_DIS_NON_IP_EV, align 4
  %98 = call i32 @EF4_SET_OWORD_FIELD(i32 %96, i32 %97, i32 1)
  %99 = load i32, i32* %3, align 4
  %100 = load i32, i32* @FRF_AZ_TX_SOFT_EVT_EN, align 4
  %101 = call i32 @EF4_SET_OWORD_FIELD(i32 %99, i32 %100, i32 1)
  %102 = load i32, i32* %3, align 4
  %103 = load i32, i32* @FRF_AZ_TX_PREF_THRESHOLD, align 4
  %104 = call i32 @EF4_SET_OWORD_FIELD(i32 %102, i32 %103, i32 2)
  %105 = load i32, i32* %3, align 4
  %106 = load i32, i32* @FRF_AZ_TX_PREF_WD_TMR, align 4
  %107 = call i32 @EF4_SET_OWORD_FIELD(i32 %105, i32 %106, i32 4194303)
  %108 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %109 = call i64 @ef4_nic_rev(%struct.ef4_nic* %108)
  %110 = load i64, i64* @EF4_REV_FALCON_B0, align 8
  %111 = icmp sge i64 %109, %110
  br i1 %111, label %112, label %116

112:                                              ; preds = %1
  %113 = load i32, i32* %3, align 4
  %114 = load i32, i32* @FRF_BZ_TX_FLUSH_MIN_LEN_EN, align 4
  %115 = call i32 @EF4_SET_OWORD_FIELD(i32 %113, i32 %114, i32 1)
  br label %116

116:                                              ; preds = %112, %1
  %117 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %118 = load i32, i32* @FR_AZ_TX_RESERVED, align 4
  %119 = call i32 @ef4_writeo(%struct.ef4_nic* %117, i32* %3, i32 %118)
  %120 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %121 = call i64 @ef4_nic_rev(%struct.ef4_nic* %120)
  %122 = load i64, i64* @EF4_REV_FALCON_B0, align 8
  %123 = icmp sge i64 %121, %122
  br i1 %123, label %124, label %135

124:                                              ; preds = %116
  %125 = load i32, i32* %3, align 4
  %126 = load i32, i32* @FRF_BZ_TX_PACE_SB_NOT_AF, align 4
  %127 = load i32, i32* @FRF_BZ_TX_PACE_SB_AF, align 4
  %128 = load i32, i32* @FRF_BZ_TX_PACE_FB_BASE, align 4
  %129 = load i32, i32* @FRF_BZ_TX_PACE_BIN_TH, align 4
  %130 = load i32, i32* @FFE_BZ_TX_PACE_RESERVED, align 4
  %131 = call i32 @EF4_POPULATE_OWORD_4(i32 %125, i32 %126, i32 21, i32 %127, i32 11, i32 %128, i32 0, i32 %129, i32 %130)
  %132 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %133 = load i32, i32* @FR_BZ_TX_PACE, align 4
  %134 = call i32 @ef4_writeo(%struct.ef4_nic* %132, i32* %3, i32 %133)
  br label %135

135:                                              ; preds = %124, %116
  ret void
}

declare dso_local i32 @EF4_POPULATE_OWORD_1(i32, i32, i32) #1

declare dso_local i32 @ef4_writeo(%struct.ef4_nic*, i32*, i32) #1

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @EF4_POPULATE_OWORD_2(i32, i32, i32, i32, i32) #1

declare dso_local i32 @EF4_INT_MODE_USE_MSI(%struct.ef4_nic*) #1

declare dso_local i32 @EF4_POPULATE_OWORD_3(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @EF4_INVERT_OWORD(i32) #1

declare dso_local i32 @ef4_reado(%struct.ef4_nic*, i32*, i32) #1

declare dso_local i32 @EF4_SET_OWORD_FIELD(i32, i32, i32) #1

declare dso_local i64 @ef4_nic_rev(%struct.ef4_nic*) #1

declare dso_local i32 @EF4_POPULATE_OWORD_4(i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
