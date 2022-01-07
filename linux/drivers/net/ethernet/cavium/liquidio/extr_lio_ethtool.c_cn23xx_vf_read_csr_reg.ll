; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_lio_ethtool.c_cn23xx_vf_read_csr_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_lio_ethtool.c_cn23xx_vf_read_csr_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"\0A\09 Octeon CSR Registers\0A\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"\0A[%08x] (SLI_PKT%d_OUT_SIZE): %016llx\0A\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"\0A[%08x] (SLI_PKT_IN_DONE%d_CNTS): %016llx\0A\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"\0A[%08x] (SLI_PKT%d_SLIST_BAOFF_DBELL): %016llx\0A\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"\0A[%08x] (SLI_PKT%d_SLIST_FIFO_RSIZE): %016llx\0A\00", align 1
@.str.5 = private unnamed_addr constant [46 x i8] c"\0A[%08x] (SLI_PKT%d__OUTPUT_CONTROL): %016llx\0A\00", align 1
@.str.6 = private unnamed_addr constant [42 x i8] c"\0A[%08x] (SLI_PKT%d_SLIST_BADDR): %016llx\0A\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"\0A[%08x] (SLI_PKT%d_INT_LEVELS): %016llx\0A\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"\0A[%08x] (SLI_PKT%d_CNTS): %016llx\0A\00", align 1
@CN23XX_VF_OQ_OFFSET = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [41 x i8] c"\0A[%08x] (SLI_PKT%d_ERROR_INFO): %016llx\0A\00", align 1
@CN23XX_VF_IQ_OFFSET = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [41 x i8] c"\0A[%08x] (SLI_PKT%d_VF_INT_SUM): %016llx\0A\00", align 1
@.str.11 = private unnamed_addr constant [44 x i8] c"\0A[%08x] (SLI_PKT%d_INPUT_CONTROL): %016llx\0A\00", align 1
@.str.12 = private unnamed_addr constant [42 x i8] c"\0A[%08x] (SLI_PKT%d_INSTR_BADDR): %016llx\0A\00", align 1
@.str.13 = private unnamed_addr constant [48 x i8] c"\0A[%08x] (SLI_PKT%d_INSTR_BAOFF_DBELL): %016llx\0A\00", align 1
@.str.14 = private unnamed_addr constant [47 x i8] c"\0A[%08x] (SLI_PKT%d_INSTR_FIFO_RSIZE): %016llx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.octeon_device*)* @cn23xx_vf_read_csr_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cn23xx_vf_read_csr_reg(i8* %0, %struct.octeon_device* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.octeon_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.octeon_device* %1, %struct.octeon_device** %4, align 8
  store i32 0, i32* %5, align 4
  %8 = load i8*, i8** %3, align 8
  %9 = load i32, i32* %5, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i8, i8* %8, i64 %10
  %12 = call i64 (i8*, i8*, ...) @sprintf(i8* %11, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* %5, align 4
  %14 = sext i32 %13 to i64
  %15 = add nsw i64 %14, %12
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* %5, align 4
  store i32 0, i32* %7, align 4
  br label %17

17:                                               ; preds = %42, %2
  %18 = load i32, i32* %7, align 4
  %19 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %20 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp slt i32 %18, %22
  br i1 %23, label %24, label %45

24:                                               ; preds = %17
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @CN23XX_VF_SLI_OQ_BUFF_INFO_SIZE(i32 %25)
  store i32 %26, i32* %6, align 4
  %27 = load i8*, i8** %3, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8, i8* %27, i64 %29
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %7, align 4
  %33 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %34 = load i32, i32* %6, align 4
  %35 = call i64 @octeon_read_csr64(%struct.octeon_device* %33, i32 %34)
  %36 = trunc i64 %35 to i32
  %37 = call i64 (i8*, i8*, ...) @sprintf(i8* %30, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %31, i32 %32, i32 %36)
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = add nsw i64 %39, %37
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %5, align 4
  br label %42

42:                                               ; preds = %24
  %43 = load i32, i32* %7, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %7, align 4
  br label %17

45:                                               ; preds = %17
  store i32 0, i32* %7, align 4
  br label %46

46:                                               ; preds = %71, %45
  %47 = load i32, i32* %7, align 4
  %48 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %49 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp slt i32 %47, %51
  br i1 %52, label %53, label %74

53:                                               ; preds = %46
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @CN23XX_VF_SLI_IQ_INSTR_COUNT64(i32 %54)
  store i32 %55, i32* %6, align 4
  %56 = load i8*, i8** %3, align 8
  %57 = load i32, i32* %5, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8, i8* %56, i64 %58
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* %7, align 4
  %62 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %63 = load i32, i32* %6, align 4
  %64 = call i64 @octeon_read_csr64(%struct.octeon_device* %62, i32 %63)
  %65 = trunc i64 %64 to i32
  %66 = call i64 (i8*, i8*, ...) @sprintf(i8* %59, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %60, i32 %61, i32 %65)
  %67 = load i32, i32* %5, align 4
  %68 = sext i32 %67 to i64
  %69 = add nsw i64 %68, %66
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %5, align 4
  br label %71

71:                                               ; preds = %53
  %72 = load i32, i32* %7, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %7, align 4
  br label %46

74:                                               ; preds = %46
  store i32 0, i32* %7, align 4
  br label %75

75:                                               ; preds = %100, %74
  %76 = load i32, i32* %7, align 4
  %77 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %78 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = icmp slt i32 %76, %80
  br i1 %81, label %82, label %103

82:                                               ; preds = %75
  %83 = load i32, i32* %7, align 4
  %84 = call i32 @CN23XX_VF_SLI_OQ_PKTS_CREDIT(i32 %83)
  store i32 %84, i32* %6, align 4
  %85 = load i8*, i8** %3, align 8
  %86 = load i32, i32* %5, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i8, i8* %85, i64 %87
  %89 = load i32, i32* %6, align 4
  %90 = load i32, i32* %7, align 4
  %91 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %92 = load i32, i32* %6, align 4
  %93 = call i64 @octeon_read_csr64(%struct.octeon_device* %91, i32 %92)
  %94 = trunc i64 %93 to i32
  %95 = call i64 (i8*, i8*, ...) @sprintf(i8* %88, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i32 %89, i32 %90, i32 %94)
  %96 = load i32, i32* %5, align 4
  %97 = sext i32 %96 to i64
  %98 = add nsw i64 %97, %95
  %99 = trunc i64 %98 to i32
  store i32 %99, i32* %5, align 4
  br label %100

100:                                              ; preds = %82
  %101 = load i32, i32* %7, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %7, align 4
  br label %75

103:                                              ; preds = %75
  store i32 0, i32* %7, align 4
  br label %104

104:                                              ; preds = %129, %103
  %105 = load i32, i32* %7, align 4
  %106 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %107 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = icmp slt i32 %105, %109
  br i1 %110, label %111, label %132

111:                                              ; preds = %104
  %112 = load i32, i32* %7, align 4
  %113 = call i32 @CN23XX_VF_SLI_OQ_SIZE(i32 %112)
  store i32 %113, i32* %6, align 4
  %114 = load i8*, i8** %3, align 8
  %115 = load i32, i32* %5, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i8, i8* %114, i64 %116
  %118 = load i32, i32* %6, align 4
  %119 = load i32, i32* %7, align 4
  %120 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %121 = load i32, i32* %6, align 4
  %122 = call i64 @octeon_read_csr64(%struct.octeon_device* %120, i32 %121)
  %123 = trunc i64 %122 to i32
  %124 = call i64 (i8*, i8*, ...) @sprintf(i8* %117, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0), i32 %118, i32 %119, i32 %123)
  %125 = load i32, i32* %5, align 4
  %126 = sext i32 %125 to i64
  %127 = add nsw i64 %126, %124
  %128 = trunc i64 %127 to i32
  store i32 %128, i32* %5, align 4
  br label %129

129:                                              ; preds = %111
  %130 = load i32, i32* %7, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %7, align 4
  br label %104

132:                                              ; preds = %104
  store i32 0, i32* %7, align 4
  br label %133

133:                                              ; preds = %158, %132
  %134 = load i32, i32* %7, align 4
  %135 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %136 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = icmp slt i32 %134, %138
  br i1 %139, label %140, label %161

140:                                              ; preds = %133
  %141 = load i32, i32* %7, align 4
  %142 = call i32 @CN23XX_VF_SLI_OQ_PKT_CONTROL(i32 %141)
  store i32 %142, i32* %6, align 4
  %143 = load i8*, i8** %3, align 8
  %144 = load i32, i32* %5, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i8, i8* %143, i64 %145
  %147 = load i32, i32* %6, align 4
  %148 = load i32, i32* %7, align 4
  %149 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %150 = load i32, i32* %6, align 4
  %151 = call i64 @octeon_read_csr64(%struct.octeon_device* %149, i32 %150)
  %152 = trunc i64 %151 to i32
  %153 = call i64 (i8*, i8*, ...) @sprintf(i8* %146, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0), i32 %147, i32 %148, i32 %152)
  %154 = load i32, i32* %5, align 4
  %155 = sext i32 %154 to i64
  %156 = add nsw i64 %155, %153
  %157 = trunc i64 %156 to i32
  store i32 %157, i32* %5, align 4
  br label %158

158:                                              ; preds = %140
  %159 = load i32, i32* %7, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %7, align 4
  br label %133

161:                                              ; preds = %133
  store i32 0, i32* %7, align 4
  br label %162

162:                                              ; preds = %187, %161
  %163 = load i32, i32* %7, align 4
  %164 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %165 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = icmp slt i32 %163, %167
  br i1 %168, label %169, label %190

169:                                              ; preds = %162
  %170 = load i32, i32* %7, align 4
  %171 = call i32 @CN23XX_VF_SLI_OQ_BASE_ADDR64(i32 %170)
  store i32 %171, i32* %6, align 4
  %172 = load i8*, i8** %3, align 8
  %173 = load i32, i32* %5, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i8, i8* %172, i64 %174
  %176 = load i32, i32* %6, align 4
  %177 = load i32, i32* %7, align 4
  %178 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %179 = load i32, i32* %6, align 4
  %180 = call i64 @octeon_read_csr64(%struct.octeon_device* %178, i32 %179)
  %181 = trunc i64 %180 to i32
  %182 = call i64 (i8*, i8*, ...) @sprintf(i8* %175, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0), i32 %176, i32 %177, i32 %181)
  %183 = load i32, i32* %5, align 4
  %184 = sext i32 %183 to i64
  %185 = add nsw i64 %184, %182
  %186 = trunc i64 %185 to i32
  store i32 %186, i32* %5, align 4
  br label %187

187:                                              ; preds = %169
  %188 = load i32, i32* %7, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %7, align 4
  br label %162

190:                                              ; preds = %162
  store i32 0, i32* %7, align 4
  br label %191

191:                                              ; preds = %216, %190
  %192 = load i32, i32* %7, align 4
  %193 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %194 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = icmp slt i32 %192, %196
  br i1 %197, label %198, label %219

198:                                              ; preds = %191
  %199 = load i32, i32* %7, align 4
  %200 = call i32 @CN23XX_VF_SLI_OQ_PKT_INT_LEVELS(i32 %199)
  store i32 %200, i32* %6, align 4
  %201 = load i8*, i8** %3, align 8
  %202 = load i32, i32* %5, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i8, i8* %201, i64 %203
  %205 = load i32, i32* %6, align 4
  %206 = load i32, i32* %7, align 4
  %207 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %208 = load i32, i32* %6, align 4
  %209 = call i64 @octeon_read_csr64(%struct.octeon_device* %207, i32 %208)
  %210 = trunc i64 %209 to i32
  %211 = call i64 (i8*, i8*, ...) @sprintf(i8* %204, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0), i32 %205, i32 %206, i32 %210)
  %212 = load i32, i32* %5, align 4
  %213 = sext i32 %212 to i64
  %214 = add nsw i64 %213, %211
  %215 = trunc i64 %214 to i32
  store i32 %215, i32* %5, align 4
  br label %216

216:                                              ; preds = %198
  %217 = load i32, i32* %7, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %7, align 4
  br label %191

219:                                              ; preds = %191
  store i32 0, i32* %7, align 4
  br label %220

220:                                              ; preds = %245, %219
  %221 = load i32, i32* %7, align 4
  %222 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %223 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %222, i32 0, i32 0
  %224 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 4
  %226 = icmp slt i32 %221, %225
  br i1 %226, label %227, label %248

227:                                              ; preds = %220
  %228 = load i32, i32* %7, align 4
  %229 = call i32 @CN23XX_VF_SLI_OQ_PKTS_SENT(i32 %228)
  store i32 %229, i32* %6, align 4
  %230 = load i8*, i8** %3, align 8
  %231 = load i32, i32* %5, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds i8, i8* %230, i64 %232
  %234 = load i32, i32* %6, align 4
  %235 = load i32, i32* %7, align 4
  %236 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %237 = load i32, i32* %6, align 4
  %238 = call i64 @octeon_read_csr64(%struct.octeon_device* %236, i32 %237)
  %239 = trunc i64 %238 to i32
  %240 = call i64 (i8*, i8*, ...) @sprintf(i8* %233, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0), i32 %234, i32 %235, i32 %239)
  %241 = load i32, i32* %5, align 4
  %242 = sext i32 %241 to i64
  %243 = add nsw i64 %242, %240
  %244 = trunc i64 %243 to i32
  store i32 %244, i32* %5, align 4
  br label %245

245:                                              ; preds = %227
  %246 = load i32, i32* %7, align 4
  %247 = add nsw i32 %246, 1
  store i32 %247, i32* %7, align 4
  br label %220

248:                                              ; preds = %220
  store i32 0, i32* %7, align 4
  br label %249

249:                                              ; preds = %276, %248
  %250 = load i32, i32* %7, align 4
  %251 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %252 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %251, i32 0, i32 0
  %253 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 4
  %255 = icmp slt i32 %250, %254
  br i1 %255, label %256, label %279

256:                                              ; preds = %249
  %257 = load i32, i32* %7, align 4
  %258 = load i32, i32* @CN23XX_VF_OQ_OFFSET, align 4
  %259 = mul nsw i32 %257, %258
  %260 = add nsw i32 65728, %259
  store i32 %260, i32* %6, align 4
  %261 = load i8*, i8** %3, align 8
  %262 = load i32, i32* %5, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds i8, i8* %261, i64 %263
  %265 = load i32, i32* %6, align 4
  %266 = load i32, i32* %7, align 4
  %267 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %268 = load i32, i32* %6, align 4
  %269 = call i64 @octeon_read_csr64(%struct.octeon_device* %267, i32 %268)
  %270 = trunc i64 %269 to i32
  %271 = call i64 (i8*, i8*, ...) @sprintf(i8* %264, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.9, i64 0, i64 0), i32 %265, i32 %266, i32 %270)
  %272 = load i32, i32* %5, align 4
  %273 = sext i32 %272 to i64
  %274 = add nsw i64 %273, %271
  %275 = trunc i64 %274 to i32
  store i32 %275, i32* %5, align 4
  br label %276

276:                                              ; preds = %256
  %277 = load i32, i32* %7, align 4
  %278 = add nsw i32 %277, 1
  store i32 %278, i32* %7, align 4
  br label %249

279:                                              ; preds = %249
  store i32 0, i32* %7, align 4
  br label %280

280:                                              ; preds = %307, %279
  %281 = load i32, i32* %7, align 4
  %282 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %283 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %282, i32 0, i32 0
  %284 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %283, i32 0, i32 0
  %285 = load i32, i32* %284, align 4
  %286 = icmp slt i32 %281, %285
  br i1 %286, label %287, label %310

287:                                              ; preds = %280
  %288 = load i32, i32* %7, align 4
  %289 = load i32, i32* @CN23XX_VF_IQ_OFFSET, align 4
  %290 = mul nsw i32 %288, %289
  %291 = add nsw i32 65744, %290
  store i32 %291, i32* %6, align 4
  %292 = load i8*, i8** %3, align 8
  %293 = load i32, i32* %5, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds i8, i8* %292, i64 %294
  %296 = load i32, i32* %6, align 4
  %297 = load i32, i32* %7, align 4
  %298 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %299 = load i32, i32* %6, align 4
  %300 = call i64 @octeon_read_csr64(%struct.octeon_device* %298, i32 %299)
  %301 = trunc i64 %300 to i32
  %302 = call i64 (i8*, i8*, ...) @sprintf(i8* %295, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.10, i64 0, i64 0), i32 %296, i32 %297, i32 %301)
  %303 = load i32, i32* %5, align 4
  %304 = sext i32 %303 to i64
  %305 = add nsw i64 %304, %302
  %306 = trunc i64 %305 to i32
  store i32 %306, i32* %5, align 4
  br label %307

307:                                              ; preds = %287
  %308 = load i32, i32* %7, align 4
  %309 = add nsw i32 %308, 1
  store i32 %309, i32* %7, align 4
  br label %280

310:                                              ; preds = %280
  store i32 0, i32* %7, align 4
  br label %311

311:                                              ; preds = %336, %310
  %312 = load i32, i32* %7, align 4
  %313 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %314 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %313, i32 0, i32 0
  %315 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %314, i32 0, i32 0
  %316 = load i32, i32* %315, align 4
  %317 = icmp slt i32 %312, %316
  br i1 %317, label %318, label %339

318:                                              ; preds = %311
  %319 = load i32, i32* %7, align 4
  %320 = call i32 @CN23XX_VF_SLI_IQ_PKT_CONTROL64(i32 %319)
  store i32 %320, i32* %6, align 4
  %321 = load i8*, i8** %3, align 8
  %322 = load i32, i32* %5, align 4
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds i8, i8* %321, i64 %323
  %325 = load i32, i32* %6, align 4
  %326 = load i32, i32* %7, align 4
  %327 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %328 = load i32, i32* %6, align 4
  %329 = call i64 @octeon_read_csr64(%struct.octeon_device* %327, i32 %328)
  %330 = trunc i64 %329 to i32
  %331 = call i64 (i8*, i8*, ...) @sprintf(i8* %324, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.11, i64 0, i64 0), i32 %325, i32 %326, i32 %330)
  %332 = load i32, i32* %5, align 4
  %333 = sext i32 %332 to i64
  %334 = add nsw i64 %333, %331
  %335 = trunc i64 %334 to i32
  store i32 %335, i32* %5, align 4
  br label %336

336:                                              ; preds = %318
  %337 = load i32, i32* %7, align 4
  %338 = add nsw i32 %337, 1
  store i32 %338, i32* %7, align 4
  br label %311

339:                                              ; preds = %311
  store i32 0, i32* %7, align 4
  br label %340

340:                                              ; preds = %365, %339
  %341 = load i32, i32* %7, align 4
  %342 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %343 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %342, i32 0, i32 0
  %344 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %343, i32 0, i32 0
  %345 = load i32, i32* %344, align 4
  %346 = icmp slt i32 %341, %345
  br i1 %346, label %347, label %368

347:                                              ; preds = %340
  %348 = load i32, i32* %7, align 4
  %349 = call i32 @CN23XX_VF_SLI_IQ_BASE_ADDR64(i32 %348)
  store i32 %349, i32* %6, align 4
  %350 = load i8*, i8** %3, align 8
  %351 = load i32, i32* %5, align 4
  %352 = sext i32 %351 to i64
  %353 = getelementptr inbounds i8, i8* %350, i64 %352
  %354 = load i32, i32* %6, align 4
  %355 = load i32, i32* %7, align 4
  %356 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %357 = load i32, i32* %6, align 4
  %358 = call i64 @octeon_read_csr64(%struct.octeon_device* %356, i32 %357)
  %359 = trunc i64 %358 to i32
  %360 = call i64 (i8*, i8*, ...) @sprintf(i8* %353, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.12, i64 0, i64 0), i32 %354, i32 %355, i32 %359)
  %361 = load i32, i32* %5, align 4
  %362 = sext i32 %361 to i64
  %363 = add nsw i64 %362, %360
  %364 = trunc i64 %363 to i32
  store i32 %364, i32* %5, align 4
  br label %365

365:                                              ; preds = %347
  %366 = load i32, i32* %7, align 4
  %367 = add nsw i32 %366, 1
  store i32 %367, i32* %7, align 4
  br label %340

368:                                              ; preds = %340
  store i32 0, i32* %7, align 4
  br label %369

369:                                              ; preds = %394, %368
  %370 = load i32, i32* %7, align 4
  %371 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %372 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %371, i32 0, i32 0
  %373 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %372, i32 0, i32 0
  %374 = load i32, i32* %373, align 4
  %375 = icmp slt i32 %370, %374
  br i1 %375, label %376, label %397

376:                                              ; preds = %369
  %377 = load i32, i32* %7, align 4
  %378 = call i32 @CN23XX_VF_SLI_IQ_DOORBELL(i32 %377)
  store i32 %378, i32* %6, align 4
  %379 = load i8*, i8** %3, align 8
  %380 = load i32, i32* %5, align 4
  %381 = sext i32 %380 to i64
  %382 = getelementptr inbounds i8, i8* %379, i64 %381
  %383 = load i32, i32* %6, align 4
  %384 = load i32, i32* %7, align 4
  %385 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %386 = load i32, i32* %6, align 4
  %387 = call i64 @octeon_read_csr64(%struct.octeon_device* %385, i32 %386)
  %388 = trunc i64 %387 to i32
  %389 = call i64 (i8*, i8*, ...) @sprintf(i8* %382, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.13, i64 0, i64 0), i32 %383, i32 %384, i32 %388)
  %390 = load i32, i32* %5, align 4
  %391 = sext i32 %390 to i64
  %392 = add nsw i64 %391, %389
  %393 = trunc i64 %392 to i32
  store i32 %393, i32* %5, align 4
  br label %394

394:                                              ; preds = %376
  %395 = load i32, i32* %7, align 4
  %396 = add nsw i32 %395, 1
  store i32 %396, i32* %7, align 4
  br label %369

397:                                              ; preds = %369
  store i32 0, i32* %7, align 4
  br label %398

398:                                              ; preds = %423, %397
  %399 = load i32, i32* %7, align 4
  %400 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %401 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %400, i32 0, i32 0
  %402 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %401, i32 0, i32 0
  %403 = load i32, i32* %402, align 4
  %404 = icmp slt i32 %399, %403
  br i1 %404, label %405, label %426

405:                                              ; preds = %398
  %406 = load i32, i32* %7, align 4
  %407 = call i32 @CN23XX_VF_SLI_IQ_SIZE(i32 %406)
  store i32 %407, i32* %6, align 4
  %408 = load i8*, i8** %3, align 8
  %409 = load i32, i32* %5, align 4
  %410 = sext i32 %409 to i64
  %411 = getelementptr inbounds i8, i8* %408, i64 %410
  %412 = load i32, i32* %6, align 4
  %413 = load i32, i32* %7, align 4
  %414 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %415 = load i32, i32* %6, align 4
  %416 = call i64 @octeon_read_csr64(%struct.octeon_device* %414, i32 %415)
  %417 = trunc i64 %416 to i32
  %418 = call i64 (i8*, i8*, ...) @sprintf(i8* %411, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.14, i64 0, i64 0), i32 %412, i32 %413, i32 %417)
  %419 = load i32, i32* %5, align 4
  %420 = sext i32 %419 to i64
  %421 = add nsw i64 %420, %418
  %422 = trunc i64 %421 to i32
  store i32 %422, i32* %5, align 4
  br label %423

423:                                              ; preds = %405
  %424 = load i32, i32* %7, align 4
  %425 = add nsw i32 %424, 1
  store i32 %425, i32* %7, align 4
  br label %398

426:                                              ; preds = %398
  store i32 0, i32* %7, align 4
  br label %427

427:                                              ; preds = %452, %426
  %428 = load i32, i32* %7, align 4
  %429 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %430 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %429, i32 0, i32 0
  %431 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %430, i32 0, i32 0
  %432 = load i32, i32* %431, align 4
  %433 = icmp slt i32 %428, %432
  br i1 %433, label %434, label %455

434:                                              ; preds = %427
  %435 = load i32, i32* %7, align 4
  %436 = call i32 @CN23XX_VF_SLI_IQ_INSTR_COUNT64(i32 %435)
  store i32 %436, i32* %6, align 4
  %437 = load i8*, i8** %3, align 8
  %438 = load i32, i32* %5, align 4
  %439 = sext i32 %438 to i64
  %440 = getelementptr inbounds i8, i8* %437, i64 %439
  %441 = load i32, i32* %6, align 4
  %442 = load i32, i32* %7, align 4
  %443 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %444 = load i32, i32* %6, align 4
  %445 = call i64 @octeon_read_csr64(%struct.octeon_device* %443, i32 %444)
  %446 = trunc i64 %445 to i32
  %447 = call i64 (i8*, i8*, ...) @sprintf(i8* %440, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %441, i32 %442, i32 %446)
  %448 = load i32, i32* %5, align 4
  %449 = sext i32 %448 to i64
  %450 = add nsw i64 %449, %447
  %451 = trunc i64 %450 to i32
  store i32 %451, i32* %5, align 4
  br label %452

452:                                              ; preds = %434
  %453 = load i32, i32* %7, align 4
  %454 = add nsw i32 %453, 1
  store i32 %454, i32* %7, align 4
  br label %427

455:                                              ; preds = %427
  %456 = load i32, i32* %5, align 4
  ret i32 %456
}

declare dso_local i64 @sprintf(i8*, i8*, ...) #1

declare dso_local i32 @CN23XX_VF_SLI_OQ_BUFF_INFO_SIZE(i32) #1

declare dso_local i64 @octeon_read_csr64(%struct.octeon_device*, i32) #1

declare dso_local i32 @CN23XX_VF_SLI_IQ_INSTR_COUNT64(i32) #1

declare dso_local i32 @CN23XX_VF_SLI_OQ_PKTS_CREDIT(i32) #1

declare dso_local i32 @CN23XX_VF_SLI_OQ_SIZE(i32) #1

declare dso_local i32 @CN23XX_VF_SLI_OQ_PKT_CONTROL(i32) #1

declare dso_local i32 @CN23XX_VF_SLI_OQ_BASE_ADDR64(i32) #1

declare dso_local i32 @CN23XX_VF_SLI_OQ_PKT_INT_LEVELS(i32) #1

declare dso_local i32 @CN23XX_VF_SLI_OQ_PKTS_SENT(i32) #1

declare dso_local i32 @CN23XX_VF_SLI_IQ_PKT_CONTROL64(i32) #1

declare dso_local i32 @CN23XX_VF_SLI_IQ_BASE_ADDR64(i32) #1

declare dso_local i32 @CN23XX_VF_SLI_IQ_DOORBELL(i32) #1

declare dso_local i32 @CN23XX_VF_SLI_IQ_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
