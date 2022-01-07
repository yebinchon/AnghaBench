; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_main.c_enable_msix.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_main.c_enable_msix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32, i32, i32, %struct.TYPE_8__, %struct.TYPE_7__*, %struct.TYPE_6__*, i32, %struct.TYPE_5__, %struct.sge }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i64, i64 }
%struct.sge = type { i32, i32, i32, i32 }
%struct.msix_entry = type { i32, i32 }

@MAX_INGQ = common dso_local global i32 0, align 4
@MAX_OFLD_QSETS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EXTRA_VECS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"not enough MSI-X vectors left, not using MSI-X\0A\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"%d MSI-X vectors allocated, nic %d per uld %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adapter*)* @enable_msix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @enable_msix(%struct.adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.sge*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.msix_entry*, align 8
  %14 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %15 = load %struct.adapter*, %struct.adapter** %3, align 8
  %16 = getelementptr inbounds %struct.adapter, %struct.adapter* %15, i32 0, i32 8
  store %struct.sge* %16, %struct.sge** %11, align 8
  %17 = load %struct.adapter*, %struct.adapter** %3, align 8
  %18 = getelementptr inbounds %struct.adapter, %struct.adapter* %17, i32 0, i32 7
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* @MAX_INGQ, align 4
  store i32 %21, i32* %14, align 4
  %22 = load %struct.adapter*, %struct.adapter** %3, align 8
  %23 = call i64 @is_pci_uld(%struct.adapter* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %1
  %26 = load i32, i32* @MAX_OFLD_QSETS, align 4
  %27 = load %struct.adapter*, %struct.adapter** %3, align 8
  %28 = getelementptr inbounds %struct.adapter, %struct.adapter* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = mul nsw i32 %26, %29
  %31 = load i32, i32* %14, align 4
  %32 = add nsw i32 %31, %30
  store i32 %32, i32* %14, align 4
  br label %33

33:                                               ; preds = %25, %1
  %34 = load %struct.adapter*, %struct.adapter** %3, align 8
  %35 = call i64 @is_offload(%struct.adapter* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %33
  %38 = load i32, i32* @MAX_OFLD_QSETS, align 4
  %39 = load %struct.adapter*, %struct.adapter** %3, align 8
  %40 = getelementptr inbounds %struct.adapter, %struct.adapter* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = mul nsw i32 %38, %41
  %43 = load i32, i32* %14, align 4
  %44 = add nsw i32 %43, %42
  store i32 %44, i32* %14, align 4
  br label %45

45:                                               ; preds = %37, %33
  %46 = load i32, i32* %14, align 4
  %47 = add nsw i32 %46, 1
  %48 = load i32, i32* @GFP_KERNEL, align 4
  %49 = call %struct.msix_entry* @kmalloc_array(i32 %47, i32 8, i32 %48)
  store %struct.msix_entry* %49, %struct.msix_entry** %13, align 8
  %50 = load %struct.msix_entry*, %struct.msix_entry** %13, align 8
  %51 = icmp ne %struct.msix_entry* %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %45
  %53 = load i32, i32* @ENOMEM, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %2, align 4
  br label %280

55:                                               ; preds = %45
  %56 = load %struct.adapter*, %struct.adapter** %3, align 8
  %57 = call i64 @get_msix_info(%struct.adapter* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %55
  %60 = load %struct.adapter*, %struct.adapter** %3, align 8
  %61 = getelementptr inbounds %struct.adapter, %struct.adapter* %60, i32 0, i32 7
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 2
  store i64 0, i64* %62, align 8
  %63 = load %struct.adapter*, %struct.adapter** %3, align 8
  %64 = getelementptr inbounds %struct.adapter, %struct.adapter* %63, i32 0, i32 7
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 1
  store i64 0, i64* %65, align 8
  br label %66

66:                                               ; preds = %59, %55
  store i32 0, i32* %6, align 4
  br label %67

67:                                               ; preds = %79, %66
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* %14, align 4
  %70 = add nsw i32 %69, 1
  %71 = icmp slt i32 %68, %70
  br i1 %71, label %72, label %82

72:                                               ; preds = %67
  %73 = load i32, i32* %6, align 4
  %74 = load %struct.msix_entry*, %struct.msix_entry** %13, align 8
  %75 = load i32, i32* %6, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %74, i64 %76
  %78 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %77, i32 0, i32 0
  store i32 %73, i32* %78, align 4
  br label %79

79:                                               ; preds = %72
  %80 = load i32, i32* %6, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %6, align 4
  br label %67

82:                                               ; preds = %67
  %83 = load %struct.sge*, %struct.sge** %11, align 8
  %84 = getelementptr inbounds %struct.sge, %struct.sge* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @EXTRA_VECS, align 4
  %87 = add nsw i32 %85, %86
  store i32 %87, i32* %8, align 4
  %88 = load %struct.adapter*, %struct.adapter** %3, align 8
  %89 = call i64 @is_offload(%struct.adapter* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %106

91:                                               ; preds = %82
  %92 = load %struct.adapter*, %struct.adapter** %3, align 8
  %93 = getelementptr inbounds %struct.adapter, %struct.adapter* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.sge*, %struct.sge** %11, align 8
  %96 = getelementptr inbounds %struct.sge, %struct.sge* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = mul nsw i32 %94, %97
  %99 = load i32, i32* %8, align 4
  %100 = add nsw i32 %99, %98
  store i32 %100, i32* %8, align 4
  %101 = load %struct.adapter*, %struct.adapter** %3, align 8
  %102 = getelementptr inbounds %struct.adapter, %struct.adapter* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* %12, align 4
  %105 = mul i32 %103, %104
  store i32 %105, i32* %4, align 4
  br label %106

106:                                              ; preds = %91, %82
  %107 = load %struct.adapter*, %struct.adapter** %3, align 8
  %108 = call i64 @is_pci_uld(%struct.adapter* %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %125

110:                                              ; preds = %106
  %111 = load %struct.adapter*, %struct.adapter** %3, align 8
  %112 = getelementptr inbounds %struct.adapter, %struct.adapter* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.sge*, %struct.sge** %11, align 8
  %115 = getelementptr inbounds %struct.sge, %struct.sge* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = mul nsw i32 %113, %116
  %118 = load i32, i32* %8, align 4
  %119 = add nsw i32 %118, %117
  store i32 %119, i32* %8, align 4
  %120 = load %struct.adapter*, %struct.adapter** %3, align 8
  %121 = getelementptr inbounds %struct.adapter, %struct.adapter* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* %12, align 4
  %124 = mul i32 %122, %123
  store i32 %124, i32* %5, align 4
  br label %125

125:                                              ; preds = %110, %106
  %126 = load %struct.adapter*, %struct.adapter** %3, align 8
  %127 = getelementptr inbounds %struct.adapter, %struct.adapter* %126, i32 0, i32 7
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* @EXTRA_VECS, align 4
  %131 = add i32 %129, %130
  %132 = load i32, i32* %4, align 4
  %133 = add i32 %131, %132
  %134 = load i32, i32* %5, align 4
  %135 = add i32 %133, %134
  store i32 %135, i32* %9, align 4
  %136 = load %struct.adapter*, %struct.adapter** %3, align 8
  %137 = getelementptr inbounds %struct.adapter, %struct.adapter* %136, i32 0, i32 6
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.msix_entry*, %struct.msix_entry** %13, align 8
  %140 = load i32, i32* %9, align 4
  %141 = load i32, i32* %8, align 4
  %142 = call i32 @pci_enable_msix_range(i32 %138, %struct.msix_entry* %139, i32 %140, i32 %141)
  store i32 %142, i32* %10, align 4
  %143 = load i32, i32* %10, align 4
  %144 = icmp slt i32 %143, 0
  br i1 %144, label %145, label %153

145:                                              ; preds = %125
  %146 = load %struct.adapter*, %struct.adapter** %3, align 8
  %147 = getelementptr inbounds %struct.adapter, %struct.adapter* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 8
  %149 = call i32 (i32, i8*, ...) @dev_info(i32 %148, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %150 = load %struct.msix_entry*, %struct.msix_entry** %13, align 8
  %151 = call i32 @kfree(%struct.msix_entry* %150)
  %152 = load i32, i32* %10, align 4
  store i32 %152, i32* %2, align 4
  br label %280

153:                                              ; preds = %125
  %154 = load i32, i32* %10, align 4
  %155 = load i32, i32* @EXTRA_VECS, align 4
  %156 = sub nsw i32 %154, %155
  %157 = load i32, i32* %4, align 4
  %158 = sub nsw i32 %156, %157
  %159 = load i32, i32* %5, align 4
  %160 = sub nsw i32 %158, %159
  store i32 %160, i32* %6, align 4
  %161 = load i32, i32* %6, align 4
  %162 = load %struct.sge*, %struct.sge** %11, align 8
  %163 = getelementptr inbounds %struct.sge, %struct.sge* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = icmp slt i32 %161, %164
  br i1 %165, label %166, label %180

166:                                              ; preds = %153
  %167 = load i32, i32* %6, align 4
  %168 = load %struct.sge*, %struct.sge** %11, align 8
  %169 = getelementptr inbounds %struct.sge, %struct.sge* %168, i32 0, i32 0
  store i32 %167, i32* %169, align 4
  %170 = load i32, i32* %6, align 4
  %171 = load %struct.sge*, %struct.sge** %11, align 8
  %172 = getelementptr inbounds %struct.sge, %struct.sge* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 4
  %174 = icmp slt i32 %170, %173
  br i1 %174, label %175, label %179

175:                                              ; preds = %166
  %176 = load %struct.adapter*, %struct.adapter** %3, align 8
  %177 = load i32, i32* %6, align 4
  %178 = call i32 @reduce_ethqs(%struct.adapter* %176, i32 %177)
  br label %179

179:                                              ; preds = %175, %166
  br label %180

180:                                              ; preds = %179, %153
  %181 = load %struct.adapter*, %struct.adapter** %3, align 8
  %182 = call i64 @is_uld(%struct.adapter* %181)
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %199

184:                                              ; preds = %180
  %185 = load i32, i32* %10, align 4
  %186 = load i32, i32* %8, align 4
  %187 = icmp slt i32 %185, %186
  br i1 %187, label %188, label %192

188:                                              ; preds = %184
  %189 = load i32, i32* %12, align 4
  %190 = load %struct.sge*, %struct.sge** %11, align 8
  %191 = getelementptr inbounds %struct.sge, %struct.sge* %190, i32 0, i32 3
  store i32 %189, i32* %191, align 4
  br label %198

192:                                              ; preds = %184
  %193 = load %struct.sge*, %struct.sge** %11, align 8
  %194 = getelementptr inbounds %struct.sge, %struct.sge* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = load %struct.sge*, %struct.sge** %11, align 8
  %197 = getelementptr inbounds %struct.sge, %struct.sge* %196, i32 0, i32 3
  store i32 %195, i32* %197, align 4
  br label %198

198:                                              ; preds = %192, %188
  br label %199

199:                                              ; preds = %198, %180
  store i32 0, i32* %6, align 4
  br label %200

200:                                              ; preds = %222, %199
  %201 = load i32, i32* %6, align 4
  %202 = load %struct.sge*, %struct.sge** %11, align 8
  %203 = getelementptr inbounds %struct.sge, %struct.sge* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  %205 = load i32, i32* @EXTRA_VECS, align 4
  %206 = add nsw i32 %204, %205
  %207 = icmp slt i32 %201, %206
  br i1 %207, label %208, label %225

208:                                              ; preds = %200
  %209 = load %struct.msix_entry*, %struct.msix_entry** %13, align 8
  %210 = load i32, i32* %6, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %209, i64 %211
  %213 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 4
  %215 = load %struct.adapter*, %struct.adapter** %3, align 8
  %216 = getelementptr inbounds %struct.adapter, %struct.adapter* %215, i32 0, i32 5
  %217 = load %struct.TYPE_6__*, %struct.TYPE_6__** %216, align 8
  %218 = load i32, i32* %6, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %217, i64 %219
  %221 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %220, i32 0, i32 0
  store i32 %214, i32* %221, align 4
  br label %222

222:                                              ; preds = %208
  %223 = load i32, i32* %6, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %6, align 4
  br label %200

225:                                              ; preds = %200
  %226 = load %struct.adapter*, %struct.adapter** %3, align 8
  %227 = call i64 @is_uld(%struct.adapter* %226)
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %229, label %266

229:                                              ; preds = %225
  store i32 0, i32* %7, align 4
  br label %230

230:                                              ; preds = %256, %229
  %231 = load i32, i32* %6, align 4
  %232 = load i32, i32* %10, align 4
  %233 = icmp slt i32 %231, %232
  br i1 %233, label %234, label %261

234:                                              ; preds = %230
  %235 = load %struct.msix_entry*, %struct.msix_entry** %13, align 8
  %236 = load i32, i32* %6, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %235, i64 %237
  %239 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %238, i32 0, i32 1
  %240 = load i32, i32* %239, align 4
  %241 = load %struct.adapter*, %struct.adapter** %3, align 8
  %242 = getelementptr inbounds %struct.adapter, %struct.adapter* %241, i32 0, i32 4
  %243 = load %struct.TYPE_7__*, %struct.TYPE_7__** %242, align 8
  %244 = load i32, i32* %7, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %243, i64 %245
  %247 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %246, i32 0, i32 1
  store i32 %240, i32* %247, align 4
  %248 = load i32, i32* %6, align 4
  %249 = load %struct.adapter*, %struct.adapter** %3, align 8
  %250 = getelementptr inbounds %struct.adapter, %struct.adapter* %249, i32 0, i32 4
  %251 = load %struct.TYPE_7__*, %struct.TYPE_7__** %250, align 8
  %252 = load i32, i32* %7, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %251, i64 %253
  %255 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %254, i32 0, i32 0
  store i32 %248, i32* %255, align 4
  br label %256

256:                                              ; preds = %234
  %257 = load i32, i32* %6, align 4
  %258 = add nsw i32 %257, 1
  store i32 %258, i32* %6, align 4
  %259 = load i32, i32* %7, align 4
  %260 = add nsw i32 %259, 1
  store i32 %260, i32* %7, align 4
  br label %230

261:                                              ; preds = %230
  %262 = load i32, i32* %7, align 4
  %263 = load %struct.adapter*, %struct.adapter** %3, align 8
  %264 = getelementptr inbounds %struct.adapter, %struct.adapter* %263, i32 0, i32 3
  %265 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %264, i32 0, i32 0
  store i32 %262, i32* %265, align 4
  br label %266

266:                                              ; preds = %261, %225
  %267 = load %struct.adapter*, %struct.adapter** %3, align 8
  %268 = getelementptr inbounds %struct.adapter, %struct.adapter* %267, i32 0, i32 2
  %269 = load i32, i32* %268, align 8
  %270 = load i32, i32* %10, align 4
  %271 = load %struct.sge*, %struct.sge** %11, align 8
  %272 = getelementptr inbounds %struct.sge, %struct.sge* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 4
  %274 = load %struct.sge*, %struct.sge** %11, align 8
  %275 = getelementptr inbounds %struct.sge, %struct.sge* %274, i32 0, i32 3
  %276 = load i32, i32* %275, align 4
  %277 = call i32 (i32, i8*, ...) @dev_info(i32 %269, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %270, i32 %273, i32 %276)
  %278 = load %struct.msix_entry*, %struct.msix_entry** %13, align 8
  %279 = call i32 @kfree(%struct.msix_entry* %278)
  store i32 0, i32* %2, align 4
  br label %280

280:                                              ; preds = %266, %145, %52
  %281 = load i32, i32* %2, align 4
  ret i32 %281
}

declare dso_local i64 @is_pci_uld(%struct.adapter*) #1

declare dso_local i64 @is_offload(%struct.adapter*) #1

declare dso_local %struct.msix_entry* @kmalloc_array(i32, i32, i32) #1

declare dso_local i64 @get_msix_info(%struct.adapter*) #1

declare dso_local i32 @pci_enable_msix_range(i32, %struct.msix_entry*, i32, i32) #1

declare dso_local i32 @dev_info(i32, i8*, ...) #1

declare dso_local i32 @kfree(%struct.msix_entry*) #1

declare dso_local i32 @reduce_ethqs(%struct.adapter*, i32) #1

declare dso_local i64 @is_uld(%struct.adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
