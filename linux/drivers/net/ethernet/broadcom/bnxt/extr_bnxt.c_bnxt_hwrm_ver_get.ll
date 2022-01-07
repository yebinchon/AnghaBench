; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_hwrm_ver_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_hwrm_ver_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt = type { i32, i8*, i8*, i32, i32, i32, i8*, i8*, i8*, i32, i32, %struct.hwrm_ver_get_output* }
%struct.hwrm_ver_get_output = type { i32, i32, i32, i32, i32, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32 }

@HWRM_MAX_REQ_LEN = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [46 x i8] c"HWRM interface %d.%d.%d is older than 1.0.0.\0A\00", align 1
@.str.1 = private unnamed_addr constant [60 x i8] c"Please update firmware with HWRM interface 1.0.0 or newer.\0A\00", align 1
@BC_HWRM_STR_LEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"%d.%d.%d.%d\00", align 1
@FW_VER_STR_LEN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"/pkg %s\00", align 1
@BNXT_FW_CAP_PKG_VER = common dso_local global i32 0, align 4
@DFLT_HWRM_CMD_TIMEOUT = common dso_local global i8* null, align 8
@CHIP_NUM_58700 = common dso_local global i8* null, align 8
@BNXT_FLAG_CHIP_NITRO_A0 = common dso_local global i32 0, align 4
@VER_GET_RESP_DEV_CAPS_CFG_SHORT_CMD_SUPPORTED = common dso_local global i32 0, align 4
@VER_GET_RESP_DEV_CAPS_CFG_SHORT_CMD_REQUIRED = common dso_local global i32 0, align 4
@BNXT_FW_CAP_SHORT_CMD = common dso_local global i32 0, align 4
@VER_GET_RESP_DEV_CAPS_CFG_KONG_MB_CHNL_SUPPORTED = common dso_local global i32 0, align 4
@BNXT_FW_CAP_KONG_MB_CHNL = common dso_local global i32 0, align 4
@VER_GET_RESP_DEV_CAPS_CFG_FLOW_HANDLE_64BIT_SUPPORTED = common dso_local global i32 0, align 4
@BNXT_FW_CAP_OVS_64BIT_HANDLE = common dso_local global i32 0, align 4
@VER_GET_RESP_DEV_CAPS_CFG_TRUSTED_VF_SUPPORTED = common dso_local global i32 0, align 4
@BNXT_FW_CAP_TRUSTED_VF = common dso_local global i32 0, align 4
@VER_GET_RESP_DEV_CAPS_CFG_CFA_ADV_FLOW_MGNT_SUPPORTED = common dso_local global i32 0, align 4
@BNXT_FW_CAP_CFA_ADV_FLOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnxt*)* @bnxt_hwrm_ver_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnxt_hwrm_ver_get(%struct.bnxt* %0) #0 {
  %2 = alloca %struct.bnxt*, align 8
  %3 = alloca %struct.hwrm_ver_get_output*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.bnxt* %0, %struct.bnxt** %2, align 8
  %7 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %8 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %7, i32 0, i32 11
  %9 = load %struct.hwrm_ver_get_output*, %struct.hwrm_ver_get_output** %8, align 8
  store %struct.hwrm_ver_get_output* %9, %struct.hwrm_ver_get_output** %3, align 8
  %10 = load i8*, i8** @HWRM_MAX_REQ_LEN, align 8
  %11 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %12 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %11, i32 0, i32 7
  store i8* %10, i8** %12, align 8
  %13 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %14 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %13, i32 0, i32 3
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %17 = call i32 @__bnxt_hwrm_ver_get(%struct.bnxt* %16, i32 0)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  br label %246

21:                                               ; preds = %1
  %22 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %23 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %22, i32 0, i32 10
  %24 = load %struct.hwrm_ver_get_output*, %struct.hwrm_ver_get_output** %3, align 8
  %25 = call i32 @memcpy(i32* %23, %struct.hwrm_ver_get_output* %24, i32 72)
  %26 = load %struct.hwrm_ver_get_output*, %struct.hwrm_ver_get_output** %3, align 8
  %27 = getelementptr inbounds %struct.hwrm_ver_get_output, %struct.hwrm_ver_get_output* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = shl i32 %28, 16
  %30 = load %struct.hwrm_ver_get_output*, %struct.hwrm_ver_get_output** %3, align 8
  %31 = getelementptr inbounds %struct.hwrm_ver_get_output, %struct.hwrm_ver_get_output* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = shl i32 %32, 8
  %34 = or i32 %29, %33
  %35 = load %struct.hwrm_ver_get_output*, %struct.hwrm_ver_get_output** %3, align 8
  %36 = getelementptr inbounds %struct.hwrm_ver_get_output, %struct.hwrm_ver_get_output* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = or i32 %34, %37
  %39 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %40 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load %struct.hwrm_ver_get_output*, %struct.hwrm_ver_get_output** %3, align 8
  %42 = getelementptr inbounds %struct.hwrm_ver_get_output, %struct.hwrm_ver_get_output* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp slt i32 %43, 1
  br i1 %44, label %45, label %63

45:                                               ; preds = %21
  %46 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %47 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %46, i32 0, i32 9
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.hwrm_ver_get_output*, %struct.hwrm_ver_get_output** %3, align 8
  %50 = getelementptr inbounds %struct.hwrm_ver_get_output, %struct.hwrm_ver_get_output* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.hwrm_ver_get_output*, %struct.hwrm_ver_get_output** %3, align 8
  %53 = getelementptr inbounds %struct.hwrm_ver_get_output, %struct.hwrm_ver_get_output* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.hwrm_ver_get_output*, %struct.hwrm_ver_get_output** %3, align 8
  %56 = getelementptr inbounds %struct.hwrm_ver_get_output, %struct.hwrm_ver_get_output* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = call i32 (i32, i8*, ...) @netdev_warn(i32 %48, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %51, i32 %54, i32 %57)
  %59 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %60 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %59, i32 0, i32 9
  %61 = load i32, i32* %60, align 8
  %62 = call i32 (i32, i8*, ...) @netdev_warn(i32 %61, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0))
  br label %63

63:                                               ; preds = %45, %21
  %64 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %65 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %64, i32 0, i32 1
  %66 = load i8*, i8** %65, align 8
  %67 = load i32, i32* @BC_HWRM_STR_LEN, align 4
  %68 = load %struct.hwrm_ver_get_output*, %struct.hwrm_ver_get_output** %3, align 8
  %69 = getelementptr inbounds %struct.hwrm_ver_get_output, %struct.hwrm_ver_get_output* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.hwrm_ver_get_output*, %struct.hwrm_ver_get_output** %3, align 8
  %72 = getelementptr inbounds %struct.hwrm_ver_get_output, %struct.hwrm_ver_get_output* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.hwrm_ver_get_output*, %struct.hwrm_ver_get_output** %3, align 8
  %75 = getelementptr inbounds %struct.hwrm_ver_get_output, %struct.hwrm_ver_get_output* %74, i32 0, i32 5
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.hwrm_ver_get_output*, %struct.hwrm_ver_get_output** %3, align 8
  %78 = getelementptr inbounds %struct.hwrm_ver_get_output, %struct.hwrm_ver_get_output* %77, i32 0, i32 6
  %79 = load i32, i32* %78, align 8
  %80 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %66, i32 %67, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %70, i32 %73, i32 %76, i32 %79)
  %81 = load %struct.hwrm_ver_get_output*, %struct.hwrm_ver_get_output** %3, align 8
  %82 = getelementptr inbounds %struct.hwrm_ver_get_output, %struct.hwrm_ver_get_output* %81, i32 0, i32 7
  %83 = load i8*, i8** %82, align 8
  %84 = call i32 @strlen(i8* %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %110

86:                                               ; preds = %63
  %87 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %88 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %87, i32 0, i32 1
  %89 = load i8*, i8** %88, align 8
  %90 = call i32 @strlen(i8* %89)
  store i32 %90, i32* %6, align 4
  %91 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %92 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %91, i32 0, i32 1
  %93 = load i8*, i8** %92, align 8
  %94 = load i32, i32* %6, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i8, i8* %93, i64 %95
  %97 = load i32, i32* @FW_VER_STR_LEN, align 4
  %98 = load i32, i32* %6, align 4
  %99 = sub nsw i32 %97, %98
  %100 = sub nsw i32 %99, 1
  %101 = load %struct.hwrm_ver_get_output*, %struct.hwrm_ver_get_output** %3, align 8
  %102 = getelementptr inbounds %struct.hwrm_ver_get_output, %struct.hwrm_ver_get_output* %101, i32 0, i32 7
  %103 = load i8*, i8** %102, align 8
  %104 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %96, i32 %100, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* %103)
  %105 = load i32, i32* @BNXT_FW_CAP_PKG_VER, align 4
  %106 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %107 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %106, i32 0, i32 4
  %108 = load i32, i32* %107, align 4
  %109 = or i32 %108, %105
  store i32 %109, i32* %107, align 4
  br label %110

110:                                              ; preds = %86, %63
  %111 = load %struct.hwrm_ver_get_output*, %struct.hwrm_ver_get_output** %3, align 8
  %112 = getelementptr inbounds %struct.hwrm_ver_get_output, %struct.hwrm_ver_get_output* %111, i32 0, i32 14
  %113 = load i32, i32* %112, align 8
  %114 = call i8* @le16_to_cpu(i32 %113)
  %115 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %116 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %115, i32 0, i32 8
  store i8* %114, i8** %116, align 8
  %117 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %118 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %117, i32 0, i32 8
  %119 = load i8*, i8** %118, align 8
  %120 = icmp ne i8* %119, null
  br i1 %120, label %125, label %121

121:                                              ; preds = %110
  %122 = load i8*, i8** @DFLT_HWRM_CMD_TIMEOUT, align 8
  %123 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %124 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %123, i32 0, i32 8
  store i8* %122, i8** %124, align 8
  br label %125

125:                                              ; preds = %121, %110
  %126 = load %struct.hwrm_ver_get_output*, %struct.hwrm_ver_get_output** %3, align 8
  %127 = getelementptr inbounds %struct.hwrm_ver_get_output, %struct.hwrm_ver_get_output* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = icmp sge i32 %128, 1
  br i1 %129, label %130, label %143

130:                                              ; preds = %125
  %131 = load %struct.hwrm_ver_get_output*, %struct.hwrm_ver_get_output** %3, align 8
  %132 = getelementptr inbounds %struct.hwrm_ver_get_output, %struct.hwrm_ver_get_output* %131, i32 0, i32 13
  %133 = load i32, i32* %132, align 4
  %134 = call i8* @le16_to_cpu(i32 %133)
  %135 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %136 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %135, i32 0, i32 7
  store i8* %134, i8** %136, align 8
  %137 = load %struct.hwrm_ver_get_output*, %struct.hwrm_ver_get_output** %3, align 8
  %138 = getelementptr inbounds %struct.hwrm_ver_get_output, %struct.hwrm_ver_get_output* %137, i32 0, i32 12
  %139 = load i32, i32* %138, align 8
  %140 = call i8* @le16_to_cpu(i32 %139)
  %141 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %142 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %141, i32 0, i32 2
  store i8* %140, i8** %142, align 8
  br label %143

143:                                              ; preds = %130, %125
  %144 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %145 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %144, i32 0, i32 2
  %146 = load i8*, i8** %145, align 8
  %147 = load i8*, i8** @HWRM_MAX_REQ_LEN, align 8
  %148 = icmp ult i8* %146, %147
  br i1 %148, label %149, label %153

149:                                              ; preds = %143
  %150 = load i8*, i8** @HWRM_MAX_REQ_LEN, align 8
  %151 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %152 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %151, i32 0, i32 2
  store i8* %150, i8** %152, align 8
  br label %153

153:                                              ; preds = %149, %143
  %154 = load %struct.hwrm_ver_get_output*, %struct.hwrm_ver_get_output** %3, align 8
  %155 = getelementptr inbounds %struct.hwrm_ver_get_output, %struct.hwrm_ver_get_output* %154, i32 0, i32 11
  %156 = load i32, i32* %155, align 4
  %157 = call i8* @le16_to_cpu(i32 %156)
  %158 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %159 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %158, i32 0, i32 6
  store i8* %157, i8** %159, align 8
  %160 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %161 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %160, i32 0, i32 6
  %162 = load i8*, i8** %161, align 8
  %163 = load i8*, i8** @CHIP_NUM_58700, align 8
  %164 = icmp eq i8* %162, %163
  br i1 %164, label %165, label %181

165:                                              ; preds = %153
  %166 = load %struct.hwrm_ver_get_output*, %struct.hwrm_ver_get_output** %3, align 8
  %167 = getelementptr inbounds %struct.hwrm_ver_get_output, %struct.hwrm_ver_get_output* %166, i32 0, i32 10
  %168 = load i32, i32* %167, align 8
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %181, label %170

170:                                              ; preds = %165
  %171 = load %struct.hwrm_ver_get_output*, %struct.hwrm_ver_get_output** %3, align 8
  %172 = getelementptr inbounds %struct.hwrm_ver_get_output, %struct.hwrm_ver_get_output* %171, i32 0, i32 9
  %173 = load i32, i32* %172, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %181, label %175

175:                                              ; preds = %170
  %176 = load i32, i32* @BNXT_FLAG_CHIP_NITRO_A0, align 4
  %177 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %178 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %177, i32 0, i32 5
  %179 = load i32, i32* %178, align 8
  %180 = or i32 %179, %176
  store i32 %180, i32* %178, align 8
  br label %181

181:                                              ; preds = %175, %170, %165, %153
  %182 = load %struct.hwrm_ver_get_output*, %struct.hwrm_ver_get_output** %3, align 8
  %183 = getelementptr inbounds %struct.hwrm_ver_get_output, %struct.hwrm_ver_get_output* %182, i32 0, i32 8
  %184 = load i32, i32* %183, align 8
  %185 = call i32 @le32_to_cpu(i32 %184)
  store i32 %185, i32* %4, align 4
  %186 = load i32, i32* %4, align 4
  %187 = load i32, i32* @VER_GET_RESP_DEV_CAPS_CFG_SHORT_CMD_SUPPORTED, align 4
  %188 = and i32 %186, %187
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %201

190:                                              ; preds = %181
  %191 = load i32, i32* %4, align 4
  %192 = load i32, i32* @VER_GET_RESP_DEV_CAPS_CFG_SHORT_CMD_REQUIRED, align 4
  %193 = and i32 %191, %192
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %201

195:                                              ; preds = %190
  %196 = load i32, i32* @BNXT_FW_CAP_SHORT_CMD, align 4
  %197 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %198 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %197, i32 0, i32 4
  %199 = load i32, i32* %198, align 4
  %200 = or i32 %199, %196
  store i32 %200, i32* %198, align 4
  br label %201

201:                                              ; preds = %195, %190, %181
  %202 = load i32, i32* %4, align 4
  %203 = load i32, i32* @VER_GET_RESP_DEV_CAPS_CFG_KONG_MB_CHNL_SUPPORTED, align 4
  %204 = and i32 %202, %203
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %212

206:                                              ; preds = %201
  %207 = load i32, i32* @BNXT_FW_CAP_KONG_MB_CHNL, align 4
  %208 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %209 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %208, i32 0, i32 4
  %210 = load i32, i32* %209, align 4
  %211 = or i32 %210, %207
  store i32 %211, i32* %209, align 4
  br label %212

212:                                              ; preds = %206, %201
  %213 = load i32, i32* %4, align 4
  %214 = load i32, i32* @VER_GET_RESP_DEV_CAPS_CFG_FLOW_HANDLE_64BIT_SUPPORTED, align 4
  %215 = and i32 %213, %214
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %223

217:                                              ; preds = %212
  %218 = load i32, i32* @BNXT_FW_CAP_OVS_64BIT_HANDLE, align 4
  %219 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %220 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %219, i32 0, i32 4
  %221 = load i32, i32* %220, align 4
  %222 = or i32 %221, %218
  store i32 %222, i32* %220, align 4
  br label %223

223:                                              ; preds = %217, %212
  %224 = load i32, i32* %4, align 4
  %225 = load i32, i32* @VER_GET_RESP_DEV_CAPS_CFG_TRUSTED_VF_SUPPORTED, align 4
  %226 = and i32 %224, %225
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %234

228:                                              ; preds = %223
  %229 = load i32, i32* @BNXT_FW_CAP_TRUSTED_VF, align 4
  %230 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %231 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %230, i32 0, i32 4
  %232 = load i32, i32* %231, align 4
  %233 = or i32 %232, %229
  store i32 %233, i32* %231, align 4
  br label %234

234:                                              ; preds = %228, %223
  %235 = load i32, i32* %4, align 4
  %236 = load i32, i32* @VER_GET_RESP_DEV_CAPS_CFG_CFA_ADV_FLOW_MGNT_SUPPORTED, align 4
  %237 = and i32 %235, %236
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %245

239:                                              ; preds = %234
  %240 = load i32, i32* @BNXT_FW_CAP_CFA_ADV_FLOW, align 4
  %241 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %242 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %241, i32 0, i32 4
  %243 = load i32, i32* %242, align 4
  %244 = or i32 %243, %240
  store i32 %244, i32* %242, align 4
  br label %245

245:                                              ; preds = %239, %234
  br label %246

246:                                              ; preds = %245, %20
  %247 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %248 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %247, i32 0, i32 3
  %249 = call i32 @mutex_unlock(i32* %248)
  %250 = load i32, i32* %5, align 4
  ret i32 %250
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @__bnxt_hwrm_ver_get(%struct.bnxt*, i32) #1

declare dso_local i32 @memcpy(i32*, %struct.hwrm_ver_get_output*, i32) #1

declare dso_local i32 @netdev_warn(i32, i8*, ...) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @le16_to_cpu(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
