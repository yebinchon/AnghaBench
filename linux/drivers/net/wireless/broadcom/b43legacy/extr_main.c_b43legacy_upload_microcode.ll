; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43legacy/extr_main.c_b43legacy_upload_microcode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43legacy/extr_main.c_b43legacy_upload_microcode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43legacy_wldev = type { %struct.TYPE_15__*, %struct.TYPE_13__, %struct.TYPE_16__* }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32, i32, %struct.TYPE_12__*, %struct.TYPE_11__* }
%struct.TYPE_12__ = type { i64, i64 }
%struct.TYPE_11__ = type { i64, i64 }
%struct.TYPE_16__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.wiphy* }
%struct.wiphy = type { i32, i32 }

@B43legacy_MMIO_MACCTL = common dso_local global i32 0, align 4
@B43legacy_MACCTL_PSM_RUN = common dso_local global i32 0, align 4
@B43legacy_MACCTL_PSM_JMP0 = common dso_local global i32 0, align 4
@B43legacy_SHM_WIRELESS = common dso_local global i32 0, align 4
@B43legacy_SHM_SHARED = common dso_local global i32 0, align 4
@B43legacy_SHM_UCODE = common dso_local global i32 0, align 4
@B43legacy_SHM_AUTOINC_W = common dso_local global i32 0, align 4
@B43legacy_MMIO_SHM_DATA = common dso_local global i32 0, align 4
@B43legacy_SHM_HW = common dso_local global i32 0, align 4
@B43legacy_MMIO_GEN_IRQ_REASON = common dso_local global i32 0, align 4
@B43legacy_IRQ_ALL = common dso_local global i32 0, align 4
@B43legacy_IRQ_MAC_SUSPENDED = common dso_local global i32 0, align 4
@B43legacy_IRQWAIT_MAX_RETRIES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Microcode not responding\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@B43legacy_SHM_SH_UCODEREV = common dso_local global i32 0, align 4
@B43legacy_SHM_SH_UCODEPATCH = common dso_local global i32 0, align 4
@B43legacy_SHM_SH_UCODEDATE = common dso_local global i32 0, align 4
@B43legacy_SHM_SH_UCODETIME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [134 x i8] c"YOU ARE TRYING TO LOAD V4 FIRMWARE. Only firmware from binary drivers version 3.x is supported. You must change your firmware files.\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [81 x i8] c"Loading firmware version 0x%X, patch level %u (20%.2i-%.2i-%.2i %.2i:%.2i:%.2i)\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"%u.%u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.b43legacy_wldev*)* @b43legacy_upload_microcode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @b43legacy_upload_microcode(%struct.b43legacy_wldev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.b43legacy_wldev*, align 8
  %4 = alloca %struct.wiphy*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.b43legacy_wldev* %0, %struct.b43legacy_wldev** %3, align 8
  %16 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %17 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %16, i32 0, i32 2
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = load %struct.wiphy*, %struct.wiphy** %21, align 8
  store %struct.wiphy* %22, %struct.wiphy** %4, align 8
  store i64 4, i64* %5, align 8
  store i32 0, i32* %15, align 4
  %23 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %24 = load i32, i32* @B43legacy_MMIO_MACCTL, align 4
  %25 = call i32 @b43legacy_read32(%struct.b43legacy_wldev* %23, i32 %24)
  store i32 %25, i32* %14, align 4
  %26 = load i32, i32* %14, align 4
  %27 = load i32, i32* @B43legacy_MACCTL_PSM_RUN, align 4
  %28 = and i32 %26, %27
  %29 = call i32 @B43legacy_WARN_ON(i32 %28)
  %30 = load i32, i32* @B43legacy_MACCTL_PSM_JMP0, align 4
  %31 = load i32, i32* %14, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %14, align 4
  %33 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %34 = load i32, i32* @B43legacy_MMIO_MACCTL, align 4
  %35 = load i32, i32* %14, align 4
  %36 = call i32 @b43legacy_write32(%struct.b43legacy_wldev* %33, i32 %34, i32 %35)
  store i32 0, i32* %7, align 4
  br label %37

37:                                               ; preds = %45, %1
  %38 = load i32, i32* %7, align 4
  %39 = icmp ult i32 %38, 64
  br i1 %39, label %40, label %48

40:                                               ; preds = %37
  %41 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %42 = load i32, i32* @B43legacy_SHM_WIRELESS, align 4
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @b43legacy_shm_write16(%struct.b43legacy_wldev* %41, i32 %42, i32 %43, i32 0)
  br label %45

45:                                               ; preds = %40
  %46 = load i32, i32* %7, align 4
  %47 = add i32 %46, 1
  store i32 %47, i32* %7, align 4
  br label %37

48:                                               ; preds = %37
  store i32 0, i32* %7, align 4
  br label %49

49:                                               ; preds = %57, %48
  %50 = load i32, i32* %7, align 4
  %51 = icmp ult i32 %50, 4096
  br i1 %51, label %52, label %60

52:                                               ; preds = %49
  %53 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %54 = load i32, i32* @B43legacy_SHM_SHARED, align 4
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @b43legacy_shm_write16(%struct.b43legacy_wldev* %53, i32 %54, i32 %55, i32 0)
  br label %57

57:                                               ; preds = %52
  %58 = load i32, i32* %7, align 4
  %59 = add i32 %58, 2
  store i32 %59, i32* %7, align 4
  br label %49

60:                                               ; preds = %49
  %61 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %62 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 3
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = add i64 %66, 4
  %68 = inttoptr i64 %67 to i32*
  store i32* %68, i32** %6, align 8
  %69 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %70 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 3
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = sub i64 %74, 4
  %76 = udiv i64 %75, 4
  %77 = trunc i64 %76 to i32
  store i32 %77, i32* %8, align 4
  %78 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %79 = load i32, i32* @B43legacy_SHM_UCODE, align 4
  %80 = load i32, i32* @B43legacy_SHM_AUTOINC_W, align 4
  %81 = or i32 %79, %80
  %82 = call i32 @b43legacy_shm_control_word(%struct.b43legacy_wldev* %78, i32 %81, i32 0)
  store i32 0, i32* %7, align 4
  br label %83

83:                                               ; preds = %98, %60
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* %8, align 4
  %86 = icmp ult i32 %84, %85
  br i1 %86, label %87, label %101

87:                                               ; preds = %83
  %88 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %89 = load i32, i32* @B43legacy_MMIO_SHM_DATA, align 4
  %90 = load i32*, i32** %6, align 8
  %91 = load i32, i32* %7, align 4
  %92 = zext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @be32_to_cpu(i32 %94)
  %96 = call i32 @b43legacy_write32(%struct.b43legacy_wldev* %88, i32 %89, i32 %95)
  %97 = call i32 @udelay(i32 10)
  br label %98

98:                                               ; preds = %87
  %99 = load i32, i32* %7, align 4
  %100 = add i32 %99, 1
  store i32 %100, i32* %7, align 4
  br label %83

101:                                              ; preds = %83
  %102 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %103 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %103, i32 0, i32 2
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %104, align 8
  %106 = icmp ne %struct.TYPE_12__* %105, null
  br i1 %106, label %107, label %153

107:                                              ; preds = %101
  %108 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %109 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 2
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = add i64 %113, 4
  %115 = inttoptr i64 %114 to i32*
  store i32* %115, i32** %6, align 8
  %116 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %117 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %117, i32 0, i32 2
  %119 = load %struct.TYPE_12__*, %struct.TYPE_12__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = sub i64 %121, 4
  %123 = udiv i64 %122, 4
  %124 = trunc i64 %123 to i32
  store i32 %124, i32* %8, align 4
  %125 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %126 = load i32, i32* @B43legacy_SHM_HW, align 4
  %127 = call i32 @b43legacy_shm_control_word(%struct.b43legacy_wldev* %125, i32 %126, i32 490)
  %128 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %129 = load i32, i32* @B43legacy_MMIO_SHM_DATA, align 4
  %130 = call i32 @b43legacy_write32(%struct.b43legacy_wldev* %128, i32 %129, i32 16384)
  %131 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %132 = load i32, i32* @B43legacy_SHM_HW, align 4
  %133 = call i32 @b43legacy_shm_control_word(%struct.b43legacy_wldev* %131, i32 %132, i32 491)
  store i32 0, i32* %7, align 4
  br label %134

134:                                              ; preds = %149, %107
  %135 = load i32, i32* %7, align 4
  %136 = load i32, i32* %8, align 4
  %137 = icmp ult i32 %135, %136
  br i1 %137, label %138, label %152

138:                                              ; preds = %134
  %139 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %140 = load i32, i32* @B43legacy_MMIO_SHM_DATA, align 4
  %141 = load i32*, i32** %6, align 8
  %142 = load i32, i32* %7, align 4
  %143 = zext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %141, i64 %143
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @be32_to_cpu(i32 %145)
  %147 = call i32 @b43legacy_write32(%struct.b43legacy_wldev* %139, i32 %140, i32 %146)
  %148 = call i32 @udelay(i32 10)
  br label %149

149:                                              ; preds = %138
  %150 = load i32, i32* %7, align 4
  %151 = add i32 %150, 1
  store i32 %151, i32* %7, align 4
  br label %134

152:                                              ; preds = %134
  br label %153

153:                                              ; preds = %152, %101
  %154 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %155 = load i32, i32* @B43legacy_MMIO_GEN_IRQ_REASON, align 4
  %156 = load i32, i32* @B43legacy_IRQ_ALL, align 4
  %157 = call i32 @b43legacy_write32(%struct.b43legacy_wldev* %154, i32 %155, i32 %156)
  %158 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %159 = load i32, i32* @B43legacy_MMIO_MACCTL, align 4
  %160 = call i32 @b43legacy_read32(%struct.b43legacy_wldev* %158, i32 %159)
  store i32 %160, i32* %14, align 4
  %161 = load i32, i32* @B43legacy_MACCTL_PSM_JMP0, align 4
  %162 = xor i32 %161, -1
  %163 = load i32, i32* %14, align 4
  %164 = and i32 %163, %162
  store i32 %164, i32* %14, align 4
  %165 = load i32, i32* @B43legacy_MACCTL_PSM_RUN, align 4
  %166 = load i32, i32* %14, align 4
  %167 = or i32 %166, %165
  store i32 %167, i32* %14, align 4
  %168 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %169 = load i32, i32* @B43legacy_MMIO_MACCTL, align 4
  %170 = load i32, i32* %14, align 4
  %171 = call i32 @b43legacy_write32(%struct.b43legacy_wldev* %168, i32 %169, i32 %170)
  store i32 0, i32* %7, align 4
  br label %172

172:                                              ; preds = %153, %205
  %173 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %174 = load i32, i32* @B43legacy_MMIO_GEN_IRQ_REASON, align 4
  %175 = call i32 @b43legacy_read32(%struct.b43legacy_wldev* %173, i32 %174)
  store i32 %175, i32* %13, align 4
  %176 = load i32, i32* %13, align 4
  %177 = load i32, i32* @B43legacy_IRQ_MAC_SUSPENDED, align 4
  %178 = icmp eq i32 %176, %177
  br i1 %178, label %179, label %180

179:                                              ; preds = %172
  br label %206

180:                                              ; preds = %172
  %181 = load i32, i32* %7, align 4
  %182 = add i32 %181, 1
  store i32 %182, i32* %7, align 4
  %183 = load i32, i32* %7, align 4
  %184 = load i32, i32* @B43legacy_IRQWAIT_MAX_RETRIES, align 4
  %185 = icmp uge i32 %183, %184
  br i1 %185, label %186, label %197

186:                                              ; preds = %180
  %187 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %188 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %187, i32 0, i32 2
  %189 = load %struct.TYPE_16__*, %struct.TYPE_16__** %188, align 8
  %190 = call i32 @b43legacyerr(%struct.TYPE_16__* %189, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %191 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %192 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %191, i32 0, i32 2
  %193 = load %struct.TYPE_16__*, %struct.TYPE_16__** %192, align 8
  %194 = call i32 @b43legacy_print_fw_helptext(%struct.TYPE_16__* %193)
  %195 = load i32, i32* @ENODEV, align 4
  %196 = sub nsw i32 0, %195
  store i32 %196, i32* %15, align 4
  br label %290

197:                                              ; preds = %180
  %198 = call i32 @msleep_interruptible(i32 50)
  %199 = load i32, i32* @current, align 4
  %200 = call i64 @signal_pending(i32 %199)
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %205

202:                                              ; preds = %197
  %203 = load i32, i32* @EINTR, align 4
  %204 = sub nsw i32 0, %203
  store i32 %204, i32* %15, align 4
  br label %290

205:                                              ; preds = %197
  br label %172

206:                                              ; preds = %179
  %207 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %208 = load i32, i32* @B43legacy_MMIO_GEN_IRQ_REASON, align 4
  %209 = call i32 @b43legacy_read32(%struct.b43legacy_wldev* %207, i32 %208)
  %210 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %211 = load i32, i32* @B43legacy_SHM_SHARED, align 4
  %212 = load i32, i32* @B43legacy_SHM_SH_UCODEREV, align 4
  %213 = call i32 @b43legacy_shm_read16(%struct.b43legacy_wldev* %210, i32 %211, i32 %212)
  store i32 %213, i32* %9, align 4
  %214 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %215 = load i32, i32* @B43legacy_SHM_SHARED, align 4
  %216 = load i32, i32* @B43legacy_SHM_SH_UCODEPATCH, align 4
  %217 = call i32 @b43legacy_shm_read16(%struct.b43legacy_wldev* %214, i32 %215, i32 %216)
  store i32 %217, i32* %10, align 4
  %218 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %219 = load i32, i32* @B43legacy_SHM_SHARED, align 4
  %220 = load i32, i32* @B43legacy_SHM_SH_UCODEDATE, align 4
  %221 = call i32 @b43legacy_shm_read16(%struct.b43legacy_wldev* %218, i32 %219, i32 %220)
  store i32 %221, i32* %11, align 4
  %222 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %223 = load i32, i32* @B43legacy_SHM_SHARED, align 4
  %224 = load i32, i32* @B43legacy_SHM_SH_UCODETIME, align 4
  %225 = call i32 @b43legacy_shm_read16(%struct.b43legacy_wldev* %222, i32 %223, i32 %224)
  store i32 %225, i32* %12, align 4
  %226 = load i32, i32* %9, align 4
  %227 = icmp sgt i32 %226, 296
  br i1 %227, label %228, label %239

228:                                              ; preds = %206
  %229 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %230 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %229, i32 0, i32 2
  %231 = load %struct.TYPE_16__*, %struct.TYPE_16__** %230, align 8
  %232 = call i32 @b43legacyerr(%struct.TYPE_16__* %231, i8* getelementptr inbounds ([134 x i8], [134 x i8]* @.str.1, i64 0, i64 0))
  %233 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %234 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %233, i32 0, i32 2
  %235 = load %struct.TYPE_16__*, %struct.TYPE_16__** %234, align 8
  %236 = call i32 @b43legacy_print_fw_helptext(%struct.TYPE_16__* %235)
  %237 = load i32, i32* @EOPNOTSUPP, align 4
  %238 = sub nsw i32 0, %237
  store i32 %238, i32* %15, align 4
  br label %290

239:                                              ; preds = %206
  %240 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %241 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %240, i32 0, i32 2
  %242 = load %struct.TYPE_16__*, %struct.TYPE_16__** %241, align 8
  %243 = load i32, i32* %9, align 4
  %244 = load i32, i32* %10, align 4
  %245 = load i32, i32* %11, align 4
  %246 = ashr i32 %245, 12
  %247 = and i32 %246, 15
  %248 = load i32, i32* %11, align 4
  %249 = ashr i32 %248, 8
  %250 = and i32 %249, 15
  %251 = load i32, i32* %11, align 4
  %252 = and i32 %251, 255
  %253 = load i32, i32* %12, align 4
  %254 = ashr i32 %253, 11
  %255 = and i32 %254, 31
  %256 = load i32, i32* %12, align 4
  %257 = ashr i32 %256, 5
  %258 = and i32 %257, 63
  %259 = load i32, i32* %12, align 4
  %260 = and i32 %259, 31
  %261 = call i32 @b43legacyinfo(%struct.TYPE_16__* %242, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.2, i64 0, i64 0), i32 %243, i32 %244, i32 %247, i32 %250, i32 %252, i32 %255, i32 %258, i32 %260)
  %262 = load i32, i32* %9, align 4
  %263 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %264 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %263, i32 0, i32 1
  %265 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %264, i32 0, i32 0
  store i32 %262, i32* %265, align 8
  %266 = load i32, i32* %10, align 4
  %267 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %268 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %267, i32 0, i32 1
  %269 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %268, i32 0, i32 1
  store i32 %266, i32* %269, align 4
  %270 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %271 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %270, i32 0, i32 1
  %272 = load i32, i32* %271, align 4
  %273 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %274 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %273, i32 0, i32 1
  %275 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %274, i32 0, i32 0
  %276 = load i32, i32* %275, align 8
  %277 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %278 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %277, i32 0, i32 1
  %279 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %278, i32 0, i32 1
  %280 = load i32, i32* %279, align 4
  %281 = call i32 @snprintf(i32 %272, i32 4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %276, i32 %280)
  %282 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %283 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %282, i32 0, i32 0
  %284 = load %struct.TYPE_15__*, %struct.TYPE_15__** %283, align 8
  %285 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %284, i32 0, i32 0
  %286 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %285, i32 0, i32 0
  %287 = load i32, i32* %286, align 4
  %288 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %289 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %288, i32 0, i32 0
  store i32 %287, i32* %289, align 4
  store i32 0, i32* %2, align 4
  br label %306

290:                                              ; preds = %228, %202, %186
  %291 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %292 = load i32, i32* @B43legacy_MMIO_MACCTL, align 4
  %293 = call i32 @b43legacy_read32(%struct.b43legacy_wldev* %291, i32 %292)
  store i32 %293, i32* %14, align 4
  %294 = load i32, i32* @B43legacy_MACCTL_PSM_RUN, align 4
  %295 = xor i32 %294, -1
  %296 = load i32, i32* %14, align 4
  %297 = and i32 %296, %295
  store i32 %297, i32* %14, align 4
  %298 = load i32, i32* @B43legacy_MACCTL_PSM_JMP0, align 4
  %299 = load i32, i32* %14, align 4
  %300 = or i32 %299, %298
  store i32 %300, i32* %14, align 4
  %301 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %302 = load i32, i32* @B43legacy_MMIO_MACCTL, align 4
  %303 = load i32, i32* %14, align 4
  %304 = call i32 @b43legacy_write32(%struct.b43legacy_wldev* %301, i32 %302, i32 %303)
  %305 = load i32, i32* %15, align 4
  store i32 %305, i32* %2, align 4
  br label %306

306:                                              ; preds = %290, %239
  %307 = load i32, i32* %2, align 4
  ret i32 %307
}

declare dso_local i32 @b43legacy_read32(%struct.b43legacy_wldev*, i32) #1

declare dso_local i32 @B43legacy_WARN_ON(i32) #1

declare dso_local i32 @b43legacy_write32(%struct.b43legacy_wldev*, i32, i32) #1

declare dso_local i32 @b43legacy_shm_write16(%struct.b43legacy_wldev*, i32, i32, i32) #1

declare dso_local i32 @b43legacy_shm_control_word(%struct.b43legacy_wldev*, i32, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @b43legacyerr(%struct.TYPE_16__*, i8*) #1

declare dso_local i32 @b43legacy_print_fw_helptext(%struct.TYPE_16__*) #1

declare dso_local i32 @msleep_interruptible(i32) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @b43legacy_shm_read16(%struct.b43legacy_wldev*, i32, i32) #1

declare dso_local i32 @b43legacyinfo(%struct.TYPE_16__*, i8*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
