; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_hwrm_vnic_set_rss_p5.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_hwrm_vnic_set_rss_p5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt = type { i64, %struct.bnxt_rx_ring_info*, i32, %struct.bnxt_vnic_info* }
%struct.bnxt_rx_ring_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.bnxt_vnic_info = type { i64, i64*, i32*, i32, i32 }
%struct.hwrm_vnic_rss_cfg_input = type { i64, i8*, i8*, i8*, i32, i32, i8*, i32 }

@HWRM_VNIC_RSS_CFG = common dso_local global i32 0, align 4
@HWRM_CMD_TIMEOUT = common dso_local global i32 0, align 4
@VNIC_RSS_CFG_REQ_HASH_MODE_FLAGS_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnxt*, i64, i32)* @bnxt_hwrm_vnic_set_rss_p5 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnxt_hwrm_vnic_set_rss_p5(%struct.bnxt* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bnxt*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.bnxt_vnic_info*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.bnxt_rx_ring_info*, align 8
  %15 = alloca %struct.hwrm_vnic_rss_cfg_input, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  store %struct.bnxt* %0, %struct.bnxt** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %19 = load %struct.bnxt*, %struct.bnxt** %5, align 8
  %20 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %19, i32 0, i32 3
  %21 = load %struct.bnxt_vnic_info*, %struct.bnxt_vnic_info** %20, align 8
  %22 = load i64, i64* %6, align 8
  %23 = getelementptr inbounds %struct.bnxt_vnic_info, %struct.bnxt_vnic_info* %21, i64 %22
  store %struct.bnxt_vnic_info* %23, %struct.bnxt_vnic_info** %8, align 8
  %24 = load %struct.bnxt*, %struct.bnxt** %5, align 8
  %25 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %13, align 8
  %27 = load %struct.bnxt*, %struct.bnxt** %5, align 8
  %28 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %27, i32 0, i32 1
  %29 = load %struct.bnxt_rx_ring_info*, %struct.bnxt_rx_ring_info** %28, align 8
  %30 = getelementptr inbounds %struct.bnxt_rx_ring_info, %struct.bnxt_rx_ring_info* %29, i64 0
  store %struct.bnxt_rx_ring_info* %30, %struct.bnxt_rx_ring_info** %14, align 8
  %31 = bitcast %struct.hwrm_vnic_rss_cfg_input* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %31, i8 0, i64 56, i1 false)
  %32 = load %struct.bnxt*, %struct.bnxt** %5, align 8
  %33 = load i32, i32* @HWRM_VNIC_RSS_CFG, align 4
  %34 = call i32 @bnxt_hwrm_cmd_hdr_init(%struct.bnxt* %32, %struct.hwrm_vnic_rss_cfg_input* %15, i32 %33, i32 -1, i32 -1)
  %35 = load %struct.bnxt_vnic_info*, %struct.bnxt_vnic_info** %8, align 8
  %36 = getelementptr inbounds %struct.bnxt_vnic_info, %struct.bnxt_vnic_info* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = call i8* @cpu_to_le16(i64 %37)
  %39 = getelementptr inbounds %struct.hwrm_vnic_rss_cfg_input, %struct.hwrm_vnic_rss_cfg_input* %15, i32 0, i32 6
  store i8* %38, i8** %39, align 8
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %3
  %43 = load %struct.bnxt*, %struct.bnxt** %5, align 8
  %44 = load i32, i32* @HWRM_CMD_TIMEOUT, align 4
  %45 = call i32 @hwrm_send_message(%struct.bnxt* %43, %struct.hwrm_vnic_rss_cfg_input* %15, i32 56, i32 %44)
  store i32 0, i32* %4, align 4
  br label %136

46:                                               ; preds = %3
  %47 = load %struct.bnxt*, %struct.bnxt** %5, align 8
  %48 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @cpu_to_le32(i32 %49)
  %51 = getelementptr inbounds %struct.hwrm_vnic_rss_cfg_input, %struct.hwrm_vnic_rss_cfg_input* %15, i32 0, i32 5
  store i32 %50, i32* %51, align 4
  %52 = load i32, i32* @VNIC_RSS_CFG_REQ_HASH_MODE_FLAGS_DEFAULT, align 4
  %53 = getelementptr inbounds %struct.hwrm_vnic_rss_cfg_input, %struct.hwrm_vnic_rss_cfg_input* %15, i32 0, i32 4
  store i32 %52, i32* %53, align 8
  %54 = load %struct.bnxt_vnic_info*, %struct.bnxt_vnic_info** %8, align 8
  %55 = getelementptr inbounds %struct.bnxt_vnic_info, %struct.bnxt_vnic_info* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 4
  %57 = call i8* @cpu_to_le64(i32 %56)
  %58 = getelementptr inbounds %struct.hwrm_vnic_rss_cfg_input, %struct.hwrm_vnic_rss_cfg_input* %15, i32 0, i32 3
  store i8* %57, i8** %58, align 8
  %59 = load %struct.bnxt_vnic_info*, %struct.bnxt_vnic_info** %8, align 8
  %60 = getelementptr inbounds %struct.bnxt_vnic_info, %struct.bnxt_vnic_info* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 8
  %62 = call i8* @cpu_to_le64(i32 %61)
  %63 = getelementptr inbounds %struct.hwrm_vnic_rss_cfg_input, %struct.hwrm_vnic_rss_cfg_input* %15, i32 0, i32 2
  store i8* %62, i8** %63, align 8
  %64 = load %struct.bnxt*, %struct.bnxt** %5, align 8
  %65 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = call i64 @DIV_ROUND_UP(i64 %66, i32 64)
  store i64 %67, i64* %12, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %11, align 8
  br label %68

68:                                               ; preds = %132, %46
  %69 = load i64, i64* %9, align 8
  %70 = load i64, i64* %12, align 8
  %71 = icmp ult i64 %69, %70
  br i1 %71, label %72, label %135

72:                                               ; preds = %68
  %73 = load %struct.bnxt_vnic_info*, %struct.bnxt_vnic_info** %8, align 8
  %74 = getelementptr inbounds %struct.bnxt_vnic_info, %struct.bnxt_vnic_info* %73, i32 0, i32 2
  %75 = load i32*, i32** %74, align 8
  store i32* %75, i32** %16, align 8
  %76 = load i64, i64* %9, align 8
  %77 = getelementptr inbounds %struct.hwrm_vnic_rss_cfg_input, %struct.hwrm_vnic_rss_cfg_input* %15, i32 0, i32 0
  store i64 %76, i64* %77, align 8
  %78 = load %struct.bnxt_vnic_info*, %struct.bnxt_vnic_info** %8, align 8
  %79 = getelementptr inbounds %struct.bnxt_vnic_info, %struct.bnxt_vnic_info* %78, i32 0, i32 1
  %80 = load i64*, i64** %79, align 8
  %81 = load i64, i64* %9, align 8
  %82 = getelementptr inbounds i64, i64* %80, i64 %81
  %83 = load i64, i64* %82, align 8
  %84 = call i8* @cpu_to_le16(i64 %83)
  %85 = getelementptr inbounds %struct.hwrm_vnic_rss_cfg_input, %struct.hwrm_vnic_rss_cfg_input* %15, i32 0, i32 1
  store i8* %84, i8** %85, align 8
  store i64 0, i64* %10, align 8
  br label %86

86:                                               ; preds = %120, %72
  %87 = load i64, i64* %10, align 8
  %88 = icmp ult i64 %87, 64
  br i1 %88, label %89, label %123

89:                                               ; preds = %86
  %90 = load %struct.bnxt_rx_ring_info*, %struct.bnxt_rx_ring_info** %14, align 8
  %91 = getelementptr inbounds %struct.bnxt_rx_ring_info, %struct.bnxt_rx_ring_info* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  store i64 %93, i64* %18, align 8
  %94 = load i64, i64* %18, align 8
  %95 = call i8* @cpu_to_le16(i64 %94)
  %96 = ptrtoint i8* %95 to i32
  %97 = load i32*, i32** %16, align 8
  %98 = getelementptr inbounds i32, i32* %97, i32 1
  store i32* %98, i32** %16, align 8
  store i32 %96, i32* %97, align 4
  %99 = load %struct.bnxt*, %struct.bnxt** %5, align 8
  %100 = load %struct.bnxt_rx_ring_info*, %struct.bnxt_rx_ring_info** %14, align 8
  %101 = call i64 @bnxt_cp_ring_for_rx(%struct.bnxt* %99, %struct.bnxt_rx_ring_info* %100)
  store i64 %101, i64* %18, align 8
  %102 = load i64, i64* %18, align 8
  %103 = call i8* @cpu_to_le16(i64 %102)
  %104 = ptrtoint i8* %103 to i32
  %105 = load i32*, i32** %16, align 8
  %106 = getelementptr inbounds i32, i32* %105, i32 1
  store i32* %106, i32** %16, align 8
  store i32 %104, i32* %105, align 4
  %107 = load %struct.bnxt_rx_ring_info*, %struct.bnxt_rx_ring_info** %14, align 8
  %108 = getelementptr inbounds %struct.bnxt_rx_ring_info, %struct.bnxt_rx_ring_info* %107, i32 1
  store %struct.bnxt_rx_ring_info* %108, %struct.bnxt_rx_ring_info** %14, align 8
  %109 = load i64, i64* %11, align 8
  %110 = add i64 %109, 1
  store i64 %110, i64* %11, align 8
  %111 = load i64, i64* %11, align 8
  %112 = load i64, i64* %13, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %119

114:                                              ; preds = %89
  store i64 0, i64* %11, align 8
  %115 = load %struct.bnxt*, %struct.bnxt** %5, align 8
  %116 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %115, i32 0, i32 1
  %117 = load %struct.bnxt_rx_ring_info*, %struct.bnxt_rx_ring_info** %116, align 8
  %118 = getelementptr inbounds %struct.bnxt_rx_ring_info, %struct.bnxt_rx_ring_info* %117, i64 0
  store %struct.bnxt_rx_ring_info* %118, %struct.bnxt_rx_ring_info** %14, align 8
  br label %119

119:                                              ; preds = %114, %89
  br label %120

120:                                              ; preds = %119
  %121 = load i64, i64* %10, align 8
  %122 = add i64 %121, 1
  store i64 %122, i64* %10, align 8
  br label %86

123:                                              ; preds = %86
  %124 = load %struct.bnxt*, %struct.bnxt** %5, align 8
  %125 = load i32, i32* @HWRM_CMD_TIMEOUT, align 4
  %126 = call i32 @hwrm_send_message(%struct.bnxt* %124, %struct.hwrm_vnic_rss_cfg_input* %15, i32 56, i32 %125)
  store i32 %126, i32* %17, align 4
  %127 = load i32, i32* %17, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %123
  %130 = load i32, i32* %17, align 4
  store i32 %130, i32* %4, align 4
  br label %136

131:                                              ; preds = %123
  br label %132

132:                                              ; preds = %131
  %133 = load i64, i64* %9, align 8
  %134 = add i64 %133, 1
  store i64 %134, i64* %9, align 8
  br label %68

135:                                              ; preds = %68
  store i32 0, i32* %4, align 4
  br label %136

136:                                              ; preds = %135, %129, %42
  %137 = load i32, i32* %4, align 4
  ret i32 %137
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @bnxt_hwrm_cmd_hdr_init(%struct.bnxt*, %struct.hwrm_vnic_rss_cfg_input*, i32, i32, i32) #2

declare dso_local i8* @cpu_to_le16(i64) #2

declare dso_local i32 @hwrm_send_message(%struct.bnxt*, %struct.hwrm_vnic_rss_cfg_input*, i32, i32) #2

declare dso_local i32 @cpu_to_le32(i32) #2

declare dso_local i8* @cpu_to_le64(i32) #2

declare dso_local i64 @DIV_ROUND_UP(i64, i32) #2

declare dso_local i64 @bnxt_cp_ring_for_rx(%struct.bnxt*, %struct.bnxt_rx_ring_info*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
