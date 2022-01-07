; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sunxi-mmc.c_sunxi_mmc_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sunxi-mmc.c_sunxi_mmc_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32 }
%struct.mmc_request = type { %struct.mmc_command*, %struct.mmc_data* }
%struct.mmc_command = type { i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64 }
%struct.mmc_data = type { i32, i32, i32, i32, i32 }
%struct.sunxi_mmc_host = type { i32, i32, i32, i32, %struct.mmc_request*, i64 }

@SDXC_INTERRUPT_ERROR_BIT = common dso_local global i32 0, align 4
@SDXC_START = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"map DMA failed\0A\00", align 1
@MMC_GO_IDLE_STATE = common dso_local global i32 0, align 4
@SDXC_SEND_INIT_SEQUENCE = common dso_local global i32 0, align 4
@SDXC_COMMAND_DONE = common dso_local global i32 0, align 4
@MMC_RSP_PRESENT = common dso_local global i32 0, align 4
@SDXC_RESP_EXPIRE = common dso_local global i32 0, align 4
@MMC_RSP_136 = common dso_local global i32 0, align 4
@SDXC_LONG_RESPONSE = common dso_local global i32 0, align 4
@MMC_RSP_CRC = common dso_local global i32 0, align 4
@SDXC_CHECK_RESPONSE_CRC = common dso_local global i32 0, align 4
@MMC_CMD_MASK = common dso_local global i32 0, align 4
@MMC_CMD_ADTC = common dso_local global i32 0, align 4
@SDXC_DATA_EXPIRE = common dso_local global i32 0, align 4
@SDXC_WAIT_PRE_OVER = common dso_local global i32 0, align 4
@SDXC_AUTO_COMMAND_DONE = common dso_local global i32 0, align 4
@SDXC_SEND_AUTO_STOP = common dso_local global i32 0, align 4
@SDXC_DATA_OVER = common dso_local global i32 0, align 4
@MMC_DATA_WRITE = common dso_local global i32 0, align 4
@SDXC_WRITE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"cmd %d(%08x) arg %x ie 0x%08x len %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"request already pending\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@REG_BLKSZ = common dso_local global i32 0, align 4
@REG_BCNTR = common dso_local global i32 0, align 4
@REG_IMASK = common dso_local global i32 0, align 4
@REG_CARG = common dso_local global i32 0, align 4
@REG_CMDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_host*, %struct.mmc_request*)* @sunxi_mmc_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sunxi_mmc_request(%struct.mmc_host* %0, %struct.mmc_request* %1) #0 {
  %3 = alloca %struct.mmc_host*, align 8
  %4 = alloca %struct.mmc_request*, align 8
  %5 = alloca %struct.sunxi_mmc_host*, align 8
  %6 = alloca %struct.mmc_command*, align 8
  %7 = alloca %struct.mmc_data*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.mmc_host* %0, %struct.mmc_host** %3, align 8
  store %struct.mmc_request* %1, %struct.mmc_request** %4, align 8
  %13 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %14 = call %struct.sunxi_mmc_host* @mmc_priv(%struct.mmc_host* %13)
  store %struct.sunxi_mmc_host* %14, %struct.sunxi_mmc_host** %5, align 8
  %15 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %16 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %15, i32 0, i32 0
  %17 = load %struct.mmc_command*, %struct.mmc_command** %16, align 8
  store %struct.mmc_command* %17, %struct.mmc_command** %6, align 8
  %18 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %19 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %18, i32 0, i32 1
  %20 = load %struct.mmc_data*, %struct.mmc_data** %19, align 8
  store %struct.mmc_data* %20, %struct.mmc_data** %7, align 8
  %21 = load i32, i32* @SDXC_INTERRUPT_ERROR_BIT, align 4
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* @SDXC_START, align 4
  %23 = load %struct.mmc_command*, %struct.mmc_command** %6, align 8
  %24 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = and i32 %25, 63
  %27 = or i32 %22, %26
  store i32 %27, i32* %10, align 4
  %28 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %5, align 8
  %29 = getelementptr inbounds %struct.sunxi_mmc_host, %struct.sunxi_mmc_host* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %11, align 4
  %31 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %5, align 8
  %32 = getelementptr inbounds %struct.sunxi_mmc_host, %struct.sunxi_mmc_host* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %46

35:                                               ; preds = %2
  %36 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %5, align 8
  %37 = getelementptr inbounds %struct.sunxi_mmc_host, %struct.sunxi_mmc_host* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %40 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %39, i32 0, i32 0
  %41 = load %struct.mmc_command*, %struct.mmc_command** %40, align 8
  %42 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %41, i32 0, i32 1
  store i32 %38, i32* %42, align 4
  %43 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %44 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %45 = call i32 @mmc_request_done(%struct.mmc_host* %43, %struct.mmc_request* %44)
  br label %296

46:                                               ; preds = %2
  %47 = load %struct.mmc_data*, %struct.mmc_data** %7, align 8
  %48 = icmp ne %struct.mmc_data* %47, null
  br i1 %48, label %49, label %69

49:                                               ; preds = %46
  %50 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %5, align 8
  %51 = load %struct.mmc_data*, %struct.mmc_data** %7, align 8
  %52 = call i32 @sunxi_mmc_map_dma(%struct.sunxi_mmc_host* %50, %struct.mmc_data* %51)
  store i32 %52, i32* %12, align 4
  %53 = load i32, i32* %12, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %68

55:                                               ; preds = %49
  %56 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %57 = call i32 @mmc_dev(%struct.mmc_host* %56)
  %58 = call i32 @dev_err(i32 %57, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %59 = load i32, i32* %12, align 4
  %60 = load %struct.mmc_command*, %struct.mmc_command** %6, align 8
  %61 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  %62 = load i32, i32* %12, align 4
  %63 = load %struct.mmc_data*, %struct.mmc_data** %7, align 8
  %64 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 4
  %65 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %66 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %67 = call i32 @mmc_request_done(%struct.mmc_host* %65, %struct.mmc_request* %66)
  br label %296

68:                                               ; preds = %49
  br label %69

69:                                               ; preds = %68, %46
  %70 = load %struct.mmc_command*, %struct.mmc_command** %6, align 8
  %71 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @MMC_GO_IDLE_STATE, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %82

75:                                               ; preds = %69
  %76 = load i32, i32* @SDXC_SEND_INIT_SEQUENCE, align 4
  %77 = load i32, i32* %10, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %10, align 4
  %79 = load i32, i32* @SDXC_COMMAND_DONE, align 4
  %80 = load i32, i32* %9, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %9, align 4
  br label %82

82:                                               ; preds = %75, %69
  %83 = load %struct.mmc_command*, %struct.mmc_command** %6, align 8
  %84 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @MMC_RSP_PRESENT, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %165

89:                                               ; preds = %82
  %90 = load i32, i32* @SDXC_RESP_EXPIRE, align 4
  %91 = load i32, i32* %10, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %10, align 4
  %93 = load %struct.mmc_command*, %struct.mmc_command** %6, align 8
  %94 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @MMC_RSP_136, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %89
  %100 = load i32, i32* @SDXC_LONG_RESPONSE, align 4
  %101 = load i32, i32* %10, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* %10, align 4
  br label %103

103:                                              ; preds = %99, %89
  %104 = load %struct.mmc_command*, %struct.mmc_command** %6, align 8
  %105 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @MMC_RSP_CRC, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %103
  %111 = load i32, i32* @SDXC_CHECK_RESPONSE_CRC, align 4
  %112 = load i32, i32* %10, align 4
  %113 = or i32 %112, %111
  store i32 %113, i32* %10, align 4
  br label %114

114:                                              ; preds = %110, %103
  %115 = load %struct.mmc_command*, %struct.mmc_command** %6, align 8
  %116 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @MMC_CMD_MASK, align 4
  %119 = and i32 %117, %118
  %120 = load i32, i32* @MMC_CMD_ADTC, align 4
  %121 = icmp eq i32 %119, %120
  br i1 %121, label %122, label %160

122:                                              ; preds = %114
  %123 = load i32, i32* @SDXC_DATA_EXPIRE, align 4
  %124 = load i32, i32* @SDXC_WAIT_PRE_OVER, align 4
  %125 = or i32 %123, %124
  %126 = load i32, i32* %10, align 4
  %127 = or i32 %126, %125
  store i32 %127, i32* %10, align 4
  %128 = load %struct.mmc_command*, %struct.mmc_command** %6, align 8
  %129 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %128, i32 0, i32 4
  %130 = load %struct.TYPE_2__*, %struct.TYPE_2__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %141

134:                                              ; preds = %122
  %135 = load i32, i32* @SDXC_AUTO_COMMAND_DONE, align 4
  %136 = load i32, i32* %9, align 4
  %137 = or i32 %136, %135
  store i32 %137, i32* %9, align 4
  %138 = load i32, i32* @SDXC_SEND_AUTO_STOP, align 4
  %139 = load i32, i32* %10, align 4
  %140 = or i32 %139, %138
  store i32 %140, i32* %10, align 4
  br label %145

141:                                              ; preds = %122
  %142 = load i32, i32* @SDXC_DATA_OVER, align 4
  %143 = load i32, i32* %9, align 4
  %144 = or i32 %143, %142
  store i32 %144, i32* %9, align 4
  br label %145

145:                                              ; preds = %141, %134
  %146 = load %struct.mmc_command*, %struct.mmc_command** %6, align 8
  %147 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %146, i32 0, i32 4
  %148 = load %struct.TYPE_2__*, %struct.TYPE_2__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* @MMC_DATA_WRITE, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %158

154:                                              ; preds = %145
  %155 = load i32, i32* @SDXC_WRITE, align 4
  %156 = load i32, i32* %10, align 4
  %157 = or i32 %156, %155
  store i32 %157, i32* %10, align 4
  br label %159

158:                                              ; preds = %145
  store i32 1, i32* %11, align 4
  br label %159

159:                                              ; preds = %158, %154
  br label %164

160:                                              ; preds = %114
  %161 = load i32, i32* @SDXC_COMMAND_DONE, align 4
  %162 = load i32, i32* %9, align 4
  %163 = or i32 %162, %161
  store i32 %163, i32* %9, align 4
  br label %164

164:                                              ; preds = %160, %159
  br label %169

165:                                              ; preds = %82
  %166 = load i32, i32* @SDXC_COMMAND_DONE, align 4
  %167 = load i32, i32* %9, align 4
  %168 = or i32 %167, %166
  store i32 %168, i32* %9, align 4
  br label %169

169:                                              ; preds = %165, %164
  %170 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %171 = call i32 @mmc_dev(%struct.mmc_host* %170)
  %172 = load i32, i32* %10, align 4
  %173 = and i32 %172, 63
  %174 = load i32, i32* %10, align 4
  %175 = load %struct.mmc_command*, %struct.mmc_command** %6, align 8
  %176 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %175, i32 0, i32 3
  %177 = load i32, i32* %176, align 4
  %178 = load i32, i32* %9, align 4
  %179 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %180 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %179, i32 0, i32 1
  %181 = load %struct.mmc_data*, %struct.mmc_data** %180, align 8
  %182 = icmp ne %struct.mmc_data* %181, null
  br i1 %182, label %183, label %195

183:                                              ; preds = %169
  %184 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %185 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %184, i32 0, i32 1
  %186 = load %struct.mmc_data*, %struct.mmc_data** %185, align 8
  %187 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %190 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %189, i32 0, i32 1
  %191 = load %struct.mmc_data*, %struct.mmc_data** %190, align 8
  %192 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %191, i32 0, i32 2
  %193 = load i32, i32* %192, align 4
  %194 = mul nsw i32 %188, %193
  br label %196

195:                                              ; preds = %169
  br label %196

196:                                              ; preds = %195, %183
  %197 = phi i32 [ %194, %183 ], [ 0, %195 ]
  %198 = call i32 @dev_dbg(i32 %171, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %173, i32 %174, i32 %177, i32 %178, i32 %197)
  %199 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %5, align 8
  %200 = getelementptr inbounds %struct.sunxi_mmc_host, %struct.sunxi_mmc_host* %199, i32 0, i32 3
  %201 = load i64, i64* %8, align 8
  %202 = call i32 @spin_lock_irqsave(i32* %200, i64 %201)
  %203 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %5, align 8
  %204 = getelementptr inbounds %struct.sunxi_mmc_host, %struct.sunxi_mmc_host* %203, i32 0, i32 4
  %205 = load %struct.mmc_request*, %struct.mmc_request** %204, align 8
  %206 = icmp ne %struct.mmc_request* %205, null
  br i1 %206, label %212, label %207

207:                                              ; preds = %196
  %208 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %5, align 8
  %209 = getelementptr inbounds %struct.sunxi_mmc_host, %struct.sunxi_mmc_host* %208, i32 0, i32 5
  %210 = load i64, i64* %209, align 8
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %244

212:                                              ; preds = %207, %196
  %213 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %5, align 8
  %214 = getelementptr inbounds %struct.sunxi_mmc_host, %struct.sunxi_mmc_host* %213, i32 0, i32 3
  %215 = load i64, i64* %8, align 8
  %216 = call i32 @spin_unlock_irqrestore(i32* %214, i64 %215)
  %217 = load %struct.mmc_data*, %struct.mmc_data** %7, align 8
  %218 = icmp ne %struct.mmc_data* %217, null
  br i1 %218, label %219, label %231

219:                                              ; preds = %212
  %220 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %221 = call i32 @mmc_dev(%struct.mmc_host* %220)
  %222 = load %struct.mmc_data*, %struct.mmc_data** %7, align 8
  %223 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %222, i32 0, i32 4
  %224 = load i32, i32* %223, align 4
  %225 = load %struct.mmc_data*, %struct.mmc_data** %7, align 8
  %226 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %225, i32 0, i32 3
  %227 = load i32, i32* %226, align 4
  %228 = load %struct.mmc_data*, %struct.mmc_data** %7, align 8
  %229 = call i32 @mmc_get_dma_dir(%struct.mmc_data* %228)
  %230 = call i32 @dma_unmap_sg(i32 %221, i32 %224, i32 %227, i32 %229)
  br label %231

231:                                              ; preds = %219, %212
  %232 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %233 = call i32 @mmc_dev(%struct.mmc_host* %232)
  %234 = call i32 @dev_err(i32 %233, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %235 = load i32, i32* @EBUSY, align 4
  %236 = sub nsw i32 0, %235
  %237 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %238 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %237, i32 0, i32 0
  %239 = load %struct.mmc_command*, %struct.mmc_command** %238, align 8
  %240 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %239, i32 0, i32 1
  store i32 %236, i32* %240, align 4
  %241 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %242 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %243 = call i32 @mmc_request_done(%struct.mmc_host* %241, %struct.mmc_request* %242)
  br label %296

244:                                              ; preds = %207
  %245 = load %struct.mmc_data*, %struct.mmc_data** %7, align 8
  %246 = icmp ne %struct.mmc_data* %245, null
  br i1 %246, label %247, label %267

247:                                              ; preds = %244
  %248 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %5, align 8
  %249 = load i32, i32* @REG_BLKSZ, align 4
  %250 = load %struct.mmc_data*, %struct.mmc_data** %7, align 8
  %251 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %250, i32 0, i32 1
  %252 = load i32, i32* %251, align 4
  %253 = call i32 @mmc_writel(%struct.sunxi_mmc_host* %248, i32 %249, i32 %252)
  %254 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %5, align 8
  %255 = load i32, i32* @REG_BCNTR, align 4
  %256 = load %struct.mmc_data*, %struct.mmc_data** %7, align 8
  %257 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %256, i32 0, i32 1
  %258 = load i32, i32* %257, align 4
  %259 = load %struct.mmc_data*, %struct.mmc_data** %7, align 8
  %260 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %259, i32 0, i32 2
  %261 = load i32, i32* %260, align 4
  %262 = mul nsw i32 %258, %261
  %263 = call i32 @mmc_writel(%struct.sunxi_mmc_host* %254, i32 %255, i32 %262)
  %264 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %5, align 8
  %265 = load %struct.mmc_data*, %struct.mmc_data** %7, align 8
  %266 = call i32 @sunxi_mmc_start_dma(%struct.sunxi_mmc_host* %264, %struct.mmc_data* %265)
  br label %267

267:                                              ; preds = %247, %244
  %268 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %269 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %5, align 8
  %270 = getelementptr inbounds %struct.sunxi_mmc_host, %struct.sunxi_mmc_host* %269, i32 0, i32 4
  store %struct.mmc_request* %268, %struct.mmc_request** %270, align 8
  %271 = load i32, i32* %11, align 4
  %272 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %5, align 8
  %273 = getelementptr inbounds %struct.sunxi_mmc_host, %struct.sunxi_mmc_host* %272, i32 0, i32 0
  store i32 %271, i32* %273, align 8
  %274 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %5, align 8
  %275 = load i32, i32* @REG_IMASK, align 4
  %276 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %5, align 8
  %277 = getelementptr inbounds %struct.sunxi_mmc_host, %struct.sunxi_mmc_host* %276, i32 0, i32 2
  %278 = load i32, i32* %277, align 8
  %279 = load i32, i32* %9, align 4
  %280 = or i32 %278, %279
  %281 = call i32 @mmc_writel(%struct.sunxi_mmc_host* %274, i32 %275, i32 %280)
  %282 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %5, align 8
  %283 = load i32, i32* @REG_CARG, align 4
  %284 = load %struct.mmc_command*, %struct.mmc_command** %6, align 8
  %285 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %284, i32 0, i32 3
  %286 = load i32, i32* %285, align 4
  %287 = call i32 @mmc_writel(%struct.sunxi_mmc_host* %282, i32 %283, i32 %286)
  %288 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %5, align 8
  %289 = load i32, i32* @REG_CMDR, align 4
  %290 = load i32, i32* %10, align 4
  %291 = call i32 @mmc_writel(%struct.sunxi_mmc_host* %288, i32 %289, i32 %290)
  %292 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %5, align 8
  %293 = getelementptr inbounds %struct.sunxi_mmc_host, %struct.sunxi_mmc_host* %292, i32 0, i32 3
  %294 = load i64, i64* %8, align 8
  %295 = call i32 @spin_unlock_irqrestore(i32* %293, i64 %294)
  br label %296

296:                                              ; preds = %267, %231, %55, %35
  ret void
}

declare dso_local %struct.sunxi_mmc_host* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i32 @mmc_request_done(%struct.mmc_host*, %struct.mmc_request*) #1

declare dso_local i32 @sunxi_mmc_map_dma(%struct.sunxi_mmc_host*, %struct.mmc_data*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @mmc_dev(%struct.mmc_host*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @dma_unmap_sg(i32, i32, i32, i32) #1

declare dso_local i32 @mmc_get_dma_dir(%struct.mmc_data*) #1

declare dso_local i32 @mmc_writel(%struct.sunxi_mmc_host*, i32, i32) #1

declare dso_local i32 @sunxi_mmc_start_dma(%struct.sunxi_mmc_host*, %struct.mmc_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
