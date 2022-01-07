; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_bcm2835.c_bcm2835_finish_command.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_bcm2835.c_bcm2835_finish_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm2835_host = type { i64, i64, %struct.mmc_command*, %struct.TYPE_4__*, i32, i64, i64, %struct.TYPE_3__* }
%struct.mmc_command = type { i64, i32, i8**, i32 }
%struct.TYPE_4__ = type { %struct.mmc_command*, i32, %struct.mmc_command* }
%struct.TYPE_3__ = type { %struct.device }
%struct.device = type { i32 }

@SDCMD_NEW_FLAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"command never completed.\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@SDCMD_FAIL_FLAG = common dso_local global i32 0, align 4
@SDHSTS = common dso_local global i64 0, align 8
@SDHSTS_ERROR_MASK = common dso_local global i32 0, align 4
@SDHSTS_CRC7_ERROR = common dso_local global i32 0, align 4
@MMC_SEND_OP_COND = common dso_local global i64 0, align 8
@SDHSTS_CMD_TIME_OUT = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"unexpected command %d error\0A\00", align 1
@EILSEQ = common dso_local global i32 0, align 4
@SDEDM = common dso_local global i64 0, align 8
@SDEDM_FSM_MASK = common dso_local global i32 0, align 4
@SDEDM_FSM_READWAIT = common dso_local global i32 0, align 4
@SDEDM_FSM_WRITESTART1 = common dso_local global i32 0, align 4
@SDEDM_FORCE_DATA_MODE = common dso_local global i32 0, align 4
@MMC_RSP_PRESENT = common dso_local global i32 0, align 4
@MMC_RSP_136 = common dso_local global i32 0, align 4
@SDRSP0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bcm2835_host*)* @bcm2835_finish_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcm2835_finish_command(%struct.bcm2835_host* %0) #0 {
  %2 = alloca %struct.bcm2835_host*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.mmc_command*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.bcm2835_host* %0, %struct.bcm2835_host** %2, align 8
  %10 = load %struct.bcm2835_host*, %struct.bcm2835_host** %2, align 8
  %11 = getelementptr inbounds %struct.bcm2835_host, %struct.bcm2835_host* %10, i32 0, i32 7
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  store %struct.device* %13, %struct.device** %3, align 8
  %14 = load %struct.bcm2835_host*, %struct.bcm2835_host** %2, align 8
  %15 = getelementptr inbounds %struct.bcm2835_host, %struct.bcm2835_host* %14, i32 0, i32 2
  %16 = load %struct.mmc_command*, %struct.mmc_command** %15, align 8
  store %struct.mmc_command* %16, %struct.mmc_command** %4, align 8
  %17 = load %struct.bcm2835_host*, %struct.bcm2835_host** %2, align 8
  %18 = call i32 @bcm2835_read_wait_sdcmd(%struct.bcm2835_host* %17, i32 100)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @SDCMD_NEW_FLAG, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %36

23:                                               ; preds = %1
  %24 = load %struct.device*, %struct.device** %3, align 8
  %25 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %24, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %26 = load %struct.bcm2835_host*, %struct.bcm2835_host** %2, align 8
  %27 = call i32 @bcm2835_dumpregs(%struct.bcm2835_host* %26)
  %28 = load i32, i32* @EIO, align 4
  %29 = sub nsw i32 0, %28
  %30 = load %struct.bcm2835_host*, %struct.bcm2835_host** %2, align 8
  %31 = getelementptr inbounds %struct.bcm2835_host, %struct.bcm2835_host* %30, i32 0, i32 2
  %32 = load %struct.mmc_command*, %struct.mmc_command** %31, align 8
  %33 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %32, i32 0, i32 3
  store i32 %29, i32* %33, align 8
  %34 = load %struct.bcm2835_host*, %struct.bcm2835_host** %2, align 8
  %35 = call i32 @bcm2835_finish_request(%struct.bcm2835_host* %34)
  br label %254

36:                                               ; preds = %1
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @SDCMD_FAIL_FLAG, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %128

41:                                               ; preds = %36
  %42 = load %struct.bcm2835_host*, %struct.bcm2835_host** %2, align 8
  %43 = getelementptr inbounds %struct.bcm2835_host, %struct.bcm2835_host* %42, i32 0, i32 6
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @SDHSTS, align 8
  %46 = add nsw i64 %44, %45
  %47 = call i8* @readl(i64 %46)
  %48 = ptrtoint i8* %47 to i32
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* @SDHSTS_ERROR_MASK, align 4
  %50 = load %struct.bcm2835_host*, %struct.bcm2835_host** %2, align 8
  %51 = getelementptr inbounds %struct.bcm2835_host, %struct.bcm2835_host* %50, i32 0, i32 6
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @SDHSTS, align 8
  %54 = add nsw i64 %52, %53
  %55 = call i32 @writel(i32 %49, i64 %54)
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* @SDHSTS_CRC7_ERROR, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %68

60:                                               ; preds = %41
  %61 = load %struct.bcm2835_host*, %struct.bcm2835_host** %2, align 8
  %62 = getelementptr inbounds %struct.bcm2835_host, %struct.bcm2835_host* %61, i32 0, i32 2
  %63 = load %struct.mmc_command*, %struct.mmc_command** %62, align 8
  %64 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @MMC_SEND_OP_COND, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %127

68:                                               ; preds = %60, %41
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* @SDHSTS_CMD_TIME_OUT, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %68
  %74 = load i32, i32* @ETIMEDOUT, align 4
  %75 = sub nsw i32 0, %74
  %76 = load %struct.bcm2835_host*, %struct.bcm2835_host** %2, align 8
  %77 = getelementptr inbounds %struct.bcm2835_host, %struct.bcm2835_host* %76, i32 0, i32 2
  %78 = load %struct.mmc_command*, %struct.mmc_command** %77, align 8
  %79 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %78, i32 0, i32 3
  store i32 %75, i32* %79, align 8
  br label %96

80:                                               ; preds = %68
  %81 = load %struct.device*, %struct.device** %3, align 8
  %82 = load %struct.bcm2835_host*, %struct.bcm2835_host** %2, align 8
  %83 = getelementptr inbounds %struct.bcm2835_host, %struct.bcm2835_host* %82, i32 0, i32 2
  %84 = load %struct.mmc_command*, %struct.mmc_command** %83, align 8
  %85 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %81, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i64 %86)
  %88 = load %struct.bcm2835_host*, %struct.bcm2835_host** %2, align 8
  %89 = call i32 @bcm2835_dumpregs(%struct.bcm2835_host* %88)
  %90 = load i32, i32* @EILSEQ, align 4
  %91 = sub nsw i32 0, %90
  %92 = load %struct.bcm2835_host*, %struct.bcm2835_host** %2, align 8
  %93 = getelementptr inbounds %struct.bcm2835_host, %struct.bcm2835_host* %92, i32 0, i32 2
  %94 = load %struct.mmc_command*, %struct.mmc_command** %93, align 8
  %95 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %94, i32 0, i32 3
  store i32 %91, i32* %95, align 8
  br label %96

96:                                               ; preds = %80, %73
  %97 = load %struct.bcm2835_host*, %struct.bcm2835_host** %2, align 8
  %98 = getelementptr inbounds %struct.bcm2835_host, %struct.bcm2835_host* %97, i32 0, i32 6
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @SDEDM, align 8
  %101 = add nsw i64 %99, %100
  %102 = call i8* @readl(i64 %101)
  %103 = ptrtoint i8* %102 to i32
  store i32 %103, i32* %7, align 4
  %104 = load i32, i32* %7, align 4
  %105 = load i32, i32* @SDEDM_FSM_MASK, align 4
  %106 = and i32 %104, %105
  store i32 %106, i32* %8, align 4
  %107 = load i32, i32* %8, align 4
  %108 = load i32, i32* @SDEDM_FSM_READWAIT, align 4
  %109 = icmp eq i32 %107, %108
  br i1 %109, label %114, label %110

110:                                              ; preds = %96
  %111 = load i32, i32* %8, align 4
  %112 = load i32, i32* @SDEDM_FSM_WRITESTART1, align 4
  %113 = icmp eq i32 %111, %112
  br i1 %113, label %114, label %124

114:                                              ; preds = %110, %96
  %115 = load i32, i32* %7, align 4
  %116 = load i32, i32* @SDEDM_FORCE_DATA_MODE, align 4
  %117 = or i32 %115, %116
  %118 = load %struct.bcm2835_host*, %struct.bcm2835_host** %2, align 8
  %119 = getelementptr inbounds %struct.bcm2835_host, %struct.bcm2835_host* %118, i32 0, i32 6
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @SDEDM, align 8
  %122 = add nsw i64 %120, %121
  %123 = call i32 @writel(i32 %117, i64 %122)
  br label %124

124:                                              ; preds = %114, %110
  %125 = load %struct.bcm2835_host*, %struct.bcm2835_host** %2, align 8
  %126 = call i32 @bcm2835_finish_request(%struct.bcm2835_host* %125)
  br label %254

127:                                              ; preds = %60
  br label %128

128:                                              ; preds = %127, %36
  br label %129

129:                                              ; preds = %128
  %130 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %131 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* @MMC_RSP_PRESENT, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %181

136:                                              ; preds = %129
  %137 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %138 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* @MMC_RSP_136, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %169

143:                                              ; preds = %136
  store i32 0, i32* %9, align 4
  br label %144

144:                                              ; preds = %165, %143
  %145 = load i32, i32* %9, align 4
  %146 = icmp slt i32 %145, 4
  br i1 %146, label %147, label %168

147:                                              ; preds = %144
  %148 = load %struct.bcm2835_host*, %struct.bcm2835_host** %2, align 8
  %149 = getelementptr inbounds %struct.bcm2835_host, %struct.bcm2835_host* %148, i32 0, i32 6
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* @SDRSP0, align 8
  %152 = add nsw i64 %150, %151
  %153 = load i32, i32* %9, align 4
  %154 = mul nsw i32 %153, 4
  %155 = sext i32 %154 to i64
  %156 = add nsw i64 %152, %155
  %157 = call i8* @readl(i64 %156)
  %158 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %159 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %158, i32 0, i32 2
  %160 = load i8**, i8*** %159, align 8
  %161 = load i32, i32* %9, align 4
  %162 = sub nsw i32 3, %161
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i8*, i8** %160, i64 %163
  store i8* %157, i8** %164, align 8
  br label %165

165:                                              ; preds = %147
  %166 = load i32, i32* %9, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %9, align 4
  br label %144

168:                                              ; preds = %144
  br label %180

169:                                              ; preds = %136
  %170 = load %struct.bcm2835_host*, %struct.bcm2835_host** %2, align 8
  %171 = getelementptr inbounds %struct.bcm2835_host, %struct.bcm2835_host* %170, i32 0, i32 6
  %172 = load i64, i64* %171, align 8
  %173 = load i64, i64* @SDRSP0, align 8
  %174 = add nsw i64 %172, %173
  %175 = call i8* @readl(i64 %174)
  %176 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %177 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %176, i32 0, i32 2
  %178 = load i8**, i8*** %177, align 8
  %179 = getelementptr inbounds i8*, i8** %178, i64 0
  store i8* %175, i8** %179, align 8
  br label %180

180:                                              ; preds = %169, %168
  br label %181

181:                                              ; preds = %180, %129
  %182 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %183 = load %struct.bcm2835_host*, %struct.bcm2835_host** %2, align 8
  %184 = getelementptr inbounds %struct.bcm2835_host, %struct.bcm2835_host* %183, i32 0, i32 3
  %185 = load %struct.TYPE_4__*, %struct.TYPE_4__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %185, i32 0, i32 2
  %187 = load %struct.mmc_command*, %struct.mmc_command** %186, align 8
  %188 = icmp eq %struct.mmc_command* %182, %187
  br i1 %188, label %189, label %222

189:                                              ; preds = %181
  %190 = load %struct.bcm2835_host*, %struct.bcm2835_host** %2, align 8
  %191 = getelementptr inbounds %struct.bcm2835_host, %struct.bcm2835_host* %190, i32 0, i32 2
  store %struct.mmc_command* null, %struct.mmc_command** %191, align 8
  %192 = load %struct.bcm2835_host*, %struct.bcm2835_host** %2, align 8
  %193 = load %struct.bcm2835_host*, %struct.bcm2835_host** %2, align 8
  %194 = getelementptr inbounds %struct.bcm2835_host, %struct.bcm2835_host* %193, i32 0, i32 3
  %195 = load %struct.TYPE_4__*, %struct.TYPE_4__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 8
  %198 = call i64 @bcm2835_send_command(%struct.bcm2835_host* %192, i32 %197)
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %221

200:                                              ; preds = %189
  %201 = load %struct.bcm2835_host*, %struct.bcm2835_host** %2, align 8
  %202 = getelementptr inbounds %struct.bcm2835_host, %struct.bcm2835_host* %201, i32 0, i32 1
  %203 = load i64, i64* %202, align 8
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %213

205:                                              ; preds = %200
  %206 = load %struct.bcm2835_host*, %struct.bcm2835_host** %2, align 8
  %207 = getelementptr inbounds %struct.bcm2835_host, %struct.bcm2835_host* %206, i32 0, i32 5
  %208 = load i64, i64* %207, align 8
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %213

210:                                              ; preds = %205
  %211 = load %struct.bcm2835_host*, %struct.bcm2835_host** %2, align 8
  %212 = call i32 @bcm2835_start_dma(%struct.bcm2835_host* %211)
  br label %213

213:                                              ; preds = %210, %205, %200
  %214 = load %struct.bcm2835_host*, %struct.bcm2835_host** %2, align 8
  %215 = getelementptr inbounds %struct.bcm2835_host, %struct.bcm2835_host* %214, i32 0, i32 4
  %216 = load i32, i32* %215, align 8
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %220, label %218

218:                                              ; preds = %213
  %219 = load %struct.bcm2835_host*, %struct.bcm2835_host** %2, align 8
  call void @bcm2835_finish_command(%struct.bcm2835_host* %219)
  br label %220

220:                                              ; preds = %218, %213
  br label %221

221:                                              ; preds = %220, %189
  br label %254

222:                                              ; preds = %181
  %223 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %224 = load %struct.bcm2835_host*, %struct.bcm2835_host** %2, align 8
  %225 = getelementptr inbounds %struct.bcm2835_host, %struct.bcm2835_host* %224, i32 0, i32 3
  %226 = load %struct.TYPE_4__*, %struct.TYPE_4__** %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %226, i32 0, i32 0
  %228 = load %struct.mmc_command*, %struct.mmc_command** %227, align 8
  %229 = icmp eq %struct.mmc_command* %223, %228
  br i1 %229, label %230, label %233

230:                                              ; preds = %222
  %231 = load %struct.bcm2835_host*, %struct.bcm2835_host** %2, align 8
  %232 = call i32 @bcm2835_finish_request(%struct.bcm2835_host* %231)
  br label %253

233:                                              ; preds = %222
  %234 = load %struct.bcm2835_host*, %struct.bcm2835_host** %2, align 8
  %235 = getelementptr inbounds %struct.bcm2835_host, %struct.bcm2835_host* %234, i32 0, i32 2
  store %struct.mmc_command* null, %struct.mmc_command** %235, align 8
  %236 = load %struct.bcm2835_host*, %struct.bcm2835_host** %2, align 8
  %237 = getelementptr inbounds %struct.bcm2835_host, %struct.bcm2835_host* %236, i32 0, i32 1
  %238 = load i64, i64* %237, align 8
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %243, label %240

240:                                              ; preds = %233
  %241 = load %struct.bcm2835_host*, %struct.bcm2835_host** %2, align 8
  %242 = call i32 @bcm2835_finish_request(%struct.bcm2835_host* %241)
  br label %252

243:                                              ; preds = %233
  %244 = load %struct.bcm2835_host*, %struct.bcm2835_host** %2, align 8
  %245 = getelementptr inbounds %struct.bcm2835_host, %struct.bcm2835_host* %244, i32 0, i32 0
  %246 = load i64, i64* %245, align 8
  %247 = icmp ne i64 %246, 0
  br i1 %247, label %248, label %251

248:                                              ; preds = %243
  %249 = load %struct.bcm2835_host*, %struct.bcm2835_host** %2, align 8
  %250 = call i32 @bcm2835_transfer_complete(%struct.bcm2835_host* %249)
  br label %251

251:                                              ; preds = %248, %243
  br label %252

252:                                              ; preds = %251, %240
  br label %253

253:                                              ; preds = %252, %230
  br label %254

254:                                              ; preds = %23, %124, %253, %221
  ret void
}

declare dso_local i32 @bcm2835_read_wait_sdcmd(%struct.bcm2835_host*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @bcm2835_dumpregs(%struct.bcm2835_host*) #1

declare dso_local i32 @bcm2835_finish_request(%struct.bcm2835_host*) #1

declare dso_local i8* @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i64 @bcm2835_send_command(%struct.bcm2835_host*, i32) #1

declare dso_local i32 @bcm2835_start_dma(%struct.bcm2835_host*) #1

declare dso_local i32 @bcm2835_transfer_complete(%struct.bcm2835_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
