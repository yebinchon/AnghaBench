; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_gianfar_ethtool.c_gfar_ethflow_to_filer_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_gianfar_ethtool.c_gfar_ethflow_to_filer_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfar_private = type { i32*, i32*, i32, i32 }

@MAX_FILER_IDX = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@RQFPR_IPV4 = common dso_local global i32 0, align 4
@RQFPR_TCP = common dso_local global i32 0, align 4
@RQFPR_UDP = common dso_local global i32 0, align 4
@RQFPR_IPV6 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Right now this class is not supported\0A\00", align 1
@RQFCR_PID_PARSE = common dso_local global i32 0, align 4
@RQFCR_CLE = common dso_local global i32 0, align 4
@RQFCR_AND = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"No parse rule found, can't create hash rules\0A\00", align 1
@RQFCR_CMP_EXACT = common dso_local global i32 0, align 4
@RQFCR_HASHTBL_0 = common dso_local global i32 0, align 4
@RQFCR_PID_MASK = common dso_local global i32 0, align 4
@FPR_FILER_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gfar_private*, i32, i32)* @gfar_ethflow_to_filer_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfar_ethflow_to_filer_table(%struct.gfar_private* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.gfar_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.gfar_private* %0, %struct.gfar_private** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %15 = load i32, i32* @MAX_FILER_IDX, align 4
  store i32 %15, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 1, i32* %14, align 4
  %16 = load i32, i32* @MAX_FILER_IDX, align 4
  %17 = add nsw i32 %16, 1
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call i32* @kmalloc_array(i32 %17, i32 4, i32 %18)
  store i32* %19, i32** %8, align 8
  %20 = load i32, i32* @MAX_FILER_IDX, align 4
  %21 = add nsw i32 %20, 1
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call i32* @kmalloc_array(i32 %21, i32 4, i32 %22)
  store i32* %23, i32** %9, align 8
  %24 = load i32*, i32** %8, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %3
  %27 = load i32*, i32** %9, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %26, %3
  store i32 0, i32* %14, align 4
  br label %313

30:                                               ; preds = %26
  %31 = load i32, i32* %6, align 4
  switch i32 %31, label %48 [
    i32 131, label %32
    i32 129, label %36
    i32 130, label %40
    i32 128, label %44
  ]

32:                                               ; preds = %30
  %33 = load i32, i32* @RQFPR_IPV4, align 4
  %34 = load i32, i32* @RQFPR_TCP, align 4
  %35 = or i32 %33, %34
  store i32 %35, i32* %7, align 4
  br label %53

36:                                               ; preds = %30
  %37 = load i32, i32* @RQFPR_IPV4, align 4
  %38 = load i32, i32* @RQFPR_UDP, align 4
  %39 = or i32 %37, %38
  store i32 %39, i32* %7, align 4
  br label %53

40:                                               ; preds = %30
  %41 = load i32, i32* @RQFPR_IPV6, align 4
  %42 = load i32, i32* @RQFPR_TCP, align 4
  %43 = or i32 %41, %42
  store i32 %43, i32* %7, align 4
  br label %53

44:                                               ; preds = %30
  %45 = load i32, i32* @RQFPR_IPV6, align 4
  %46 = load i32, i32* @RQFPR_UDP, align 4
  %47 = or i32 %45, %46
  store i32 %47, i32* %7, align 4
  br label %53

48:                                               ; preds = %30
  %49 = load %struct.gfar_private*, %struct.gfar_private** %4, align 8
  %50 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @netdev_err(i32 %51, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %14, align 4
  br label %313

53:                                               ; preds = %44, %40, %36, %32
  store i32 0, i32* %10, align 4
  br label %54

54:                                               ; preds = %109, %53
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* @MAX_FILER_IDX, align 4
  %57 = add nsw i32 %56, 1
  %58 = icmp slt i32 %55, %57
  br i1 %58, label %59, label %112

59:                                               ; preds = %54
  %60 = load %struct.gfar_private*, %struct.gfar_private** %4, align 8
  %61 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %10, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = load i32*, i32** %8, align 8
  %68 = load i32, i32* %12, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  store i32 %66, i32* %70, align 4
  %71 = load %struct.gfar_private*, %struct.gfar_private** %4, align 8
  %72 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %10, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = load i32*, i32** %9, align 8
  %79 = load i32, i32* %12, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  store i32 %77, i32* %81, align 4
  %82 = load i32, i32* %12, align 4
  %83 = add nsw i32 %82, -1
  store i32 %83, i32* %12, align 4
  %84 = load %struct.gfar_private*, %struct.gfar_private** %4, align 8
  %85 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %84, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  %87 = load i32, i32* %10, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @RQFCR_PID_PARSE, align 4
  %92 = load i32, i32* @RQFCR_CLE, align 4
  %93 = or i32 %91, %92
  %94 = load i32, i32* @RQFCR_AND, align 4
  %95 = or i32 %93, %94
  %96 = icmp eq i32 %90, %95
  br i1 %96, label %97, label %108

97:                                               ; preds = %59
  %98 = load %struct.gfar_private*, %struct.gfar_private** %4, align 8
  %99 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = load i32, i32* %10, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* %7, align 4
  %106 = icmp eq i32 %104, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %97
  br label %112

108:                                              ; preds = %97, %59
  br label %109

109:                                              ; preds = %108
  %110 = load i32, i32* %10, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %10, align 4
  br label %54

112:                                              ; preds = %107, %54
  %113 = load i32, i32* %10, align 4
  %114 = load i32, i32* @MAX_FILER_IDX, align 4
  %115 = add nsw i32 %114, 1
  %116 = icmp eq i32 %113, %115
  br i1 %116, label %117, label %122

117:                                              ; preds = %112
  %118 = load %struct.gfar_private*, %struct.gfar_private** %4, align 8
  %119 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @netdev_err(i32 %120, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %14, align 4
  br label %313

122:                                              ; preds = %112
  %123 = load i32, i32* %10, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %13, align 4
  br label %125

125:                                              ; preds = %238, %122
  %126 = load i32, i32* %13, align 4
  %127 = load i32, i32* @MAX_FILER_IDX, align 4
  %128 = icmp slt i32 %126, %127
  br i1 %128, label %129, label %241

129:                                              ; preds = %125
  %130 = load %struct.gfar_private*, %struct.gfar_private** %4, align 8
  %131 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %130, i32 0, i32 1
  %132 = load i32*, i32** %131, align 8
  %133 = load i32, i32* %13, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %132, i64 %134
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* @RQFCR_CLE, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %189

140:                                              ; preds = %129
  %141 = load %struct.gfar_private*, %struct.gfar_private** %4, align 8
  %142 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %141, i32 0, i32 1
  %143 = load i32*, i32** %142, align 8
  %144 = load i32, i32* %13, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %143, i64 %145
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* @RQFCR_AND, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %189, label %151

151:                                              ; preds = %140
  %152 = load i32, i32* @RQFCR_CLE, align 4
  %153 = load i32, i32* @RQFCR_CMP_EXACT, align 4
  %154 = or i32 %152, %153
  %155 = load i32, i32* @RQFCR_HASHTBL_0, align 4
  %156 = or i32 %154, %155
  %157 = load i32, i32* @RQFCR_PID_MASK, align 4
  %158 = or i32 %156, %157
  %159 = load %struct.gfar_private*, %struct.gfar_private** %4, align 8
  %160 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %159, i32 0, i32 1
  %161 = load i32*, i32** %160, align 8
  %162 = load i32, i32* %13, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %161, i64 %163
  store i32 %158, i32* %164, align 4
  %165 = load i32, i32* @FPR_FILER_MASK, align 4
  %166 = load %struct.gfar_private*, %struct.gfar_private** %4, align 8
  %167 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %166, i32 0, i32 0
  %168 = load i32*, i32** %167, align 8
  %169 = load i32, i32* %13, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32, i32* %168, i64 %170
  store i32 %165, i32* %171, align 4
  %172 = load %struct.gfar_private*, %struct.gfar_private** %4, align 8
  %173 = load i32, i32* %13, align 4
  %174 = load %struct.gfar_private*, %struct.gfar_private** %4, align 8
  %175 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %174, i32 0, i32 1
  %176 = load i32*, i32** %175, align 8
  %177 = load i32, i32* %13, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i32, i32* %176, i64 %178
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.gfar_private*, %struct.gfar_private** %4, align 8
  %182 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %181, i32 0, i32 0
  %183 = load i32*, i32** %182, align 8
  %184 = load i32, i32* %13, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i32, i32* %183, i64 %185
  %187 = load i32, i32* %186, align 4
  %188 = call i32 @gfar_write_filer(%struct.gfar_private* %172, i32 %173, i32 %180, i32 %187)
  br label %241

189:                                              ; preds = %140, %129
  %190 = load %struct.gfar_private*, %struct.gfar_private** %4, align 8
  %191 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %190, i32 0, i32 1
  %192 = load i32*, i32** %191, align 8
  %193 = load i32, i32* %13, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i32, i32* %192, i64 %194
  %196 = load i32, i32* %195, align 4
  %197 = load i32, i32* @RQFCR_CLE, align 4
  %198 = and i32 %196, %197
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %212, label %200

200:                                              ; preds = %189
  %201 = load %struct.gfar_private*, %struct.gfar_private** %4, align 8
  %202 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %201, i32 0, i32 1
  %203 = load i32*, i32** %202, align 8
  %204 = load i32, i32* %13, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i32, i32* %203, i64 %205
  %207 = load i32, i32* %206, align 4
  %208 = load i32, i32* @RQFCR_AND, align 4
  %209 = and i32 %207, %208
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %212

211:                                              ; preds = %200
  br label %238

212:                                              ; preds = %200, %189
  %213 = load %struct.gfar_private*, %struct.gfar_private** %4, align 8
  %214 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %213, i32 0, i32 0
  %215 = load i32*, i32** %214, align 8
  %216 = load i32, i32* %13, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i32, i32* %215, i64 %217
  %219 = load i32, i32* %218, align 4
  %220 = load i32*, i32** %8, align 8
  %221 = load i32, i32* %12, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i32, i32* %220, i64 %222
  store i32 %219, i32* %223, align 4
  %224 = load %struct.gfar_private*, %struct.gfar_private** %4, align 8
  %225 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %224, i32 0, i32 1
  %226 = load i32*, i32** %225, align 8
  %227 = load i32, i32* %13, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i32, i32* %226, i64 %228
  %230 = load i32, i32* %229, align 4
  %231 = load i32*, i32** %9, align 8
  %232 = load i32, i32* %12, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i32, i32* %231, i64 %233
  store i32 %230, i32* %234, align 4
  %235 = load i32, i32* %12, align 4
  %236 = add nsw i32 %235, -1
  store i32 %236, i32* %12, align 4
  br label %237

237:                                              ; preds = %212
  br label %238

238:                                              ; preds = %237, %211
  %239 = load i32, i32* %13, align 4
  %240 = add nsw i32 %239, 1
  store i32 %240, i32* %13, align 4
  br label %125

241:                                              ; preds = %151, %125
  %242 = load i32, i32* %13, align 4
  %243 = sub nsw i32 %242, 1
  %244 = load %struct.gfar_private*, %struct.gfar_private** %4, align 8
  %245 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %244, i32 0, i32 2
  store i32 %243, i32* %245, align 8
  %246 = load %struct.gfar_private*, %struct.gfar_private** %4, align 8
  %247 = load i32, i32* %5, align 4
  %248 = call i32 @ethflow_to_filer_rules(%struct.gfar_private* %246, i32 %247)
  %249 = load i32, i32* %12, align 4
  %250 = add nsw i32 %249, 1
  store i32 %250, i32* %11, align 4
  br label %251

251:                                              ; preds = %309, %241
  %252 = load i32, i32* %11, align 4
  %253 = load i32, i32* @MAX_FILER_IDX, align 4
  %254 = icmp slt i32 %252, %253
  br i1 %254, label %255, label %312

255:                                              ; preds = %251
  %256 = load i32*, i32** %8, align 8
  %257 = load i32, i32* %11, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds i32, i32* %256, i64 %258
  %260 = load i32, i32* %259, align 4
  %261 = load %struct.gfar_private*, %struct.gfar_private** %4, align 8
  %262 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %261, i32 0, i32 0
  %263 = load i32*, i32** %262, align 8
  %264 = load %struct.gfar_private*, %struct.gfar_private** %4, align 8
  %265 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %264, i32 0, i32 2
  %266 = load i32, i32* %265, align 8
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds i32, i32* %263, i64 %267
  store i32 %260, i32* %268, align 4
  %269 = load i32*, i32** %9, align 8
  %270 = load i32, i32* %11, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds i32, i32* %269, i64 %271
  %273 = load i32, i32* %272, align 4
  %274 = load %struct.gfar_private*, %struct.gfar_private** %4, align 8
  %275 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %274, i32 0, i32 1
  %276 = load i32*, i32** %275, align 8
  %277 = load %struct.gfar_private*, %struct.gfar_private** %4, align 8
  %278 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %277, i32 0, i32 2
  %279 = load i32, i32* %278, align 8
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds i32, i32* %276, i64 %280
  store i32 %273, i32* %281, align 4
  %282 = load %struct.gfar_private*, %struct.gfar_private** %4, align 8
  %283 = load %struct.gfar_private*, %struct.gfar_private** %4, align 8
  %284 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %283, i32 0, i32 2
  %285 = load i32, i32* %284, align 8
  %286 = load i32*, i32** %9, align 8
  %287 = load i32, i32* %11, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds i32, i32* %286, i64 %288
  %290 = load i32, i32* %289, align 4
  %291 = load i32*, i32** %8, align 8
  %292 = load i32, i32* %11, align 4
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds i32, i32* %291, i64 %293
  %295 = load i32, i32* %294, align 4
  %296 = call i32 @gfar_write_filer(%struct.gfar_private* %282, i32 %285, i32 %290, i32 %295)
  %297 = load %struct.gfar_private*, %struct.gfar_private** %4, align 8
  %298 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %297, i32 0, i32 2
  %299 = load i32, i32* %298, align 8
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %302, label %301

301:                                              ; preds = %255
  br label %312

302:                                              ; preds = %255
  %303 = load %struct.gfar_private*, %struct.gfar_private** %4, align 8
  %304 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %303, i32 0, i32 2
  %305 = load i32, i32* %304, align 8
  %306 = sub nsw i32 %305, 1
  %307 = load %struct.gfar_private*, %struct.gfar_private** %4, align 8
  %308 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %307, i32 0, i32 2
  store i32 %306, i32* %308, align 8
  br label %309

309:                                              ; preds = %302
  %310 = load i32, i32* %11, align 4
  %311 = add nsw i32 %310, 1
  store i32 %311, i32* %11, align 4
  br label %251

312:                                              ; preds = %301, %251
  br label %313

313:                                              ; preds = %312, %117, %48, %29
  %314 = load i32*, i32** %9, align 8
  %315 = call i32 @kfree(i32* %314)
  %316 = load i32*, i32** %8, align 8
  %317 = call i32 @kfree(i32* %316)
  %318 = load i32, i32* %14, align 4
  ret i32 %318
}

declare dso_local i32* @kmalloc_array(i32, i32, i32) #1

declare dso_local i32 @netdev_err(i32, i8*) #1

declare dso_local i32 @gfar_write_filer(%struct.gfar_private*, i32, i32, i32) #1

declare dso_local i32 @ethflow_to_filer_rules(%struct.gfar_private*, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
