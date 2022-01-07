; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_sdio.c_ath6kl_sdio_scat_rw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_sdio.c_ath6kl_sdio_scat_rw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath6kl_sdio = type { %struct.TYPE_6__*, %struct.TYPE_7__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.bus_request = type { %struct.hif_scatter_req* }
%struct.hif_scatter_req = type { i32, i32, i64, i32, i32 (i32, %struct.hif_scatter_req*)*, i32, i32, i32, i64 }
%struct.mmc_request = type { i32, i32, %struct.mmc_request*, %struct.mmc_request*, i32, i32, i32 }
%struct.mmc_command = type { i32, i32, %struct.mmc_command*, %struct.mmc_command*, i32, i32, i32 }
%struct.mmc_data = type { i32, i32, %struct.mmc_data*, %struct.mmc_data*, i32, i32, i32 }

@HIF_BLOCK_BASIS = common dso_local global i32 0, align 4
@HIF_MBOX_BLOCK_SIZE = common dso_local global i32 0, align 4
@HIF_FIXED_ADDRESS = common dso_local global i32 0, align 4
@CMD53_ARG_FIXED_ADDRESS = common dso_local global i32 0, align 4
@CMD53_ARG_INCR_ADDRESS = common dso_local global i32 0, align 4
@HIF_WRITE = common dso_local global i32 0, align 4
@CMD53_ARG_WRITE = common dso_local global i32 0, align 4
@CMD53_ARG_READ = common dso_local global i32 0, align 4
@HIF_MBOX_BASE_ADDR = common dso_local global i64 0, align 8
@HIF_MBOX_WIDTH = common dso_local global i64 0, align 8
@HIF_MBOX0_EXT_WIDTH = common dso_local global i64 0, align 8
@CMD53_ARG_BLOCK_BASIS = common dso_local global i32 0, align 4
@SD_IO_RW_EXTENDED = common dso_local global i32 0, align 4
@MMC_RSP_SPI_R5 = common dso_local global i32 0, align 4
@MMC_RSP_R5 = common dso_local global i32 0, align 4
@MMC_CMD_ADTC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Scatter write request failed:%d\0A\00", align 1
@HIF_ASYNCHRONOUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath6kl_sdio*, %struct.bus_request*)* @ath6kl_sdio_scat_rw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath6kl_sdio_scat_rw(%struct.ath6kl_sdio* %0, %struct.bus_request* %1) #0 {
  %3 = alloca %struct.ath6kl_sdio*, align 8
  %4 = alloca %struct.bus_request*, align 8
  %5 = alloca %struct.mmc_request, align 8
  %6 = alloca %struct.mmc_command, align 8
  %7 = alloca %struct.mmc_data, align 8
  %8 = alloca %struct.hif_scatter_req*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ath6kl_sdio* %0, %struct.ath6kl_sdio** %3, align 8
  store %struct.bus_request* %1, %struct.bus_request** %4, align 8
  %13 = load %struct.bus_request*, %struct.bus_request** %4, align 8
  %14 = getelementptr inbounds %struct.bus_request, %struct.bus_request* %13, i32 0, i32 0
  %15 = load %struct.hif_scatter_req*, %struct.hif_scatter_req** %14, align 8
  store %struct.hif_scatter_req* %15, %struct.hif_scatter_req** %8, align 8
  %16 = load %struct.hif_scatter_req*, %struct.hif_scatter_req** %8, align 8
  %17 = getelementptr inbounds %struct.hif_scatter_req, %struct.hif_scatter_req* %16, i32 0, i32 8
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %49

20:                                               ; preds = %2
  %21 = load %struct.hif_scatter_req*, %struct.hif_scatter_req** %8, align 8
  %22 = getelementptr inbounds %struct.hif_scatter_req, %struct.hif_scatter_req* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %12, align 4
  %24 = load %struct.hif_scatter_req*, %struct.hif_scatter_req** %8, align 8
  %25 = getelementptr inbounds %struct.hif_scatter_req, %struct.hif_scatter_req* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @HIF_BLOCK_BASIS, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %20
  %31 = load i32, i32* %12, align 4
  %32 = load i32, i32* @HIF_MBOX_BLOCK_SIZE, align 4
  %33 = call i32 @round_down(i32 %31, i32 %32)
  store i32 %33, i32* %12, align 4
  br label %34

34:                                               ; preds = %30, %20
  %35 = load %struct.ath6kl_sdio*, %struct.ath6kl_sdio** %3, align 8
  %36 = getelementptr inbounds %struct.ath6kl_sdio, %struct.ath6kl_sdio* %35, i32 0, i32 1
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %36, align 8
  %38 = load %struct.hif_scatter_req*, %struct.hif_scatter_req** %8, align 8
  %39 = getelementptr inbounds %struct.hif_scatter_req, %struct.hif_scatter_req* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.hif_scatter_req*, %struct.hif_scatter_req** %8, align 8
  %42 = getelementptr inbounds %struct.hif_scatter_req, %struct.hif_scatter_req* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.hif_scatter_req*, %struct.hif_scatter_req** %8, align 8
  %45 = getelementptr inbounds %struct.hif_scatter_req, %struct.hif_scatter_req* %44, i32 0, i32 7
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* %12, align 4
  %48 = call i32 @ath6kl_sdio_io(%struct.TYPE_7__* %37, i32 %40, i64 %43, i32 %46, i32 %47)
  store i32 %48, i32* %11, align 4
  br label %196

49:                                               ; preds = %2
  %50 = call i32 @memset(%struct.mmc_request* %5, i32 0, i32 40)
  %51 = bitcast %struct.mmc_command* %6 to %struct.mmc_request*
  %52 = call i32 @memset(%struct.mmc_request* %51, i32 0, i32 40)
  %53 = bitcast %struct.mmc_data* %7 to %struct.mmc_request*
  %54 = call i32 @memset(%struct.mmc_request* %53, i32 0, i32 40)
  %55 = load %struct.hif_scatter_req*, %struct.hif_scatter_req** %8, align 8
  %56 = bitcast %struct.mmc_data* %7 to %struct.mmc_request*
  %57 = call i32 @ath6kl_sdio_setup_scat_data(%struct.hif_scatter_req* %55, %struct.mmc_request* %56)
  %58 = load %struct.hif_scatter_req*, %struct.hif_scatter_req** %8, align 8
  %59 = getelementptr inbounds %struct.hif_scatter_req, %struct.hif_scatter_req* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @HIF_FIXED_ADDRESS, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %49
  %65 = load i32, i32* @CMD53_ARG_FIXED_ADDRESS, align 4
  br label %68

66:                                               ; preds = %49
  %67 = load i32, i32* @CMD53_ARG_INCR_ADDRESS, align 4
  br label %68

68:                                               ; preds = %66, %64
  %69 = phi i32 [ %65, %64 ], [ %67, %66 ]
  store i32 %69, i32* %9, align 4
  %70 = load %struct.hif_scatter_req*, %struct.hif_scatter_req** %8, align 8
  %71 = getelementptr inbounds %struct.hif_scatter_req, %struct.hif_scatter_req* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @HIF_WRITE, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %68
  %77 = load i32, i32* @CMD53_ARG_WRITE, align 4
  br label %80

78:                                               ; preds = %68
  %79 = load i32, i32* @CMD53_ARG_READ, align 4
  br label %80

80:                                               ; preds = %78, %76
  %81 = phi i32 [ %77, %76 ], [ %79, %78 ]
  store i32 %81, i32* %10, align 4
  %82 = load %struct.hif_scatter_req*, %struct.hif_scatter_req** %8, align 8
  %83 = getelementptr inbounds %struct.hif_scatter_req, %struct.hif_scatter_req* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @HIF_WRITE, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %117

88:                                               ; preds = %80
  %89 = load %struct.hif_scatter_req*, %struct.hif_scatter_req** %8, align 8
  %90 = getelementptr inbounds %struct.hif_scatter_req, %struct.hif_scatter_req* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @HIF_MBOX_BASE_ADDR, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %105

94:                                               ; preds = %88
  %95 = load i64, i64* @HIF_MBOX_WIDTH, align 8
  %96 = load %struct.hif_scatter_req*, %struct.hif_scatter_req** %8, align 8
  %97 = getelementptr inbounds %struct.hif_scatter_req, %struct.hif_scatter_req* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = sext i32 %98 to i64
  %100 = sub nsw i64 %95, %99
  %101 = load %struct.hif_scatter_req*, %struct.hif_scatter_req** %8, align 8
  %102 = getelementptr inbounds %struct.hif_scatter_req, %struct.hif_scatter_req* %101, i32 0, i32 2
  %103 = load i64, i64* %102, align 8
  %104 = add nsw i64 %103, %100
  store i64 %104, i64* %102, align 8
  br label %116

105:                                              ; preds = %88
  %106 = load i64, i64* @HIF_MBOX0_EXT_WIDTH, align 8
  %107 = load %struct.hif_scatter_req*, %struct.hif_scatter_req** %8, align 8
  %108 = getelementptr inbounds %struct.hif_scatter_req, %struct.hif_scatter_req* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = sext i32 %109 to i64
  %111 = sub nsw i64 %106, %110
  %112 = load %struct.hif_scatter_req*, %struct.hif_scatter_req** %8, align 8
  %113 = getelementptr inbounds %struct.hif_scatter_req, %struct.hif_scatter_req* %112, i32 0, i32 2
  %114 = load i64, i64* %113, align 8
  %115 = add nsw i64 %114, %111
  store i64 %115, i64* %113, align 8
  br label %116

116:                                              ; preds = %105, %94
  br label %117

117:                                              ; preds = %116, %80
  %118 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %6, i32 0, i32 6
  %119 = load i32, i32* %10, align 4
  %120 = load %struct.ath6kl_sdio*, %struct.ath6kl_sdio** %3, align 8
  %121 = getelementptr inbounds %struct.ath6kl_sdio, %struct.ath6kl_sdio* %120, i32 0, i32 1
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* @CMD53_ARG_BLOCK_BASIS, align 4
  %126 = load i32, i32* %9, align 4
  %127 = load %struct.hif_scatter_req*, %struct.hif_scatter_req** %8, align 8
  %128 = getelementptr inbounds %struct.hif_scatter_req, %struct.hif_scatter_req* %127, i32 0, i32 2
  %129 = load i64, i64* %128, align 8
  %130 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %7, i32 0, i32 5
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @ath6kl_sdio_set_cmd53_arg(i32* %118, i32 %119, i32 %124, i32 %125, i32 %126, i64 %129, i32 %131)
  %133 = load i32, i32* @SD_IO_RW_EXTENDED, align 4
  %134 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %6, i32 0, i32 4
  store i32 %133, i32* %134, align 8
  %135 = load i32, i32* @MMC_RSP_SPI_R5, align 4
  %136 = load i32, i32* @MMC_RSP_R5, align 4
  %137 = or i32 %135, %136
  %138 = load i32, i32* @MMC_CMD_ADTC, align 4
  %139 = or i32 %137, %138
  %140 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %6, i32 0, i32 0
  store i32 %139, i32* %140, align 8
  %141 = bitcast %struct.mmc_command* %6 to %struct.mmc_request*
  %142 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %5, i32 0, i32 3
  store %struct.mmc_request* %141, %struct.mmc_request** %142, align 8
  %143 = bitcast %struct.mmc_data* %7 to %struct.mmc_request*
  %144 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %5, i32 0, i32 2
  store %struct.mmc_request* %143, %struct.mmc_request** %144, align 8
  %145 = load %struct.ath6kl_sdio*, %struct.ath6kl_sdio** %3, align 8
  %146 = getelementptr inbounds %struct.ath6kl_sdio, %struct.ath6kl_sdio* %145, i32 0, i32 1
  %147 = load %struct.TYPE_7__*, %struct.TYPE_7__** %146, align 8
  %148 = call i32 @sdio_claim_host(%struct.TYPE_7__* %147)
  %149 = bitcast %struct.mmc_data* %7 to %struct.mmc_request*
  %150 = load %struct.ath6kl_sdio*, %struct.ath6kl_sdio** %3, align 8
  %151 = getelementptr inbounds %struct.ath6kl_sdio, %struct.ath6kl_sdio* %150, i32 0, i32 1
  %152 = load %struct.TYPE_7__*, %struct.TYPE_7__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i32 0, i32 0
  %154 = load %struct.TYPE_8__*, %struct.TYPE_8__** %153, align 8
  %155 = call i32 @mmc_set_data_timeout(%struct.mmc_request* %149, %struct.TYPE_8__* %154)
  %156 = load %struct.hif_scatter_req*, %struct.hif_scatter_req** %8, align 8
  %157 = getelementptr inbounds %struct.hif_scatter_req, %struct.hif_scatter_req* %156, i32 0, i32 2
  %158 = load i64, i64* %157, align 8
  %159 = load %struct.hif_scatter_req*, %struct.hif_scatter_req** %8, align 8
  %160 = getelementptr inbounds %struct.hif_scatter_req, %struct.hif_scatter_req* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.hif_scatter_req*, %struct.hif_scatter_req** %8, align 8
  %163 = getelementptr inbounds %struct.hif_scatter_req, %struct.hif_scatter_req* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = sext i32 %164 to i64
  %166 = load %struct.hif_scatter_req*, %struct.hif_scatter_req** %8, align 8
  %167 = getelementptr inbounds %struct.hif_scatter_req, %struct.hif_scatter_req* %166, i32 0, i32 6
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.hif_scatter_req*, %struct.hif_scatter_req** %8, align 8
  %170 = getelementptr inbounds %struct.hif_scatter_req, %struct.hif_scatter_req* %169, i32 0, i32 5
  %171 = load i32, i32* %170, align 8
  %172 = call i32 @trace_ath6kl_sdio_scat(i64 %158, i32 %161, i64 %165, i32 %168, i32 %171)
  %173 = load %struct.ath6kl_sdio*, %struct.ath6kl_sdio** %3, align 8
  %174 = getelementptr inbounds %struct.ath6kl_sdio, %struct.ath6kl_sdio* %173, i32 0, i32 1
  %175 = load %struct.TYPE_7__*, %struct.TYPE_7__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %175, i32 0, i32 0
  %177 = load %struct.TYPE_8__*, %struct.TYPE_8__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = call i32 @mmc_wait_for_req(i32 %179, %struct.mmc_request* %5)
  %181 = load %struct.ath6kl_sdio*, %struct.ath6kl_sdio** %3, align 8
  %182 = getelementptr inbounds %struct.ath6kl_sdio, %struct.ath6kl_sdio* %181, i32 0, i32 1
  %183 = load %struct.TYPE_7__*, %struct.TYPE_7__** %182, align 8
  %184 = call i32 @sdio_release_host(%struct.TYPE_7__* %183)
  %185 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %6, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %191

188:                                              ; preds = %117
  %189 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %6, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  br label %194

191:                                              ; preds = %117
  %192 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %7, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  br label %194

194:                                              ; preds = %191, %188
  %195 = phi i32 [ %190, %188 ], [ %193, %191 ]
  store i32 %195, i32* %11, align 4
  br label %196

196:                                              ; preds = %194, %34
  %197 = load i32, i32* %11, align 4
  %198 = load %struct.hif_scatter_req*, %struct.hif_scatter_req** %8, align 8
  %199 = getelementptr inbounds %struct.hif_scatter_req, %struct.hif_scatter_req* %198, i32 0, i32 3
  store i32 %197, i32* %199, align 8
  %200 = load %struct.hif_scatter_req*, %struct.hif_scatter_req** %8, align 8
  %201 = getelementptr inbounds %struct.hif_scatter_req, %struct.hif_scatter_req* %200, i32 0, i32 3
  %202 = load i32, i32* %201, align 8
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %209

204:                                              ; preds = %196
  %205 = load %struct.hif_scatter_req*, %struct.hif_scatter_req** %8, align 8
  %206 = getelementptr inbounds %struct.hif_scatter_req, %struct.hif_scatter_req* %205, i32 0, i32 3
  %207 = load i32, i32* %206, align 8
  %208 = call i32 @ath6kl_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %207)
  br label %209

209:                                              ; preds = %204, %196
  %210 = load %struct.hif_scatter_req*, %struct.hif_scatter_req** %8, align 8
  %211 = getelementptr inbounds %struct.hif_scatter_req, %struct.hif_scatter_req* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 4
  %213 = load i32, i32* @HIF_ASYNCHRONOUS, align 4
  %214 = and i32 %212, %213
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %227

216:                                              ; preds = %209
  %217 = load %struct.hif_scatter_req*, %struct.hif_scatter_req** %8, align 8
  %218 = getelementptr inbounds %struct.hif_scatter_req, %struct.hif_scatter_req* %217, i32 0, i32 4
  %219 = load i32 (i32, %struct.hif_scatter_req*)*, i32 (i32, %struct.hif_scatter_req*)** %218, align 8
  %220 = load %struct.ath6kl_sdio*, %struct.ath6kl_sdio** %3, align 8
  %221 = getelementptr inbounds %struct.ath6kl_sdio, %struct.ath6kl_sdio* %220, i32 0, i32 0
  %222 = load %struct.TYPE_6__*, %struct.TYPE_6__** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 4
  %225 = load %struct.hif_scatter_req*, %struct.hif_scatter_req** %8, align 8
  %226 = call i32 %219(i32 %224, %struct.hif_scatter_req* %225)
  br label %227

227:                                              ; preds = %216, %209
  %228 = load i32, i32* %11, align 4
  ret i32 %228
}

declare dso_local i32 @round_down(i32, i32) #1

declare dso_local i32 @ath6kl_sdio_io(%struct.TYPE_7__*, i32, i64, i32, i32) #1

declare dso_local i32 @memset(%struct.mmc_request*, i32, i32) #1

declare dso_local i32 @ath6kl_sdio_setup_scat_data(%struct.hif_scatter_req*, %struct.mmc_request*) #1

declare dso_local i32 @ath6kl_sdio_set_cmd53_arg(i32*, i32, i32, i32, i32, i64, i32) #1

declare dso_local i32 @sdio_claim_host(%struct.TYPE_7__*) #1

declare dso_local i32 @mmc_set_data_timeout(%struct.mmc_request*, %struct.TYPE_8__*) #1

declare dso_local i32 @trace_ath6kl_sdio_scat(i64, i32, i64, i32, i32) #1

declare dso_local i32 @mmc_wait_for_req(i32, %struct.mmc_request*) #1

declare dso_local i32 @sdio_release_host(%struct.TYPE_7__*) #1

declare dso_local i32 @ath6kl_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
