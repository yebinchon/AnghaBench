; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_efx.c_ef4_probe_interrupts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_efx.c_ef4_probe_interrupts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ef4_nic = type { i64, i32, i32, i32, i32, %struct.TYPE_5__**, %struct.TYPE_6__*, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { {}* }
%struct.TYPE_6__ = type { i32 }
%struct.msix_entry = type { i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_5__*, i32 }

@EF4_MAX_EXTRA_CHANNELS = common dso_local global i32 0, align 4
@EF4_INT_MODE_MSIX = common dso_local global i64 0, align 8
@EF4_MAX_CHANNELS = common dso_local global i32 0, align 4
@ef4_separate_tx_channels = common dso_local global i64 0, align 8
@EF4_INT_MODE_MSI = common dso_local global i64 0, align 8
@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"could not enable MSI-X\0A\00", align 1
@.str.1 = private unnamed_addr constant [58 x i8] c"WARNING: Insufficient MSI-X vectors available (%d < %u).\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"WARNING: Performance may be reduced.\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"could not enable MSI\0A\00", align 1
@EF4_INT_MODE_LEGACY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ef4_nic*)* @ef4_probe_interrupts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ef4_probe_interrupts(%struct.ef4_nic* %0) #0 {
  %2 = alloca %struct.ef4_nic*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.ef4_nic* %0, %struct.ef4_nic** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %10

10:                                               ; preds = %27, %1
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @EF4_MAX_EXTRA_CHANNELS, align 4
  %13 = icmp ult i32 %11, %12
  br i1 %13, label %14, label %30

14:                                               ; preds = %10
  %15 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %16 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %15, i32 0, i32 5
  %17 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %16, align 8
  %18 = load i32, i32* %4, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %17, i64 %19
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = icmp ne %struct.TYPE_5__* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %14
  %24 = load i32, i32* %3, align 4
  %25 = add i32 %24, 1
  store i32 %25, i32* %3, align 4
  br label %26

26:                                               ; preds = %23, %14
  br label %27

27:                                               ; preds = %26
  %28 = load i32, i32* %4, align 4
  %29 = add i32 %28, 1
  store i32 %29, i32* %4, align 4
  br label %10

30:                                               ; preds = %10
  %31 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %32 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @EF4_INT_MODE_MSIX, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %181

36:                                               ; preds = %30
  %37 = load i32, i32* @EF4_MAX_CHANNELS, align 4
  %38 = zext i32 %37 to i64
  %39 = call i8* @llvm.stacksave()
  store i8* %39, i8** %7, align 8
  %40 = alloca %struct.msix_entry, i64 %38, align 16
  store i64 %38, i64* %8, align 8
  %41 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %42 = call i32 @ef4_wanted_parallelism(%struct.ef4_nic* %41)
  store i32 %42, i32* %9, align 4
  %43 = load i64, i64* @ef4_separate_tx_channels, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %36
  %46 = load i32, i32* %9, align 4
  %47 = mul i32 %46, 2
  store i32 %47, i32* %9, align 4
  br label %48

48:                                               ; preds = %45, %36
  %49 = load i32, i32* %3, align 4
  %50 = load i32, i32* %9, align 4
  %51 = add i32 %50, %49
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %9, align 4
  %53 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %54 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %53, i32 0, i32 10
  %55 = load i32, i32* %54, align 4
  %56 = call i8* @min(i32 %52, i32 %55)
  %57 = ptrtoint i8* %56 to i32
  store i32 %57, i32* %9, align 4
  store i32 0, i32* %4, align 4
  br label %58

58:                                               ; preds = %68, %48
  %59 = load i32, i32* %4, align 4
  %60 = load i32, i32* %9, align 4
  %61 = icmp ult i32 %59, %60
  br i1 %61, label %62, label %71

62:                                               ; preds = %58
  %63 = load i32, i32* %4, align 4
  %64 = load i32, i32* %4, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %40, i64 %65
  %67 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %66, i32 0, i32 0
  store i32 %63, i32* %67, align 8
  br label %68

68:                                               ; preds = %62
  %69 = load i32, i32* %4, align 4
  %70 = add i32 %69, 1
  store i32 %70, i32* %4, align 4
  br label %58

71:                                               ; preds = %58
  %72 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %73 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %72, i32 0, i32 6
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %73, align 8
  %75 = load i32, i32* %9, align 4
  %76 = call i32 @pci_enable_msix_range(%struct.TYPE_6__* %74, %struct.msix_entry* %40, i32 1, i32 %75)
  store i32 %76, i32* %6, align 4
  %77 = load i32, i32* %6, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %89

79:                                               ; preds = %71
  %80 = load i64, i64* @EF4_INT_MODE_MSI, align 8
  %81 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %82 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %81, i32 0, i32 0
  store i64 %80, i64* %82, align 8
  %83 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %84 = load i32, i32* @drv, align 4
  %85 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %86 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %85, i32 0, i32 8
  %87 = load i32, i32* %86, align 4
  %88 = call i32 (%struct.ef4_nic*, i32, i32, i8*, ...) @netif_err(%struct.ef4_nic* %83, i32 %84, i32 %87, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %110

89:                                               ; preds = %71
  %90 = load i32, i32* %6, align 4
  %91 = load i32, i32* %9, align 4
  %92 = icmp ult i32 %90, %91
  br i1 %92, label %93, label %109

93:                                               ; preds = %89
  %94 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %95 = load i32, i32* @drv, align 4
  %96 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %97 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %96, i32 0, i32 8
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* %6, align 4
  %100 = load i32, i32* %9, align 4
  %101 = call i32 (%struct.ef4_nic*, i32, i32, i8*, ...) @netif_err(%struct.ef4_nic* %94, i32 %95, i32 %98, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i32 %99, i32 %100)
  %102 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %103 = load i32, i32* @drv, align 4
  %104 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %105 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %104, i32 0, i32 8
  %106 = load i32, i32* %105, align 4
  %107 = call i32 (%struct.ef4_nic*, i32, i32, i8*, ...) @netif_err(%struct.ef4_nic* %102, i32 %103, i32 %106, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  %108 = load i32, i32* %6, align 4
  store i32 %108, i32* %9, align 4
  br label %109

109:                                              ; preds = %93, %89
  br label %110

110:                                              ; preds = %109, %79
  %111 = load i32, i32* %6, align 4
  %112 = icmp sgt i32 %111, 0
  br i1 %112, label %113, label %179

113:                                              ; preds = %110
  %114 = load i32, i32* %9, align 4
  %115 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %116 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %115, i32 0, i32 1
  store i32 %114, i32* %116, align 8
  %117 = load i32, i32* %9, align 4
  %118 = load i32, i32* %3, align 4
  %119 = icmp ugt i32 %117, %118
  br i1 %119, label %120, label %124

120:                                              ; preds = %113
  %121 = load i32, i32* %3, align 4
  %122 = load i32, i32* %9, align 4
  %123 = sub i32 %122, %121
  store i32 %123, i32* %9, align 4
  br label %124

124:                                              ; preds = %120, %113
  %125 = load i64, i64* @ef4_separate_tx_channels, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %146

127:                                              ; preds = %124
  %128 = load i32, i32* %9, align 4
  %129 = udiv i32 %128, 2
  %130 = call i32 @max(i32 %129, i32 1)
  %131 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %132 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %131, i32 0, i32 9
  %133 = load i32, i32* %132, align 8
  %134 = call i8* @min(i32 %130, i32 %133)
  %135 = ptrtoint i8* %134 to i32
  %136 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %137 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %136, i32 0, i32 2
  store i32 %135, i32* %137, align 4
  %138 = load i32, i32* %9, align 4
  %139 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %140 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 4
  %142 = sub i32 %138, %141
  %143 = call i32 @max(i32 %142, i32 1)
  %144 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %145 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %144, i32 0, i32 3
  store i32 %143, i32* %145, align 8
  br label %158

146:                                              ; preds = %124
  %147 = load i32, i32* %9, align 4
  %148 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %149 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %148, i32 0, i32 9
  %150 = load i32, i32* %149, align 8
  %151 = call i8* @min(i32 %147, i32 %150)
  %152 = ptrtoint i8* %151 to i32
  %153 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %154 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %153, i32 0, i32 2
  store i32 %152, i32* %154, align 4
  %155 = load i32, i32* %9, align 4
  %156 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %157 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %156, i32 0, i32 3
  store i32 %155, i32* %157, align 8
  br label %158

158:                                              ; preds = %146, %127
  store i32 0, i32* %4, align 4
  br label %159

159:                                              ; preds = %175, %158
  %160 = load i32, i32* %4, align 4
  %161 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %162 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 8
  %164 = icmp ult i32 %160, %163
  br i1 %164, label %165, label %178

165:                                              ; preds = %159
  %166 = load i32, i32* %4, align 4
  %167 = zext i32 %166 to i64
  %168 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %40, i64 %167
  %169 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %172 = load i32, i32* %4, align 4
  %173 = call %struct.TYPE_7__* @ef4_get_channel(%struct.ef4_nic* %171, i32 %172)
  %174 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %173, i32 0, i32 1
  store i32 %170, i32* %174, align 8
  br label %175

175:                                              ; preds = %165
  %176 = load i32, i32* %4, align 4
  %177 = add i32 %176, 1
  store i32 %177, i32* %4, align 4
  br label %159

178:                                              ; preds = %159
  br label %179

179:                                              ; preds = %178, %110
  %180 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %180)
  br label %181

181:                                              ; preds = %179, %30
  %182 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %183 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = load i64, i64* @EF4_INT_MODE_MSI, align 8
  %186 = icmp eq i64 %184, %185
  br i1 %186, label %187, label %220

187:                                              ; preds = %181
  %188 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %189 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %188, i32 0, i32 1
  store i32 1, i32* %189, align 8
  %190 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %191 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %190, i32 0, i32 3
  store i32 1, i32* %191, align 8
  %192 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %193 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %192, i32 0, i32 2
  store i32 1, i32* %193, align 4
  %194 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %195 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %194, i32 0, i32 6
  %196 = load %struct.TYPE_6__*, %struct.TYPE_6__** %195, align 8
  %197 = call i32 @pci_enable_msi(%struct.TYPE_6__* %196)
  store i32 %197, i32* %6, align 4
  %198 = load i32, i32* %6, align 4
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %200, label %209

200:                                              ; preds = %187
  %201 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %202 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %201, i32 0, i32 6
  %203 = load %struct.TYPE_6__*, %struct.TYPE_6__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 4
  %206 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %207 = call %struct.TYPE_7__* @ef4_get_channel(%struct.ef4_nic* %206, i32 0)
  %208 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %207, i32 0, i32 1
  store i32 %205, i32* %208, align 8
  br label %219

209:                                              ; preds = %187
  %210 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %211 = load i32, i32* @drv, align 4
  %212 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %213 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %212, i32 0, i32 8
  %214 = load i32, i32* %213, align 4
  %215 = call i32 (%struct.ef4_nic*, i32, i32, i8*, ...) @netif_err(%struct.ef4_nic* %210, i32 %211, i32 %214, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %216 = load i64, i64* @EF4_INT_MODE_LEGACY, align 8
  %217 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %218 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %217, i32 0, i32 0
  store i64 %216, i64* %218, align 8
  br label %219

219:                                              ; preds = %209, %200
  br label %220

220:                                              ; preds = %219, %181
  %221 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %222 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %221, i32 0, i32 0
  %223 = load i64, i64* %222, align 8
  %224 = load i64, i64* @EF4_INT_MODE_LEGACY, align 8
  %225 = icmp eq i64 %223, %224
  br i1 %225, label %226, label %245

226:                                              ; preds = %220
  %227 = load i64, i64* @ef4_separate_tx_channels, align 8
  %228 = icmp ne i64 %227, 0
  %229 = zext i1 %228 to i64
  %230 = select i1 %228, i32 1, i32 0
  %231 = add nsw i32 1, %230
  %232 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %233 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %232, i32 0, i32 1
  store i32 %231, i32* %233, align 8
  %234 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %235 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %234, i32 0, i32 3
  store i32 1, i32* %235, align 8
  %236 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %237 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %236, i32 0, i32 2
  store i32 1, i32* %237, align 4
  %238 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %239 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %238, i32 0, i32 6
  %240 = load %struct.TYPE_6__*, %struct.TYPE_6__** %239, align 8
  %241 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 4
  %243 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %244 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %243, i32 0, i32 7
  store i32 %242, i32* %244, align 8
  br label %245

245:                                              ; preds = %226, %220
  %246 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %247 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %246, i32 0, i32 1
  %248 = load i32, i32* %247, align 8
  store i32 %248, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %249

249:                                              ; preds = %303, %245
  %250 = load i32, i32* %4, align 4
  %251 = load i32, i32* @EF4_MAX_EXTRA_CHANNELS, align 4
  %252 = icmp ult i32 %250, %251
  br i1 %252, label %253, label %306

253:                                              ; preds = %249
  %254 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %255 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %254, i32 0, i32 5
  %256 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %255, align 8
  %257 = load i32, i32* %4, align 4
  %258 = zext i32 %257 to i64
  %259 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %256, i64 %258
  %260 = load %struct.TYPE_5__*, %struct.TYPE_5__** %259, align 8
  %261 = icmp ne %struct.TYPE_5__* %260, null
  br i1 %261, label %263, label %262

262:                                              ; preds = %253
  br label %303

263:                                              ; preds = %253
  %264 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %265 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %264, i32 0, i32 0
  %266 = load i64, i64* %265, align 8
  %267 = load i64, i64* @EF4_INT_MODE_MSIX, align 8
  %268 = icmp ne i64 %266, %267
  br i1 %268, label %275, label %269

269:                                              ; preds = %263
  %270 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %271 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %270, i32 0, i32 1
  %272 = load i32, i32* %271, align 8
  %273 = load i32, i32* %3, align 4
  %274 = icmp ule i32 %272, %273
  br i1 %274, label %275, label %288

275:                                              ; preds = %269, %263
  %276 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %277 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %276, i32 0, i32 5
  %278 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %277, align 8
  %279 = load i32, i32* %4, align 4
  %280 = zext i32 %279 to i64
  %281 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %278, i64 %280
  %282 = load %struct.TYPE_5__*, %struct.TYPE_5__** %281, align 8
  %283 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %282, i32 0, i32 0
  %284 = bitcast {}** %283 to i32 (%struct.ef4_nic*)**
  %285 = load i32 (%struct.ef4_nic*)*, i32 (%struct.ef4_nic*)** %284, align 8
  %286 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %287 = call i32 %285(%struct.ef4_nic* %286)
  br label %302

288:                                              ; preds = %269
  %289 = load i32, i32* %5, align 4
  %290 = add i32 %289, -1
  store i32 %290, i32* %5, align 4
  %291 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %292 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %291, i32 0, i32 5
  %293 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %292, align 8
  %294 = load i32, i32* %4, align 4
  %295 = zext i32 %294 to i64
  %296 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %293, i64 %295
  %297 = load %struct.TYPE_5__*, %struct.TYPE_5__** %296, align 8
  %298 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %299 = load i32, i32* %5, align 4
  %300 = call %struct.TYPE_7__* @ef4_get_channel(%struct.ef4_nic* %298, i32 %299)
  %301 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %300, i32 0, i32 0
  store %struct.TYPE_5__* %297, %struct.TYPE_5__** %301, align 8
  br label %302

302:                                              ; preds = %288, %275
  br label %303

303:                                              ; preds = %302, %262
  %304 = load i32, i32* %4, align 4
  %305 = add i32 %304, 1
  store i32 %305, i32* %4, align 4
  br label %249

306:                                              ; preds = %249
  %307 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %308 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %307, i32 0, i32 3
  %309 = load i32, i32* %308, align 8
  %310 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %311 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %310, i32 0, i32 4
  store i32 %309, i32* %311, align 4
  ret i32 0
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ef4_wanted_parallelism(%struct.ef4_nic*) #2

declare dso_local i8* @min(i32, i32) #2

declare dso_local i32 @pci_enable_msix_range(%struct.TYPE_6__*, %struct.msix_entry*, i32, i32) #2

declare dso_local i32 @netif_err(%struct.ef4_nic*, i32, i32, i8*, ...) #2

declare dso_local i32 @max(i32, i32) #2

declare dso_local %struct.TYPE_7__* @ef4_get_channel(%struct.ef4_nic*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

declare dso_local i32 @pci_enable_msi(%struct.TYPE_6__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
