; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c___bnxt_hwrm_func_qcaps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c___bnxt_hwrm_func_qcaps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt = type { i32, %struct.bnxt_vf_info, i32, %struct.TYPE_2__*, %struct.bnxt_pf_info, i64, i32, %struct.bnxt_hw_resc, %struct.hwrm_func_qcaps_output* }
%struct.bnxt_vf_info = type { i32, i8* }
%struct.TYPE_2__ = type { i8* }
%struct.bnxt_pf_info = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i8*, i8* }
%struct.bnxt_hw_resc = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.hwrm_func_qcaps_output = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hwrm_func_qcaps_input = type { i32, i32 }

@HWRM_FUNC_QCAPS = common dso_local global i32 0, align 4
@HWRM_CMD_TIMEOUT = common dso_local global i32 0, align 4
@FUNC_QCAPS_RESP_FLAGS_ROCE_V1_SUPPORTED = common dso_local global i32 0, align 4
@BNXT_FLAG_ROCEV1_CAP = common dso_local global i32 0, align 4
@FUNC_QCAPS_RESP_FLAGS_ROCE_V2_SUPPORTED = common dso_local global i32 0, align 4
@BNXT_FLAG_ROCEV2_CAP = common dso_local global i32 0, align 4
@FUNC_QCAPS_RESP_FLAGS_PCIE_STATS_SUPPORTED = common dso_local global i32 0, align 4
@BNXT_FW_CAP_PCIE_STATS_SUPPORTED = common dso_local global i32 0, align 4
@FUNC_QCAPS_RESP_FLAGS_EXT_STATS_SUPPORTED = common dso_local global i32 0, align 4
@BNXT_FW_CAP_EXT_STATS_SUPPORTED = common dso_local global i32 0, align 4
@FUNC_QCAPS_RESP_FLAGS_ERROR_RECOVERY_CAPABLE = common dso_local global i32 0, align 4
@BNXT_FW_CAP_ERROR_RECOVERY = common dso_local global i32 0, align 4
@FUNC_QCAPS_RESP_FLAGS_ERR_RECOVER_RELOAD = common dso_local global i32 0, align 4
@BNXT_FW_CAP_ERR_RECOVER_RELOAD = common dso_local global i32 0, align 4
@FUNC_QCAPS_RESP_FLAGS_PUSH_MODE_SUPPORTED = common dso_local global i32 0, align 4
@BNXT_TX_PUSH_THRESH = common dso_local global i64 0, align 8
@ETH_ALEN = common dso_local global i32 0, align 4
@BNXT_FLAG_WOL_CAP = common dso_local global i32 0, align 4
@FUNC_QCAPS_RESP_FLAGS_WOL_MAGICPKT_SUPPORTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnxt*)* @__bnxt_hwrm_func_qcaps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__bnxt_hwrm_func_qcaps(%struct.bnxt* %0) #0 {
  %2 = alloca %struct.bnxt*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.hwrm_func_qcaps_input, align 4
  %5 = alloca %struct.hwrm_func_qcaps_output*, align 8
  %6 = alloca %struct.bnxt_hw_resc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.bnxt_pf_info*, align 8
  store %struct.bnxt* %0, %struct.bnxt** %2, align 8
  store i32 0, i32* %3, align 4
  %9 = bitcast %struct.hwrm_func_qcaps_input* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %9, i8 0, i64 8, i1 false)
  %10 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %11 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %10, i32 0, i32 8
  %12 = load %struct.hwrm_func_qcaps_output*, %struct.hwrm_func_qcaps_output** %11, align 8
  store %struct.hwrm_func_qcaps_output* %12, %struct.hwrm_func_qcaps_output** %5, align 8
  %13 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %14 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %13, i32 0, i32 7
  store %struct.bnxt_hw_resc* %14, %struct.bnxt_hw_resc** %6, align 8
  %15 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %16 = load i32, i32* @HWRM_FUNC_QCAPS, align 4
  %17 = call i32 @bnxt_hwrm_cmd_hdr_init(%struct.bnxt* %15, %struct.hwrm_func_qcaps_input* %4, i32 %16, i32 -1, i32 -1)
  %18 = call i32 @cpu_to_le16(i32 65535)
  %19 = getelementptr inbounds %struct.hwrm_func_qcaps_input, %struct.hwrm_func_qcaps_input* %4, i32 0, i32 0
  store i32 %18, i32* %19, align 4
  %20 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %21 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %20, i32 0, i32 0
  %22 = call i32 @mutex_lock(i32* %21)
  %23 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %24 = load i32, i32* @HWRM_CMD_TIMEOUT, align 4
  %25 = call i32 @_hwrm_send_message(%struct.bnxt* %23, %struct.hwrm_func_qcaps_input* %4, i32 8, i32 %24)
  store i32 %25, i32* %3, align 4
  %26 = load i32, i32* %3, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %1
  br label %271

29:                                               ; preds = %1
  %30 = load %struct.hwrm_func_qcaps_output*, %struct.hwrm_func_qcaps_output** %5, align 8
  %31 = getelementptr inbounds %struct.hwrm_func_qcaps_output, %struct.hwrm_func_qcaps_output* %30, i32 0, i32 19
  %32 = load i32, i32* %31, align 4
  %33 = call i8* @le32_to_cpu(i32 %32)
  %34 = ptrtoint i8* %33 to i32
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @FUNC_QCAPS_RESP_FLAGS_ROCE_V1_SUPPORTED, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %29
  %40 = load i32, i32* @BNXT_FLAG_ROCEV1_CAP, align 4
  %41 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %42 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = or i32 %43, %40
  store i32 %44, i32* %42, align 8
  br label %45

45:                                               ; preds = %39, %29
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @FUNC_QCAPS_RESP_FLAGS_ROCE_V2_SUPPORTED, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %45
  %51 = load i32, i32* @BNXT_FLAG_ROCEV2_CAP, align 4
  %52 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %53 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = or i32 %54, %51
  store i32 %55, i32* %53, align 8
  br label %56

56:                                               ; preds = %50, %45
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* @FUNC_QCAPS_RESP_FLAGS_PCIE_STATS_SUPPORTED, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %56
  %62 = load i32, i32* @BNXT_FW_CAP_PCIE_STATS_SUPPORTED, align 4
  %63 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %64 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %63, i32 0, i32 6
  %65 = load i32, i32* %64, align 8
  %66 = or i32 %65, %62
  store i32 %66, i32* %64, align 8
  br label %67

67:                                               ; preds = %61, %56
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* @FUNC_QCAPS_RESP_FLAGS_EXT_STATS_SUPPORTED, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %67
  %73 = load i32, i32* @BNXT_FW_CAP_EXT_STATS_SUPPORTED, align 4
  %74 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %75 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %74, i32 0, i32 6
  %76 = load i32, i32* %75, align 8
  %77 = or i32 %76, %73
  store i32 %77, i32* %75, align 8
  br label %78

78:                                               ; preds = %72, %67
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* @FUNC_QCAPS_RESP_FLAGS_ERROR_RECOVERY_CAPABLE, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %78
  %84 = load i32, i32* @BNXT_FW_CAP_ERROR_RECOVERY, align 4
  %85 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %86 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %85, i32 0, i32 6
  %87 = load i32, i32* %86, align 8
  %88 = or i32 %87, %84
  store i32 %88, i32* %86, align 8
  br label %89

89:                                               ; preds = %83, %78
  %90 = load i32, i32* %7, align 4
  %91 = load i32, i32* @FUNC_QCAPS_RESP_FLAGS_ERR_RECOVER_RELOAD, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %89
  %95 = load i32, i32* @BNXT_FW_CAP_ERR_RECOVER_RELOAD, align 4
  %96 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %97 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %96, i32 0, i32 6
  %98 = load i32, i32* %97, align 8
  %99 = or i32 %98, %95
  store i32 %99, i32* %97, align 8
  br label %100

100:                                              ; preds = %94, %89
  %101 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %102 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %101, i32 0, i32 5
  store i64 0, i64* %102, align 8
  %103 = load i32, i32* %7, align 4
  %104 = load i32, i32* @FUNC_QCAPS_RESP_FLAGS_PUSH_MODE_SUPPORTED, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %100
  %108 = load i64, i64* @BNXT_TX_PUSH_THRESH, align 8
  %109 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %110 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %109, i32 0, i32 5
  store i64 %108, i64* %110, align 8
  br label %111

111:                                              ; preds = %107, %100
  %112 = load %struct.hwrm_func_qcaps_output*, %struct.hwrm_func_qcaps_output** %5, align 8
  %113 = getelementptr inbounds %struct.hwrm_func_qcaps_output, %struct.hwrm_func_qcaps_output* %112, i32 0, i32 18
  %114 = load i32, i32* %113, align 4
  %115 = call i8* @le16_to_cpu(i32 %114)
  %116 = load %struct.bnxt_hw_resc*, %struct.bnxt_hw_resc** %6, align 8
  %117 = getelementptr inbounds %struct.bnxt_hw_resc, %struct.bnxt_hw_resc* %116, i32 0, i32 7
  store i8* %115, i8** %117, align 8
  %118 = load %struct.hwrm_func_qcaps_output*, %struct.hwrm_func_qcaps_output** %5, align 8
  %119 = getelementptr inbounds %struct.hwrm_func_qcaps_output, %struct.hwrm_func_qcaps_output* %118, i32 0, i32 17
  %120 = load i32, i32* %119, align 4
  %121 = call i8* @le16_to_cpu(i32 %120)
  %122 = load %struct.bnxt_hw_resc*, %struct.bnxt_hw_resc** %6, align 8
  %123 = getelementptr inbounds %struct.bnxt_hw_resc, %struct.bnxt_hw_resc* %122, i32 0, i32 6
  store i8* %121, i8** %123, align 8
  %124 = load %struct.hwrm_func_qcaps_output*, %struct.hwrm_func_qcaps_output** %5, align 8
  %125 = getelementptr inbounds %struct.hwrm_func_qcaps_output, %struct.hwrm_func_qcaps_output* %124, i32 0, i32 16
  %126 = load i32, i32* %125, align 4
  %127 = call i8* @le16_to_cpu(i32 %126)
  %128 = load %struct.bnxt_hw_resc*, %struct.bnxt_hw_resc** %6, align 8
  %129 = getelementptr inbounds %struct.bnxt_hw_resc, %struct.bnxt_hw_resc* %128, i32 0, i32 3
  store i8* %127, i8** %129, align 8
  %130 = load %struct.hwrm_func_qcaps_output*, %struct.hwrm_func_qcaps_output** %5, align 8
  %131 = getelementptr inbounds %struct.hwrm_func_qcaps_output, %struct.hwrm_func_qcaps_output* %130, i32 0, i32 15
  %132 = load i32, i32* %131, align 4
  %133 = call i8* @le16_to_cpu(i32 %132)
  %134 = load %struct.bnxt_hw_resc*, %struct.bnxt_hw_resc** %6, align 8
  %135 = getelementptr inbounds %struct.bnxt_hw_resc, %struct.bnxt_hw_resc* %134, i32 0, i32 5
  store i8* %133, i8** %135, align 8
  %136 = load %struct.hwrm_func_qcaps_output*, %struct.hwrm_func_qcaps_output** %5, align 8
  %137 = getelementptr inbounds %struct.hwrm_func_qcaps_output, %struct.hwrm_func_qcaps_output* %136, i32 0, i32 14
  %138 = load i32, i32* %137, align 4
  %139 = call i8* @le32_to_cpu(i32 %138)
  %140 = load %struct.bnxt_hw_resc*, %struct.bnxt_hw_resc** %6, align 8
  %141 = getelementptr inbounds %struct.bnxt_hw_resc, %struct.bnxt_hw_resc* %140, i32 0, i32 4
  store i8* %139, i8** %141, align 8
  %142 = load %struct.bnxt_hw_resc*, %struct.bnxt_hw_resc** %6, align 8
  %143 = getelementptr inbounds %struct.bnxt_hw_resc, %struct.bnxt_hw_resc* %142, i32 0, i32 4
  %144 = load i8*, i8** %143, align 8
  %145 = icmp ne i8* %144, null
  br i1 %145, label %152, label %146

146:                                              ; preds = %111
  %147 = load %struct.bnxt_hw_resc*, %struct.bnxt_hw_resc** %6, align 8
  %148 = getelementptr inbounds %struct.bnxt_hw_resc, %struct.bnxt_hw_resc* %147, i32 0, i32 3
  %149 = load i8*, i8** %148, align 8
  %150 = load %struct.bnxt_hw_resc*, %struct.bnxt_hw_resc** %6, align 8
  %151 = getelementptr inbounds %struct.bnxt_hw_resc, %struct.bnxt_hw_resc* %150, i32 0, i32 4
  store i8* %149, i8** %151, align 8
  br label %152

152:                                              ; preds = %146, %111
  %153 = load %struct.hwrm_func_qcaps_output*, %struct.hwrm_func_qcaps_output** %5, align 8
  %154 = getelementptr inbounds %struct.hwrm_func_qcaps_output, %struct.hwrm_func_qcaps_output* %153, i32 0, i32 13
  %155 = load i32, i32* %154, align 4
  %156 = call i8* @le16_to_cpu(i32 %155)
  %157 = load %struct.bnxt_hw_resc*, %struct.bnxt_hw_resc** %6, align 8
  %158 = getelementptr inbounds %struct.bnxt_hw_resc, %struct.bnxt_hw_resc* %157, i32 0, i32 2
  store i8* %156, i8** %158, align 8
  %159 = load %struct.hwrm_func_qcaps_output*, %struct.hwrm_func_qcaps_output** %5, align 8
  %160 = getelementptr inbounds %struct.hwrm_func_qcaps_output, %struct.hwrm_func_qcaps_output* %159, i32 0, i32 12
  %161 = load i32, i32* %160, align 4
  %162 = call i8* @le16_to_cpu(i32 %161)
  %163 = load %struct.bnxt_hw_resc*, %struct.bnxt_hw_resc** %6, align 8
  %164 = getelementptr inbounds %struct.bnxt_hw_resc, %struct.bnxt_hw_resc* %163, i32 0, i32 1
  store i8* %162, i8** %164, align 8
  %165 = load %struct.hwrm_func_qcaps_output*, %struct.hwrm_func_qcaps_output** %5, align 8
  %166 = getelementptr inbounds %struct.hwrm_func_qcaps_output, %struct.hwrm_func_qcaps_output* %165, i32 0, i32 11
  %167 = load i32, i32* %166, align 4
  %168 = call i8* @le16_to_cpu(i32 %167)
  %169 = load %struct.bnxt_hw_resc*, %struct.bnxt_hw_resc** %6, align 8
  %170 = getelementptr inbounds %struct.bnxt_hw_resc, %struct.bnxt_hw_resc* %169, i32 0, i32 0
  store i8* %168, i8** %170, align 8
  %171 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %172 = call i64 @BNXT_PF(%struct.bnxt* %171)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %269

174:                                              ; preds = %152
  %175 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %176 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %175, i32 0, i32 4
  store %struct.bnxt_pf_info* %176, %struct.bnxt_pf_info** %8, align 8
  %177 = load %struct.hwrm_func_qcaps_output*, %struct.hwrm_func_qcaps_output** %5, align 8
  %178 = getelementptr inbounds %struct.hwrm_func_qcaps_output, %struct.hwrm_func_qcaps_output* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = call i8* @le16_to_cpu(i32 %179)
  %181 = load %struct.bnxt_pf_info*, %struct.bnxt_pf_info** %8, align 8
  %182 = getelementptr inbounds %struct.bnxt_pf_info, %struct.bnxt_pf_info* %181, i32 0, i32 10
  store i8* %180, i8** %182, align 8
  %183 = load %struct.hwrm_func_qcaps_output*, %struct.hwrm_func_qcaps_output** %5, align 8
  %184 = getelementptr inbounds %struct.hwrm_func_qcaps_output, %struct.hwrm_func_qcaps_output* %183, i32 0, i32 10
  %185 = load i32, i32* %184, align 4
  %186 = call i8* @le16_to_cpu(i32 %185)
  %187 = load %struct.bnxt_pf_info*, %struct.bnxt_pf_info** %8, align 8
  %188 = getelementptr inbounds %struct.bnxt_pf_info, %struct.bnxt_pf_info* %187, i32 0, i32 9
  store i8* %186, i8** %188, align 8
  %189 = load %struct.bnxt_pf_info*, %struct.bnxt_pf_info** %8, align 8
  %190 = getelementptr inbounds %struct.bnxt_pf_info, %struct.bnxt_pf_info* %189, i32 0, i32 9
  %191 = load i8*, i8** %190, align 8
  %192 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %193 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %192, i32 0, i32 3
  %194 = load %struct.TYPE_2__*, %struct.TYPE_2__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %194, i32 0, i32 0
  store i8* %191, i8** %195, align 8
  %196 = load %struct.bnxt_pf_info*, %struct.bnxt_pf_info** %8, align 8
  %197 = getelementptr inbounds %struct.bnxt_pf_info, %struct.bnxt_pf_info* %196, i32 0, i32 8
  %198 = load i32, i32* %197, align 8
  %199 = load %struct.hwrm_func_qcaps_output*, %struct.hwrm_func_qcaps_output** %5, align 8
  %200 = getelementptr inbounds %struct.hwrm_func_qcaps_output, %struct.hwrm_func_qcaps_output* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = load i32, i32* @ETH_ALEN, align 4
  %203 = call i32 @memcpy(i32 %198, i32 %201, i32 %202)
  %204 = load %struct.hwrm_func_qcaps_output*, %struct.hwrm_func_qcaps_output** %5, align 8
  %205 = getelementptr inbounds %struct.hwrm_func_qcaps_output, %struct.hwrm_func_qcaps_output* %204, i32 0, i32 9
  %206 = load i32, i32* %205, align 4
  %207 = call i8* @le16_to_cpu(i32 %206)
  %208 = load %struct.bnxt_pf_info*, %struct.bnxt_pf_info** %8, align 8
  %209 = getelementptr inbounds %struct.bnxt_pf_info, %struct.bnxt_pf_info* %208, i32 0, i32 7
  store i8* %207, i8** %209, align 8
  %210 = load %struct.hwrm_func_qcaps_output*, %struct.hwrm_func_qcaps_output** %5, align 8
  %211 = getelementptr inbounds %struct.hwrm_func_qcaps_output, %struct.hwrm_func_qcaps_output* %210, i32 0, i32 8
  %212 = load i32, i32* %211, align 4
  %213 = call i8* @le16_to_cpu(i32 %212)
  %214 = load %struct.bnxt_pf_info*, %struct.bnxt_pf_info** %8, align 8
  %215 = getelementptr inbounds %struct.bnxt_pf_info, %struct.bnxt_pf_info* %214, i32 0, i32 6
  store i8* %213, i8** %215, align 8
  %216 = load %struct.hwrm_func_qcaps_output*, %struct.hwrm_func_qcaps_output** %5, align 8
  %217 = getelementptr inbounds %struct.hwrm_func_qcaps_output, %struct.hwrm_func_qcaps_output* %216, i32 0, i32 7
  %218 = load i32, i32* %217, align 4
  %219 = call i8* @le32_to_cpu(i32 %218)
  %220 = load %struct.bnxt_pf_info*, %struct.bnxt_pf_info** %8, align 8
  %221 = getelementptr inbounds %struct.bnxt_pf_info, %struct.bnxt_pf_info* %220, i32 0, i32 5
  store i8* %219, i8** %221, align 8
  %222 = load %struct.hwrm_func_qcaps_output*, %struct.hwrm_func_qcaps_output** %5, align 8
  %223 = getelementptr inbounds %struct.hwrm_func_qcaps_output, %struct.hwrm_func_qcaps_output* %222, i32 0, i32 6
  %224 = load i32, i32* %223, align 4
  %225 = call i8* @le32_to_cpu(i32 %224)
  %226 = load %struct.bnxt_pf_info*, %struct.bnxt_pf_info** %8, align 8
  %227 = getelementptr inbounds %struct.bnxt_pf_info, %struct.bnxt_pf_info* %226, i32 0, i32 4
  store i8* %225, i8** %227, align 8
  %228 = load %struct.hwrm_func_qcaps_output*, %struct.hwrm_func_qcaps_output** %5, align 8
  %229 = getelementptr inbounds %struct.hwrm_func_qcaps_output, %struct.hwrm_func_qcaps_output* %228, i32 0, i32 5
  %230 = load i32, i32* %229, align 4
  %231 = call i8* @le32_to_cpu(i32 %230)
  %232 = load %struct.bnxt_pf_info*, %struct.bnxt_pf_info** %8, align 8
  %233 = getelementptr inbounds %struct.bnxt_pf_info, %struct.bnxt_pf_info* %232, i32 0, i32 3
  store i8* %231, i8** %233, align 8
  %234 = load %struct.hwrm_func_qcaps_output*, %struct.hwrm_func_qcaps_output** %5, align 8
  %235 = getelementptr inbounds %struct.hwrm_func_qcaps_output, %struct.hwrm_func_qcaps_output* %234, i32 0, i32 4
  %236 = load i32, i32* %235, align 4
  %237 = call i8* @le32_to_cpu(i32 %236)
  %238 = load %struct.bnxt_pf_info*, %struct.bnxt_pf_info** %8, align 8
  %239 = getelementptr inbounds %struct.bnxt_pf_info, %struct.bnxt_pf_info* %238, i32 0, i32 2
  store i8* %237, i8** %239, align 8
  %240 = load %struct.hwrm_func_qcaps_output*, %struct.hwrm_func_qcaps_output** %5, align 8
  %241 = getelementptr inbounds %struct.hwrm_func_qcaps_output, %struct.hwrm_func_qcaps_output* %240, i32 0, i32 3
  %242 = load i32, i32* %241, align 4
  %243 = call i8* @le32_to_cpu(i32 %242)
  %244 = load %struct.bnxt_pf_info*, %struct.bnxt_pf_info** %8, align 8
  %245 = getelementptr inbounds %struct.bnxt_pf_info, %struct.bnxt_pf_info* %244, i32 0, i32 1
  store i8* %243, i8** %245, align 8
  %246 = load %struct.hwrm_func_qcaps_output*, %struct.hwrm_func_qcaps_output** %5, align 8
  %247 = getelementptr inbounds %struct.hwrm_func_qcaps_output, %struct.hwrm_func_qcaps_output* %246, i32 0, i32 2
  %248 = load i32, i32* %247, align 4
  %249 = call i8* @le32_to_cpu(i32 %248)
  %250 = load %struct.bnxt_pf_info*, %struct.bnxt_pf_info** %8, align 8
  %251 = getelementptr inbounds %struct.bnxt_pf_info, %struct.bnxt_pf_info* %250, i32 0, i32 0
  store i8* %249, i8** %251, align 8
  %252 = load i32, i32* @BNXT_FLAG_WOL_CAP, align 4
  %253 = xor i32 %252, -1
  %254 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %255 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %254, i32 0, i32 2
  %256 = load i32, i32* %255, align 8
  %257 = and i32 %256, %253
  store i32 %257, i32* %255, align 8
  %258 = load i32, i32* %7, align 4
  %259 = load i32, i32* @FUNC_QCAPS_RESP_FLAGS_WOL_MAGICPKT_SUPPORTED, align 4
  %260 = and i32 %258, %259
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %268

262:                                              ; preds = %174
  %263 = load i32, i32* @BNXT_FLAG_WOL_CAP, align 4
  %264 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %265 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %264, i32 0, i32 2
  %266 = load i32, i32* %265, align 8
  %267 = or i32 %266, %263
  store i32 %267, i32* %265, align 8
  br label %268

268:                                              ; preds = %262, %174
  br label %270

269:                                              ; preds = %152
  br label %270

270:                                              ; preds = %269, %268
  br label %271

271:                                              ; preds = %270, %28
  %272 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %273 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %272, i32 0, i32 0
  %274 = call i32 @mutex_unlock(i32* %273)
  %275 = load i32, i32* %3, align 4
  ret i32 %275
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @bnxt_hwrm_cmd_hdr_init(%struct.bnxt*, %struct.hwrm_func_qcaps_input*, i32, i32, i32) #2

declare dso_local i32 @cpu_to_le16(i32) #2

declare dso_local i32 @mutex_lock(i32*) #2

declare dso_local i32 @_hwrm_send_message(%struct.bnxt*, %struct.hwrm_func_qcaps_input*, i32, i32) #2

declare dso_local i8* @le32_to_cpu(i32) #2

declare dso_local i8* @le16_to_cpu(i32) #2

declare dso_local i64 @BNXT_PF(%struct.bnxt*) #2

declare dso_local i32 @memcpy(i32, i32, i32) #2

declare dso_local i32 @mutex_unlock(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
