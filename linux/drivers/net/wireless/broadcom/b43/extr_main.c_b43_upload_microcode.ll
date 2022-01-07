; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_main.c_b43_upload_microcode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_main.c_b43_upload_microcode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { i32, i32, %struct.TYPE_19__*, %struct.TYPE_18__, %struct.TYPE_12__* }
%struct.TYPE_19__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32, %struct.wiphy* }
%struct.wiphy = type { i32, i32 }
%struct.TYPE_18__ = type { i32, i32, i64, i32, i64, %struct.TYPE_16__, %struct.TYPE_14__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i64, i64 }
%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64, i64 }
%struct.TYPE_12__ = type { i32 }

@B43_MMIO_MACCTL = common dso_local global i32 0, align 4
@B43_MACCTL_PSM_RUN = common dso_local global i64 0, align 8
@B43_MACCTL_PSM_JMP0 = common dso_local global i64 0, align 8
@B43_SHM_SCRATCH = common dso_local global i32 0, align 4
@B43_SHM_SHARED = common dso_local global i32 0, align 4
@B43_SHM_UCODE = common dso_local global i32 0, align 4
@B43_SHM_AUTOINC_W = common dso_local global i32 0, align 4
@B43_MMIO_SHM_DATA = common dso_local global i32 0, align 4
@B43_SHM_HW = common dso_local global i32 0, align 4
@B43_MMIO_GEN_IRQ_REASON = common dso_local global i32 0, align 4
@B43_IRQ_ALL = common dso_local global i32 0, align 4
@B43_IRQ_MAC_SUSPENDED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"Microcode not responding\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@B43_SHM_SH_UCODEREV = common dso_local global i32 0, align 4
@B43_SHM_SH_UCODEPATCH = common dso_local global i32 0, align 4
@B43_SHM_SH_UCODEDATE = common dso_local global i32 0, align 4
@B43_SHM_SH_UCODETIME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [133 x i8] c"YOUR FIRMWARE IS TOO OLD. Firmware from binary drivers older than version 4.x is unsupported. You must upgrade your firmware files.\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@B43_FW_HDR_598 = common dso_local global i64 0, align 8
@B43_FW_HDR_410 = common dso_local global i64 0, align 8
@B43_FW_HDR_351 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [43 x i8] c"Loading OpenSource firmware version %u.%u\0A\00", align 1
@B43_FWCAPA_HWCRYPTO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [56 x i8] c"Hardware crypto acceleration not supported by firmware\0A\00", align 1
@B43_FWCAPA_QOS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"QoS in OpenFW not supported\0A\00", align 1
@.str.5 = private unnamed_addr constant [66 x i8] c"Loading firmware version %u.%u (20%.2i-%.2i-%.2i %.2i:%.2i:%.2i)\0A\00", align 1
@.str.6 = private unnamed_addr constant [82 x i8] c"No \22pcm5.fw\22 firmware file found. Hardware accelerated cryptography is disabled.\0A\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"%u.%u\00", align 1
@.str.8 = private unnamed_addr constant [119 x i8] c"You are using an old firmware image. Support for old firmware will be removed soon (official deadline was July 2008).\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.b43_wldev*)* @b43_upload_microcode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @b43_upload_microcode(%struct.b43_wldev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.b43_wldev*, align 8
  %4 = alloca %struct.wiphy*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %3, align 8
  %17 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %18 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %17, i32 0, i32 2
  %19 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %21, i32 0, i32 1
  %23 = load %struct.wiphy*, %struct.wiphy** %22, align 8
  store %struct.wiphy* %23, %struct.wiphy** %4, align 8
  store i64 4, i64* %5, align 8
  store i32 0, i32* %15, align 4
  %24 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %25 = load i32, i32* @B43_MMIO_MACCTL, align 4
  %26 = call i64 @b43_read32(%struct.b43_wldev* %24, i32 %25)
  store i64 %26, i64* %14, align 8
  %27 = load i64, i64* %14, align 8
  %28 = load i64, i64* @B43_MACCTL_PSM_RUN, align 8
  %29 = and i64 %27, %28
  %30 = call i32 @B43_WARN_ON(i64 %29)
  %31 = load i64, i64* @B43_MACCTL_PSM_JMP0, align 8
  %32 = load i64, i64* %14, align 8
  %33 = or i64 %32, %31
  store i64 %33, i64* %14, align 8
  %34 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %35 = load i32, i32* @B43_MMIO_MACCTL, align 4
  %36 = load i64, i64* %14, align 8
  %37 = trunc i64 %36 to i32
  %38 = call i32 @b43_write32(%struct.b43_wldev* %34, i32 %35, i32 %37)
  store i32 0, i32* %7, align 4
  br label %39

39:                                               ; preds = %47, %1
  %40 = load i32, i32* %7, align 4
  %41 = icmp ult i32 %40, 64
  br i1 %41, label %42, label %50

42:                                               ; preds = %39
  %43 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %44 = load i32, i32* @B43_SHM_SCRATCH, align 4
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @b43_shm_write16(%struct.b43_wldev* %43, i32 %44, i32 %45, i32 0)
  br label %47

47:                                               ; preds = %42
  %48 = load i32, i32* %7, align 4
  %49 = add i32 %48, 1
  store i32 %49, i32* %7, align 4
  br label %39

50:                                               ; preds = %39
  store i32 0, i32* %7, align 4
  br label %51

51:                                               ; preds = %59, %50
  %52 = load i32, i32* %7, align 4
  %53 = icmp ult i32 %52, 4096
  br i1 %53, label %54, label %62

54:                                               ; preds = %51
  %55 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %56 = load i32, i32* @B43_SHM_SHARED, align 4
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @b43_shm_write16(%struct.b43_wldev* %55, i32 %56, i32 %57, i32 0)
  br label %59

59:                                               ; preds = %54
  %60 = load i32, i32* %7, align 4
  %61 = add i32 %60, 2
  store i32 %61, i32* %7, align 4
  br label %51

62:                                               ; preds = %51
  %63 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %64 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %63, i32 0, i32 3
  %65 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %64, i32 0, i32 6
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = add i64 %69, 4
  %71 = inttoptr i64 %70 to i32*
  store i32* %71, i32** %6, align 8
  %72 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %73 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %72, i32 0, i32 3
  %74 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %73, i32 0, i32 6
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = sub i64 %78, 4
  %80 = udiv i64 %79, 4
  %81 = trunc i64 %80 to i32
  store i32 %81, i32* %8, align 4
  %82 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %83 = load i32, i32* @B43_SHM_UCODE, align 4
  %84 = load i32, i32* @B43_SHM_AUTOINC_W, align 4
  %85 = or i32 %83, %84
  %86 = call i32 @b43_shm_control_word(%struct.b43_wldev* %82, i32 %85, i32 0)
  store i32 0, i32* %7, align 4
  br label %87

87:                                               ; preds = %102, %62
  %88 = load i32, i32* %7, align 4
  %89 = load i32, i32* %8, align 4
  %90 = icmp ult i32 %88, %89
  br i1 %90, label %91, label %105

91:                                               ; preds = %87
  %92 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %93 = load i32, i32* @B43_MMIO_SHM_DATA, align 4
  %94 = load i32*, i32** %6, align 8
  %95 = load i32, i32* %7, align 4
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @be32_to_cpu(i32 %98)
  %100 = call i32 @b43_write32(%struct.b43_wldev* %92, i32 %93, i32 %99)
  %101 = call i32 @udelay(i32 10)
  br label %102

102:                                              ; preds = %91
  %103 = load i32, i32* %7, align 4
  %104 = add i32 %103, 1
  store i32 %104, i32* %7, align 4
  br label %87

105:                                              ; preds = %87
  %106 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %107 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %106, i32 0, i32 3
  %108 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %107, i32 0, i32 5
  %109 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %108, i32 0, i32 0
  %110 = load %struct.TYPE_15__*, %struct.TYPE_15__** %109, align 8
  %111 = icmp ne %struct.TYPE_15__* %110, null
  br i1 %111, label %112, label %160

112:                                              ; preds = %105
  %113 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %114 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %113, i32 0, i32 3
  %115 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %114, i32 0, i32 5
  %116 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %115, i32 0, i32 0
  %117 = load %struct.TYPE_15__*, %struct.TYPE_15__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = add i64 %119, 4
  %121 = inttoptr i64 %120 to i32*
  store i32* %121, i32** %6, align 8
  %122 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %123 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %122, i32 0, i32 3
  %124 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %123, i32 0, i32 5
  %125 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %124, i32 0, i32 0
  %126 = load %struct.TYPE_15__*, %struct.TYPE_15__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = sub i64 %128, 4
  %130 = udiv i64 %129, 4
  %131 = trunc i64 %130 to i32
  store i32 %131, i32* %8, align 4
  %132 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %133 = load i32, i32* @B43_SHM_HW, align 4
  %134 = call i32 @b43_shm_control_word(%struct.b43_wldev* %132, i32 %133, i32 490)
  %135 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %136 = load i32, i32* @B43_MMIO_SHM_DATA, align 4
  %137 = call i32 @b43_write32(%struct.b43_wldev* %135, i32 %136, i32 16384)
  %138 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %139 = load i32, i32* @B43_SHM_HW, align 4
  %140 = call i32 @b43_shm_control_word(%struct.b43_wldev* %138, i32 %139, i32 491)
  store i32 0, i32* %7, align 4
  br label %141

141:                                              ; preds = %156, %112
  %142 = load i32, i32* %7, align 4
  %143 = load i32, i32* %8, align 4
  %144 = icmp ult i32 %142, %143
  br i1 %144, label %145, label %159

145:                                              ; preds = %141
  %146 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %147 = load i32, i32* @B43_MMIO_SHM_DATA, align 4
  %148 = load i32*, i32** %6, align 8
  %149 = load i32, i32* %7, align 4
  %150 = zext i32 %149 to i64
  %151 = getelementptr inbounds i32, i32* %148, i64 %150
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @be32_to_cpu(i32 %152)
  %154 = call i32 @b43_write32(%struct.b43_wldev* %146, i32 %147, i32 %153)
  %155 = call i32 @udelay(i32 10)
  br label %156

156:                                              ; preds = %145
  %157 = load i32, i32* %7, align 4
  %158 = add i32 %157, 1
  store i32 %158, i32* %7, align 4
  br label %141

159:                                              ; preds = %141
  br label %160

160:                                              ; preds = %159, %105
  %161 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %162 = load i32, i32* @B43_MMIO_GEN_IRQ_REASON, align 4
  %163 = load i32, i32* @B43_IRQ_ALL, align 4
  %164 = call i32 @b43_write32(%struct.b43_wldev* %161, i32 %162, i32 %163)
  %165 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %166 = load i32, i32* @B43_MMIO_MACCTL, align 4
  %167 = load i64, i64* @B43_MACCTL_PSM_JMP0, align 8
  %168 = xor i64 %167, -1
  %169 = load i64, i64* @B43_MACCTL_PSM_RUN, align 8
  %170 = call i32 @b43_maskset32(%struct.b43_wldev* %165, i32 %166, i64 %168, i64 %169)
  store i32 0, i32* %7, align 4
  br label %171

171:                                              ; preds = %160, %195
  %172 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %173 = load i32, i32* @B43_MMIO_GEN_IRQ_REASON, align 4
  %174 = call i64 @b43_read32(%struct.b43_wldev* %172, i32 %173)
  store i64 %174, i64* %13, align 8
  %175 = load i64, i64* %13, align 8
  %176 = load i64, i64* @B43_IRQ_MAC_SUSPENDED, align 8
  %177 = icmp eq i64 %175, %176
  br i1 %177, label %178, label %179

178:                                              ; preds = %171
  br label %197

179:                                              ; preds = %171
  %180 = load i32, i32* %7, align 4
  %181 = add i32 %180, 1
  store i32 %181, i32* %7, align 4
  %182 = load i32, i32* %7, align 4
  %183 = icmp uge i32 %182, 20
  br i1 %183, label %184, label %195

184:                                              ; preds = %179
  %185 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %186 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %185, i32 0, i32 2
  %187 = load %struct.TYPE_19__*, %struct.TYPE_19__** %186, align 8
  %188 = call i32 @b43err(%struct.TYPE_19__* %187, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %189 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %190 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %189, i32 0, i32 2
  %191 = load %struct.TYPE_19__*, %struct.TYPE_19__** %190, align 8
  %192 = call i32 @b43_print_fw_helptext(%struct.TYPE_19__* %191, i32 1)
  %193 = load i32, i32* @ENODEV, align 4
  %194 = sub nsw i32 0, %193
  store i32 %194, i32* %15, align 4
  br label %410

195:                                              ; preds = %179
  %196 = call i32 @msleep(i32 50)
  br label %171

197:                                              ; preds = %178
  %198 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %199 = load i32, i32* @B43_MMIO_GEN_IRQ_REASON, align 4
  %200 = call i64 @b43_read32(%struct.b43_wldev* %198, i32 %199)
  %201 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %202 = load i32, i32* @B43_SHM_SHARED, align 4
  %203 = load i32, i32* @B43_SHM_SH_UCODEREV, align 4
  %204 = call i32 @b43_shm_read16(%struct.b43_wldev* %201, i32 %202, i32 %203)
  store i32 %204, i32* %9, align 4
  %205 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %206 = load i32, i32* @B43_SHM_SHARED, align 4
  %207 = load i32, i32* @B43_SHM_SH_UCODEPATCH, align 4
  %208 = call i32 @b43_shm_read16(%struct.b43_wldev* %205, i32 %206, i32 %207)
  store i32 %208, i32* %10, align 4
  %209 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %210 = load i32, i32* @B43_SHM_SHARED, align 4
  %211 = load i32, i32* @B43_SHM_SH_UCODEDATE, align 4
  %212 = call i32 @b43_shm_read16(%struct.b43_wldev* %209, i32 %210, i32 %211)
  store i32 %212, i32* %11, align 4
  %213 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %214 = load i32, i32* @B43_SHM_SHARED, align 4
  %215 = load i32, i32* @B43_SHM_SH_UCODETIME, align 4
  %216 = call i32 @b43_shm_read16(%struct.b43_wldev* %213, i32 %214, i32 %215)
  store i32 %216, i32* %12, align 4
  %217 = load i32, i32* %9, align 4
  %218 = icmp sle i32 %217, 296
  br i1 %218, label %219, label %230

219:                                              ; preds = %197
  %220 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %221 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %220, i32 0, i32 2
  %222 = load %struct.TYPE_19__*, %struct.TYPE_19__** %221, align 8
  %223 = call i32 @b43err(%struct.TYPE_19__* %222, i8* getelementptr inbounds ([133 x i8], [133 x i8]* @.str.1, i64 0, i64 0))
  %224 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %225 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %224, i32 0, i32 2
  %226 = load %struct.TYPE_19__*, %struct.TYPE_19__** %225, align 8
  %227 = call i32 @b43_print_fw_helptext(%struct.TYPE_19__* %226, i32 1)
  %228 = load i32, i32* @EOPNOTSUPP, align 4
  %229 = sub nsw i32 0, %228
  store i32 %229, i32* %15, align 4
  br label %410

230:                                              ; preds = %197
  %231 = load i32, i32* %9, align 4
  %232 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %233 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %232, i32 0, i32 3
  %234 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %233, i32 0, i32 0
  store i32 %231, i32* %234, align 8
  %235 = load i32, i32* %10, align 4
  %236 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %237 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %236, i32 0, i32 3
  %238 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %237, i32 0, i32 1
  store i32 %235, i32* %238, align 4
  %239 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %240 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %239, i32 0, i32 3
  %241 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 8
  %243 = icmp sge i32 %242, 598
  br i1 %243, label %244, label %249

244:                                              ; preds = %230
  %245 = load i64, i64* @B43_FW_HDR_598, align 8
  %246 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %247 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %246, i32 0, i32 3
  %248 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %247, i32 0, i32 2
  store i64 %245, i64* %248, align 8
  br label %266

249:                                              ; preds = %230
  %250 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %251 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %250, i32 0, i32 3
  %252 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 8
  %254 = icmp sge i32 %253, 410
  br i1 %254, label %255, label %260

255:                                              ; preds = %249
  %256 = load i64, i64* @B43_FW_HDR_410, align 8
  %257 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %258 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %257, i32 0, i32 3
  %259 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %258, i32 0, i32 2
  store i64 %256, i64* %259, align 8
  br label %265

260:                                              ; preds = %249
  %261 = load i64, i64* @B43_FW_HDR_351, align 8
  %262 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %263 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %262, i32 0, i32 3
  %264 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %263, i32 0, i32 2
  store i64 %261, i64* %264, align 8
  br label %265

265:                                              ; preds = %260, %255
  br label %266

266:                                              ; preds = %265, %244
  %267 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %268 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %267, i32 0, i32 3
  %269 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %268, i32 0, i32 3
  %270 = load i32, i32* %269, align 8
  %271 = load i32, i32* %11, align 4
  %272 = icmp eq i32 %271, 65535
  %273 = zext i1 %272 to i32
  %274 = icmp ne i32 %270, %273
  %275 = zext i1 %274 to i32
  %276 = call i32 @WARN_ON(i32 %275)
  %277 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %278 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %277, i32 0, i32 2
  %279 = load %struct.TYPE_19__*, %struct.TYPE_19__** %278, align 8
  %280 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %279, i32 0, i32 0
  %281 = load %struct.TYPE_17__*, %struct.TYPE_17__** %280, align 8
  %282 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 8
  %284 = icmp sgt i32 %283, 1
  %285 = zext i1 %284 to i32
  %286 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %287 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %286, i32 0, i32 0
  store i32 %285, i32* %287, align 8
  %288 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %289 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %288, i32 0, i32 1
  store i32 1, i32* %289, align 4
  %290 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %291 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %290, i32 0, i32 3
  %292 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %291, i32 0, i32 3
  %293 = load i32, i32* %292, align 8
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %295, label %336

295:                                              ; preds = %266
  %296 = load i32, i32* %12, align 4
  %297 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %298 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %297, i32 0, i32 3
  %299 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %298, i32 0, i32 1
  store i32 %296, i32* %299, align 4
  %300 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %301 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %300, i32 0, i32 2
  %302 = load %struct.TYPE_19__*, %struct.TYPE_19__** %301, align 8
  %303 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %304 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %303, i32 0, i32 3
  %305 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %304, i32 0, i32 0
  %306 = load i32, i32* %305, align 8
  %307 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %308 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %307, i32 0, i32 3
  %309 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %308, i32 0, i32 1
  %310 = load i32, i32* %309, align 4
  %311 = call i32 (%struct.TYPE_19__*, i8*, ...) @b43info(%struct.TYPE_19__* %302, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %306, i32 %310)
  %312 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %313 = call i32 @b43_fwcapa_read(%struct.b43_wldev* %312)
  store i32 %313, i32* %16, align 4
  %314 = load i32, i32* %16, align 4
  %315 = load i32, i32* @B43_FWCAPA_HWCRYPTO, align 4
  %316 = and i32 %314, %315
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %318, label %324

318:                                              ; preds = %295
  %319 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %320 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %319, i32 0, i32 3
  %321 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %320, i32 0, i32 4
  %322 = load i64, i64* %321, align 8
  %323 = icmp ne i64 %322, 0
  br i1 %323, label %324, label %331

324:                                              ; preds = %318, %295
  %325 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %326 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %325, i32 0, i32 2
  %327 = load %struct.TYPE_19__*, %struct.TYPE_19__** %326, align 8
  %328 = call i32 (%struct.TYPE_19__*, i8*, ...) @b43info(%struct.TYPE_19__* %327, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0))
  %329 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %330 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %329, i32 0, i32 1
  store i32 0, i32* %330, align 4
  br label %331

331:                                              ; preds = %324, %318
  %332 = load i32, i32* %16, align 4
  %333 = load i32, i32* @B43_FWCAPA_QOS, align 4
  %334 = and i32 %332, %333
  %335 = call i32 @WARN(i32 %334, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  br label %374

336:                                              ; preds = %266
  %337 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %338 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %337, i32 0, i32 2
  %339 = load %struct.TYPE_19__*, %struct.TYPE_19__** %338, align 8
  %340 = load i32, i32* %9, align 4
  %341 = load i32, i32* %10, align 4
  %342 = load i32, i32* %11, align 4
  %343 = ashr i32 %342, 12
  %344 = and i32 %343, 15
  %345 = load i32, i32* %11, align 4
  %346 = ashr i32 %345, 8
  %347 = and i32 %346, 15
  %348 = load i32, i32* %11, align 4
  %349 = and i32 %348, 255
  %350 = load i32, i32* %12, align 4
  %351 = ashr i32 %350, 11
  %352 = and i32 %351, 31
  %353 = load i32, i32* %12, align 4
  %354 = ashr i32 %353, 5
  %355 = and i32 %354, 63
  %356 = load i32, i32* %12, align 4
  %357 = and i32 %356, 31
  %358 = call i32 (%struct.TYPE_19__*, i8*, ...) @b43info(%struct.TYPE_19__* %339, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.5, i64 0, i64 0), i32 %340, i32 %341, i32 %344, i32 %347, i32 %349, i32 %352, i32 %355, i32 %357)
  %359 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %360 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %359, i32 0, i32 3
  %361 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %360, i32 0, i32 4
  %362 = load i64, i64* %361, align 8
  %363 = icmp ne i64 %362, 0
  br i1 %363, label %364, label %373

364:                                              ; preds = %336
  %365 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %366 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %365, i32 0, i32 2
  %367 = load %struct.TYPE_19__*, %struct.TYPE_19__** %366, align 8
  %368 = call i32 @b43warn(%struct.TYPE_19__* %367, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.6, i64 0, i64 0))
  %369 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %370 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %369, i32 0, i32 2
  %371 = load %struct.TYPE_19__*, %struct.TYPE_19__** %370, align 8
  %372 = call i32 @b43_print_fw_helptext(%struct.TYPE_19__* %371, i32 0)
  br label %373

373:                                              ; preds = %364, %336
  br label %374

374:                                              ; preds = %373, %331
  %375 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %376 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %375, i32 0, i32 1
  %377 = load i32, i32* %376, align 4
  %378 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %379 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %378, i32 0, i32 3
  %380 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %379, i32 0, i32 0
  %381 = load i32, i32* %380, align 8
  %382 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %383 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %382, i32 0, i32 3
  %384 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %383, i32 0, i32 1
  %385 = load i32, i32* %384, align 4
  %386 = call i32 @snprintf(i32 %377, i32 4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32 %381, i32 %385)
  %387 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %388 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %387, i32 0, i32 4
  %389 = load %struct.TYPE_12__*, %struct.TYPE_12__** %388, align 8
  %390 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %389, i32 0, i32 0
  %391 = load i32, i32* %390, align 4
  %392 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %393 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %392, i32 0, i32 0
  store i32 %391, i32* %393, align 4
  %394 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %395 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %394, i32 0, i32 3
  %396 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %395, i32 0, i32 2
  %397 = load i64, i64* %396, align 8
  %398 = load i64, i64* @B43_FW_HDR_351, align 8
  %399 = icmp eq i64 %397, %398
  br i1 %399, label %400, label %409

400:                                              ; preds = %374
  %401 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %402 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %401, i32 0, i32 2
  %403 = load %struct.TYPE_19__*, %struct.TYPE_19__** %402, align 8
  %404 = call i32 @b43warn(%struct.TYPE_19__* %403, i8* getelementptr inbounds ([119 x i8], [119 x i8]* @.str.8, i64 0, i64 0))
  %405 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %406 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %405, i32 0, i32 2
  %407 = load %struct.TYPE_19__*, %struct.TYPE_19__** %406, align 8
  %408 = call i32 @b43_print_fw_helptext(%struct.TYPE_19__* %407, i32 0)
  br label %409

409:                                              ; preds = %400, %374
  store i32 0, i32* %2, align 4
  br label %418

410:                                              ; preds = %219, %184
  %411 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %412 = load i32, i32* @B43_MMIO_MACCTL, align 4
  %413 = load i64, i64* @B43_MACCTL_PSM_RUN, align 8
  %414 = xor i64 %413, -1
  %415 = load i64, i64* @B43_MACCTL_PSM_JMP0, align 8
  %416 = call i32 @b43_maskset32(%struct.b43_wldev* %411, i32 %412, i64 %414, i64 %415)
  %417 = load i32, i32* %15, align 4
  store i32 %417, i32* %2, align 4
  br label %418

418:                                              ; preds = %410, %409
  %419 = load i32, i32* %2, align 4
  ret i32 %419
}

declare dso_local i64 @b43_read32(%struct.b43_wldev*, i32) #1

declare dso_local i32 @B43_WARN_ON(i64) #1

declare dso_local i32 @b43_write32(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_shm_write16(%struct.b43_wldev*, i32, i32, i32) #1

declare dso_local i32 @b43_shm_control_word(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @b43_maskset32(%struct.b43_wldev*, i32, i64, i64) #1

declare dso_local i32 @b43err(%struct.TYPE_19__*, i8*) #1

declare dso_local i32 @b43_print_fw_helptext(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @b43_shm_read16(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @b43info(%struct.TYPE_19__*, i8*, ...) #1

declare dso_local i32 @b43_fwcapa_read(%struct.b43_wldev*) #1

declare dso_local i32 @WARN(i32, i8*) #1

declare dso_local i32 @b43warn(%struct.TYPE_19__*, i8*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
