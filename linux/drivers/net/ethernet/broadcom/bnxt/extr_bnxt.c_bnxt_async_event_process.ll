; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_async_event_process.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_async_event_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt = type { i32, i32, i32, %struct.bnxt_fw_health*, i32, i32, i32, i32, %struct.TYPE_2__, %struct.bnxt_link_info }
%struct.bnxt_fw_health = type { i32, i8*, i8*, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.bnxt_link_info = type { i32, i32 }
%struct.hwrm_async_event_cmpl = type { i32, i32, i32, i32 }

@BNXT_AUTONEG_SPEED = common dso_local global i32 0, align 4
@SPEED_UNKNOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Link speed %d no longer supported\0A\00", align 1
@BNXT_LINK_SPEED_CHNG_SP_EVENT = common dso_local global i32 0, align 4
@BNXT_LINK_CHNG_SP_EVENT = common dso_local global i32 0, align 4
@BNXT_HWRM_PF_UNLOAD_SP_EVENT = common dso_local global i32 0, align 4
@BNXT_HWRM_PORT_MODULE_SP_EVENT = common dso_local global i32 0, align 4
@BNXT_RESET_TASK_SILENT_SP_EVENT = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@BNXT_DFLT_FW_RST_MIN_DSECS = common dso_local global i32 0, align 4
@BNXT_DFLT_FW_RST_MAX_DSECS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Firmware fatal reset event received\0A\00", align 1
@BNXT_STATE_FW_FATAL_COND = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [64 x i8] c"Firmware non-fatal reset event received, max wait time %d msec\0A\00", align 1
@BNXT_FW_RESET_NOTIFY_SP_EVENT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [93 x i8] c"Error recovery info: error recovery[%d], master[%d], reset count[0x%x], health status: 0x%x\0A\00", align 1
@BNXT_FW_RESET_CNT_REG = common dso_local global i32 0, align 4
@BNXT_FW_HEALTH_REG = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@BNXT_FW_HEARTBEAT_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnxt*, %struct.hwrm_async_event_cmpl*)* @bnxt_async_event_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnxt_async_event_process(%struct.bnxt* %0, %struct.hwrm_async_event_cmpl* %1) #0 {
  %3 = alloca %struct.bnxt*, align 8
  %4 = alloca %struct.hwrm_async_event_cmpl*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.bnxt_link_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.bnxt_fw_health*, align 8
  %14 = alloca i32, align 4
  store %struct.bnxt* %0, %struct.bnxt** %3, align 8
  store %struct.hwrm_async_event_cmpl* %1, %struct.hwrm_async_event_cmpl** %4, align 8
  %15 = load %struct.hwrm_async_event_cmpl*, %struct.hwrm_async_event_cmpl** %4, align 8
  %16 = getelementptr inbounds %struct.hwrm_async_event_cmpl, %struct.hwrm_async_event_cmpl* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = call i8* @le16_to_cpu(i32 %17)
  %19 = ptrtoint i8* %18 to i32
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  switch i32 %20, label %246 [
    i32 133, label %21
    i32 132, label %64
    i32 131, label %69
    i32 130, label %74
    i32 128, label %98
    i32 129, label %108
    i32 134, label %172
  ]

21:                                               ; preds = %2
  %22 = load %struct.hwrm_async_event_cmpl*, %struct.hwrm_async_event_cmpl** %4, align 8
  %23 = getelementptr inbounds %struct.hwrm_async_event_cmpl, %struct.hwrm_async_event_cmpl* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @le32_to_cpu(i32 %24)
  store i32 %25, i32* %6, align 4
  %26 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %27 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %26, i32 0, i32 9
  store %struct.bnxt_link_info* %27, %struct.bnxt_link_info** %7, align 8
  %28 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %29 = call i32 @BNXT_VF(%struct.bnxt* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %21
  br label %250

32:                                               ; preds = %21
  %33 = load %struct.bnxt_link_info*, %struct.bnxt_link_info** %7, align 8
  %34 = getelementptr inbounds %struct.bnxt_link_info, %struct.bnxt_link_info* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @BNXT_AUTONEG_SPEED, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %59, label %39

39:                                               ; preds = %32
  %40 = load i32, i32* %6, align 4
  %41 = and i32 %40, 131072
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %59

43:                                               ; preds = %39
  %44 = load %struct.bnxt_link_info*, %struct.bnxt_link_info** %7, align 8
  %45 = getelementptr inbounds %struct.bnxt_link_info, %struct.bnxt_link_info* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @bnxt_fw_to_ethtool_speed(i32 %47)
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* @SPEED_UNKNOWN, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %52, label %58

52:                                               ; preds = %43
  %53 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %54 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* %9, align 4
  %57 = call i32 (i32, i8*, ...) @netdev_warn(i32 %55, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %56)
  br label %58

58:                                               ; preds = %52, %43
  br label %59

59:                                               ; preds = %58, %39, %32
  %60 = load i32, i32* @BNXT_LINK_SPEED_CHNG_SP_EVENT, align 4
  %61 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %62 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %61, i32 0, i32 4
  %63 = call i32 @set_bit(i32 %60, i32* %62)
  br label %64

64:                                               ; preds = %2, %59
  %65 = load i32, i32* @BNXT_LINK_CHNG_SP_EVENT, align 4
  %66 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %67 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %66, i32 0, i32 4
  %68 = call i32 @set_bit(i32 %65, i32* %67)
  br label %247

69:                                               ; preds = %2
  %70 = load i32, i32* @BNXT_HWRM_PF_UNLOAD_SP_EVENT, align 4
  %71 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %72 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %71, i32 0, i32 4
  %73 = call i32 @set_bit(i32 %70, i32* %72)
  br label %247

74:                                               ; preds = %2
  %75 = load %struct.hwrm_async_event_cmpl*, %struct.hwrm_async_event_cmpl** %4, align 8
  %76 = getelementptr inbounds %struct.hwrm_async_event_cmpl, %struct.hwrm_async_event_cmpl* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @le32_to_cpu(i32 %77)
  store i32 %78, i32* %10, align 4
  %79 = load i32, i32* %10, align 4
  %80 = call i32 @BNXT_GET_EVENT_PORT(i32 %79)
  store i32 %80, i32* %11, align 4
  %81 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %82 = call i32 @BNXT_VF(%struct.bnxt* %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %74
  br label %247

85:                                               ; preds = %74
  %86 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %87 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %86, i32 0, i32 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* %11, align 4
  %91 = icmp ne i32 %89, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %85
  br label %247

93:                                               ; preds = %85
  %94 = load i32, i32* @BNXT_HWRM_PORT_MODULE_SP_EVENT, align 4
  %95 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %96 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %95, i32 0, i32 4
  %97 = call i32 @set_bit(i32 %94, i32* %96)
  br label %247

98:                                               ; preds = %2
  %99 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %100 = call i32 @BNXT_PF(%struct.bnxt* %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %98
  br label %250

103:                                              ; preds = %98
  %104 = load i32, i32* @BNXT_RESET_TASK_SILENT_SP_EVENT, align 4
  %105 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %106 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %105, i32 0, i32 4
  %107 = call i32 @set_bit(i32 %104, i32* %106)
  br label %247

108:                                              ; preds = %2
  %109 = load %struct.hwrm_async_event_cmpl*, %struct.hwrm_async_event_cmpl** %4, align 8
  %110 = getelementptr inbounds %struct.hwrm_async_event_cmpl, %struct.hwrm_async_event_cmpl* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @le32_to_cpu(i32 %111)
  store i32 %112, i32* %12, align 4
  %113 = load i32, i32* @jiffies, align 4
  %114 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %115 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %114, i32 0, i32 7
  store i32 %113, i32* %115, align 4
  %116 = load %struct.hwrm_async_event_cmpl*, %struct.hwrm_async_event_cmpl** %4, align 8
  %117 = getelementptr inbounds %struct.hwrm_async_event_cmpl, %struct.hwrm_async_event_cmpl* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %120 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %119, i32 0, i32 6
  store i32 %118, i32* %120, align 8
  %121 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %122 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %121, i32 0, i32 6
  %123 = load i32, i32* %122, align 8
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %129, label %125

125:                                              ; preds = %108
  %126 = load i32, i32* @BNXT_DFLT_FW_RST_MIN_DSECS, align 4
  %127 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %128 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %127, i32 0, i32 6
  store i32 %126, i32* %128, align 8
  br label %129

129:                                              ; preds = %125, %108
  %130 = load %struct.hwrm_async_event_cmpl*, %struct.hwrm_async_event_cmpl** %4, align 8
  %131 = getelementptr inbounds %struct.hwrm_async_event_cmpl, %struct.hwrm_async_event_cmpl* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = call i8* @le16_to_cpu(i32 %132)
  %134 = ptrtoint i8* %133 to i32
  %135 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %136 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %135, i32 0, i32 0
  store i32 %134, i32* %136, align 8
  %137 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %138 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %145, label %141

141:                                              ; preds = %129
  %142 = load i32, i32* @BNXT_DFLT_FW_RST_MAX_DSECS, align 4
  %143 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %144 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %143, i32 0, i32 0
  store i32 %142, i32* %144, align 8
  br label %145

145:                                              ; preds = %141, %129
  %146 = load i32, i32* %12, align 4
  %147 = call i32 @EVENT_DATA1_RESET_NOTIFY_FATAL(i32 %146)
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %158

149:                                              ; preds = %145
  %150 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %151 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 8
  %153 = call i32 (i32, i8*, ...) @netdev_warn(i32 %152, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %154 = load i32, i32* @BNXT_STATE_FW_FATAL_COND, align 4
  %155 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %156 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %155, i32 0, i32 5
  %157 = call i32 @set_bit(i32 %154, i32* %156)
  br label %167

158:                                              ; preds = %145
  %159 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %160 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 8
  %162 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %163 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = mul nsw i32 %164, 100
  %166 = call i32 (i32, i8*, ...) @netdev_warn(i32 %161, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.2, i64 0, i64 0), i32 %165)
  br label %167

167:                                              ; preds = %158, %149
  %168 = load i32, i32* @BNXT_FW_RESET_NOTIFY_SP_EVENT, align 4
  %169 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %170 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %169, i32 0, i32 4
  %171 = call i32 @set_bit(i32 %168, i32* %170)
  br label %247

172:                                              ; preds = %2
  %173 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %174 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %173, i32 0, i32 3
  %175 = load %struct.bnxt_fw_health*, %struct.bnxt_fw_health** %174, align 8
  store %struct.bnxt_fw_health* %175, %struct.bnxt_fw_health** %13, align 8
  %176 = load %struct.hwrm_async_event_cmpl*, %struct.hwrm_async_event_cmpl** %4, align 8
  %177 = getelementptr inbounds %struct.hwrm_async_event_cmpl, %struct.hwrm_async_event_cmpl* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = call i32 @le32_to_cpu(i32 %178)
  store i32 %179, i32* %14, align 4
  %180 = load %struct.bnxt_fw_health*, %struct.bnxt_fw_health** %13, align 8
  %181 = icmp ne %struct.bnxt_fw_health* %180, null
  br i1 %181, label %183, label %182

182:                                              ; preds = %172
  br label %250

183:                                              ; preds = %172
  %184 = load i32, i32* %14, align 4
  %185 = call i32 @EVENT_DATA1_RECOVERY_ENABLED(i32 %184)
  %186 = load %struct.bnxt_fw_health*, %struct.bnxt_fw_health** %13, align 8
  %187 = getelementptr inbounds %struct.bnxt_fw_health, %struct.bnxt_fw_health* %186, i32 0, i32 6
  store i32 %185, i32* %187, align 4
  %188 = load i32, i32* %14, align 4
  %189 = call i32 @EVENT_DATA1_RECOVERY_MASTER_FUNC(i32 %188)
  %190 = load %struct.bnxt_fw_health*, %struct.bnxt_fw_health** %13, align 8
  %191 = getelementptr inbounds %struct.bnxt_fw_health, %struct.bnxt_fw_health* %190, i32 0, i32 5
  store i32 %189, i32* %191, align 8
  %192 = load %struct.bnxt_fw_health*, %struct.bnxt_fw_health** %13, align 8
  %193 = getelementptr inbounds %struct.bnxt_fw_health, %struct.bnxt_fw_health* %192, i32 0, i32 6
  %194 = load i32, i32* %193, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %197, label %196

196:                                              ; preds = %183
  br label %247

197:                                              ; preds = %183
  %198 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %199 = call i32 @netif_msg_drv(%struct.bnxt* %198)
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %218

201:                                              ; preds = %197
  %202 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %203 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %202, i32 0, i32 2
  %204 = load i32, i32* %203, align 8
  %205 = load %struct.bnxt_fw_health*, %struct.bnxt_fw_health** %13, align 8
  %206 = getelementptr inbounds %struct.bnxt_fw_health, %struct.bnxt_fw_health* %205, i32 0, i32 6
  %207 = load i32, i32* %206, align 4
  %208 = load %struct.bnxt_fw_health*, %struct.bnxt_fw_health** %13, align 8
  %209 = getelementptr inbounds %struct.bnxt_fw_health, %struct.bnxt_fw_health* %208, i32 0, i32 5
  %210 = load i32, i32* %209, align 8
  %211 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %212 = load i32, i32* @BNXT_FW_RESET_CNT_REG, align 4
  %213 = call i8* @bnxt_fw_health_readl(%struct.bnxt* %211, i32 %212)
  %214 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %215 = load i32, i32* @BNXT_FW_HEALTH_REG, align 4
  %216 = call i8* @bnxt_fw_health_readl(%struct.bnxt* %214, i32 %215)
  %217 = call i32 @netdev_info(i32 %204, i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.3, i64 0, i64 0), i32 %207, i32 %210, i8* %213, i8* %216)
  br label %218

218:                                              ; preds = %201, %197
  %219 = load %struct.bnxt_fw_health*, %struct.bnxt_fw_health** %13, align 8
  %220 = getelementptr inbounds %struct.bnxt_fw_health, %struct.bnxt_fw_health* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = load i32, i32* @HZ, align 4
  %223 = mul nsw i32 %221, %222
  %224 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %225 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %224, i32 0, i32 1
  %226 = load i32, i32* %225, align 4
  %227 = mul nsw i32 %226, 10
  %228 = call i32 @DIV_ROUND_UP(i32 %223, i32 %227)
  %229 = load %struct.bnxt_fw_health*, %struct.bnxt_fw_health** %13, align 8
  %230 = getelementptr inbounds %struct.bnxt_fw_health, %struct.bnxt_fw_health* %229, i32 0, i32 3
  store i32 %228, i32* %230, align 8
  %231 = load %struct.bnxt_fw_health*, %struct.bnxt_fw_health** %13, align 8
  %232 = getelementptr inbounds %struct.bnxt_fw_health, %struct.bnxt_fw_health* %231, i32 0, i32 3
  %233 = load i32, i32* %232, align 8
  %234 = load %struct.bnxt_fw_health*, %struct.bnxt_fw_health** %13, align 8
  %235 = getelementptr inbounds %struct.bnxt_fw_health, %struct.bnxt_fw_health* %234, i32 0, i32 4
  store i32 %233, i32* %235, align 4
  %236 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %237 = load i32, i32* @BNXT_FW_HEARTBEAT_REG, align 4
  %238 = call i8* @bnxt_fw_health_readl(%struct.bnxt* %236, i32 %237)
  %239 = load %struct.bnxt_fw_health*, %struct.bnxt_fw_health** %13, align 8
  %240 = getelementptr inbounds %struct.bnxt_fw_health, %struct.bnxt_fw_health* %239, i32 0, i32 2
  store i8* %238, i8** %240, align 8
  %241 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %242 = load i32, i32* @BNXT_FW_RESET_CNT_REG, align 4
  %243 = call i8* @bnxt_fw_health_readl(%struct.bnxt* %241, i32 %242)
  %244 = load %struct.bnxt_fw_health*, %struct.bnxt_fw_health** %13, align 8
  %245 = getelementptr inbounds %struct.bnxt_fw_health, %struct.bnxt_fw_health* %244, i32 0, i32 1
  store i8* %243, i8** %245, align 8
  br label %250

246:                                              ; preds = %2
  br label %250

247:                                              ; preds = %196, %167, %103, %93, %92, %84, %69, %64
  %248 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %249 = call i32 @bnxt_queue_sp_work(%struct.bnxt* %248)
  br label %250

250:                                              ; preds = %247, %246, %218, %182, %102, %31
  %251 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %252 = load %struct.hwrm_async_event_cmpl*, %struct.hwrm_async_event_cmpl** %4, align 8
  %253 = call i32 @bnxt_ulp_async_events(%struct.bnxt* %251, %struct.hwrm_async_event_cmpl* %252)
  ret i32 0
}

declare dso_local i8* @le16_to_cpu(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @BNXT_VF(%struct.bnxt*) #1

declare dso_local i32 @bnxt_fw_to_ethtool_speed(i32) #1

declare dso_local i32 @netdev_warn(i32, i8*, ...) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @BNXT_GET_EVENT_PORT(i32) #1

declare dso_local i32 @BNXT_PF(%struct.bnxt*) #1

declare dso_local i32 @EVENT_DATA1_RESET_NOTIFY_FATAL(i32) #1

declare dso_local i32 @EVENT_DATA1_RECOVERY_ENABLED(i32) #1

declare dso_local i32 @EVENT_DATA1_RECOVERY_MASTER_FUNC(i32) #1

declare dso_local i32 @netif_msg_drv(%struct.bnxt*) #1

declare dso_local i32 @netdev_info(i32, i8*, i32, i32, i8*, i8*) #1

declare dso_local i8* @bnxt_fw_health_readl(%struct.bnxt*, i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @bnxt_queue_sp_work(%struct.bnxt*) #1

declare dso_local i32 @bnxt_ulp_async_events(%struct.bnxt*, %struct.hwrm_async_event_cmpl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
