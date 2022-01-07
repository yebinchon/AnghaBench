; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_bcm2835.c_bcm2835_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_bcm2835.c_bcm2835_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32 }
%struct.mmc_request = type { %struct.TYPE_7__*, %struct.TYPE_7__*, %struct.TYPE_8__*, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_8__ = type { i64, i32, i32, i64 }
%struct.TYPE_6__ = type { i64 }
%struct.bcm2835_host = type { i32, i32, i32, i64, i64, %struct.mmc_request*, i64, i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.device }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"unsupported block size (%d bytes)\0A\00", align 1
@EINVAL = common dso_local global i64 0, align 8
@SDEDM = common dso_local global i64 0, align 8
@SDEDM_FSM_MASK = common dso_local global i32 0, align 4
@SDEDM_FSM_IDENTMODE = common dso_local global i32 0, align 4
@SDEDM_FSM_DATAMODE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"previous command (%d) not complete (EDM %08x)\0A\00", align 1
@SDCMD = common dso_local global i64 0, align 8
@SDCMD_CMD_MASK = common dso_local global i32 0, align 4
@EILSEQ = common dso_local global i64 0, align 8
@PIO_THRESHOLD = common dso_local global i64 0, align 8
@MMC_DATA_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_host*, %struct.mmc_request*)* @bcm2835_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcm2835_request(%struct.mmc_host* %0, %struct.mmc_request* %1) #0 {
  %3 = alloca %struct.mmc_host*, align 8
  %4 = alloca %struct.mmc_request*, align 8
  %5 = alloca %struct.bcm2835_host*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mmc_host* %0, %struct.mmc_host** %3, align 8
  store %struct.mmc_request* %1, %struct.mmc_request** %4, align 8
  %9 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %10 = call %struct.bcm2835_host* @mmc_priv(%struct.mmc_host* %9)
  store %struct.bcm2835_host* %10, %struct.bcm2835_host** %5, align 8
  %11 = load %struct.bcm2835_host*, %struct.bcm2835_host** %5, align 8
  %12 = getelementptr inbounds %struct.bcm2835_host, %struct.bcm2835_host* %11, i32 0, i32 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  store %struct.device* %14, %struct.device** %6, align 8
  %15 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %16 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %15, i32 0, i32 1
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %18 = icmp ne %struct.TYPE_7__* %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %2
  %20 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %21 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %20, i32 0, i32 1
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  store i64 0, i64* %23, align 8
  br label %24

24:                                               ; preds = %19, %2
  %25 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %26 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %25, i32 0, i32 0
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %26, align 8
  %28 = icmp ne %struct.TYPE_7__* %27, null
  br i1 %28, label %29, label %34

29:                                               ; preds = %24
  %30 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %31 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %30, i32 0, i32 0
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  store i64 0, i64* %33, align 8
  br label %34

34:                                               ; preds = %29, %24
  %35 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %36 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %35, i32 0, i32 2
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %36, align 8
  %38 = icmp ne %struct.TYPE_8__* %37, null
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %41 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %40, i32 0, i32 2
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 3
  store i64 0, i64* %43, align 8
  br label %44

44:                                               ; preds = %39, %34
  %45 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %46 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %45, i32 0, i32 3
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = icmp ne %struct.TYPE_6__* %47, null
  br i1 %48, label %49, label %54

49:                                               ; preds = %44
  %50 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %51 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %50, i32 0, i32 3
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  store i64 0, i64* %53, align 8
  br label %54

54:                                               ; preds = %49, %44
  %55 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %56 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %55, i32 0, i32 2
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %56, align 8
  %58 = icmp ne %struct.TYPE_8__* %57, null
  br i1 %58, label %59, label %90

59:                                               ; preds = %54
  %60 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %61 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %60, i32 0, i32 2
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @is_power_of_2(i32 %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %90, label %67

67:                                               ; preds = %59
  %68 = load %struct.device*, %struct.device** %6, align 8
  %69 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %70 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %69, i32 0, i32 2
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %68, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %73)
  %75 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %76 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %75, i32 0, i32 0
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %76, align 8
  %78 = icmp ne %struct.TYPE_7__* %77, null
  br i1 %78, label %79, label %86

79:                                               ; preds = %67
  %80 = load i64, i64* @EINVAL, align 8
  %81 = sub nsw i64 0, %80
  %82 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %83 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %82, i32 0, i32 0
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  store i64 %81, i64* %85, align 8
  br label %86

86:                                               ; preds = %79, %67
  %87 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %88 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %89 = call i32 @mmc_request_done(%struct.mmc_host* %87, %struct.mmc_request* %88)
  br label %260

90:                                               ; preds = %59, %54
  %91 = load %struct.bcm2835_host*, %struct.bcm2835_host** %5, align 8
  %92 = getelementptr inbounds %struct.bcm2835_host, %struct.bcm2835_host* %91, i32 0, i32 1
  %93 = call i32 @mutex_lock(i32* %92)
  %94 = load %struct.bcm2835_host*, %struct.bcm2835_host** %5, align 8
  %95 = getelementptr inbounds %struct.bcm2835_host, %struct.bcm2835_host* %94, i32 0, i32 5
  %96 = load %struct.mmc_request*, %struct.mmc_request** %95, align 8
  %97 = call i32 @WARN_ON(%struct.mmc_request* %96)
  %98 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %99 = load %struct.bcm2835_host*, %struct.bcm2835_host** %5, align 8
  %100 = getelementptr inbounds %struct.bcm2835_host, %struct.bcm2835_host* %99, i32 0, i32 5
  store %struct.mmc_request* %98, %struct.mmc_request** %100, align 8
  %101 = load %struct.bcm2835_host*, %struct.bcm2835_host** %5, align 8
  %102 = getelementptr inbounds %struct.bcm2835_host, %struct.bcm2835_host* %101, i32 0, i32 7
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @SDEDM, align 8
  %105 = add nsw i64 %103, %104
  %106 = call i32 @readl(i64 %105)
  store i32 %106, i32* %7, align 4
  %107 = load i32, i32* %7, align 4
  %108 = load i32, i32* @SDEDM_FSM_MASK, align 4
  %109 = and i32 %107, %108
  store i32 %109, i32* %8, align 4
  %110 = load i32, i32* %8, align 4
  %111 = load i32, i32* @SDEDM_FSM_IDENTMODE, align 4
  %112 = icmp ne i32 %110, %111
  br i1 %112, label %113, label %148

113:                                              ; preds = %90
  %114 = load i32, i32* %8, align 4
  %115 = load i32, i32* @SDEDM_FSM_DATAMODE, align 4
  %116 = icmp ne i32 %114, %115
  br i1 %116, label %117, label %148

117:                                              ; preds = %113
  %118 = load %struct.device*, %struct.device** %6, align 8
  %119 = load %struct.bcm2835_host*, %struct.bcm2835_host** %5, align 8
  %120 = getelementptr inbounds %struct.bcm2835_host, %struct.bcm2835_host* %119, i32 0, i32 7
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @SDCMD, align 8
  %123 = add nsw i64 %121, %122
  %124 = call i32 @readl(i64 %123)
  %125 = load i32, i32* @SDCMD_CMD_MASK, align 4
  %126 = and i32 %124, %125
  %127 = load i32, i32* %7, align 4
  %128 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %118, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %126, i32 %127)
  %129 = load %struct.bcm2835_host*, %struct.bcm2835_host** %5, align 8
  %130 = call i32 @bcm2835_dumpregs(%struct.bcm2835_host* %129)
  %131 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %132 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %131, i32 0, i32 0
  %133 = load %struct.TYPE_7__*, %struct.TYPE_7__** %132, align 8
  %134 = icmp ne %struct.TYPE_7__* %133, null
  br i1 %134, label %135, label %142

135:                                              ; preds = %117
  %136 = load i64, i64* @EILSEQ, align 8
  %137 = sub nsw i64 0, %136
  %138 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %139 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %138, i32 0, i32 0
  %140 = load %struct.TYPE_7__*, %struct.TYPE_7__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 0
  store i64 %137, i64* %141, align 8
  br label %142

142:                                              ; preds = %135, %117
  %143 = load %struct.bcm2835_host*, %struct.bcm2835_host** %5, align 8
  %144 = call i32 @bcm2835_finish_request(%struct.bcm2835_host* %143)
  %145 = load %struct.bcm2835_host*, %struct.bcm2835_host** %5, align 8
  %146 = getelementptr inbounds %struct.bcm2835_host, %struct.bcm2835_host* %145, i32 0, i32 1
  %147 = call i32 @mutex_unlock(i32* %146)
  br label %260

148:                                              ; preds = %113, %90
  %149 = load %struct.bcm2835_host*, %struct.bcm2835_host** %5, align 8
  %150 = getelementptr inbounds %struct.bcm2835_host, %struct.bcm2835_host* %149, i32 0, i32 6
  %151 = load i64, i64* %150, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %172

153:                                              ; preds = %148
  %154 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %155 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %154, i32 0, i32 2
  %156 = load %struct.TYPE_8__*, %struct.TYPE_8__** %155, align 8
  %157 = icmp ne %struct.TYPE_8__* %156, null
  br i1 %157, label %158, label %172

158:                                              ; preds = %153
  %159 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %160 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %159, i32 0, i32 2
  %161 = load %struct.TYPE_8__*, %struct.TYPE_8__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = load i64, i64* @PIO_THRESHOLD, align 8
  %165 = icmp sgt i64 %163, %164
  br i1 %165, label %166, label %172

166:                                              ; preds = %158
  %167 = load %struct.bcm2835_host*, %struct.bcm2835_host** %5, align 8
  %168 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %169 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %168, i32 0, i32 2
  %170 = load %struct.TYPE_8__*, %struct.TYPE_8__** %169, align 8
  %171 = call i32 @bcm2835_prepare_dma(%struct.bcm2835_host* %167, %struct.TYPE_8__* %170)
  br label %172

172:                                              ; preds = %166, %158, %153, %148
  %173 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %174 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %173, i32 0, i32 1
  %175 = load %struct.TYPE_7__*, %struct.TYPE_7__** %174, align 8
  %176 = icmp ne %struct.TYPE_7__* %175, null
  br i1 %176, label %177, label %195

177:                                              ; preds = %172
  %178 = load %struct.bcm2835_host*, %struct.bcm2835_host** %5, align 8
  %179 = getelementptr inbounds %struct.bcm2835_host, %struct.bcm2835_host* %178, i32 0, i32 5
  %180 = load %struct.mmc_request*, %struct.mmc_request** %179, align 8
  %181 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %180, i32 0, i32 2
  %182 = load %struct.TYPE_8__*, %struct.TYPE_8__** %181, align 8
  %183 = icmp ne %struct.TYPE_8__* %182, null
  br i1 %183, label %184, label %195

184:                                              ; preds = %177
  %185 = load %struct.bcm2835_host*, %struct.bcm2835_host** %5, align 8
  %186 = getelementptr inbounds %struct.bcm2835_host, %struct.bcm2835_host* %185, i32 0, i32 5
  %187 = load %struct.mmc_request*, %struct.mmc_request** %186, align 8
  %188 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %187, i32 0, i32 2
  %189 = load %struct.TYPE_8__*, %struct.TYPE_8__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 8
  %192 = load i32, i32* @MMC_DATA_READ, align 4
  %193 = and i32 %191, %192
  %194 = icmp ne i32 %193, 0
  br label %195

195:                                              ; preds = %184, %177, %172
  %196 = phi i1 [ false, %177 ], [ false, %172 ], [ %194, %184 ]
  %197 = zext i1 %196 to i32
  %198 = load %struct.bcm2835_host*, %struct.bcm2835_host** %5, align 8
  %199 = getelementptr inbounds %struct.bcm2835_host, %struct.bcm2835_host* %198, i32 0, i32 0
  store i32 %197, i32* %199, align 8
  %200 = load %struct.bcm2835_host*, %struct.bcm2835_host** %5, align 8
  %201 = getelementptr inbounds %struct.bcm2835_host, %struct.bcm2835_host* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %221

204:                                              ; preds = %195
  %205 = load %struct.bcm2835_host*, %struct.bcm2835_host** %5, align 8
  %206 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %207 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %206, i32 0, i32 1
  %208 = load %struct.TYPE_7__*, %struct.TYPE_7__** %207, align 8
  %209 = call i64 @bcm2835_send_command(%struct.bcm2835_host* %205, %struct.TYPE_7__* %208)
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %220

211:                                              ; preds = %204
  %212 = load %struct.bcm2835_host*, %struct.bcm2835_host** %5, align 8
  %213 = getelementptr inbounds %struct.bcm2835_host, %struct.bcm2835_host* %212, i32 0, i32 2
  %214 = load i32, i32* %213, align 8
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %219, label %216

216:                                              ; preds = %211
  %217 = load %struct.bcm2835_host*, %struct.bcm2835_host** %5, align 8
  %218 = call i32 @bcm2835_finish_command(%struct.bcm2835_host* %217)
  br label %219

219:                                              ; preds = %216, %211
  br label %220

220:                                              ; preds = %219, %204
  br label %256

221:                                              ; preds = %195
  %222 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %223 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %222, i32 0, i32 0
  %224 = load %struct.TYPE_7__*, %struct.TYPE_7__** %223, align 8
  %225 = icmp ne %struct.TYPE_7__* %224, null
  br i1 %225, label %226, label %255

226:                                              ; preds = %221
  %227 = load %struct.bcm2835_host*, %struct.bcm2835_host** %5, align 8
  %228 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %229 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %228, i32 0, i32 0
  %230 = load %struct.TYPE_7__*, %struct.TYPE_7__** %229, align 8
  %231 = call i64 @bcm2835_send_command(%struct.bcm2835_host* %227, %struct.TYPE_7__* %230)
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %233, label %255

233:                                              ; preds = %226
  %234 = load %struct.bcm2835_host*, %struct.bcm2835_host** %5, align 8
  %235 = getelementptr inbounds %struct.bcm2835_host, %struct.bcm2835_host* %234, i32 0, i32 4
  %236 = load i64, i64* %235, align 8
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %238, label %246

238:                                              ; preds = %233
  %239 = load %struct.bcm2835_host*, %struct.bcm2835_host** %5, align 8
  %240 = getelementptr inbounds %struct.bcm2835_host, %struct.bcm2835_host* %239, i32 0, i32 3
  %241 = load i64, i64* %240, align 8
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %243, label %246

243:                                              ; preds = %238
  %244 = load %struct.bcm2835_host*, %struct.bcm2835_host** %5, align 8
  %245 = call i32 @bcm2835_start_dma(%struct.bcm2835_host* %244)
  br label %246

246:                                              ; preds = %243, %238, %233
  %247 = load %struct.bcm2835_host*, %struct.bcm2835_host** %5, align 8
  %248 = getelementptr inbounds %struct.bcm2835_host, %struct.bcm2835_host* %247, i32 0, i32 2
  %249 = load i32, i32* %248, align 8
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %254, label %251

251:                                              ; preds = %246
  %252 = load %struct.bcm2835_host*, %struct.bcm2835_host** %5, align 8
  %253 = call i32 @bcm2835_finish_command(%struct.bcm2835_host* %252)
  br label %254

254:                                              ; preds = %251, %246
  br label %255

255:                                              ; preds = %254, %226, %221
  br label %256

256:                                              ; preds = %255, %220
  %257 = load %struct.bcm2835_host*, %struct.bcm2835_host** %5, align 8
  %258 = getelementptr inbounds %struct.bcm2835_host, %struct.bcm2835_host* %257, i32 0, i32 1
  %259 = call i32 @mutex_unlock(i32* %258)
  br label %260

260:                                              ; preds = %256, %142, %86
  ret void
}

declare dso_local %struct.bcm2835_host* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i32 @is_power_of_2(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, ...) #1

declare dso_local i32 @mmc_request_done(%struct.mmc_host*, %struct.mmc_request*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @WARN_ON(%struct.mmc_request*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @bcm2835_dumpregs(%struct.bcm2835_host*) #1

declare dso_local i32 @bcm2835_finish_request(%struct.bcm2835_host*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @bcm2835_prepare_dma(%struct.bcm2835_host*, %struct.TYPE_8__*) #1

declare dso_local i64 @bcm2835_send_command(%struct.bcm2835_host*, %struct.TYPE_7__*) #1

declare dso_local i32 @bcm2835_finish_command(%struct.bcm2835_host*) #1

declare dso_local i32 @bcm2835_start_dma(%struct.bcm2835_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
