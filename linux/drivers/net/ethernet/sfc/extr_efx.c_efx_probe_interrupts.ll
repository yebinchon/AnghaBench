; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_efx.c_efx_probe_interrupts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_efx.c_efx_probe_interrupts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { i64, i32, i32, i32, i32, %struct.TYPE_8__*, i64, %struct.TYPE_7__**, %struct.TYPE_9__*, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i64, {}* }
%struct.TYPE_7__ = type { {}* }
%struct.TYPE_9__ = type { i32 }
%struct.msix_entry = type { i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_7__*, i32 }

@EFX_MAX_EXTRA_CHANNELS = common dso_local global i32 0, align 4
@EFX_INT_MODE_MSIX = common dso_local global i64 0, align 8
@EFX_MAX_CHANNELS = common dso_local global i32 0, align 4
@efx_separate_tx_channels = common dso_local global i64 0, align 8
@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"could not enable MSI-X\0A\00", align 1
@EFX_INT_MODE_MSI = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [58 x i8] c"WARNING: Insufficient MSI-X vectors available (%d < %u).\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"WARNING: Performance may be reduced.\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"could not enable MSI\0A\00", align 1
@EFX_INT_MODE_LEGACY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.efx_nic*)* @efx_probe_interrupts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efx_probe_interrupts(%struct.efx_nic* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.efx_nic*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.efx_nic* %0, %struct.efx_nic** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %12

12:                                               ; preds = %29, %1
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @EFX_MAX_EXTRA_CHANNELS, align 4
  %15 = icmp ult i32 %13, %14
  br i1 %15, label %16, label %32

16:                                               ; preds = %12
  %17 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %18 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %17, i32 0, i32 7
  %19 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %19, i64 %21
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %24 = icmp ne %struct.TYPE_7__* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %16
  %26 = load i32, i32* %4, align 4
  %27 = add i32 %26, 1
  store i32 %27, i32* %4, align 4
  br label %28

28:                                               ; preds = %25, %16
  br label %29

29:                                               ; preds = %28
  %30 = load i32, i32* %5, align 4
  %31 = add i32 %30, 1
  store i32 %31, i32* %5, align 4
  br label %12

32:                                               ; preds = %12
  %33 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %34 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @EFX_INT_MODE_MSIX, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %197

38:                                               ; preds = %32
  %39 = load i32, i32* @EFX_MAX_CHANNELS, align 4
  %40 = zext i32 %39 to i64
  %41 = call i8* @llvm.stacksave()
  store i8* %41, i8** %8, align 8
  %42 = alloca %struct.msix_entry, i64 %40, align 16
  store i64 %40, i64* %9, align 8
  %43 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %44 = call i32 @efx_wanted_parallelism(%struct.efx_nic* %43)
  store i32 %44, i32* %10, align 4
  %45 = load i64, i64* @efx_separate_tx_channels, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %38
  %48 = load i32, i32* %10, align 4
  %49 = mul i32 %48, 2
  store i32 %49, i32* %10, align 4
  br label %50

50:                                               ; preds = %47, %38
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* %10, align 4
  %53 = add i32 %52, %51
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* %10, align 4
  %55 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %56 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %55, i32 0, i32 12
  %57 = load i32, i32* %56, align 4
  %58 = call i8* @min(i32 %54, i32 %57)
  %59 = ptrtoint i8* %58 to i32
  store i32 %59, i32* %10, align 4
  store i32 0, i32* %5, align 4
  br label %60

60:                                               ; preds = %70, %50
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* %10, align 4
  %63 = icmp ult i32 %61, %62
  br i1 %63, label %64, label %73

64:                                               ; preds = %60
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* %5, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %42, i64 %67
  %69 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %68, i32 0, i32 0
  store i32 %65, i32* %69, align 8
  br label %70

70:                                               ; preds = %64
  %71 = load i32, i32* %5, align 4
  %72 = add i32 %71, 1
  store i32 %72, i32* %5, align 4
  br label %60

73:                                               ; preds = %60
  %74 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %75 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %74, i32 0, i32 8
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %75, align 8
  %77 = load i32, i32* %10, align 4
  %78 = call i32 @pci_enable_msix_range(%struct.TYPE_9__* %76, %struct.msix_entry* %42, i32 1, i32 %77)
  store i32 %78, i32* %7, align 4
  %79 = load i32, i32* %7, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %102

81:                                               ; preds = %73
  %82 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %83 = load i32, i32* @drv, align 4
  %84 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %85 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %84, i32 0, i32 10
  %86 = load i32, i32* %85, align 4
  %87 = call i32 (%struct.efx_nic*, i32, i32, i8*, ...) @netif_err(%struct.efx_nic* %82, i32 %83, i32 %86, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %88 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %89 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %88, i32 0, i32 5
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @EFX_INT_MODE_MSI, align 8
  %94 = icmp sge i64 %92, %93
  br i1 %94, label %95, label %99

95:                                               ; preds = %81
  %96 = load i64, i64* @EFX_INT_MODE_MSI, align 8
  %97 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %98 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %97, i32 0, i32 0
  store i64 %96, i64* %98, align 8
  br label %101

99:                                               ; preds = %81
  %100 = load i32, i32* %7, align 4
  store i32 %100, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %193

101:                                              ; preds = %95
  br label %123

102:                                              ; preds = %73
  %103 = load i32, i32* %7, align 4
  %104 = load i32, i32* %10, align 4
  %105 = icmp ult i32 %103, %104
  br i1 %105, label %106, label %122

106:                                              ; preds = %102
  %107 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %108 = load i32, i32* @drv, align 4
  %109 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %110 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %109, i32 0, i32 10
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* %7, align 4
  %113 = load i32, i32* %10, align 4
  %114 = call i32 (%struct.efx_nic*, i32, i32, i8*, ...) @netif_err(%struct.efx_nic* %107, i32 %108, i32 %111, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i32 %112, i32 %113)
  %115 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %116 = load i32, i32* @drv, align 4
  %117 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %118 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %117, i32 0, i32 10
  %119 = load i32, i32* %118, align 4
  %120 = call i32 (%struct.efx_nic*, i32, i32, i8*, ...) @netif_err(%struct.efx_nic* %115, i32 %116, i32 %119, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  %121 = load i32, i32* %7, align 4
  store i32 %121, i32* %10, align 4
  br label %122

122:                                              ; preds = %106, %102
  br label %123

123:                                              ; preds = %122, %101
  %124 = load i32, i32* %7, align 4
  %125 = icmp sgt i32 %124, 0
  br i1 %125, label %126, label %192

126:                                              ; preds = %123
  %127 = load i32, i32* %10, align 4
  %128 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %129 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %128, i32 0, i32 1
  store i32 %127, i32* %129, align 8
  %130 = load i32, i32* %10, align 4
  %131 = load i32, i32* %4, align 4
  %132 = icmp ugt i32 %130, %131
  br i1 %132, label %133, label %137

133:                                              ; preds = %126
  %134 = load i32, i32* %4, align 4
  %135 = load i32, i32* %10, align 4
  %136 = sub i32 %135, %134
  store i32 %136, i32* %10, align 4
  br label %137

137:                                              ; preds = %133, %126
  %138 = load i64, i64* @efx_separate_tx_channels, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %159

140:                                              ; preds = %137
  %141 = load i32, i32* %10, align 4
  %142 = udiv i32 %141, 2
  %143 = call i32 @max(i32 %142, i32 1)
  %144 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %145 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %144, i32 0, i32 11
  %146 = load i32, i32* %145, align 8
  %147 = call i8* @min(i32 %143, i32 %146)
  %148 = ptrtoint i8* %147 to i32
  %149 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %150 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %149, i32 0, i32 2
  store i32 %148, i32* %150, align 4
  %151 = load i32, i32* %10, align 4
  %152 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %153 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 4
  %155 = sub i32 %151, %154
  %156 = call i32 @max(i32 %155, i32 1)
  %157 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %158 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %157, i32 0, i32 3
  store i32 %156, i32* %158, align 8
  br label %171

159:                                              ; preds = %137
  %160 = load i32, i32* %10, align 4
  %161 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %162 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %161, i32 0, i32 11
  %163 = load i32, i32* %162, align 8
  %164 = call i8* @min(i32 %160, i32 %163)
  %165 = ptrtoint i8* %164 to i32
  %166 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %167 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %166, i32 0, i32 2
  store i32 %165, i32* %167, align 4
  %168 = load i32, i32* %10, align 4
  %169 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %170 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %169, i32 0, i32 3
  store i32 %168, i32* %170, align 8
  br label %171

171:                                              ; preds = %159, %140
  store i32 0, i32* %5, align 4
  br label %172

172:                                              ; preds = %188, %171
  %173 = load i32, i32* %5, align 4
  %174 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %175 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 8
  %177 = icmp ult i32 %173, %176
  br i1 %177, label %178, label %191

178:                                              ; preds = %172
  %179 = load i32, i32* %5, align 4
  %180 = zext i32 %179 to i64
  %181 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %42, i64 %180
  %182 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %185 = load i32, i32* %5, align 4
  %186 = call %struct.TYPE_10__* @efx_get_channel(%struct.efx_nic* %184, i32 %185)
  %187 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %186, i32 0, i32 1
  store i32 %183, i32* %187, align 8
  br label %188

188:                                              ; preds = %178
  %189 = load i32, i32* %5, align 4
  %190 = add i32 %189, 1
  store i32 %190, i32* %5, align 4
  br label %172

191:                                              ; preds = %172
  br label %192

192:                                              ; preds = %191, %123
  store i32 0, i32* %11, align 4
  br label %193

193:                                              ; preds = %192, %99
  %194 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %194)
  %195 = load i32, i32* %11, align 4
  switch i32 %195, label %354 [
    i32 0, label %196
    i32 1, label %352
  ]

196:                                              ; preds = %193
  br label %197

197:                                              ; preds = %196, %32
  %198 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %199 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %198, i32 0, i32 0
  %200 = load i64, i64* %199, align 8
  %201 = load i64, i64* @EFX_INT_MODE_MSI, align 8
  %202 = icmp eq i64 %200, %201
  br i1 %202, label %203, label %247

203:                                              ; preds = %197
  %204 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %205 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %204, i32 0, i32 1
  store i32 1, i32* %205, align 8
  %206 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %207 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %206, i32 0, i32 3
  store i32 1, i32* %207, align 8
  %208 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %209 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %208, i32 0, i32 2
  store i32 1, i32* %209, align 4
  %210 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %211 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %210, i32 0, i32 8
  %212 = load %struct.TYPE_9__*, %struct.TYPE_9__** %211, align 8
  %213 = call i32 @pci_enable_msi(%struct.TYPE_9__* %212)
  store i32 %213, i32* %7, align 4
  %214 = load i32, i32* %7, align 4
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %216, label %225

216:                                              ; preds = %203
  %217 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %218 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %217, i32 0, i32 8
  %219 = load %struct.TYPE_9__*, %struct.TYPE_9__** %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 4
  %222 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %223 = call %struct.TYPE_10__* @efx_get_channel(%struct.efx_nic* %222, i32 0)
  %224 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %223, i32 0, i32 1
  store i32 %221, i32* %224, align 8
  br label %246

225:                                              ; preds = %203
  %226 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %227 = load i32, i32* @drv, align 4
  %228 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %229 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %228, i32 0, i32 10
  %230 = load i32, i32* %229, align 4
  %231 = call i32 (%struct.efx_nic*, i32, i32, i8*, ...) @netif_err(%struct.efx_nic* %226, i32 %227, i32 %230, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %232 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %233 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %232, i32 0, i32 5
  %234 = load %struct.TYPE_8__*, %struct.TYPE_8__** %233, align 8
  %235 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %234, i32 0, i32 0
  %236 = load i64, i64* %235, align 8
  %237 = load i64, i64* @EFX_INT_MODE_LEGACY, align 8
  %238 = icmp sge i64 %236, %237
  br i1 %238, label %239, label %243

239:                                              ; preds = %225
  %240 = load i64, i64* @EFX_INT_MODE_LEGACY, align 8
  %241 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %242 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %241, i32 0, i32 0
  store i64 %240, i64* %242, align 8
  br label %245

243:                                              ; preds = %225
  %244 = load i32, i32* %7, align 4
  store i32 %244, i32* %2, align 4
  br label %352

245:                                              ; preds = %239
  br label %246

246:                                              ; preds = %245, %216
  br label %247

247:                                              ; preds = %246, %197
  %248 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %249 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %248, i32 0, i32 0
  %250 = load i64, i64* %249, align 8
  %251 = load i64, i64* @EFX_INT_MODE_LEGACY, align 8
  %252 = icmp eq i64 %250, %251
  br i1 %252, label %253, label %272

253:                                              ; preds = %247
  %254 = load i64, i64* @efx_separate_tx_channels, align 8
  %255 = icmp ne i64 %254, 0
  %256 = zext i1 %255 to i64
  %257 = select i1 %255, i32 1, i32 0
  %258 = add nsw i32 1, %257
  %259 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %260 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %259, i32 0, i32 1
  store i32 %258, i32* %260, align 8
  %261 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %262 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %261, i32 0, i32 3
  store i32 1, i32* %262, align 8
  %263 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %264 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %263, i32 0, i32 2
  store i32 1, i32* %264, align 4
  %265 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %266 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %265, i32 0, i32 8
  %267 = load %struct.TYPE_9__*, %struct.TYPE_9__** %266, align 8
  %268 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 4
  %270 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %271 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %270, i32 0, i32 9
  store i32 %269, i32* %271, align 8
  br label %272

272:                                              ; preds = %253, %247
  %273 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %274 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %273, i32 0, i32 6
  store i64 0, i64* %274, align 8
  %275 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %276 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %275, i32 0, i32 1
  %277 = load i32, i32* %276, align 8
  store i32 %277, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %278

278:                                              ; preds = %343, %272
  %279 = load i32, i32* %5, align 4
  %280 = load i32, i32* @EFX_MAX_EXTRA_CHANNELS, align 4
  %281 = icmp ult i32 %279, %280
  br i1 %281, label %282, label %346

282:                                              ; preds = %278
  %283 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %284 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %283, i32 0, i32 7
  %285 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %284, align 8
  %286 = load i32, i32* %5, align 4
  %287 = zext i32 %286 to i64
  %288 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %285, i64 %287
  %289 = load %struct.TYPE_7__*, %struct.TYPE_7__** %288, align 8
  %290 = icmp ne %struct.TYPE_7__* %289, null
  br i1 %290, label %292, label %291

291:                                              ; preds = %282
  br label %343

292:                                              ; preds = %282
  %293 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %294 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %293, i32 0, i32 0
  %295 = load i64, i64* %294, align 8
  %296 = load i64, i64* @EFX_INT_MODE_MSIX, align 8
  %297 = icmp ne i64 %295, %296
  br i1 %297, label %304, label %298

298:                                              ; preds = %292
  %299 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %300 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %299, i32 0, i32 1
  %301 = load i32, i32* %300, align 8
  %302 = load i32, i32* %4, align 4
  %303 = icmp ule i32 %301, %302
  br i1 %303, label %304, label %317

304:                                              ; preds = %298, %292
  %305 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %306 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %305, i32 0, i32 7
  %307 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %306, align 8
  %308 = load i32, i32* %5, align 4
  %309 = zext i32 %308 to i64
  %310 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %307, i64 %309
  %311 = load %struct.TYPE_7__*, %struct.TYPE_7__** %310, align 8
  %312 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %311, i32 0, i32 0
  %313 = bitcast {}** %312 to i32 (%struct.efx_nic*)**
  %314 = load i32 (%struct.efx_nic*)*, i32 (%struct.efx_nic*)** %313, align 8
  %315 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %316 = call i32 %314(%struct.efx_nic* %315)
  br label %342

317:                                              ; preds = %298
  %318 = load i32, i32* %6, align 4
  %319 = add i32 %318, -1
  store i32 %319, i32* %6, align 4
  %320 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %321 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %320, i32 0, i32 7
  %322 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %321, align 8
  %323 = load i32, i32* %5, align 4
  %324 = zext i32 %323 to i64
  %325 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %322, i64 %324
  %326 = load %struct.TYPE_7__*, %struct.TYPE_7__** %325, align 8
  %327 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %328 = load i32, i32* %6, align 4
  %329 = call %struct.TYPE_10__* @efx_get_channel(%struct.efx_nic* %327, i32 %328)
  %330 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %329, i32 0, i32 0
  store %struct.TYPE_7__* %326, %struct.TYPE_7__** %330, align 8
  %331 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %332 = load i32, i32* %6, align 4
  %333 = call %struct.TYPE_10__* @efx_get_channel(%struct.efx_nic* %331, i32 %332)
  %334 = call i64 @efx_channel_has_tx_queues(%struct.TYPE_10__* %333)
  %335 = icmp ne i64 %334, 0
  br i1 %335, label %336, label %341

336:                                              ; preds = %317
  %337 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %338 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %337, i32 0, i32 6
  %339 = load i64, i64* %338, align 8
  %340 = add nsw i64 %339, 1
  store i64 %340, i64* %338, align 8
  br label %341

341:                                              ; preds = %336, %317
  br label %342

342:                                              ; preds = %341, %304
  br label %343

343:                                              ; preds = %342, %291
  %344 = load i32, i32* %5, align 4
  %345 = add i32 %344, 1
  store i32 %345, i32* %5, align 4
  br label %278

346:                                              ; preds = %278
  %347 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %348 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %347, i32 0, i32 3
  %349 = load i32, i32* %348, align 8
  %350 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %351 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %350, i32 0, i32 4
  store i32 %349, i32* %351, align 4
  store i32 0, i32* %2, align 4
  br label %352

352:                                              ; preds = %346, %243, %193
  %353 = load i32, i32* %2, align 4
  ret i32 %353

354:                                              ; preds = %193
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @efx_wanted_parallelism(%struct.efx_nic*) #2

declare dso_local i8* @min(i32, i32) #2

declare dso_local i32 @pci_enable_msix_range(%struct.TYPE_9__*, %struct.msix_entry*, i32, i32) #2

declare dso_local i32 @netif_err(%struct.efx_nic*, i32, i32, i8*, ...) #2

declare dso_local i32 @max(i32, i32) #2

declare dso_local %struct.TYPE_10__* @efx_get_channel(%struct.efx_nic*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

declare dso_local i32 @pci_enable_msi(%struct.TYPE_9__*) #2

declare dso_local i64 @efx_channel_has_tx_queues(%struct.TYPE_10__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
