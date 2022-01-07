; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_sdio.c_brcmf_sdio_hdparse.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_sdio.c_brcmf_sdio_hdparse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_sdio = type { i32, i64, i64, i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32 }
%struct.brcmf_sdio_hdrinfo = type { i32, i32, i64, i32, i64 }

@SDPCM_RX = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"HW header checksum error\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@SDPCM_HDRLEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"HW header length error\0A\00", align 1
@EPROTO = common dso_local global i32 0, align 4
@BRCMF_SDIO_FT_SUPER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"HW superframe header length error\0A\00", align 1
@BRCMF_SDIO_FT_SUB = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"HW subframe header length error\0A\00", align 1
@SDPCM_HWHDR_LEN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [42 x i8] c"Glom descriptor found in superframe head\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@SDPCM_SEQ_MASK = common dso_local global i64 0, align 8
@SDPCM_CHANNEL_MASK = common dso_local global i64 0, align 8
@SDPCM_CHANNEL_SHIFT = common dso_local global i64 0, align 8
@MAX_RX_DATASZ = common dso_local global i32 0, align 4
@SDPCM_CONTROL_CHANNEL = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [27 x i8] c"HW header length too long\0A\00", align 1
@SDPCM_GLOM_CHANNEL = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [30 x i8] c"Wrong channel for superframe\0A\00", align 1
@SDPCM_DATA_CHANNEL = common dso_local global i64 0, align 8
@SDPCM_EVENT_CHANNEL = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [28 x i8] c"Wrong channel for subframe\0A\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"seq %d: bad data offset\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@SDIO = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [21 x i8] c"seq %d, expected %d\0A\00", align 1
@SDPCM_NEXTLEN_MASK = common dso_local global i64 0, align 8
@SDPCM_NEXTLEN_SHIFT = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [27 x i8] c"seq %d: next length error\0A\00", align 1
@SDPCM_FCMASK_MASK = common dso_local global i64 0, align 8
@SDPCM_WINDOW_MASK = common dso_local global i64 0, align 8
@SDPCM_WINDOW_SHIFT = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [33 x i8] c"seq %d: max tx seq number error\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.brcmf_sdio*, i64*, %struct.brcmf_sdio_hdrinfo*, i32)* @brcmf_sdio_hdparse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcmf_sdio_hdparse(%struct.brcmf_sdio* %0, i64* %1, %struct.brcmf_sdio_hdrinfo* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.brcmf_sdio*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.brcmf_sdio_hdrinfo*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.brcmf_sdio* %0, %struct.brcmf_sdio** %6, align 8
  store i64* %1, i64** %7, align 8
  store %struct.brcmf_sdio_hdrinfo* %2, %struct.brcmf_sdio_hdrinfo** %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = load i32, i32* @SDPCM_RX, align 4
  %17 = load i64*, i64** %7, align 8
  %18 = call i32 @trace_brcmf_sdpcm_hdr(i32 %16, i64* %17)
  %19 = load i64*, i64** %7, align 8
  %20 = call i32 @get_unaligned_le16(i64* %19)
  store i32 %20, i32* %10, align 4
  %21 = load i64*, i64** %7, align 8
  %22 = getelementptr inbounds i64, i64* %21, i64 4
  %23 = call i32 @get_unaligned_le16(i64* %22)
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* %11, align 4
  %26 = or i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %4
  %29 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %6, align 8
  %30 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %29, i32 0, i32 0
  store i32 0, i32* %30, align 8
  %31 = load i32, i32* @ENODATA, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %5, align 4
  br label %349

33:                                               ; preds = %4
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* %11, align 4
  %36 = xor i32 %34, %35
  %37 = xor i32 %36, -1
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %50

39:                                               ; preds = %33
  %40 = call i32 (i8*, ...) @brcmf_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %41 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %6, align 8
  %42 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %41, i32 0, i32 4
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 8
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %43, align 8
  %46 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %6, align 8
  %47 = call i32 @brcmf_sdio_rxfail(%struct.brcmf_sdio* %46, i32 0, i32 0)
  %48 = load i32, i32* @EIO, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %5, align 4
  br label %349

50:                                               ; preds = %33
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* @SDPCM_HDRLEN, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %50
  %55 = call i32 (i8*, ...) @brcmf_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %56 = load i32, i32* @EPROTO, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %5, align 4
  br label %349

58:                                               ; preds = %50
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* @BRCMF_SDIO_FT_SUPER, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %76

62:                                               ; preds = %58
  %63 = load i32, i32* %10, align 4
  %64 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %6, align 8
  %65 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %64, i32 0, i32 5
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @roundup(i32 %63, i32 %66)
  %68 = load %struct.brcmf_sdio_hdrinfo*, %struct.brcmf_sdio_hdrinfo** %8, align 8
  %69 = getelementptr inbounds %struct.brcmf_sdio_hdrinfo, %struct.brcmf_sdio_hdrinfo* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp ne i32 %67, %70
  br i1 %71, label %72, label %76

72:                                               ; preds = %62
  %73 = call i32 (i8*, ...) @brcmf_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %74 = load i32, i32* @EPROTO, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %5, align 4
  br label %349

76:                                               ; preds = %62, %58
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* @BRCMF_SDIO_FT_SUB, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %90

80:                                               ; preds = %76
  %81 = load i32, i32* %10, align 4
  %82 = load %struct.brcmf_sdio_hdrinfo*, %struct.brcmf_sdio_hdrinfo** %8, align 8
  %83 = getelementptr inbounds %struct.brcmf_sdio_hdrinfo, %struct.brcmf_sdio_hdrinfo* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = icmp sgt i32 %81, %84
  br i1 %85, label %86, label %90

86:                                               ; preds = %80
  %87 = call i32 (i8*, ...) @brcmf_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %88 = load i32, i32* @EPROTO, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %5, align 4
  br label %349

90:                                               ; preds = %80, %76
  %91 = load i32, i32* %10, align 4
  %92 = load %struct.brcmf_sdio_hdrinfo*, %struct.brcmf_sdio_hdrinfo** %8, align 8
  %93 = getelementptr inbounds %struct.brcmf_sdio_hdrinfo, %struct.brcmf_sdio_hdrinfo* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 8
  %94 = load i32, i32* @SDPCM_HWHDR_LEN, align 4
  %95 = load i64*, i64** %7, align 8
  %96 = sext i32 %94 to i64
  %97 = getelementptr inbounds i64, i64* %95, i64 %96
  store i64* %97, i64** %7, align 8
  %98 = load i64*, i64** %7, align 8
  %99 = bitcast i64* %98 to i32*
  %100 = load i32, i32* %99, align 4
  %101 = call i64 @le32_to_cpu(i32 %100)
  store i64 %101, i64* %15, align 8
  %102 = load i32, i32* %9, align 4
  %103 = load i32, i32* @BRCMF_SDIO_FT_SUPER, align 4
  %104 = icmp eq i32 %102, %103
  br i1 %104, label %105, label %115

105:                                              ; preds = %90
  %106 = load i64*, i64** %7, align 8
  %107 = call i64 @SDPCM_GLOMDESC(i64* %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %115

109:                                              ; preds = %105
  %110 = call i32 (i8*, ...) @brcmf_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0))
  %111 = load %struct.brcmf_sdio_hdrinfo*, %struct.brcmf_sdio_hdrinfo** %8, align 8
  %112 = getelementptr inbounds %struct.brcmf_sdio_hdrinfo, %struct.brcmf_sdio_hdrinfo* %111, i32 0, i32 0
  store i32 0, i32* %112, align 8
  %113 = load i32, i32* @EINVAL, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %5, align 4
  br label %349

115:                                              ; preds = %105, %90
  %116 = load i64, i64* %15, align 8
  %117 = load i64, i64* @SDPCM_SEQ_MASK, align 8
  %118 = and i64 %116, %117
  store i64 %118, i64* %12, align 8
  %119 = load i64, i64* %15, align 8
  %120 = load i64, i64* @SDPCM_CHANNEL_MASK, align 8
  %121 = and i64 %119, %120
  %122 = load i64, i64* @SDPCM_CHANNEL_SHIFT, align 8
  %123 = ashr i64 %121, %122
  %124 = load %struct.brcmf_sdio_hdrinfo*, %struct.brcmf_sdio_hdrinfo** %8, align 8
  %125 = getelementptr inbounds %struct.brcmf_sdio_hdrinfo, %struct.brcmf_sdio_hdrinfo* %124, i32 0, i32 4
  store i64 %123, i64* %125, align 8
  %126 = load i32, i32* %10, align 4
  %127 = load i32, i32* @MAX_RX_DATASZ, align 4
  %128 = icmp sgt i32 %126, %127
  br i1 %128, label %129, label %152

129:                                              ; preds = %115
  %130 = load %struct.brcmf_sdio_hdrinfo*, %struct.brcmf_sdio_hdrinfo** %8, align 8
  %131 = getelementptr inbounds %struct.brcmf_sdio_hdrinfo, %struct.brcmf_sdio_hdrinfo* %130, i32 0, i32 4
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* @SDPCM_CONTROL_CHANNEL, align 8
  %134 = icmp ne i64 %132, %133
  br i1 %134, label %135, label %152

135:                                              ; preds = %129
  %136 = load i32, i32* %9, align 4
  %137 = load i32, i32* @BRCMF_SDIO_FT_SUPER, align 4
  %138 = icmp ne i32 %136, %137
  br i1 %138, label %139, label %152

139:                                              ; preds = %135
  %140 = call i32 (i8*, ...) @brcmf_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  %141 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %6, align 8
  %142 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %141, i32 0, i32 4
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 5
  %144 = load i32, i32* %143, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %143, align 4
  %146 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %6, align 8
  %147 = call i32 @brcmf_sdio_rxfail(%struct.brcmf_sdio* %146, i32 0, i32 0)
  %148 = load %struct.brcmf_sdio_hdrinfo*, %struct.brcmf_sdio_hdrinfo** %8, align 8
  %149 = getelementptr inbounds %struct.brcmf_sdio_hdrinfo, %struct.brcmf_sdio_hdrinfo* %148, i32 0, i32 0
  store i32 0, i32* %149, align 8
  %150 = load i32, i32* @EPROTO, align 4
  %151 = sub nsw i32 0, %150
  store i32 %151, i32* %5, align 4
  br label %349

152:                                              ; preds = %135, %129, %115
  %153 = load i32, i32* %9, align 4
  %154 = load i32, i32* @BRCMF_SDIO_FT_SUPER, align 4
  %155 = icmp eq i32 %153, %154
  br i1 %155, label %156, label %168

156:                                              ; preds = %152
  %157 = load %struct.brcmf_sdio_hdrinfo*, %struct.brcmf_sdio_hdrinfo** %8, align 8
  %158 = getelementptr inbounds %struct.brcmf_sdio_hdrinfo, %struct.brcmf_sdio_hdrinfo* %157, i32 0, i32 4
  %159 = load i64, i64* %158, align 8
  %160 = load i64, i64* @SDPCM_GLOM_CHANNEL, align 8
  %161 = icmp ne i64 %159, %160
  br i1 %161, label %162, label %168

162:                                              ; preds = %156
  %163 = call i32 (i8*, ...) @brcmf_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0))
  %164 = load %struct.brcmf_sdio_hdrinfo*, %struct.brcmf_sdio_hdrinfo** %8, align 8
  %165 = getelementptr inbounds %struct.brcmf_sdio_hdrinfo, %struct.brcmf_sdio_hdrinfo* %164, i32 0, i32 0
  store i32 0, i32* %165, align 8
  %166 = load i32, i32* @EINVAL, align 4
  %167 = sub nsw i32 0, %166
  store i32 %167, i32* %5, align 4
  br label %349

168:                                              ; preds = %156, %152
  %169 = load i32, i32* %9, align 4
  %170 = load i32, i32* @BRCMF_SDIO_FT_SUB, align 4
  %171 = icmp eq i32 %169, %170
  br i1 %171, label %172, label %190

172:                                              ; preds = %168
  %173 = load %struct.brcmf_sdio_hdrinfo*, %struct.brcmf_sdio_hdrinfo** %8, align 8
  %174 = getelementptr inbounds %struct.brcmf_sdio_hdrinfo, %struct.brcmf_sdio_hdrinfo* %173, i32 0, i32 4
  %175 = load i64, i64* %174, align 8
  %176 = load i64, i64* @SDPCM_DATA_CHANNEL, align 8
  %177 = icmp ne i64 %175, %176
  br i1 %177, label %178, label %190

178:                                              ; preds = %172
  %179 = load %struct.brcmf_sdio_hdrinfo*, %struct.brcmf_sdio_hdrinfo** %8, align 8
  %180 = getelementptr inbounds %struct.brcmf_sdio_hdrinfo, %struct.brcmf_sdio_hdrinfo* %179, i32 0, i32 4
  %181 = load i64, i64* %180, align 8
  %182 = load i64, i64* @SDPCM_EVENT_CHANNEL, align 8
  %183 = icmp ne i64 %181, %182
  br i1 %183, label %184, label %190

184:                                              ; preds = %178
  %185 = call i32 (i8*, ...) @brcmf_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0))
  %186 = load %struct.brcmf_sdio_hdrinfo*, %struct.brcmf_sdio_hdrinfo** %8, align 8
  %187 = getelementptr inbounds %struct.brcmf_sdio_hdrinfo, %struct.brcmf_sdio_hdrinfo* %186, i32 0, i32 0
  store i32 0, i32* %187, align 8
  %188 = load i32, i32* @EINVAL, align 4
  %189 = sub nsw i32 0, %188
  store i32 %189, i32* %5, align 4
  br label %349

190:                                              ; preds = %178, %172, %168
  %191 = load i64*, i64** %7, align 8
  %192 = call i32 @brcmf_sdio_getdatoffset(i64* %191)
  %193 = load %struct.brcmf_sdio_hdrinfo*, %struct.brcmf_sdio_hdrinfo** %8, align 8
  %194 = getelementptr inbounds %struct.brcmf_sdio_hdrinfo, %struct.brcmf_sdio_hdrinfo* %193, i32 0, i32 1
  store i32 %192, i32* %194, align 4
  %195 = load %struct.brcmf_sdio_hdrinfo*, %struct.brcmf_sdio_hdrinfo** %8, align 8
  %196 = getelementptr inbounds %struct.brcmf_sdio_hdrinfo, %struct.brcmf_sdio_hdrinfo* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = load i32, i32* @SDPCM_HDRLEN, align 4
  %199 = icmp slt i32 %197, %198
  br i1 %199, label %208, label %200

200:                                              ; preds = %190
  %201 = load %struct.brcmf_sdio_hdrinfo*, %struct.brcmf_sdio_hdrinfo** %8, align 8
  %202 = getelementptr inbounds %struct.brcmf_sdio_hdrinfo, %struct.brcmf_sdio_hdrinfo* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 4
  %204 = load %struct.brcmf_sdio_hdrinfo*, %struct.brcmf_sdio_hdrinfo** %8, align 8
  %205 = getelementptr inbounds %struct.brcmf_sdio_hdrinfo, %struct.brcmf_sdio_hdrinfo* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = icmp sgt i32 %203, %206
  br i1 %207, label %208, label %222

208:                                              ; preds = %200, %190
  %209 = load i64, i64* %12, align 8
  %210 = call i32 (i8*, ...) @brcmf_err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i64 %209)
  %211 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %6, align 8
  %212 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %211, i32 0, i32 4
  %213 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %212, i32 0, i32 4
  %214 = load i32, i32* %213, align 8
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %213, align 8
  %216 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %6, align 8
  %217 = call i32 @brcmf_sdio_rxfail(%struct.brcmf_sdio* %216, i32 0, i32 0)
  %218 = load %struct.brcmf_sdio_hdrinfo*, %struct.brcmf_sdio_hdrinfo** %8, align 8
  %219 = getelementptr inbounds %struct.brcmf_sdio_hdrinfo, %struct.brcmf_sdio_hdrinfo* %218, i32 0, i32 0
  store i32 0, i32* %219, align 8
  %220 = load i32, i32* @ENXIO, align 4
  %221 = sub nsw i32 0, %220
  store i32 %221, i32* %5, align 4
  br label %349

222:                                              ; preds = %200
  %223 = load %struct.brcmf_sdio_hdrinfo*, %struct.brcmf_sdio_hdrinfo** %8, align 8
  %224 = getelementptr inbounds %struct.brcmf_sdio_hdrinfo, %struct.brcmf_sdio_hdrinfo* %223, i32 0, i32 2
  %225 = load i64, i64* %224, align 8
  %226 = load i64, i64* %12, align 8
  %227 = icmp ne i64 %225, %226
  br i1 %227, label %228, label %243

228:                                              ; preds = %222
  %229 = load i32, i32* @SDIO, align 4
  %230 = load i64, i64* %12, align 8
  %231 = load %struct.brcmf_sdio_hdrinfo*, %struct.brcmf_sdio_hdrinfo** %8, align 8
  %232 = getelementptr inbounds %struct.brcmf_sdio_hdrinfo, %struct.brcmf_sdio_hdrinfo* %231, i32 0, i32 2
  %233 = load i64, i64* %232, align 8
  %234 = call i32 @brcmf_dbg(i32 %229, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0), i64 %230, i64 %233)
  %235 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %6, align 8
  %236 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %235, i32 0, i32 4
  %237 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %236, i32 0, i32 3
  %238 = load i32, i32* %237, align 4
  %239 = add nsw i32 %238, 1
  store i32 %239, i32* %237, align 4
  %240 = load i64, i64* %12, align 8
  %241 = load %struct.brcmf_sdio_hdrinfo*, %struct.brcmf_sdio_hdrinfo** %8, align 8
  %242 = getelementptr inbounds %struct.brcmf_sdio_hdrinfo, %struct.brcmf_sdio_hdrinfo* %241, i32 0, i32 2
  store i64 %240, i64* %242, align 8
  br label %243

243:                                              ; preds = %228, %222
  %244 = load i32, i32* %9, align 4
  %245 = load i32, i32* @BRCMF_SDIO_FT_SUB, align 4
  %246 = icmp eq i32 %244, %245
  br i1 %246, label %247, label %248

247:                                              ; preds = %243
  store i32 0, i32* %5, align 4
  br label %349

248:                                              ; preds = %243
  %249 = load i64, i64* %15, align 8
  %250 = load i64, i64* @SDPCM_NEXTLEN_MASK, align 8
  %251 = and i64 %249, %250
  %252 = load i64, i64* @SDPCM_NEXTLEN_SHIFT, align 8
  %253 = ashr i64 %251, %252
  %254 = trunc i64 %253 to i32
  %255 = load %struct.brcmf_sdio_hdrinfo*, %struct.brcmf_sdio_hdrinfo** %8, align 8
  %256 = getelementptr inbounds %struct.brcmf_sdio_hdrinfo, %struct.brcmf_sdio_hdrinfo* %255, i32 0, i32 3
  store i32 %254, i32* %256, align 8
  %257 = load %struct.brcmf_sdio_hdrinfo*, %struct.brcmf_sdio_hdrinfo** %8, align 8
  %258 = getelementptr inbounds %struct.brcmf_sdio_hdrinfo, %struct.brcmf_sdio_hdrinfo* %257, i32 0, i32 3
  %259 = load i32, i32* %258, align 8
  %260 = shl i32 %259, 4
  %261 = load i32, i32* @MAX_RX_DATASZ, align 4
  %262 = icmp sgt i32 %260, %261
  br i1 %262, label %263, label %275

263:                                              ; preds = %248
  %264 = load %struct.brcmf_sdio_hdrinfo*, %struct.brcmf_sdio_hdrinfo** %8, align 8
  %265 = getelementptr inbounds %struct.brcmf_sdio_hdrinfo, %struct.brcmf_sdio_hdrinfo* %264, i32 0, i32 4
  %266 = load i64, i64* %265, align 8
  %267 = load i64, i64* @SDPCM_GLOM_CHANNEL, align 8
  %268 = icmp ne i64 %266, %267
  br i1 %268, label %269, label %272

269:                                              ; preds = %263
  %270 = load i64, i64* %12, align 8
  %271 = call i32 (i8*, ...) @brcmf_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i64 0, i64 0), i64 %270)
  br label %272

272:                                              ; preds = %269, %263
  %273 = load %struct.brcmf_sdio_hdrinfo*, %struct.brcmf_sdio_hdrinfo** %8, align 8
  %274 = getelementptr inbounds %struct.brcmf_sdio_hdrinfo, %struct.brcmf_sdio_hdrinfo* %273, i32 0, i32 3
  store i32 0, i32* %274, align 8
  br label %275

275:                                              ; preds = %272, %248
  %276 = load i64*, i64** %7, align 8
  %277 = getelementptr inbounds i64, i64* %276, i64 4
  %278 = bitcast i64* %277 to i32*
  %279 = load i32, i32* %278, align 4
  %280 = call i64 @le32_to_cpu(i32 %279)
  store i64 %280, i64* %15, align 8
  %281 = load i64, i64* %15, align 8
  %282 = load i64, i64* @SDPCM_FCMASK_MASK, align 8
  %283 = and i64 %281, %282
  store i64 %283, i64* %13, align 8
  %284 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %6, align 8
  %285 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %284, i32 0, i32 1
  %286 = load i64, i64* %285, align 8
  %287 = load i64, i64* %13, align 8
  %288 = icmp ne i64 %286, %287
  br i1 %288, label %289, label %326

289:                                              ; preds = %275
  %290 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %6, align 8
  %291 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %290, i32 0, i32 1
  %292 = load i64, i64* %291, align 8
  %293 = xor i64 %292, -1
  %294 = load i64, i64* %13, align 8
  %295 = and i64 %293, %294
  %296 = icmp ne i64 %295, 0
  br i1 %296, label %297, label %303

297:                                              ; preds = %289
  %298 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %6, align 8
  %299 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %298, i32 0, i32 4
  %300 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %299, i32 0, i32 2
  %301 = load i32, i32* %300, align 8
  %302 = add nsw i32 %301, 1
  store i32 %302, i32* %300, align 8
  br label %303

303:                                              ; preds = %297, %289
  %304 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %6, align 8
  %305 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %304, i32 0, i32 1
  %306 = load i64, i64* %305, align 8
  %307 = load i64, i64* %13, align 8
  %308 = xor i64 %307, -1
  %309 = and i64 %306, %308
  %310 = icmp ne i64 %309, 0
  br i1 %310, label %311, label %317

311:                                              ; preds = %303
  %312 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %6, align 8
  %313 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %312, i32 0, i32 4
  %314 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %313, i32 0, i32 1
  %315 = load i32, i32* %314, align 4
  %316 = add nsw i32 %315, 1
  store i32 %316, i32* %314, align 4
  br label %317

317:                                              ; preds = %311, %303
  %318 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %6, align 8
  %319 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %318, i32 0, i32 4
  %320 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %319, i32 0, i32 0
  %321 = load i32, i32* %320, align 8
  %322 = add nsw i32 %321, 1
  store i32 %322, i32* %320, align 8
  %323 = load i64, i64* %13, align 8
  %324 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %6, align 8
  %325 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %324, i32 0, i32 1
  store i64 %323, i64* %325, align 8
  br label %326

326:                                              ; preds = %317, %275
  %327 = load i64, i64* %15, align 8
  %328 = load i64, i64* @SDPCM_WINDOW_MASK, align 8
  %329 = and i64 %327, %328
  %330 = load i64, i64* @SDPCM_WINDOW_SHIFT, align 8
  %331 = ashr i64 %329, %330
  store i64 %331, i64* %14, align 8
  %332 = load i64, i64* %14, align 8
  %333 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %6, align 8
  %334 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %333, i32 0, i32 2
  %335 = load i64, i64* %334, align 8
  %336 = sub nsw i64 %332, %335
  %337 = icmp sgt i64 %336, 64
  br i1 %337, label %338, label %345

338:                                              ; preds = %326
  %339 = load i64, i64* %12, align 8
  %340 = call i32 (i8*, ...) @brcmf_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.11, i64 0, i64 0), i64 %339)
  %341 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %6, align 8
  %342 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %341, i32 0, i32 2
  %343 = load i64, i64* %342, align 8
  %344 = add nsw i64 %343, 2
  store i64 %344, i64* %14, align 8
  br label %345

345:                                              ; preds = %338, %326
  %346 = load i64, i64* %14, align 8
  %347 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %6, align 8
  %348 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %347, i32 0, i32 3
  store i64 %346, i64* %348, align 8
  store i32 0, i32* %5, align 4
  br label %349

349:                                              ; preds = %345, %247, %208, %184, %162, %139, %109, %86, %72, %54, %39, %28
  %350 = load i32, i32* %5, align 4
  ret i32 %350
}

declare dso_local i32 @trace_brcmf_sdpcm_hdr(i32, i64*) #1

declare dso_local i32 @get_unaligned_le16(i64*) #1

declare dso_local i32 @brcmf_err(i8*, ...) #1

declare dso_local i32 @brcmf_sdio_rxfail(%struct.brcmf_sdio*, i32, i32) #1

declare dso_local i32 @roundup(i32, i32) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i64 @SDPCM_GLOMDESC(i64*) #1

declare dso_local i32 @brcmf_sdio_getdatoffset(i64*) #1

declare dso_local i32 @brcmf_dbg(i32, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
