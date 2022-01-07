; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_falcon.c_falcon_init_nic.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_falcon.c_falcon_init_nic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ef4_nic = type { i32 }

@FR_AB_NIC_STAT = common dso_local global i32 0, align 4
@FRF_AB_ONCHIP_SRAM = common dso_local global i32 0, align 4
@FR_AZ_CSR_SPARE = common dso_local global i32 0, align 4
@FRF_AB_MEM_PERR_EN_TX_DATA = common dso_local global i32 0, align 4
@FR_BZ_RX_FILTER_CTL = common dso_local global i32 0, align 4
@FRF_BZ_UDP_FULL_SRCH_LIMIT = common dso_local global i32 0, align 4
@FRF_BZ_UDP_WILD_SRCH_LIMIT = common dso_local global i32 0, align 4
@FRF_BZ_TCP_FULL_SRCH_LIMIT = common dso_local global i32 0, align 4
@FRF_BZ_TCP_WILD_SRCH_LIMIT = common dso_local global i32 0, align 4
@FR_AA_RX_SELF_RST = common dso_local global i32 0, align 4
@FRF_AA_RX_NODESC_WAIT_DIS = common dso_local global i32 0, align 4
@FRF_AA_RX_SELF_RST_EN = common dso_local global i32 0, align 4
@FRF_AA_RX_ISCSI_DIS = common dso_local global i32 0, align 4
@FR_AZ_TX_CFG = common dso_local global i32 0, align 4
@FRF_AZ_TX_NO_EOP_DISC_EN = common dso_local global i32 0, align 4
@EF4_REV_FALCON_B0 = common dso_local global i64 0, align 8
@FRF_BZ_FLS_EVQ_ID = common dso_local global i32 0, align 4
@FR_BZ_DP_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ef4_nic*)* @falcon_init_nic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @falcon_init_nic(%struct.ef4_nic* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ef4_nic*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ef4_nic* %0, %struct.ef4_nic** %3, align 8
  %6 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %7 = load i32, i32* @FR_AB_NIC_STAT, align 4
  %8 = call i32 @ef4_reado(%struct.ef4_nic* %6, i32* %4, i32 %7)
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @FRF_AB_ONCHIP_SRAM, align 4
  %11 = call i32 @EF4_SET_OWORD_FIELD(i32 %9, i32 %10, i32 1)
  %12 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %13 = load i32, i32* @FR_AB_NIC_STAT, align 4
  %14 = call i32 @ef4_writeo(%struct.ef4_nic* %12, i32* %4, i32 %13)
  %15 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %16 = call i32 @falcon_reset_sram(%struct.ef4_nic* %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load i32, i32* %5, align 4
  store i32 %20, i32* %2, align 4
  br label %109

21:                                               ; preds = %1
  %22 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %23 = call i64 @EF4_WORKAROUND_5129(%struct.ef4_nic* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %21
  %26 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %27 = load i32, i32* @FR_AZ_CSR_SPARE, align 4
  %28 = call i32 @ef4_reado(%struct.ef4_nic* %26, i32* %4, i32 %27)
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @FRF_AB_MEM_PERR_EN_TX_DATA, align 4
  %31 = call i32 @EF4_SET_OWORD_FIELD(i32 %29, i32 %30, i32 0)
  %32 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %33 = load i32, i32* @FR_AZ_CSR_SPARE, align 4
  %34 = call i32 @ef4_writeo(%struct.ef4_nic* %32, i32* %4, i32 %33)
  br label %35

35:                                               ; preds = %25, %21
  %36 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %37 = call i64 @EF4_WORKAROUND_7244(%struct.ef4_nic* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %58

39:                                               ; preds = %35
  %40 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %41 = load i32, i32* @FR_BZ_RX_FILTER_CTL, align 4
  %42 = call i32 @ef4_reado(%struct.ef4_nic* %40, i32* %4, i32 %41)
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* @FRF_BZ_UDP_FULL_SRCH_LIMIT, align 4
  %45 = call i32 @EF4_SET_OWORD_FIELD(i32 %43, i32 %44, i32 8)
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* @FRF_BZ_UDP_WILD_SRCH_LIMIT, align 4
  %48 = call i32 @EF4_SET_OWORD_FIELD(i32 %46, i32 %47, i32 8)
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* @FRF_BZ_TCP_FULL_SRCH_LIMIT, align 4
  %51 = call i32 @EF4_SET_OWORD_FIELD(i32 %49, i32 %50, i32 8)
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* @FRF_BZ_TCP_WILD_SRCH_LIMIT, align 4
  %54 = call i32 @EF4_SET_OWORD_FIELD(i32 %52, i32 %53, i32 8)
  %55 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %56 = load i32, i32* @FR_BZ_RX_FILTER_CTL, align 4
  %57 = call i32 @ef4_writeo(%struct.ef4_nic* %55, i32* %4, i32 %56)
  br label %58

58:                                               ; preds = %39, %35
  %59 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %60 = load i32, i32* @FR_AA_RX_SELF_RST, align 4
  %61 = call i32 @ef4_reado(%struct.ef4_nic* %59, i32* %4, i32 %60)
  %62 = load i32, i32* %4, align 4
  %63 = load i32, i32* @FRF_AA_RX_NODESC_WAIT_DIS, align 4
  %64 = call i32 @EF4_SET_OWORD_FIELD(i32 %62, i32 %63, i32 1)
  %65 = load i32, i32* %4, align 4
  %66 = load i32, i32* @FRF_AA_RX_SELF_RST_EN, align 4
  %67 = call i32 @EF4_SET_OWORD_FIELD(i32 %65, i32 %66, i32 1)
  %68 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %69 = call i64 @EF4_WORKAROUND_5583(%struct.ef4_nic* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %58
  %72 = load i32, i32* %4, align 4
  %73 = load i32, i32* @FRF_AA_RX_ISCSI_DIS, align 4
  %74 = call i32 @EF4_SET_OWORD_FIELD(i32 %72, i32 %73, i32 1)
  br label %75

75:                                               ; preds = %71, %58
  %76 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %77 = load i32, i32* @FR_AA_RX_SELF_RST, align 4
  %78 = call i32 @ef4_writeo(%struct.ef4_nic* %76, i32* %4, i32 %77)
  %79 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %80 = load i32, i32* @FR_AZ_TX_CFG, align 4
  %81 = call i32 @ef4_reado(%struct.ef4_nic* %79, i32* %4, i32 %80)
  %82 = load i32, i32* %4, align 4
  %83 = load i32, i32* @FRF_AZ_TX_NO_EOP_DISC_EN, align 4
  %84 = call i32 @EF4_SET_OWORD_FIELD(i32 %82, i32 %83, i32 0)
  %85 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %86 = load i32, i32* @FR_AZ_TX_CFG, align 4
  %87 = call i32 @ef4_writeo(%struct.ef4_nic* %85, i32* %4, i32 %86)
  %88 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %89 = call i32 @falcon_init_rx_cfg(%struct.ef4_nic* %88)
  %90 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %91 = call i64 @ef4_nic_rev(%struct.ef4_nic* %90)
  %92 = load i64, i64* @EF4_REV_FALCON_B0, align 8
  %93 = icmp sge i64 %91, %92
  br i1 %93, label %94, label %106

94:                                               ; preds = %75
  %95 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %96 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %97 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @falcon_b0_rx_push_rss_config(%struct.ef4_nic* %95, i32 0, i32 %98)
  %100 = load i32, i32* %4, align 4
  %101 = load i32, i32* @FRF_BZ_FLS_EVQ_ID, align 4
  %102 = call i32 @EF4_POPULATE_OWORD_1(i32 %100, i32 %101, i32 0)
  %103 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %104 = load i32, i32* @FR_BZ_DP_CTRL, align 4
  %105 = call i32 @ef4_writeo(%struct.ef4_nic* %103, i32* %4, i32 %104)
  br label %106

106:                                              ; preds = %94, %75
  %107 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %108 = call i32 @ef4_farch_init_common(%struct.ef4_nic* %107)
  store i32 0, i32* %2, align 4
  br label %109

109:                                              ; preds = %106, %19
  %110 = load i32, i32* %2, align 4
  ret i32 %110
}

declare dso_local i32 @ef4_reado(%struct.ef4_nic*, i32*, i32) #1

declare dso_local i32 @EF4_SET_OWORD_FIELD(i32, i32, i32) #1

declare dso_local i32 @ef4_writeo(%struct.ef4_nic*, i32*, i32) #1

declare dso_local i32 @falcon_reset_sram(%struct.ef4_nic*) #1

declare dso_local i64 @EF4_WORKAROUND_5129(%struct.ef4_nic*) #1

declare dso_local i64 @EF4_WORKAROUND_7244(%struct.ef4_nic*) #1

declare dso_local i64 @EF4_WORKAROUND_5583(%struct.ef4_nic*) #1

declare dso_local i32 @falcon_init_rx_cfg(%struct.ef4_nic*) #1

declare dso_local i64 @ef4_nic_rev(%struct.ef4_nic*) #1

declare dso_local i32 @falcon_b0_rx_push_rss_config(%struct.ef4_nic*, i32, i32) #1

declare dso_local i32 @EF4_POPULATE_OWORD_1(i32, i32, i32) #1

declare dso_local i32 @ef4_farch_init_common(%struct.ef4_nic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
