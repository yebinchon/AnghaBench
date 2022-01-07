; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_hwrm_vnic_set_tpa.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_hwrm_vnic_set_tpa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt = type { i32, i64, %struct.TYPE_2__*, %struct.bnxt_vnic_info* }
%struct.TYPE_2__ = type { i64 }
%struct.bnxt_vnic_info = type { i64 }
%struct.hwrm_vnic_tpa_cfg_input = type { i8*, i8*, i8*, i8*, i8*, i8*, i32 }

@VNIC_TPA_CFG_REQ_MAX_AGGS_MAX = common dso_local global i64 0, align 8
@INVALID_HW_RING_ID = common dso_local global i64 0, align 8
@HWRM_VNIC_TPA_CFG = common dso_local global i32 0, align 4
@VNIC_TPA_CFG_REQ_FLAGS_TPA = common dso_local global i32 0, align 4
@VNIC_TPA_CFG_REQ_FLAGS_ENCAP_TPA = common dso_local global i32 0, align 4
@VNIC_TPA_CFG_REQ_FLAGS_RSC_WND_UPDATE = common dso_local global i32 0, align 4
@VNIC_TPA_CFG_REQ_FLAGS_AGG_WITH_ECN = common dso_local global i32 0, align 4
@VNIC_TPA_CFG_REQ_FLAGS_AGG_WITH_SAME_GRE_SEQ = common dso_local global i32 0, align 4
@BNXT_FLAG_GRO = common dso_local global i32 0, align 4
@VNIC_TPA_CFG_REQ_FLAGS_GRO = common dso_local global i32 0, align 4
@VNIC_TPA_CFG_REQ_ENABLES_MAX_AGG_SEGS = common dso_local global i32 0, align 4
@VNIC_TPA_CFG_REQ_ENABLES_MAX_AGGS = common dso_local global i32 0, align 4
@VNIC_TPA_CFG_REQ_ENABLES_MIN_AGG_LEN = common dso_local global i32 0, align 4
@BNXT_RX_PAGE_SIZE = common dso_local global i64 0, align 8
@MAX_SKB_FRAGS = common dso_local global i32 0, align 4
@BNXT_FLAG_CHIP_P5 = common dso_local global i32 0, align 4
@MAX_TPA_SEGS_P5 = common dso_local global i32 0, align 4
@HWRM_CMD_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnxt*, i64, i32)* @bnxt_hwrm_vnic_set_tpa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnxt_hwrm_vnic_set_tpa(%struct.bnxt* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bnxt*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.bnxt_vnic_info*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.hwrm_vnic_tpa_cfg_input, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.bnxt* %0, %struct.bnxt** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %16 = load %struct.bnxt*, %struct.bnxt** %5, align 8
  %17 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %16, i32 0, i32 3
  %18 = load %struct.bnxt_vnic_info*, %struct.bnxt_vnic_info** %17, align 8
  %19 = load i64, i64* %6, align 8
  %20 = getelementptr inbounds %struct.bnxt_vnic_info, %struct.bnxt_vnic_info* %18, i64 %19
  store %struct.bnxt_vnic_info* %20, %struct.bnxt_vnic_info** %8, align 8
  %21 = load i64, i64* @VNIC_TPA_CFG_REQ_MAX_AGGS_MAX, align 8
  store i64 %21, i64* %9, align 8
  %22 = bitcast %struct.hwrm_vnic_tpa_cfg_input* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %22, i8 0, i64 56, i1 false)
  %23 = load %struct.bnxt_vnic_info*, %struct.bnxt_vnic_info** %8, align 8
  %24 = getelementptr inbounds %struct.bnxt_vnic_info, %struct.bnxt_vnic_info* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @INVALID_HW_RING_ID, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %135

29:                                               ; preds = %3
  %30 = load %struct.bnxt*, %struct.bnxt** %5, align 8
  %31 = load i32, i32* @HWRM_VNIC_TPA_CFG, align 4
  %32 = call i32 @bnxt_hwrm_cmd_hdr_init(%struct.bnxt* %30, %struct.hwrm_vnic_tpa_cfg_input* %10, i32 %31, i32 -1, i32 -1)
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %126

35:                                               ; preds = %29
  %36 = load %struct.bnxt*, %struct.bnxt** %5, align 8
  %37 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %36, i32 0, i32 2
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = sub i64 %40, 40
  store i64 %41, i64* %11, align 8
  store i32 0, i32* %14, align 4
  %42 = load i32, i32* @VNIC_TPA_CFG_REQ_FLAGS_TPA, align 4
  %43 = load i32, i32* @VNIC_TPA_CFG_REQ_FLAGS_ENCAP_TPA, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @VNIC_TPA_CFG_REQ_FLAGS_RSC_WND_UPDATE, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @VNIC_TPA_CFG_REQ_FLAGS_AGG_WITH_ECN, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @VNIC_TPA_CFG_REQ_FLAGS_AGG_WITH_SAME_GRE_SEQ, align 4
  %50 = or i32 %48, %49
  store i32 %50, i32* %15, align 4
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* @BNXT_FLAG_GRO, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %35
  %56 = load i32, i32* @VNIC_TPA_CFG_REQ_FLAGS_GRO, align 4
  %57 = load i32, i32* %15, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %15, align 4
  br label %59

59:                                               ; preds = %55, %35
  %60 = load i32, i32* %15, align 4
  %61 = call i8* @cpu_to_le32(i32 %60)
  %62 = getelementptr inbounds %struct.hwrm_vnic_tpa_cfg_input, %struct.hwrm_vnic_tpa_cfg_input* %10, i32 0, i32 5
  store i8* %61, i8** %62, align 8
  %63 = load i32, i32* @VNIC_TPA_CFG_REQ_ENABLES_MAX_AGG_SEGS, align 4
  %64 = load i32, i32* @VNIC_TPA_CFG_REQ_ENABLES_MAX_AGGS, align 4
  %65 = or i32 %63, %64
  %66 = load i32, i32* @VNIC_TPA_CFG_REQ_ENABLES_MIN_AGG_LEN, align 4
  %67 = or i32 %65, %66
  %68 = call i8* @cpu_to_le32(i32 %67)
  %69 = getelementptr inbounds %struct.hwrm_vnic_tpa_cfg_input, %struct.hwrm_vnic_tpa_cfg_input* %10, i32 0, i32 4
  store i8* %68, i8** %69, align 8
  %70 = load i64, i64* %11, align 8
  %71 = load i64, i64* @BNXT_RX_PAGE_SIZE, align 8
  %72 = icmp ule i64 %70, %71
  br i1 %72, label %73, label %82

73:                                               ; preds = %59
  %74 = load i64, i64* @BNXT_RX_PAGE_SIZE, align 8
  %75 = load i64, i64* %11, align 8
  %76 = udiv i64 %74, %75
  %77 = trunc i64 %76 to i32
  store i32 %77, i32* %13, align 4
  %78 = load i32, i32* @MAX_SKB_FRAGS, align 4
  %79 = sub nsw i32 %78, 1
  %80 = load i32, i32* %13, align 4
  %81 = mul nsw i32 %79, %80
  store i32 %81, i32* %12, align 4
  br label %101

82:                                               ; preds = %59
  %83 = load i64, i64* %11, align 8
  %84 = load i64, i64* @BNXT_RX_PAGE_SIZE, align 8
  %85 = udiv i64 %83, %84
  %86 = trunc i64 %85 to i32
  store i32 %86, i32* %13, align 4
  %87 = load i64, i64* %11, align 8
  %88 = load i64, i64* @BNXT_RX_PAGE_SIZE, align 8
  %89 = sub i64 %88, 1
  %90 = and i64 %87, %89
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %82
  %93 = load i32, i32* %13, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %13, align 4
  br label %95

95:                                               ; preds = %92, %82
  %96 = load i32, i32* @MAX_SKB_FRAGS, align 4
  %97 = load i32, i32* %13, align 4
  %98 = sub nsw i32 %96, %97
  %99 = load i32, i32* %13, align 4
  %100 = sdiv i32 %98, %99
  store i32 %100, i32* %12, align 4
  br label %101

101:                                              ; preds = %95, %73
  %102 = load %struct.bnxt*, %struct.bnxt** %5, align 8
  %103 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @BNXT_FLAG_CHIP_P5, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %101
  %109 = load i32, i32* @MAX_TPA_SEGS_P5, align 4
  store i32 %109, i32* %14, align 4
  %110 = load %struct.bnxt*, %struct.bnxt** %5, align 8
  %111 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  store i64 %112, i64* %9, align 8
  br label %116

113:                                              ; preds = %101
  %114 = load i32, i32* %12, align 4
  %115 = call i32 @ilog2(i32 %114)
  store i32 %115, i32* %14, align 4
  br label %116

116:                                              ; preds = %113, %108
  %117 = load i32, i32* %14, align 4
  %118 = sext i32 %117 to i64
  %119 = call i8* @cpu_to_le16(i64 %118)
  %120 = getelementptr inbounds %struct.hwrm_vnic_tpa_cfg_input, %struct.hwrm_vnic_tpa_cfg_input* %10, i32 0, i32 3
  store i8* %119, i8** %120, align 8
  %121 = load i64, i64* %9, align 8
  %122 = call i8* @cpu_to_le16(i64 %121)
  %123 = getelementptr inbounds %struct.hwrm_vnic_tpa_cfg_input, %struct.hwrm_vnic_tpa_cfg_input* %10, i32 0, i32 2
  store i8* %122, i8** %123, align 8
  %124 = call i8* @cpu_to_le32(i32 512)
  %125 = getelementptr inbounds %struct.hwrm_vnic_tpa_cfg_input, %struct.hwrm_vnic_tpa_cfg_input* %10, i32 0, i32 1
  store i8* %124, i8** %125, align 8
  br label %126

126:                                              ; preds = %116, %29
  %127 = load %struct.bnxt_vnic_info*, %struct.bnxt_vnic_info** %8, align 8
  %128 = getelementptr inbounds %struct.bnxt_vnic_info, %struct.bnxt_vnic_info* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = call i8* @cpu_to_le16(i64 %129)
  %131 = getelementptr inbounds %struct.hwrm_vnic_tpa_cfg_input, %struct.hwrm_vnic_tpa_cfg_input* %10, i32 0, i32 0
  store i8* %130, i8** %131, align 8
  %132 = load %struct.bnxt*, %struct.bnxt** %5, align 8
  %133 = load i32, i32* @HWRM_CMD_TIMEOUT, align 4
  %134 = call i32 @hwrm_send_message(%struct.bnxt* %132, %struct.hwrm_vnic_tpa_cfg_input* %10, i32 56, i32 %133)
  store i32 %134, i32* %4, align 4
  br label %135

135:                                              ; preds = %126, %28
  %136 = load i32, i32* %4, align 4
  ret i32 %136
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @bnxt_hwrm_cmd_hdr_init(%struct.bnxt*, %struct.hwrm_vnic_tpa_cfg_input*, i32, i32, i32) #2

declare dso_local i8* @cpu_to_le32(i32) #2

declare dso_local i32 @ilog2(i32) #2

declare dso_local i8* @cpu_to_le16(i64) #2

declare dso_local i32 @hwrm_send_message(%struct.bnxt*, %struct.hwrm_vnic_tpa_cfg_input*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
