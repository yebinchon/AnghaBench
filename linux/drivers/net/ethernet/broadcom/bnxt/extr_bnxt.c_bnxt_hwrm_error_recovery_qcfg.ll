; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_hwrm_error_recovery_qcfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_hwrm_error_recovery_qcfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt = type { i32, i32, %struct.bnxt_fw_health*, %struct.hwrm_error_recovery_qcfg_output* }
%struct.bnxt_fw_health = type { i32, i32, i32*, i8**, i8**, i8*, i8**, i8*, i8*, i8*, i8*, i8* }
%struct.hwrm_error_recovery_qcfg_output = type { i32, i32*, i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hwrm_error_recovery_qcfg_input = type { i32 }

@BNXT_FW_CAP_ERROR_RECOVERY = common dso_local global i32 0, align 4
@HWRM_ERROR_RECOVERY_QCFG = common dso_local global i32 0, align 4
@HWRM_CMD_TIMEOUT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ERROR_RECOVERY_QCFG_RESP_FLAGS_CO_CPU = common dso_local global i32 0, align 4
@BNXT_FW_CAP_KONG_MB_CHNL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@BNXT_FW_HEALTH_REG = common dso_local global i64 0, align 8
@BNXT_FW_HEARTBEAT_REG = common dso_local global i64 0, align 8
@BNXT_FW_RESET_CNT_REG = common dso_local global i64 0, align 8
@BNXT_FW_RESET_INPROG_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnxt*)* @bnxt_hwrm_error_recovery_qcfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnxt_hwrm_error_recovery_qcfg(%struct.bnxt* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bnxt*, align 8
  %4 = alloca %struct.hwrm_error_recovery_qcfg_output*, align 8
  %5 = alloca %struct.bnxt_fw_health*, align 8
  %6 = alloca %struct.hwrm_error_recovery_qcfg_input, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.bnxt* %0, %struct.bnxt** %3, align 8
  %9 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %10 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %9, i32 0, i32 3
  %11 = load %struct.hwrm_error_recovery_qcfg_output*, %struct.hwrm_error_recovery_qcfg_output** %10, align 8
  store %struct.hwrm_error_recovery_qcfg_output* %11, %struct.hwrm_error_recovery_qcfg_output** %4, align 8
  %12 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %13 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %12, i32 0, i32 2
  %14 = load %struct.bnxt_fw_health*, %struct.bnxt_fw_health** %13, align 8
  store %struct.bnxt_fw_health* %14, %struct.bnxt_fw_health** %5, align 8
  %15 = bitcast %struct.hwrm_error_recovery_qcfg_input* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %15, i8 0, i64 4, i1 false)
  %16 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %17 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @BNXT_FW_CAP_ERROR_RECOVERY, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %234

23:                                               ; preds = %1
  %24 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %25 = load i32, i32* @HWRM_ERROR_RECOVERY_QCFG, align 4
  %26 = call i32 @bnxt_hwrm_cmd_hdr_init(%struct.bnxt* %24, %struct.hwrm_error_recovery_qcfg_input* %6, i32 %25, i32 -1, i32 -1)
  %27 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %28 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %27, i32 0, i32 1
  %29 = call i32 @mutex_lock(i32* %28)
  %30 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %31 = load i32, i32* @HWRM_CMD_TIMEOUT, align 4
  %32 = call i32 @_hwrm_send_message(%struct.bnxt* %30, %struct.hwrm_error_recovery_qcfg_input* %6, i32 4, i32 %31)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %23
  br label %213

36:                                               ; preds = %23
  %37 = load %struct.bnxt_fw_health*, %struct.bnxt_fw_health** %5, align 8
  %38 = icmp ne %struct.bnxt_fw_health* %37, null
  br i1 %38, label %51, label %39

39:                                               ; preds = %36
  %40 = load i32, i32* @GFP_KERNEL, align 4
  %41 = call %struct.bnxt_fw_health* @kzalloc(i32 88, i32 %40)
  store %struct.bnxt_fw_health* %41, %struct.bnxt_fw_health** %5, align 8
  %42 = load %struct.bnxt_fw_health*, %struct.bnxt_fw_health** %5, align 8
  %43 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %44 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %43, i32 0, i32 2
  store %struct.bnxt_fw_health* %42, %struct.bnxt_fw_health** %44, align 8
  %45 = load %struct.bnxt_fw_health*, %struct.bnxt_fw_health** %5, align 8
  %46 = icmp ne %struct.bnxt_fw_health* %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %39
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %7, align 4
  br label %213

50:                                               ; preds = %39
  br label %51

51:                                               ; preds = %50, %36
  %52 = load %struct.hwrm_error_recovery_qcfg_output*, %struct.hwrm_error_recovery_qcfg_output** %4, align 8
  %53 = getelementptr inbounds %struct.hwrm_error_recovery_qcfg_output, %struct.hwrm_error_recovery_qcfg_output* %52, i32 0, i32 14
  %54 = load i32, i32* %53, align 8
  %55 = call i8* @le32_to_cpu(i32 %54)
  %56 = ptrtoint i8* %55 to i32
  %57 = load %struct.bnxt_fw_health*, %struct.bnxt_fw_health** %5, align 8
  %58 = getelementptr inbounds %struct.bnxt_fw_health, %struct.bnxt_fw_health* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  %59 = load %struct.bnxt_fw_health*, %struct.bnxt_fw_health** %5, align 8
  %60 = getelementptr inbounds %struct.bnxt_fw_health, %struct.bnxt_fw_health* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @ERROR_RECOVERY_QCFG_RESP_FLAGS_CO_CPU, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %75

65:                                               ; preds = %51
  %66 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %67 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @BNXT_FW_CAP_KONG_MB_CHNL, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %65
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %7, align 4
  br label %213

75:                                               ; preds = %65, %51
  %76 = load %struct.hwrm_error_recovery_qcfg_output*, %struct.hwrm_error_recovery_qcfg_output** %4, align 8
  %77 = getelementptr inbounds %struct.hwrm_error_recovery_qcfg_output, %struct.hwrm_error_recovery_qcfg_output* %76, i32 0, i32 13
  %78 = load i32, i32* %77, align 4
  %79 = call i8* @le32_to_cpu(i32 %78)
  %80 = load %struct.bnxt_fw_health*, %struct.bnxt_fw_health** %5, align 8
  %81 = getelementptr inbounds %struct.bnxt_fw_health, %struct.bnxt_fw_health* %80, i32 0, i32 11
  store i8* %79, i8** %81, align 8
  %82 = load %struct.hwrm_error_recovery_qcfg_output*, %struct.hwrm_error_recovery_qcfg_output** %4, align 8
  %83 = getelementptr inbounds %struct.hwrm_error_recovery_qcfg_output, %struct.hwrm_error_recovery_qcfg_output* %82, i32 0, i32 12
  %84 = load i32, i32* %83, align 8
  %85 = call i8* @le32_to_cpu(i32 %84)
  %86 = load %struct.bnxt_fw_health*, %struct.bnxt_fw_health** %5, align 8
  %87 = getelementptr inbounds %struct.bnxt_fw_health, %struct.bnxt_fw_health* %86, i32 0, i32 10
  store i8* %85, i8** %87, align 8
  %88 = load %struct.hwrm_error_recovery_qcfg_output*, %struct.hwrm_error_recovery_qcfg_output** %4, align 8
  %89 = getelementptr inbounds %struct.hwrm_error_recovery_qcfg_output, %struct.hwrm_error_recovery_qcfg_output* %88, i32 0, i32 11
  %90 = load i32, i32* %89, align 4
  %91 = call i8* @le32_to_cpu(i32 %90)
  %92 = load %struct.bnxt_fw_health*, %struct.bnxt_fw_health** %5, align 8
  %93 = getelementptr inbounds %struct.bnxt_fw_health, %struct.bnxt_fw_health* %92, i32 0, i32 9
  store i8* %91, i8** %93, align 8
  %94 = load %struct.hwrm_error_recovery_qcfg_output*, %struct.hwrm_error_recovery_qcfg_output** %4, align 8
  %95 = getelementptr inbounds %struct.hwrm_error_recovery_qcfg_output, %struct.hwrm_error_recovery_qcfg_output* %94, i32 0, i32 10
  %96 = load i32, i32* %95, align 8
  %97 = call i8* @le32_to_cpu(i32 %96)
  %98 = load %struct.bnxt_fw_health*, %struct.bnxt_fw_health** %5, align 8
  %99 = getelementptr inbounds %struct.bnxt_fw_health, %struct.bnxt_fw_health* %98, i32 0, i32 8
  store i8* %97, i8** %99, align 8
  %100 = load %struct.hwrm_error_recovery_qcfg_output*, %struct.hwrm_error_recovery_qcfg_output** %4, align 8
  %101 = getelementptr inbounds %struct.hwrm_error_recovery_qcfg_output, %struct.hwrm_error_recovery_qcfg_output* %100, i32 0, i32 9
  %102 = load i32, i32* %101, align 4
  %103 = call i8* @le32_to_cpu(i32 %102)
  %104 = load %struct.bnxt_fw_health*, %struct.bnxt_fw_health** %5, align 8
  %105 = getelementptr inbounds %struct.bnxt_fw_health, %struct.bnxt_fw_health* %104, i32 0, i32 7
  store i8* %103, i8** %105, align 8
  %106 = load %struct.hwrm_error_recovery_qcfg_output*, %struct.hwrm_error_recovery_qcfg_output** %4, align 8
  %107 = getelementptr inbounds %struct.hwrm_error_recovery_qcfg_output, %struct.hwrm_error_recovery_qcfg_output* %106, i32 0, i32 8
  %108 = load i32, i32* %107, align 8
  %109 = call i8* @le32_to_cpu(i32 %108)
  %110 = load %struct.bnxt_fw_health*, %struct.bnxt_fw_health** %5, align 8
  %111 = getelementptr inbounds %struct.bnxt_fw_health, %struct.bnxt_fw_health* %110, i32 0, i32 6
  %112 = load i8**, i8*** %111, align 8
  %113 = load i64, i64* @BNXT_FW_HEALTH_REG, align 8
  %114 = getelementptr inbounds i8*, i8** %112, i64 %113
  store i8* %109, i8** %114, align 8
  %115 = load %struct.hwrm_error_recovery_qcfg_output*, %struct.hwrm_error_recovery_qcfg_output** %4, align 8
  %116 = getelementptr inbounds %struct.hwrm_error_recovery_qcfg_output, %struct.hwrm_error_recovery_qcfg_output* %115, i32 0, i32 7
  %117 = load i32, i32* %116, align 4
  %118 = call i8* @le32_to_cpu(i32 %117)
  %119 = load %struct.bnxt_fw_health*, %struct.bnxt_fw_health** %5, align 8
  %120 = getelementptr inbounds %struct.bnxt_fw_health, %struct.bnxt_fw_health* %119, i32 0, i32 6
  %121 = load i8**, i8*** %120, align 8
  %122 = load i64, i64* @BNXT_FW_HEARTBEAT_REG, align 8
  %123 = getelementptr inbounds i8*, i8** %121, i64 %122
  store i8* %118, i8** %123, align 8
  %124 = load %struct.hwrm_error_recovery_qcfg_output*, %struct.hwrm_error_recovery_qcfg_output** %4, align 8
  %125 = getelementptr inbounds %struct.hwrm_error_recovery_qcfg_output, %struct.hwrm_error_recovery_qcfg_output* %124, i32 0, i32 6
  %126 = load i32, i32* %125, align 8
  %127 = call i8* @le32_to_cpu(i32 %126)
  %128 = load %struct.bnxt_fw_health*, %struct.bnxt_fw_health** %5, align 8
  %129 = getelementptr inbounds %struct.bnxt_fw_health, %struct.bnxt_fw_health* %128, i32 0, i32 6
  %130 = load i8**, i8*** %129, align 8
  %131 = load i64, i64* @BNXT_FW_RESET_CNT_REG, align 8
  %132 = getelementptr inbounds i8*, i8** %130, i64 %131
  store i8* %127, i8** %132, align 8
  %133 = load %struct.hwrm_error_recovery_qcfg_output*, %struct.hwrm_error_recovery_qcfg_output** %4, align 8
  %134 = getelementptr inbounds %struct.hwrm_error_recovery_qcfg_output, %struct.hwrm_error_recovery_qcfg_output* %133, i32 0, i32 5
  %135 = load i32, i32* %134, align 4
  %136 = call i8* @le32_to_cpu(i32 %135)
  %137 = load %struct.bnxt_fw_health*, %struct.bnxt_fw_health** %5, align 8
  %138 = getelementptr inbounds %struct.bnxt_fw_health, %struct.bnxt_fw_health* %137, i32 0, i32 6
  %139 = load i8**, i8*** %138, align 8
  %140 = load i64, i64* @BNXT_FW_RESET_INPROG_REG, align 8
  %141 = getelementptr inbounds i8*, i8** %139, i64 %140
  store i8* %136, i8** %141, align 8
  %142 = load %struct.hwrm_error_recovery_qcfg_output*, %struct.hwrm_error_recovery_qcfg_output** %4, align 8
  %143 = getelementptr inbounds %struct.hwrm_error_recovery_qcfg_output, %struct.hwrm_error_recovery_qcfg_output* %142, i32 0, i32 4
  %144 = load i32, i32* %143, align 8
  %145 = call i8* @le32_to_cpu(i32 %144)
  %146 = load %struct.bnxt_fw_health*, %struct.bnxt_fw_health** %5, align 8
  %147 = getelementptr inbounds %struct.bnxt_fw_health, %struct.bnxt_fw_health* %146, i32 0, i32 5
  store i8* %145, i8** %147, align 8
  %148 = load %struct.hwrm_error_recovery_qcfg_output*, %struct.hwrm_error_recovery_qcfg_output** %4, align 8
  %149 = getelementptr inbounds %struct.hwrm_error_recovery_qcfg_output, %struct.hwrm_error_recovery_qcfg_output* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = load %struct.bnxt_fw_health*, %struct.bnxt_fw_health** %5, align 8
  %152 = getelementptr inbounds %struct.bnxt_fw_health, %struct.bnxt_fw_health* %151, i32 0, i32 1
  store i32 %150, i32* %152, align 4
  %153 = load %struct.bnxt_fw_health*, %struct.bnxt_fw_health** %5, align 8
  %154 = getelementptr inbounds %struct.bnxt_fw_health, %struct.bnxt_fw_health* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = icmp sge i32 %155, 16
  br i1 %156, label %157, label %160

157:                                              ; preds = %75
  %158 = load i32, i32* @EINVAL, align 4
  %159 = sub nsw i32 0, %158
  store i32 %159, i32* %7, align 4
  br label %213

160:                                              ; preds = %75
  store i32 0, i32* %8, align 4
  br label %161

161:                                              ; preds = %209, %160
  %162 = load i32, i32* %8, align 4
  %163 = load %struct.bnxt_fw_health*, %struct.bnxt_fw_health** %5, align 8
  %164 = getelementptr inbounds %struct.bnxt_fw_health, %struct.bnxt_fw_health* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = icmp slt i32 %162, %165
  br i1 %166, label %167, label %212

167:                                              ; preds = %161
  %168 = load %struct.hwrm_error_recovery_qcfg_output*, %struct.hwrm_error_recovery_qcfg_output** %4, align 8
  %169 = getelementptr inbounds %struct.hwrm_error_recovery_qcfg_output, %struct.hwrm_error_recovery_qcfg_output* %168, i32 0, i32 3
  %170 = load i32*, i32** %169, align 8
  %171 = load i32, i32* %8, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i32, i32* %170, i64 %172
  %174 = load i32, i32* %173, align 4
  %175 = call i8* @le32_to_cpu(i32 %174)
  %176 = load %struct.bnxt_fw_health*, %struct.bnxt_fw_health** %5, align 8
  %177 = getelementptr inbounds %struct.bnxt_fw_health, %struct.bnxt_fw_health* %176, i32 0, i32 4
  %178 = load i8**, i8*** %177, align 8
  %179 = load i32, i32* %8, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i8*, i8** %178, i64 %180
  store i8* %175, i8** %181, align 8
  %182 = load %struct.hwrm_error_recovery_qcfg_output*, %struct.hwrm_error_recovery_qcfg_output** %4, align 8
  %183 = getelementptr inbounds %struct.hwrm_error_recovery_qcfg_output, %struct.hwrm_error_recovery_qcfg_output* %182, i32 0, i32 2
  %184 = load i32*, i32** %183, align 8
  %185 = load i32, i32* %8, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i32, i32* %184, i64 %186
  %188 = load i32, i32* %187, align 4
  %189 = call i8* @le32_to_cpu(i32 %188)
  %190 = load %struct.bnxt_fw_health*, %struct.bnxt_fw_health** %5, align 8
  %191 = getelementptr inbounds %struct.bnxt_fw_health, %struct.bnxt_fw_health* %190, i32 0, i32 3
  %192 = load i8**, i8*** %191, align 8
  %193 = load i32, i32* %8, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i8*, i8** %192, i64 %194
  store i8* %189, i8** %195, align 8
  %196 = load %struct.hwrm_error_recovery_qcfg_output*, %struct.hwrm_error_recovery_qcfg_output** %4, align 8
  %197 = getelementptr inbounds %struct.hwrm_error_recovery_qcfg_output, %struct.hwrm_error_recovery_qcfg_output* %196, i32 0, i32 1
  %198 = load i32*, i32** %197, align 8
  %199 = load i32, i32* %8, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i32, i32* %198, i64 %200
  %202 = load i32, i32* %201, align 4
  %203 = load %struct.bnxt_fw_health*, %struct.bnxt_fw_health** %5, align 8
  %204 = getelementptr inbounds %struct.bnxt_fw_health, %struct.bnxt_fw_health* %203, i32 0, i32 2
  %205 = load i32*, i32** %204, align 8
  %206 = load i32, i32* %8, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i32, i32* %205, i64 %207
  store i32 %202, i32* %208, align 4
  br label %209

209:                                              ; preds = %167
  %210 = load i32, i32* %8, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %8, align 4
  br label %161

212:                                              ; preds = %161
  br label %213

213:                                              ; preds = %212, %157, %72, %47, %35
  %214 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %215 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %214, i32 0, i32 1
  %216 = call i32 @mutex_unlock(i32* %215)
  %217 = load i32, i32* %7, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %222, label %219

219:                                              ; preds = %213
  %220 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %221 = call i32 @bnxt_map_fw_health_regs(%struct.bnxt* %220)
  store i32 %221, i32* %7, align 4
  br label %222

222:                                              ; preds = %219, %213
  %223 = load i32, i32* %7, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %232

225:                                              ; preds = %222
  %226 = load i32, i32* @BNXT_FW_CAP_ERROR_RECOVERY, align 4
  %227 = xor i32 %226, -1
  %228 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %229 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 8
  %231 = and i32 %230, %227
  store i32 %231, i32* %229, align 8
  br label %232

232:                                              ; preds = %225, %222
  %233 = load i32, i32* %7, align 4
  store i32 %233, i32* %2, align 4
  br label %234

234:                                              ; preds = %232, %22
  %235 = load i32, i32* %2, align 4
  ret i32 %235
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @bnxt_hwrm_cmd_hdr_init(%struct.bnxt*, %struct.hwrm_error_recovery_qcfg_input*, i32, i32, i32) #2

declare dso_local i32 @mutex_lock(i32*) #2

declare dso_local i32 @_hwrm_send_message(%struct.bnxt*, %struct.hwrm_error_recovery_qcfg_input*, i32, i32) #2

declare dso_local %struct.bnxt_fw_health* @kzalloc(i32, i32) #2

declare dso_local i8* @le32_to_cpu(i32) #2

declare dso_local i32 @mutex_unlock(i32*) #2

declare dso_local i32 @bnxt_map_fw_health_regs(%struct.bnxt*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
