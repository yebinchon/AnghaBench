; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci.c_sdhci_send_command.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci.c_sdhci_send_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_host = type { i32, i64, i32, %struct.mmc_command*, %struct.mmc_command* }
%struct.mmc_command = type { i64, i32, i32, %struct.TYPE_5__*, i64, i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.mmc_command* }

@SDHCI_QUIRK2_STOP_WITH_TC = common dso_local global i32 0, align 4
@MMC_STOP_TRANSMISSION = common dso_local global i64 0, align 8
@MMC_RSP_BUSY = common dso_local global i32 0, align 4
@SDHCI_CMD_INHIBIT = common dso_local global i32 0, align 4
@SDHCI_DATA_INHIBIT = common dso_local global i32 0, align 4
@SDHCI_PRESENT_STATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"%s: Controller never released inhibit bit(s).\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@SDHCI_ARGUMENT = common dso_local global i32 0, align 4
@MMC_RSP_136 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"%s: Unsupported response type!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@MMC_RSP_PRESENT = common dso_local global i32 0, align 4
@SDHCI_CMD_RESP_NONE = common dso_local global i32 0, align 4
@SDHCI_CMD_RESP_LONG = common dso_local global i32 0, align 4
@SDHCI_CMD_RESP_SHORT_BUSY = common dso_local global i32 0, align 4
@SDHCI_CMD_RESP_SHORT = common dso_local global i32 0, align 4
@MMC_RSP_CRC = common dso_local global i32 0, align 4
@SDHCI_CMD_CRC = common dso_local global i32 0, align 4
@MMC_RSP_OPCODE = common dso_local global i32 0, align 4
@SDHCI_CMD_INDEX = common dso_local global i32 0, align 4
@MMC_SEND_TUNING_BLOCK = common dso_local global i64 0, align 8
@MMC_SEND_TUNING_BLOCK_HS200 = common dso_local global i64 0, align 8
@SDHCI_CMD_DATA = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@SDHCI_COMMAND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sdhci_send_command(%struct.sdhci_host* %0, %struct.mmc_command* %1) #0 {
  %3 = alloca %struct.sdhci_host*, align 8
  %4 = alloca %struct.mmc_command*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.sdhci_host* %0, %struct.sdhci_host** %3, align 8
  store %struct.mmc_command* %1, %struct.mmc_command** %4, align 8
  %8 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %9 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %8, i32 0, i32 4
  %10 = load %struct.mmc_command*, %struct.mmc_command** %9, align 8
  %11 = call i32 @WARN_ON(%struct.mmc_command* %10)
  %12 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %13 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %12, i32 0, i32 5
  store i32 0, i32* %13, align 8
  %14 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %15 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @SDHCI_QUIRK2_STOP_WITH_TC, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %32

20:                                               ; preds = %2
  %21 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %22 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @MMC_STOP_TRANSMISSION, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %20
  %27 = load i32, i32* @MMC_RSP_BUSY, align 4
  %28 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %29 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = or i32 %30, %27
  store i32 %31, i32* %29, align 8
  br label %32

32:                                               ; preds = %26, %20, %2
  store i64 10, i64* %7, align 8
  %33 = load i32, i32* @SDHCI_CMD_INHIBIT, align 4
  store i32 %33, i32* %6, align 4
  %34 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %35 = call i64 @sdhci_data_line_cmd(%struct.mmc_command* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = load i32, i32* @SDHCI_DATA_INHIBIT, align 4
  %39 = load i32, i32* %6, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %6, align 4
  br label %41

41:                                               ; preds = %37, %32
  %42 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %43 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %42, i32 0, i32 3
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = icmp ne %struct.TYPE_4__* %46, null
  br i1 %47, label %48, label %63

48:                                               ; preds = %41
  %49 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %50 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %51 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %50, i32 0, i32 3
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load %struct.mmc_command*, %struct.mmc_command** %55, align 8
  %57 = icmp eq %struct.mmc_command* %49, %56
  br i1 %57, label %58, label %63

58:                                               ; preds = %48
  %59 = load i32, i32* @SDHCI_DATA_INHIBIT, align 4
  %60 = xor i32 %59, -1
  %61 = load i32, i32* %6, align 4
  %62 = and i32 %61, %60
  store i32 %62, i32* %6, align 4
  br label %63

63:                                               ; preds = %58, %48, %41
  br label %64

64:                                               ; preds = %91, %63
  %65 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %66 = load i32, i32* @SDHCI_PRESENT_STATE, align 4
  %67 = call i32 @sdhci_readl(%struct.sdhci_host* %65, i32 %66)
  %68 = load i32, i32* %6, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %95

71:                                               ; preds = %64
  %72 = load i64, i64* %7, align 8
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %91

74:                                               ; preds = %71
  %75 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %76 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @mmc_hostname(i32 %77)
  %79 = call i32 @pr_err(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %78)
  %80 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %81 = call i32 @sdhci_dumpregs(%struct.sdhci_host* %80)
  %82 = load i32, i32* @EIO, align 4
  %83 = sub nsw i32 0, %82
  %84 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %85 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %84, i32 0, i32 5
  store i32 %83, i32* %85, align 8
  %86 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %87 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %88 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %87, i32 0, i32 3
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %88, align 8
  %90 = call i32 @sdhci_finish_mrq(%struct.sdhci_host* %86, %struct.TYPE_5__* %89)
  br label %280

91:                                               ; preds = %71
  %92 = load i64, i64* %7, align 8
  %93 = add i64 %92, -1
  store i64 %93, i64* %7, align 8
  %94 = call i32 @mdelay(i32 1)
  br label %64

95:                                               ; preds = %64
  %96 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %97 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %98 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %97, i32 0, i32 4
  store %struct.mmc_command* %96, %struct.mmc_command** %98, align 8
  %99 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %100 = call i64 @sdhci_data_line_cmd(%struct.mmc_command* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %110

102:                                              ; preds = %95
  %103 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %104 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %103, i32 0, i32 3
  %105 = load %struct.mmc_command*, %struct.mmc_command** %104, align 8
  %106 = call i32 @WARN_ON(%struct.mmc_command* %105)
  %107 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %108 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %109 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %108, i32 0, i32 3
  store %struct.mmc_command* %107, %struct.mmc_command** %109, align 8
  br label %110

110:                                              ; preds = %102, %95
  %111 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %112 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %113 = call i32 @sdhci_prepare_data(%struct.sdhci_host* %111, %struct.mmc_command* %112)
  %114 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %115 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %116 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %115, i32 0, i32 6
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @SDHCI_ARGUMENT, align 4
  %119 = call i32 @sdhci_writel(%struct.sdhci_host* %114, i32 %117, i32 %118)
  %120 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %121 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %122 = call i32 @sdhci_set_transfer_mode(%struct.sdhci_host* %120, %struct.mmc_command* %121)
  %123 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %124 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* @MMC_RSP_136, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %151

129:                                              ; preds = %110
  %130 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %131 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* @MMC_RSP_BUSY, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %151

136:                                              ; preds = %129
  %137 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %138 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 8
  %140 = call i32 @mmc_hostname(i32 %139)
  %141 = call i32 @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %140)
  %142 = load i32, i32* @EINVAL, align 4
  %143 = sub nsw i32 0, %142
  %144 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %145 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %144, i32 0, i32 5
  store i32 %143, i32* %145, align 8
  %146 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %147 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %148 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %147, i32 0, i32 3
  %149 = load %struct.TYPE_5__*, %struct.TYPE_5__** %148, align 8
  %150 = call i32 @sdhci_finish_mrq(%struct.sdhci_host* %146, %struct.TYPE_5__* %149)
  br label %280

151:                                              ; preds = %129, %110
  %152 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %153 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 8
  %155 = load i32, i32* @MMC_RSP_PRESENT, align 4
  %156 = and i32 %154, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %160, label %158

158:                                              ; preds = %151
  %159 = load i32, i32* @SDHCI_CMD_RESP_NONE, align 4
  store i32 %159, i32* %5, align 4
  br label %182

160:                                              ; preds = %151
  %161 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %162 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 8
  %164 = load i32, i32* @MMC_RSP_136, align 4
  %165 = and i32 %163, %164
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %169

167:                                              ; preds = %160
  %168 = load i32, i32* @SDHCI_CMD_RESP_LONG, align 4
  store i32 %168, i32* %5, align 4
  br label %181

169:                                              ; preds = %160
  %170 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %171 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 8
  %173 = load i32, i32* @MMC_RSP_BUSY, align 4
  %174 = and i32 %172, %173
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %178

176:                                              ; preds = %169
  %177 = load i32, i32* @SDHCI_CMD_RESP_SHORT_BUSY, align 4
  store i32 %177, i32* %5, align 4
  br label %180

178:                                              ; preds = %169
  %179 = load i32, i32* @SDHCI_CMD_RESP_SHORT, align 4
  store i32 %179, i32* %5, align 4
  br label %180

180:                                              ; preds = %178, %176
  br label %181

181:                                              ; preds = %180, %167
  br label %182

182:                                              ; preds = %181, %158
  %183 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %184 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 8
  %186 = load i32, i32* @MMC_RSP_CRC, align 4
  %187 = and i32 %185, %186
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %193

189:                                              ; preds = %182
  %190 = load i32, i32* @SDHCI_CMD_CRC, align 4
  %191 = load i32, i32* %5, align 4
  %192 = or i32 %191, %190
  store i32 %192, i32* %5, align 4
  br label %193

193:                                              ; preds = %189, %182
  %194 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %195 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 8
  %197 = load i32, i32* @MMC_RSP_OPCODE, align 4
  %198 = and i32 %196, %197
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %204

200:                                              ; preds = %193
  %201 = load i32, i32* @SDHCI_CMD_INDEX, align 4
  %202 = load i32, i32* %5, align 4
  %203 = or i32 %202, %201
  store i32 %203, i32* %5, align 4
  br label %204

204:                                              ; preds = %200, %193
  %205 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %206 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %205, i32 0, i32 4
  %207 = load i64, i64* %206, align 8
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %221, label %209

209:                                              ; preds = %204
  %210 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %211 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %210, i32 0, i32 0
  %212 = load i64, i64* %211, align 8
  %213 = load i64, i64* @MMC_SEND_TUNING_BLOCK, align 8
  %214 = icmp eq i64 %212, %213
  br i1 %214, label %221, label %215

215:                                              ; preds = %209
  %216 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %217 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %216, i32 0, i32 0
  %218 = load i64, i64* %217, align 8
  %219 = load i64, i64* @MMC_SEND_TUNING_BLOCK_HS200, align 8
  %220 = icmp eq i64 %218, %219
  br i1 %220, label %221, label %225

221:                                              ; preds = %215, %209, %204
  %222 = load i32, i32* @SDHCI_CMD_DATA, align 4
  %223 = load i32, i32* %5, align 4
  %224 = or i32 %223, %222
  store i32 %224, i32* %5, align 4
  br label %225

225:                                              ; preds = %221, %215
  %226 = load i64, i64* @jiffies, align 8
  store i64 %226, i64* %7, align 8
  %227 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %228 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %227, i32 0, i32 1
  %229 = load i64, i64* %228, align 8
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %238

231:                                              ; preds = %225
  %232 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %233 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %232, i32 0, i32 1
  %234 = load i64, i64* %233, align 8
  %235 = call i64 @nsecs_to_jiffies(i64 %234)
  %236 = load i64, i64* %7, align 8
  %237 = add i64 %236, %235
  store i64 %237, i64* %7, align 8
  br label %265

238:                                              ; preds = %225
  %239 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %240 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %239, i32 0, i32 4
  %241 = load i64, i64* %240, align 8
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %259, label %243

243:                                              ; preds = %238
  %244 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %245 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %244, i32 0, i32 2
  %246 = load i32, i32* %245, align 4
  %247 = icmp sgt i32 %246, 9000
  br i1 %247, label %248, label %259

248:                                              ; preds = %243
  %249 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %250 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %249, i32 0, i32 2
  %251 = load i32, i32* %250, align 4
  %252 = call i64 @DIV_ROUND_UP(i32 %251, i32 1000)
  %253 = load i64, i64* @HZ, align 8
  %254 = mul i64 %252, %253
  %255 = load i64, i64* @HZ, align 8
  %256 = add i64 %254, %255
  %257 = load i64, i64* %7, align 8
  %258 = add i64 %257, %256
  store i64 %258, i64* %7, align 8
  br label %264

259:                                              ; preds = %243, %238
  %260 = load i64, i64* @HZ, align 8
  %261 = mul i64 10, %260
  %262 = load i64, i64* %7, align 8
  %263 = add i64 %262, %261
  store i64 %263, i64* %7, align 8
  br label %264

264:                                              ; preds = %259, %248
  br label %265

265:                                              ; preds = %264, %231
  %266 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %267 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %268 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %267, i32 0, i32 3
  %269 = load %struct.TYPE_5__*, %struct.TYPE_5__** %268, align 8
  %270 = load i64, i64* %7, align 8
  %271 = call i32 @sdhci_mod_timer(%struct.sdhci_host* %266, %struct.TYPE_5__* %269, i64 %270)
  %272 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %273 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %274 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %273, i32 0, i32 0
  %275 = load i64, i64* %274, align 8
  %276 = load i32, i32* %5, align 4
  %277 = call i32 @SDHCI_MAKE_CMD(i64 %275, i32 %276)
  %278 = load i32, i32* @SDHCI_COMMAND, align 4
  %279 = call i32 @sdhci_writew(%struct.sdhci_host* %272, i32 %277, i32 %278)
  br label %280

280:                                              ; preds = %265, %136, %74
  ret void
}

declare dso_local i32 @WARN_ON(%struct.mmc_command*) #1

declare dso_local i64 @sdhci_data_line_cmd(%struct.mmc_command*) #1

declare dso_local i32 @sdhci_readl(%struct.sdhci_host*, i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @mmc_hostname(i32) #1

declare dso_local i32 @sdhci_dumpregs(%struct.sdhci_host*) #1

declare dso_local i32 @sdhci_finish_mrq(%struct.sdhci_host*, %struct.TYPE_5__*) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @sdhci_prepare_data(%struct.sdhci_host*, %struct.mmc_command*) #1

declare dso_local i32 @sdhci_writel(%struct.sdhci_host*, i32, i32) #1

declare dso_local i32 @sdhci_set_transfer_mode(%struct.sdhci_host*, %struct.mmc_command*) #1

declare dso_local i64 @nsecs_to_jiffies(i64) #1

declare dso_local i64 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @sdhci_mod_timer(%struct.sdhci_host*, %struct.TYPE_5__*, i64) #1

declare dso_local i32 @sdhci_writew(%struct.sdhci_host*, i32, i32) #1

declare dso_local i32 @SDHCI_MAKE_CMD(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
