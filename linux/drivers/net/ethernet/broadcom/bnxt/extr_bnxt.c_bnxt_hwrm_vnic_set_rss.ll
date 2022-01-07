; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_hwrm_vnic_set_rss.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_hwrm_vnic_set_rss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt = type { i32, i64, i32, %struct.bnxt_vnic_info* }
%struct.bnxt_vnic_info = type { i64*, i32, i64*, i32, i32, i8** }
%struct.hwrm_vnic_rss_cfg_input = type { i8*, i8*, i8*, i32, i32, i32 }

@BNXT_FLAG_CHIP_P5 = common dso_local global i32 0, align 4
@INVALID_HW_RING_ID = common dso_local global i64 0, align 8
@HWRM_VNIC_RSS_CFG = common dso_local global i32 0, align 4
@VNIC_RSS_CFG_REQ_HASH_MODE_FLAGS_DEFAULT = common dso_local global i32 0, align 4
@BNXT_VNIC_RSS_FLAG = common dso_local global i32 0, align 4
@HW_HASH_INDEX_SIZE = common dso_local global i64 0, align 8
@HWRM_CMD_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnxt*, i64, i32)* @bnxt_hwrm_vnic_set_rss to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnxt_hwrm_vnic_set_rss(%struct.bnxt* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bnxt*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.bnxt_vnic_info*, align 8
  %12 = alloca %struct.hwrm_vnic_rss_cfg_input, align 8
  store %struct.bnxt* %0, %struct.bnxt** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.bnxt*, %struct.bnxt** %5, align 8
  %14 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %13, i32 0, i32 3
  %15 = load %struct.bnxt_vnic_info*, %struct.bnxt_vnic_info** %14, align 8
  %16 = load i64, i64* %6, align 8
  %17 = getelementptr inbounds %struct.bnxt_vnic_info, %struct.bnxt_vnic_info* %15, i64 %16
  store %struct.bnxt_vnic_info* %17, %struct.bnxt_vnic_info** %11, align 8
  %18 = bitcast %struct.hwrm_vnic_rss_cfg_input* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %18, i8 0, i64 40, i1 false)
  %19 = load %struct.bnxt*, %struct.bnxt** %5, align 8
  %20 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @BNXT_FLAG_CHIP_P5, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %33, label %25

25:                                               ; preds = %3
  %26 = load %struct.bnxt_vnic_info*, %struct.bnxt_vnic_info** %11, align 8
  %27 = getelementptr inbounds %struct.bnxt_vnic_info, %struct.bnxt_vnic_info* %26, i32 0, i32 0
  %28 = load i64*, i64** %27, align 8
  %29 = getelementptr inbounds i64, i64* %28, i64 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @INVALID_HW_RING_ID, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %25, %3
  store i32 0, i32* %4, align 4
  br label %119

34:                                               ; preds = %25
  %35 = load %struct.bnxt*, %struct.bnxt** %5, align 8
  %36 = load i32, i32* @HWRM_VNIC_RSS_CFG, align 4
  %37 = call i32 @bnxt_hwrm_cmd_hdr_init(%struct.bnxt* %35, %struct.hwrm_vnic_rss_cfg_input* %12, i32 %36, i32 -1, i32 -1)
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %108

40:                                               ; preds = %34
  %41 = load %struct.bnxt*, %struct.bnxt** %5, align 8
  %42 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @cpu_to_le32(i32 %43)
  %45 = getelementptr inbounds %struct.hwrm_vnic_rss_cfg_input, %struct.hwrm_vnic_rss_cfg_input* %12, i32 0, i32 4
  store i32 %44, i32* %45, align 4
  %46 = load i32, i32* @VNIC_RSS_CFG_REQ_HASH_MODE_FLAGS_DEFAULT, align 4
  %47 = getelementptr inbounds %struct.hwrm_vnic_rss_cfg_input, %struct.hwrm_vnic_rss_cfg_input* %12, i32 0, i32 3
  store i32 %46, i32* %47, align 8
  %48 = load %struct.bnxt_vnic_info*, %struct.bnxt_vnic_info** %11, align 8
  %49 = getelementptr inbounds %struct.bnxt_vnic_info, %struct.bnxt_vnic_info* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @BNXT_VNIC_RSS_FLAG, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %68

54:                                               ; preds = %40
  %55 = load %struct.bnxt*, %struct.bnxt** %5, align 8
  %56 = call i64 @BNXT_CHIP_TYPE_NITRO_A0(%struct.bnxt* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %54
  %59 = load %struct.bnxt*, %struct.bnxt** %5, align 8
  %60 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = sub i64 %61, 1
  store i64 %62, i64* %10, align 8
  br label %67

63:                                               ; preds = %54
  %64 = load %struct.bnxt*, %struct.bnxt** %5, align 8
  %65 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  store i64 %66, i64* %10, align 8
  br label %67

67:                                               ; preds = %63, %58
  br label %69

68:                                               ; preds = %40
  store i64 1, i64* %10, align 8
  br label %69

69:                                               ; preds = %68, %67
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  br label %70

70:                                               ; preds = %92, %69
  %71 = load i64, i64* %8, align 8
  %72 = load i64, i64* @HW_HASH_INDEX_SIZE, align 8
  %73 = icmp ult i64 %71, %72
  br i1 %73, label %74, label %97

74:                                               ; preds = %70
  %75 = load i64, i64* %9, align 8
  %76 = load i64, i64* %10, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %74
  store i64 0, i64* %9, align 8
  br label %79

79:                                               ; preds = %78, %74
  %80 = load %struct.bnxt_vnic_info*, %struct.bnxt_vnic_info** %11, align 8
  %81 = getelementptr inbounds %struct.bnxt_vnic_info, %struct.bnxt_vnic_info* %80, i32 0, i32 2
  %82 = load i64*, i64** %81, align 8
  %83 = load i64, i64* %9, align 8
  %84 = getelementptr inbounds i64, i64* %82, i64 %83
  %85 = load i64, i64* %84, align 8
  %86 = call i8* @cpu_to_le16(i64 %85)
  %87 = load %struct.bnxt_vnic_info*, %struct.bnxt_vnic_info** %11, align 8
  %88 = getelementptr inbounds %struct.bnxt_vnic_info, %struct.bnxt_vnic_info* %87, i32 0, i32 5
  %89 = load i8**, i8*** %88, align 8
  %90 = load i64, i64* %8, align 8
  %91 = getelementptr inbounds i8*, i8** %89, i64 %90
  store i8* %86, i8** %91, align 8
  br label %92

92:                                               ; preds = %79
  %93 = load i64, i64* %8, align 8
  %94 = add i64 %93, 1
  store i64 %94, i64* %8, align 8
  %95 = load i64, i64* %9, align 8
  %96 = add i64 %95, 1
  store i64 %96, i64* %9, align 8
  br label %70

97:                                               ; preds = %70
  %98 = load %struct.bnxt_vnic_info*, %struct.bnxt_vnic_info** %11, align 8
  %99 = getelementptr inbounds %struct.bnxt_vnic_info, %struct.bnxt_vnic_info* %98, i32 0, i32 4
  %100 = load i32, i32* %99, align 4
  %101 = call i8* @cpu_to_le64(i32 %100)
  %102 = getelementptr inbounds %struct.hwrm_vnic_rss_cfg_input, %struct.hwrm_vnic_rss_cfg_input* %12, i32 0, i32 2
  store i8* %101, i8** %102, align 8
  %103 = load %struct.bnxt_vnic_info*, %struct.bnxt_vnic_info** %11, align 8
  %104 = getelementptr inbounds %struct.bnxt_vnic_info, %struct.bnxt_vnic_info* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 8
  %106 = call i8* @cpu_to_le64(i32 %105)
  %107 = getelementptr inbounds %struct.hwrm_vnic_rss_cfg_input, %struct.hwrm_vnic_rss_cfg_input* %12, i32 0, i32 1
  store i8* %106, i8** %107, align 8
  br label %108

108:                                              ; preds = %97, %34
  %109 = load %struct.bnxt_vnic_info*, %struct.bnxt_vnic_info** %11, align 8
  %110 = getelementptr inbounds %struct.bnxt_vnic_info, %struct.bnxt_vnic_info* %109, i32 0, i32 0
  %111 = load i64*, i64** %110, align 8
  %112 = getelementptr inbounds i64, i64* %111, i64 0
  %113 = load i64, i64* %112, align 8
  %114 = call i8* @cpu_to_le16(i64 %113)
  %115 = getelementptr inbounds %struct.hwrm_vnic_rss_cfg_input, %struct.hwrm_vnic_rss_cfg_input* %12, i32 0, i32 0
  store i8* %114, i8** %115, align 8
  %116 = load %struct.bnxt*, %struct.bnxt** %5, align 8
  %117 = load i32, i32* @HWRM_CMD_TIMEOUT, align 4
  %118 = call i32 @hwrm_send_message(%struct.bnxt* %116, %struct.hwrm_vnic_rss_cfg_input* %12, i32 40, i32 %117)
  store i32 %118, i32* %4, align 4
  br label %119

119:                                              ; preds = %108, %33
  %120 = load i32, i32* %4, align 4
  ret i32 %120
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @bnxt_hwrm_cmd_hdr_init(%struct.bnxt*, %struct.hwrm_vnic_rss_cfg_input*, i32, i32, i32) #2

declare dso_local i32 @cpu_to_le32(i32) #2

declare dso_local i64 @BNXT_CHIP_TYPE_NITRO_A0(%struct.bnxt*) #2

declare dso_local i8* @cpu_to_le16(i64) #2

declare dso_local i8* @cpu_to_le64(i32) #2

declare dso_local i32 @hwrm_send_message(%struct.bnxt*, %struct.hwrm_vnic_rss_cfg_input*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
