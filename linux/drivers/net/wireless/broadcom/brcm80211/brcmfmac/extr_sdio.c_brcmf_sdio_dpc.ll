; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_sdio.c_brcmf_sdio_dpc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_sdio.c_brcmf_sdio_dpc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_sdio = type { i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, %struct.brcmf_sdio_dev*, i32, i64, i32, i32, i32, i64, %struct.TYPE_4__, i32, i64, %struct.TYPE_3__* }
%struct.brcmf_sdio_dev = type { i64, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }

@intstatus = common dso_local global i64 0, align 8
@SDIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"Enter\0A\00", align 1
@CLK_PENDING = common dso_local global i64 0, align 8
@SBSDIO_FUNC1_CHIPCLKCSR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"DPC: PENDING, devctl 0x%02x clkctl 0x%02x\0A\00", align 1
@SBSDIO_DEVICE_CTL = common dso_local global i32 0, align 4
@SBSDIO_DEVCTL_CA_INT_ONLY = common dso_local global i32 0, align 4
@CLK_AVAIL = common dso_local global i64 0, align 8
@I_HMB_FC_CHANGE = common dso_local global i64 0, align 8
@I_HMB_FC_STATE = common dso_local global i64 0, align 8
@I_HMB_HOST_INT = common dso_local global i64 0, align 8
@I_WR_OOSYNC = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [26 x i8] c"Dongle reports WR_OOSYNC\0A\00", align 1
@I_RD_OOSYNC = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [26 x i8] c"Dongle reports RD_OOSYNC\0A\00", align 1
@I_SBINT = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [22 x i8] c"Dongle reports SBINT\0A\00", align 1
@I_CHIPACTIVE = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [27 x i8] c"Dongle reports CHIPACTIVE\0A\00", align 1
@I_HMB_FRAME_IND = common dso_local global i64 0, align 8
@BRCMF_SDIOD_DATA = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [54 x i8] c"failed backplane access over SDIO, halting operation\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcmf_sdio*)* @brcmf_sdio_dpc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @brcmf_sdio_dpc(%struct.brcmf_sdio* %0) #0 {
  %2 = alloca %struct.brcmf_sdio*, align 8
  %3 = alloca %struct.brcmf_sdio_dev*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.brcmf_sdio* %0, %struct.brcmf_sdio** %2, align 8
  %12 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %2, align 8
  %13 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %12, i32 0, i32 10
  %14 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %13, align 8
  store %struct.brcmf_sdio_dev* %14, %struct.brcmf_sdio_dev** %3, align 8
  store i64 0, i64* %4, align 8
  %15 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %2, align 8
  %16 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %15, i32 0, i32 20
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @intstatus, align 8
  %21 = trunc i64 %20 to i32
  %22 = call i64 @SD_REG(i32 %21)
  %23 = add i64 %19, %22
  store i64 %23, i64* %5, align 8
  %24 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %2, align 8
  %25 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %24, i32 0, i32 19
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %7, align 8
  store i32 0, i32* %9, align 4
  %27 = load i32, i32* @SDIO, align 4
  %28 = call i32 (i32, i8*, ...) @brcmf_dbg(i32 %27, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %29 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %2, align 8
  %30 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %29, i32 0, i32 10
  %31 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %30, align 8
  %32 = getelementptr inbounds %struct.brcmf_sdio_dev, %struct.brcmf_sdio_dev* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @sdio_claim_host(i32 %33)
  %35 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %2, align 8
  %36 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %35, i32 0, i32 18
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %78, label %39

39:                                               ; preds = %1
  %40 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %2, align 8
  %41 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @CLK_PENDING, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %78

45:                                               ; preds = %39
  store i32 0, i32* %11, align 4
  %46 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %2, align 8
  %47 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %46, i32 0, i32 10
  %48 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %47, align 8
  %49 = load i32, i32* @SBSDIO_FUNC1_CHIPCLKCSR, align 4
  %50 = call i32 @brcmf_sdiod_readb(%struct.brcmf_sdio_dev* %48, i32 %49, i32* %9)
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* @SDIO, align 4
  %52 = load i32, i32* %11, align 4
  %53 = load i32, i32* %10, align 4
  %54 = call i32 (i32, i8*, ...) @brcmf_dbg(i32 %51, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %52, i32 %53)
  %55 = load i32, i32* %10, align 4
  %56 = call i64 @SBSDIO_HTAV(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %77

58:                                               ; preds = %45
  %59 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %2, align 8
  %60 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %59, i32 0, i32 10
  %61 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %60, align 8
  %62 = load i32, i32* @SBSDIO_DEVICE_CTL, align 4
  %63 = call i32 @brcmf_sdiod_readb(%struct.brcmf_sdio_dev* %61, i32 %62, i32* %9)
  store i32 %63, i32* %11, align 4
  %64 = load i32, i32* @SBSDIO_DEVCTL_CA_INT_ONLY, align 4
  %65 = xor i32 %64, -1
  %66 = load i32, i32* %11, align 4
  %67 = and i32 %66, %65
  store i32 %67, i32* %11, align 4
  %68 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %2, align 8
  %69 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %68, i32 0, i32 10
  %70 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %69, align 8
  %71 = load i32, i32* @SBSDIO_DEVICE_CTL, align 4
  %72 = load i32, i32* %11, align 4
  %73 = call i32 @brcmf_sdiod_writeb(%struct.brcmf_sdio_dev* %70, i32 %71, i32 %72, i32* %9)
  %74 = load i64, i64* @CLK_AVAIL, align 8
  %75 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %2, align 8
  %76 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %75, i32 0, i32 0
  store i64 %74, i64* %76, align 8
  br label %77

77:                                               ; preds = %58, %45
  br label %78

78:                                               ; preds = %77, %39, %1
  %79 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %2, align 8
  %80 = call i32 @brcmf_sdio_bus_sleep(%struct.brcmf_sdio* %79, i32 0, i32 1)
  %81 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %2, align 8
  %82 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %81, i32 0, i32 8
  %83 = call i64 @atomic_read(i32* %82)
  %84 = icmp sgt i64 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %78
  %86 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %2, align 8
  %87 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %86, i32 0, i32 8
  %88 = call i32 @atomic_set(i32* %87, i32 0)
  %89 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %2, align 8
  %90 = call i32 @brcmf_sdio_intr_rstatus(%struct.brcmf_sdio* %89)
  store i32 %90, i32* %9, align 4
  br label %91

91:                                               ; preds = %85, %78
  %92 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %2, align 8
  %93 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %92, i32 0, i32 9
  %94 = call i64 @atomic_xchg(i32* %93, i32 0)
  store i64 %94, i64* %6, align 8
  %95 = load i64, i64* %6, align 8
  %96 = load i64, i64* @I_HMB_FC_CHANGE, align 8
  %97 = and i64 %95, %96
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %135

99:                                               ; preds = %91
  %100 = load i64, i64* @I_HMB_FC_CHANGE, align 8
  %101 = xor i64 %100, -1
  %102 = load i64, i64* %6, align 8
  %103 = and i64 %102, %101
  store i64 %103, i64* %6, align 8
  %104 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %3, align 8
  %105 = load i64, i64* %5, align 8
  %106 = load i64, i64* @I_HMB_FC_CHANGE, align 8
  %107 = call i32 @brcmf_sdiod_writel(%struct.brcmf_sdio_dev* %104, i64 %105, i64 %106, i32* %9)
  %108 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %3, align 8
  %109 = load i64, i64* %5, align 8
  %110 = call i64 @brcmf_sdiod_readl(%struct.brcmf_sdio_dev* %108, i64 %109, i32* %9)
  store i64 %110, i64* %4, align 8
  %111 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %2, align 8
  %112 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %111, i32 0, i32 17
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = add nsw i32 %114, 2
  store i32 %115, i32* %113, align 8
  %116 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %2, align 8
  %117 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %116, i32 0, i32 7
  %118 = load i64, i64* %4, align 8
  %119 = load i64, i64* @I_HMB_FC_STATE, align 8
  %120 = load i64, i64* @I_HMB_FC_CHANGE, align 8
  %121 = or i64 %119, %120
  %122 = and i64 %118, %121
  %123 = icmp ne i64 %122, 0
  %124 = xor i1 %123, true
  %125 = xor i1 %124, true
  %126 = zext i1 %125 to i32
  %127 = call i32 @atomic_set(i32* %117, i32 %126)
  %128 = load i64, i64* %4, align 8
  %129 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %2, align 8
  %130 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = and i64 %128, %131
  %133 = load i64, i64* %6, align 8
  %134 = or i64 %133, %132
  store i64 %134, i64* %6, align 8
  br label %135

135:                                              ; preds = %99, %91
  %136 = load i64, i64* %6, align 8
  %137 = load i64, i64* @I_HMB_HOST_INT, align 8
  %138 = and i64 %136, %137
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %149

140:                                              ; preds = %135
  %141 = load i64, i64* @I_HMB_HOST_INT, align 8
  %142 = xor i64 %141, -1
  %143 = load i64, i64* %6, align 8
  %144 = and i64 %143, %142
  store i64 %144, i64* %6, align 8
  %145 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %2, align 8
  %146 = call i64 @brcmf_sdio_hostmail(%struct.brcmf_sdio* %145)
  %147 = load i64, i64* %6, align 8
  %148 = or i64 %147, %146
  store i64 %148, i64* %6, align 8
  br label %149

149:                                              ; preds = %140, %135
  %150 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %2, align 8
  %151 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %150, i32 0, i32 10
  %152 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %151, align 8
  %153 = getelementptr inbounds %struct.brcmf_sdio_dev, %struct.brcmf_sdio_dev* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 8
  %155 = call i32 @sdio_release_host(i32 %154)
  %156 = load i64, i64* %6, align 8
  %157 = load i64, i64* @I_WR_OOSYNC, align 8
  %158 = and i64 %156, %157
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %166

160:                                              ; preds = %149
  %161 = call i32 @brcmf_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %162 = load i64, i64* @I_WR_OOSYNC, align 8
  %163 = xor i64 %162, -1
  %164 = load i64, i64* %6, align 8
  %165 = and i64 %164, %163
  store i64 %165, i64* %6, align 8
  br label %166

166:                                              ; preds = %160, %149
  %167 = load i64, i64* %6, align 8
  %168 = load i64, i64* @I_RD_OOSYNC, align 8
  %169 = and i64 %167, %168
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %177

171:                                              ; preds = %166
  %172 = call i32 @brcmf_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %173 = load i64, i64* @I_RD_OOSYNC, align 8
  %174 = xor i64 %173, -1
  %175 = load i64, i64* %6, align 8
  %176 = and i64 %175, %174
  store i64 %176, i64* %6, align 8
  br label %177

177:                                              ; preds = %171, %166
  %178 = load i64, i64* %6, align 8
  %179 = load i64, i64* @I_SBINT, align 8
  %180 = and i64 %178, %179
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %188

182:                                              ; preds = %177
  %183 = call i32 @brcmf_err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  %184 = load i64, i64* @I_SBINT, align 8
  %185 = xor i64 %184, -1
  %186 = load i64, i64* %6, align 8
  %187 = and i64 %186, %185
  store i64 %187, i64* %6, align 8
  br label %188

188:                                              ; preds = %182, %177
  %189 = load i64, i64* %6, align 8
  %190 = load i64, i64* @I_CHIPACTIVE, align 8
  %191 = and i64 %189, %190
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %200

193:                                              ; preds = %188
  %194 = load i32, i32* @SDIO, align 4
  %195 = call i32 (i32, i8*, ...) @brcmf_dbg(i32 %194, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  %196 = load i64, i64* @I_CHIPACTIVE, align 8
  %197 = xor i64 %196, -1
  %198 = load i64, i64* %6, align 8
  %199 = and i64 %198, %197
  store i64 %199, i64* %6, align 8
  br label %200

200:                                              ; preds = %193, %188
  %201 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %2, align 8
  %202 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %201, i32 0, i32 16
  %203 = load i64, i64* %202, align 8
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %210

205:                                              ; preds = %200
  %206 = load i64, i64* @I_HMB_FRAME_IND, align 8
  %207 = xor i64 %206, -1
  %208 = load i64, i64* %6, align 8
  %209 = and i64 %208, %207
  store i64 %209, i64* %6, align 8
  br label %210

210:                                              ; preds = %205, %200
  %211 = load i64, i64* %6, align 8
  %212 = load i64, i64* @I_HMB_FRAME_IND, align 8
  %213 = and i64 %211, %212
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %237

215:                                              ; preds = %210
  %216 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %2, align 8
  %217 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %216, i32 0, i32 0
  %218 = load i64, i64* %217, align 8
  %219 = load i64, i64* @CLK_AVAIL, align 8
  %220 = icmp eq i64 %218, %219
  br i1 %220, label %221, label %237

221:                                              ; preds = %215
  %222 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %2, align 8
  %223 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %2, align 8
  %224 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %223, i32 0, i32 15
  %225 = load i32, i32* %224, align 8
  %226 = call i32 @brcmf_sdio_readframes(%struct.brcmf_sdio* %222, i32 %225)
  %227 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %2, align 8
  %228 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %227, i32 0, i32 12
  %229 = load i64, i64* %228, align 8
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %236, label %231

231:                                              ; preds = %221
  %232 = load i64, i64* @I_HMB_FRAME_IND, align 8
  %233 = xor i64 %232, -1
  %234 = load i64, i64* %6, align 8
  %235 = and i64 %234, %233
  store i64 %235, i64* %6, align 8
  br label %236

236:                                              ; preds = %231, %221
  br label %237

237:                                              ; preds = %236, %215, %210
  %238 = load i64, i64* %6, align 8
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %240, label %245

240:                                              ; preds = %237
  %241 = load i64, i64* %6, align 8
  %242 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %2, align 8
  %243 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %242, i32 0, i32 9
  %244 = call i32 @atomic_or(i64 %241, i32* %243)
  br label %245

245:                                              ; preds = %240, %237
  %246 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %2, align 8
  %247 = call i32 @brcmf_sdio_clrintr(%struct.brcmf_sdio* %246)
  %248 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %2, align 8
  %249 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %248, i32 0, i32 2
  %250 = load i32, i32* %249, align 8
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %297

252:                                              ; preds = %245
  %253 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %2, align 8
  %254 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %253, i32 0, i32 0
  %255 = load i64, i64* %254, align 8
  %256 = load i64, i64* @CLK_AVAIL, align 8
  %257 = icmp eq i64 %255, %256
  br i1 %257, label %258, label %297

258:                                              ; preds = %252
  %259 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %2, align 8
  %260 = call i64 @data_ok(%struct.brcmf_sdio* %259)
  %261 = icmp ne i64 %260, 0
  br i1 %261, label %262, label %297

262:                                              ; preds = %258
  %263 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %2, align 8
  %264 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %263, i32 0, i32 10
  %265 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %264, align 8
  %266 = getelementptr inbounds %struct.brcmf_sdio_dev, %struct.brcmf_sdio_dev* %265, i32 0, i32 1
  %267 = load i32, i32* %266, align 8
  %268 = call i32 @sdio_claim_host(i32 %267)
  %269 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %2, align 8
  %270 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %269, i32 0, i32 2
  %271 = load i32, i32* %270, align 8
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %288

273:                                              ; preds = %262
  %274 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %2, align 8
  %275 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %2, align 8
  %276 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %275, i32 0, i32 14
  %277 = load i32, i32* %276, align 4
  %278 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %2, align 8
  %279 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %278, i32 0, i32 13
  %280 = load i32, i32* %279, align 8
  %281 = call i32 @brcmf_sdio_tx_ctrlframe(%struct.brcmf_sdio* %274, i32 %277, i32 %280)
  store i32 %281, i32* %9, align 4
  %282 = load i32, i32* %9, align 4
  %283 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %2, align 8
  %284 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %283, i32 0, i32 3
  store i32 %282, i32* %284, align 4
  %285 = call i32 (...) @wmb()
  %286 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %2, align 8
  %287 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %286, i32 0, i32 2
  store i32 0, i32* %287, align 8
  br label %288

288:                                              ; preds = %273, %262
  %289 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %2, align 8
  %290 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %289, i32 0, i32 10
  %291 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %290, align 8
  %292 = getelementptr inbounds %struct.brcmf_sdio_dev, %struct.brcmf_sdio_dev* %291, i32 0, i32 1
  %293 = load i32, i32* %292, align 8
  %294 = call i32 @sdio_release_host(i32 %293)
  %295 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %2, align 8
  %296 = call i32 @brcmf_sdio_wait_event_wakeup(%struct.brcmf_sdio* %295)
  br label %297

297:                                              ; preds = %288, %258, %252, %245
  %298 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %2, align 8
  %299 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %298, i32 0, i32 0
  %300 = load i64, i64* %299, align 8
  %301 = load i64, i64* @CLK_AVAIL, align 8
  %302 = icmp eq i64 %300, %301
  br i1 %302, label %303, label %342

303:                                              ; preds = %297
  %304 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %2, align 8
  %305 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %304, i32 0, i32 7
  %306 = call i64 @atomic_read(i32* %305)
  %307 = icmp ne i64 %306, 0
  br i1 %307, label %342, label %308

308:                                              ; preds = %303
  %309 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %2, align 8
  %310 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %309, i32 0, i32 6
  %311 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %2, align 8
  %312 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %311, i32 0, i32 5
  %313 = load i32, i32* %312, align 4
  %314 = xor i32 %313, -1
  %315 = call i64 @brcmu_pktq_mlen(i32* %310, i32 %314)
  %316 = icmp ne i64 %315, 0
  br i1 %316, label %317, label %342

317:                                              ; preds = %308
  %318 = load i64, i64* %7, align 8
  %319 = icmp ne i64 %318, 0
  br i1 %319, label %320, label %342

320:                                              ; preds = %317
  %321 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %2, align 8
  %322 = call i64 @data_ok(%struct.brcmf_sdio* %321)
  %323 = icmp ne i64 %322, 0
  br i1 %323, label %324, label %342

324:                                              ; preds = %320
  %325 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %2, align 8
  %326 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %325, i32 0, i32 12
  %327 = load i64, i64* %326, align 8
  %328 = icmp ne i64 %327, 0
  br i1 %328, label %329, label %335

329:                                              ; preds = %324
  %330 = load i64, i64* %7, align 8
  %331 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %2, align 8
  %332 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %331, i32 0, i32 11
  %333 = load i32, i32* %332, align 8
  %334 = call i64 @min(i64 %330, i32 %333)
  br label %337

335:                                              ; preds = %324
  %336 = load i64, i64* %7, align 8
  br label %337

337:                                              ; preds = %335, %329
  %338 = phi i64 [ %334, %329 ], [ %336, %335 ]
  store i64 %338, i64* %8, align 8
  %339 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %2, align 8
  %340 = load i64, i64* %8, align 8
  %341 = call i32 @brcmf_sdio_sendfromq(%struct.brcmf_sdio* %339, i64 %340)
  br label %342

342:                                              ; preds = %337, %320, %317, %308, %303, %297
  %343 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %2, align 8
  %344 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %343, i32 0, i32 10
  %345 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %344, align 8
  %346 = getelementptr inbounds %struct.brcmf_sdio_dev, %struct.brcmf_sdio_dev* %345, i32 0, i32 0
  %347 = load i64, i64* %346, align 8
  %348 = load i64, i64* @BRCMF_SDIOD_DATA, align 8
  %349 = icmp ne i64 %347, %348
  br i1 %349, label %353, label %350

350:                                              ; preds = %342
  %351 = load i32, i32* %9, align 4
  %352 = icmp ne i32 %351, 0
  br i1 %352, label %353, label %391

353:                                              ; preds = %350, %342
  %354 = call i32 @brcmf_err(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.6, i64 0, i64 0))
  %355 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %2, align 8
  %356 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %355, i32 0, i32 9
  %357 = call i32 @atomic_set(i32* %356, i32 0)
  %358 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %2, align 8
  %359 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %358, i32 0, i32 2
  %360 = load i32, i32* %359, align 8
  %361 = icmp ne i32 %360, 0
  br i1 %361, label %362, label %390

362:                                              ; preds = %353
  %363 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %2, align 8
  %364 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %363, i32 0, i32 10
  %365 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %364, align 8
  %366 = getelementptr inbounds %struct.brcmf_sdio_dev, %struct.brcmf_sdio_dev* %365, i32 0, i32 1
  %367 = load i32, i32* %366, align 8
  %368 = call i32 @sdio_claim_host(i32 %367)
  %369 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %2, align 8
  %370 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %369, i32 0, i32 2
  %371 = load i32, i32* %370, align 8
  %372 = icmp ne i32 %371, 0
  br i1 %372, label %373, label %383

373:                                              ; preds = %362
  %374 = load i32, i32* @ENODEV, align 4
  %375 = sub nsw i32 0, %374
  %376 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %2, align 8
  %377 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %376, i32 0, i32 3
  store i32 %375, i32* %377, align 4
  %378 = call i32 (...) @wmb()
  %379 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %2, align 8
  %380 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %379, i32 0, i32 2
  store i32 0, i32* %380, align 8
  %381 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %2, align 8
  %382 = call i32 @brcmf_sdio_wait_event_wakeup(%struct.brcmf_sdio* %381)
  br label %383

383:                                              ; preds = %373, %362
  %384 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %2, align 8
  %385 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %384, i32 0, i32 10
  %386 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %385, align 8
  %387 = getelementptr inbounds %struct.brcmf_sdio_dev, %struct.brcmf_sdio_dev* %386, i32 0, i32 1
  %388 = load i32, i32* %387, align 8
  %389 = call i32 @sdio_release_host(i32 %388)
  br label %390

390:                                              ; preds = %383, %353
  br label %423

391:                                              ; preds = %350
  %392 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %2, align 8
  %393 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %392, i32 0, i32 9
  %394 = call i64 @atomic_read(i32* %393)
  %395 = icmp ne i64 %394, 0
  br i1 %395, label %419, label %396

396:                                              ; preds = %391
  %397 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %2, align 8
  %398 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %397, i32 0, i32 8
  %399 = call i64 @atomic_read(i32* %398)
  %400 = icmp sgt i64 %399, 0
  br i1 %400, label %419, label %401

401:                                              ; preds = %396
  %402 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %2, align 8
  %403 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %402, i32 0, i32 7
  %404 = call i64 @atomic_read(i32* %403)
  %405 = icmp ne i64 %404, 0
  br i1 %405, label %422, label %406

406:                                              ; preds = %401
  %407 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %2, align 8
  %408 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %407, i32 0, i32 6
  %409 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %2, align 8
  %410 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %409, i32 0, i32 5
  %411 = load i32, i32* %410, align 4
  %412 = xor i32 %411, -1
  %413 = call i64 @brcmu_pktq_mlen(i32* %408, i32 %412)
  %414 = icmp ne i64 %413, 0
  br i1 %414, label %415, label %422

415:                                              ; preds = %406
  %416 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %2, align 8
  %417 = call i64 @data_ok(%struct.brcmf_sdio* %416)
  %418 = icmp ne i64 %417, 0
  br i1 %418, label %419, label %422

419:                                              ; preds = %415, %396, %391
  %420 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %2, align 8
  %421 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %420, i32 0, i32 4
  store i32 1, i32* %421, align 8
  br label %422

422:                                              ; preds = %419, %415, %406, %401
  br label %423

423:                                              ; preds = %422, %390
  ret void
}

declare dso_local i64 @SD_REG(i32) #1

declare dso_local i32 @brcmf_dbg(i32, i8*, ...) #1

declare dso_local i32 @sdio_claim_host(i32) #1

declare dso_local i32 @brcmf_sdiod_readb(%struct.brcmf_sdio_dev*, i32, i32*) #1

declare dso_local i64 @SBSDIO_HTAV(i32) #1

declare dso_local i32 @brcmf_sdiod_writeb(%struct.brcmf_sdio_dev*, i32, i32, i32*) #1

declare dso_local i32 @brcmf_sdio_bus_sleep(%struct.brcmf_sdio*, i32, i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @brcmf_sdio_intr_rstatus(%struct.brcmf_sdio*) #1

declare dso_local i64 @atomic_xchg(i32*, i32) #1

declare dso_local i32 @brcmf_sdiod_writel(%struct.brcmf_sdio_dev*, i64, i64, i32*) #1

declare dso_local i64 @brcmf_sdiod_readl(%struct.brcmf_sdio_dev*, i64, i32*) #1

declare dso_local i64 @brcmf_sdio_hostmail(%struct.brcmf_sdio*) #1

declare dso_local i32 @sdio_release_host(i32) #1

declare dso_local i32 @brcmf_err(i8*) #1

declare dso_local i32 @brcmf_sdio_readframes(%struct.brcmf_sdio*, i32) #1

declare dso_local i32 @atomic_or(i64, i32*) #1

declare dso_local i32 @brcmf_sdio_clrintr(%struct.brcmf_sdio*) #1

declare dso_local i64 @data_ok(%struct.brcmf_sdio*) #1

declare dso_local i32 @brcmf_sdio_tx_ctrlframe(%struct.brcmf_sdio*, i32, i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @brcmf_sdio_wait_event_wakeup(%struct.brcmf_sdio*) #1

declare dso_local i64 @brcmu_pktq_mlen(i32*, i32) #1

declare dso_local i64 @min(i64, i32) #1

declare dso_local i32 @brcmf_sdio_sendfromq(%struct.brcmf_sdio*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
