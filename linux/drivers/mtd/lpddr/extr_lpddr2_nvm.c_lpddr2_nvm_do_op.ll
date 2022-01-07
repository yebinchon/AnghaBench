; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/lpddr/extr_lpddr2_nvm.c_lpddr2_nvm_do_op.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/lpddr/extr_lpddr2_nvm.c_lpddr2_nvm_do_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.map_info = type { i32, %struct.pcm_int_data* }
%struct.pcm_int_data = type { i32 }
%struct.TYPE_7__ = type { i32*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@CMD_CODE_OFS = common dso_local global i32 0, align 4
@CMD_DATA_OFS = common dso_local global i32 0, align 4
@CMD_ADD_L_OFS = common dso_local global i32 0, align 4
@CMD_ADD_H_OFS = common dso_local global i32 0, align 4
@MPR_L_OFS = common dso_local global i32 0, align 4
@MPR_H_OFS = common dso_local global i32 0, align 4
@LPDDR2_NVM_BUF_PROGRAM = common dso_local global i32 0, align 4
@LPDDR2_NVM_BUF_OVERWRITE = common dso_local global i32 0, align 4
@PRG_BUFFER_OFS = common dso_local global i32 0, align 4
@CMD_EXEC_OFS = common dso_local global i32 0, align 4
@STATUS_REG_OFS = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.map_info*, i32, i32, i32, i32, i32*)* @lpddr2_nvm_do_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpddr2_nvm_do_op(%struct.map_info* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca %struct.map_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_7__, align 8
  %14 = alloca %struct.TYPE_7__, align 8
  %15 = alloca %struct.TYPE_7__, align 8
  %16 = alloca %struct.TYPE_7__, align 8
  %17 = alloca %struct.TYPE_7__, align 8
  %18 = alloca %struct.TYPE_7__, align 8
  %19 = alloca %struct.TYPE_7__, align 8
  %20 = alloca %struct.TYPE_7__, align 8
  %21 = alloca %struct.TYPE_7__, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca %struct.pcm_int_data*, align 8
  %26 = alloca i32, align 4
  %27 = alloca %struct.TYPE_7__, align 8
  %28 = alloca %struct.TYPE_7__, align 8
  %29 = alloca %struct.TYPE_7__, align 8
  %30 = alloca %struct.TYPE_7__, align 8
  store %struct.map_info* %0, %struct.map_info** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32* %5, i32** %12, align 8
  %31 = bitcast %struct.TYPE_7__* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %31, i8 0, i64 16, i1 false)
  %32 = bitcast %struct.TYPE_7__* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %32, i8 0, i64 16, i1 false)
  %33 = bitcast %struct.TYPE_7__* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %33, i8 0, i64 16, i1 false)
  %34 = bitcast %struct.TYPE_7__* %16 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %34, i8 0, i64 16, i1 false)
  %35 = bitcast %struct.TYPE_7__* %17 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %35, i8 0, i64 16, i1 false)
  %36 = bitcast %struct.TYPE_7__* %18 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %36, i8 0, i64 16, i1 false)
  %37 = bitcast %struct.TYPE_7__* %19 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %37, i8 0, i64 16, i1 false)
  %38 = bitcast %struct.TYPE_7__* %21 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %38, i8 0, i64 16, i1 false)
  %39 = load %struct.map_info*, %struct.map_info** %7, align 8
  %40 = getelementptr inbounds %struct.map_info, %struct.map_info* %39, i32 0, i32 1
  %41 = load %struct.pcm_int_data*, %struct.pcm_int_data** %40, align 8
  store %struct.pcm_int_data* %41, %struct.pcm_int_data** %25, align 8
  %42 = load %struct.pcm_int_data*, %struct.pcm_int_data** %25, align 8
  %43 = getelementptr inbounds %struct.pcm_int_data, %struct.pcm_int_data* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @build_sr_ok_datamask(i32 %44)
  store i32 %45, i32* %26, align 4
  %46 = load i32, i32* %10, align 4
  %47 = and i32 %46, 65535
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  store i32 %47, i32* %50, align 4
  %51 = load i32, i32* %10, align 4
  %52 = ashr i32 %51, 16
  %53 = and i32 %52, 65535
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 0
  store i32 %53, i32* %56, align 4
  %57 = load i32, i32* %11, align 4
  %58 = and i32 %57, 65535
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 0
  store i32 %58, i32* %61, align 4
  %62 = load i32, i32* %11, align 4
  %63 = ashr i32 %62, 16
  %64 = and i32 %63, 65535
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 0
  store i32 %64, i32* %67, align 4
  %68 = load i32, i32* %8, align 4
  %69 = and i32 %68, 65535
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 0
  store i32 %69, i32* %72, align 4
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 0
  store i32 1, i32* %75, align 4
  %76 = load i32, i32* %9, align 4
  %77 = and i32 %76, 65535
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 0
  store i32 %77, i32* %80, align 4
  %81 = load i32, i32* %9, align 4
  %82 = ashr i32 %81, 16
  %83 = and i32 %82, 65535
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 0
  store i32 %83, i32* %86, align 4
  %87 = load %struct.map_info*, %struct.map_info** %7, align 8
  %88 = load %struct.map_info*, %struct.map_info** %7, align 8
  %89 = load i32, i32* @CMD_CODE_OFS, align 4
  %90 = call i32 @ow_reg_add(%struct.map_info* %88, i32 %89)
  %91 = bitcast %struct.TYPE_7__* %18 to { i32*, i32 }*
  %92 = getelementptr inbounds { i32*, i32 }, { i32*, i32 }* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = getelementptr inbounds { i32*, i32 }, { i32*, i32 }* %91, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @map_write(%struct.map_info* %87, i32* %93, i32 %95, i32 %90)
  %97 = load %struct.map_info*, %struct.map_info** %7, align 8
  %98 = load %struct.map_info*, %struct.map_info** %7, align 8
  %99 = load i32, i32* @CMD_DATA_OFS, align 4
  %100 = call i32 @ow_reg_add(%struct.map_info* %98, i32 %99)
  %101 = bitcast %struct.TYPE_7__* %17 to { i32*, i32 }*
  %102 = getelementptr inbounds { i32*, i32 }, { i32*, i32 }* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = getelementptr inbounds { i32*, i32 }, { i32*, i32 }* %101, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @map_write(%struct.map_info* %97, i32* %103, i32 %105, i32 %100)
  %107 = load %struct.map_info*, %struct.map_info** %7, align 8
  %108 = load %struct.map_info*, %struct.map_info** %7, align 8
  %109 = load i32, i32* @CMD_ADD_L_OFS, align 4
  %110 = call i32 @ow_reg_add(%struct.map_info* %108, i32 %109)
  %111 = bitcast %struct.TYPE_7__* %13 to { i32*, i32 }*
  %112 = getelementptr inbounds { i32*, i32 }, { i32*, i32 }* %111, i32 0, i32 0
  %113 = load i32*, i32** %112, align 8
  %114 = getelementptr inbounds { i32*, i32 }, { i32*, i32 }* %111, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @map_write(%struct.map_info* %107, i32* %113, i32 %115, i32 %110)
  %117 = load %struct.map_info*, %struct.map_info** %7, align 8
  %118 = load %struct.map_info*, %struct.map_info** %7, align 8
  %119 = load i32, i32* @CMD_ADD_H_OFS, align 4
  %120 = call i32 @ow_reg_add(%struct.map_info* %118, i32 %119)
  %121 = bitcast %struct.TYPE_7__* %14 to { i32*, i32 }*
  %122 = getelementptr inbounds { i32*, i32 }, { i32*, i32 }* %121, i32 0, i32 0
  %123 = load i32*, i32** %122, align 8
  %124 = getelementptr inbounds { i32*, i32 }, { i32*, i32 }* %121, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @map_write(%struct.map_info* %117, i32* %123, i32 %125, i32 %120)
  %127 = load %struct.map_info*, %struct.map_info** %7, align 8
  %128 = load %struct.map_info*, %struct.map_info** %7, align 8
  %129 = load i32, i32* @MPR_L_OFS, align 4
  %130 = call i32 @ow_reg_add(%struct.map_info* %128, i32 %129)
  %131 = bitcast %struct.TYPE_7__* %15 to { i32*, i32 }*
  %132 = getelementptr inbounds { i32*, i32 }, { i32*, i32 }* %131, i32 0, i32 0
  %133 = load i32*, i32** %132, align 8
  %134 = getelementptr inbounds { i32*, i32 }, { i32*, i32 }* %131, i32 0, i32 1
  %135 = load i32, i32* %134, align 8
  %136 = call i32 @map_write(%struct.map_info* %127, i32* %133, i32 %135, i32 %130)
  %137 = load %struct.map_info*, %struct.map_info** %7, align 8
  %138 = load %struct.map_info*, %struct.map_info** %7, align 8
  %139 = load i32, i32* @MPR_H_OFS, align 4
  %140 = call i32 @ow_reg_add(%struct.map_info* %138, i32 %139)
  %141 = bitcast %struct.TYPE_7__* %16 to { i32*, i32 }*
  %142 = getelementptr inbounds { i32*, i32 }, { i32*, i32 }* %141, i32 0, i32 0
  %143 = load i32*, i32** %142, align 8
  %144 = getelementptr inbounds { i32*, i32 }, { i32*, i32 }* %141, i32 0, i32 1
  %145 = load i32, i32* %144, align 8
  %146 = call i32 @map_write(%struct.map_info* %137, i32* %143, i32 %145, i32 %140)
  %147 = load %struct.pcm_int_data*, %struct.pcm_int_data** %25, align 8
  %148 = getelementptr inbounds %struct.pcm_int_data, %struct.pcm_int_data* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = icmp eq i32 %149, 4
  br i1 %150, label %151, label %218

151:                                              ; preds = %6
  %152 = load %struct.map_info*, %struct.map_info** %7, align 8
  %153 = load %struct.map_info*, %struct.map_info** %7, align 8
  %154 = load i32, i32* @CMD_CODE_OFS, align 4
  %155 = call i32 @ow_reg_add(%struct.map_info* %153, i32 %154)
  %156 = add nsw i32 %155, 2
  %157 = bitcast %struct.TYPE_7__* %18 to { i32*, i32 }*
  %158 = getelementptr inbounds { i32*, i32 }, { i32*, i32 }* %157, i32 0, i32 0
  %159 = load i32*, i32** %158, align 8
  %160 = getelementptr inbounds { i32*, i32 }, { i32*, i32 }* %157, i32 0, i32 1
  %161 = load i32, i32* %160, align 8
  %162 = call i32 @map_write(%struct.map_info* %152, i32* %159, i32 %161, i32 %156)
  %163 = load %struct.map_info*, %struct.map_info** %7, align 8
  %164 = load %struct.map_info*, %struct.map_info** %7, align 8
  %165 = load i32, i32* @CMD_DATA_OFS, align 4
  %166 = call i32 @ow_reg_add(%struct.map_info* %164, i32 %165)
  %167 = add nsw i32 %166, 2
  %168 = bitcast %struct.TYPE_7__* %21 to { i32*, i32 }*
  %169 = getelementptr inbounds { i32*, i32 }, { i32*, i32 }* %168, i32 0, i32 0
  %170 = load i32*, i32** %169, align 8
  %171 = getelementptr inbounds { i32*, i32 }, { i32*, i32 }* %168, i32 0, i32 1
  %172 = load i32, i32* %171, align 8
  %173 = call i32 @map_write(%struct.map_info* %163, i32* %170, i32 %172, i32 %167)
  %174 = load %struct.map_info*, %struct.map_info** %7, align 8
  %175 = load %struct.map_info*, %struct.map_info** %7, align 8
  %176 = load i32, i32* @CMD_ADD_L_OFS, align 4
  %177 = call i32 @ow_reg_add(%struct.map_info* %175, i32 %176)
  %178 = add nsw i32 %177, 2
  %179 = bitcast %struct.TYPE_7__* %13 to { i32*, i32 }*
  %180 = getelementptr inbounds { i32*, i32 }, { i32*, i32 }* %179, i32 0, i32 0
  %181 = load i32*, i32** %180, align 8
  %182 = getelementptr inbounds { i32*, i32 }, { i32*, i32 }* %179, i32 0, i32 1
  %183 = load i32, i32* %182, align 8
  %184 = call i32 @map_write(%struct.map_info* %174, i32* %181, i32 %183, i32 %178)
  %185 = load %struct.map_info*, %struct.map_info** %7, align 8
  %186 = load %struct.map_info*, %struct.map_info** %7, align 8
  %187 = load i32, i32* @CMD_ADD_H_OFS, align 4
  %188 = call i32 @ow_reg_add(%struct.map_info* %186, i32 %187)
  %189 = add nsw i32 %188, 2
  %190 = bitcast %struct.TYPE_7__* %14 to { i32*, i32 }*
  %191 = getelementptr inbounds { i32*, i32 }, { i32*, i32 }* %190, i32 0, i32 0
  %192 = load i32*, i32** %191, align 8
  %193 = getelementptr inbounds { i32*, i32 }, { i32*, i32 }* %190, i32 0, i32 1
  %194 = load i32, i32* %193, align 8
  %195 = call i32 @map_write(%struct.map_info* %185, i32* %192, i32 %194, i32 %189)
  %196 = load %struct.map_info*, %struct.map_info** %7, align 8
  %197 = load %struct.map_info*, %struct.map_info** %7, align 8
  %198 = load i32, i32* @MPR_L_OFS, align 4
  %199 = call i32 @ow_reg_add(%struct.map_info* %197, i32 %198)
  %200 = add nsw i32 %199, 2
  %201 = bitcast %struct.TYPE_7__* %15 to { i32*, i32 }*
  %202 = getelementptr inbounds { i32*, i32 }, { i32*, i32 }* %201, i32 0, i32 0
  %203 = load i32*, i32** %202, align 8
  %204 = getelementptr inbounds { i32*, i32 }, { i32*, i32 }* %201, i32 0, i32 1
  %205 = load i32, i32* %204, align 8
  %206 = call i32 @map_write(%struct.map_info* %196, i32* %203, i32 %205, i32 %200)
  %207 = load %struct.map_info*, %struct.map_info** %7, align 8
  %208 = load %struct.map_info*, %struct.map_info** %7, align 8
  %209 = load i32, i32* @MPR_H_OFS, align 4
  %210 = call i32 @ow_reg_add(%struct.map_info* %208, i32 %209)
  %211 = add nsw i32 %210, 2
  %212 = bitcast %struct.TYPE_7__* %16 to { i32*, i32 }*
  %213 = getelementptr inbounds { i32*, i32 }, { i32*, i32 }* %212, i32 0, i32 0
  %214 = load i32*, i32** %213, align 8
  %215 = getelementptr inbounds { i32*, i32 }, { i32*, i32 }* %212, i32 0, i32 1
  %216 = load i32, i32* %215, align 8
  %217 = call i32 @map_write(%struct.map_info* %207, i32* %214, i32 %216, i32 %211)
  br label %218

218:                                              ; preds = %151, %6
  %219 = load i32, i32* %8, align 4
  %220 = load i32, i32* @LPDDR2_NVM_BUF_PROGRAM, align 4
  %221 = icmp eq i32 %219, %220
  br i1 %221, label %226, label %222

222:                                              ; preds = %218
  %223 = load i32, i32* %8, align 4
  %224 = load i32, i32* @LPDDR2_NVM_BUF_OVERWRITE, align 4
  %225 = icmp eq i32 %223, %224
  br i1 %225, label %226, label %275

226:                                              ; preds = %222, %218
  %227 = load %struct.map_info*, %struct.map_info** %7, align 8
  %228 = load %struct.map_info*, %struct.map_info** %7, align 8
  %229 = load i32, i32* @PRG_BUFFER_OFS, align 4
  %230 = call i32 @ow_reg_add(%struct.map_info* %228, i32 %229)
  %231 = call { i32*, i32 } @map_read(%struct.map_info* %227, i32 %230)
  %232 = bitcast %struct.TYPE_7__* %27 to { i32*, i32 }*
  %233 = getelementptr inbounds { i32*, i32 }, { i32*, i32 }* %232, i32 0, i32 0
  %234 = extractvalue { i32*, i32 } %231, 0
  store i32* %234, i32** %233, align 8
  %235 = getelementptr inbounds { i32*, i32 }, { i32*, i32 }* %232, i32 0, i32 1
  %236 = extractvalue { i32*, i32 } %231, 1
  store i32 %236, i32* %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %238 = load i32*, i32** %237, align 8
  %239 = getelementptr inbounds i32, i32* %238, i64 0
  %240 = load i32, i32* %239, align 4
  store i32 %240, i32* %24, align 4
  store i32 0, i32* %22, align 4
  br label %241

241:                                              ; preds = %271, %226
  %242 = load i32, i32* %22, align 4
  %243 = load i32, i32* %11, align 4
  %244 = icmp slt i32 %242, %243
  br i1 %244, label %245, label %274

245:                                              ; preds = %241
  %246 = load %struct.map_info*, %struct.map_info** %7, align 8
  %247 = load i32*, i32** %12, align 8
  %248 = load i32, i32* %22, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds i32, i32* %247, i64 %249
  %251 = load i32, i32* %250, align 4
  %252 = call { i32*, i32 } @build_map_word(i32 %251)
  %253 = bitcast %struct.TYPE_7__* %28 to { i32*, i32 }*
  %254 = getelementptr inbounds { i32*, i32 }, { i32*, i32 }* %253, i32 0, i32 0
  %255 = extractvalue { i32*, i32 } %252, 0
  store i32* %255, i32** %254, align 8
  %256 = getelementptr inbounds { i32*, i32 }, { i32*, i32 }* %253, i32 0, i32 1
  %257 = extractvalue { i32*, i32 } %252, 1
  store i32 %257, i32* %256, align 8
  %258 = load %struct.map_info*, %struct.map_info** %7, align 8
  %259 = getelementptr inbounds %struct.map_info, %struct.map_info* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 8
  %261 = load i32, i32* %24, align 4
  %262 = add nsw i32 %260, %261
  %263 = load i32, i32* %22, align 4
  %264 = add nsw i32 %262, %263
  %265 = bitcast %struct.TYPE_7__* %28 to { i32*, i32 }*
  %266 = getelementptr inbounds { i32*, i32 }, { i32*, i32 }* %265, i32 0, i32 0
  %267 = load i32*, i32** %266, align 8
  %268 = getelementptr inbounds { i32*, i32 }, { i32*, i32 }* %265, i32 0, i32 1
  %269 = load i32, i32* %268, align 8
  %270 = call i32 @map_write(%struct.map_info* %246, i32* %267, i32 %269, i32 %264)
  br label %271

271:                                              ; preds = %245
  %272 = load i32, i32* %22, align 4
  %273 = add nsw i32 %272, 1
  store i32 %273, i32* %22, align 4
  br label %241

274:                                              ; preds = %241
  br label %275

275:                                              ; preds = %274, %222
  %276 = load %struct.map_info*, %struct.map_info** %7, align 8
  %277 = load %struct.map_info*, %struct.map_info** %7, align 8
  %278 = load i32, i32* @CMD_EXEC_OFS, align 4
  %279 = call i32 @ow_reg_add(%struct.map_info* %277, i32 %278)
  %280 = bitcast %struct.TYPE_7__* %19 to { i32*, i32 }*
  %281 = getelementptr inbounds { i32*, i32 }, { i32*, i32 }* %280, i32 0, i32 0
  %282 = load i32*, i32** %281, align 8
  %283 = getelementptr inbounds { i32*, i32 }, { i32*, i32 }* %280, i32 0, i32 1
  %284 = load i32, i32* %283, align 8
  %285 = call i32 @map_write(%struct.map_info* %276, i32* %282, i32 %284, i32 %279)
  %286 = load %struct.pcm_int_data*, %struct.pcm_int_data** %25, align 8
  %287 = getelementptr inbounds %struct.pcm_int_data, %struct.pcm_int_data* %286, i32 0, i32 0
  %288 = load i32, i32* %287, align 4
  %289 = icmp eq i32 %288, 4
  br i1 %289, label %290, label %302

290:                                              ; preds = %275
  %291 = load %struct.map_info*, %struct.map_info** %7, align 8
  %292 = load %struct.map_info*, %struct.map_info** %7, align 8
  %293 = load i32, i32* @CMD_EXEC_OFS, align 4
  %294 = call i32 @ow_reg_add(%struct.map_info* %292, i32 %293)
  %295 = add nsw i32 %294, 2
  %296 = bitcast %struct.TYPE_7__* %19 to { i32*, i32 }*
  %297 = getelementptr inbounds { i32*, i32 }, { i32*, i32 }* %296, i32 0, i32 0
  %298 = load i32*, i32** %297, align 8
  %299 = getelementptr inbounds { i32*, i32 }, { i32*, i32 }* %296, i32 0, i32 1
  %300 = load i32, i32* %299, align 8
  %301 = call i32 @map_write(%struct.map_info* %291, i32* %298, i32 %300, i32 %295)
  br label %302

302:                                              ; preds = %290, %275
  br label %303

303:                                              ; preds = %346, %302
  %304 = load %struct.map_info*, %struct.map_info** %7, align 8
  %305 = load %struct.map_info*, %struct.map_info** %7, align 8
  %306 = load i32, i32* @STATUS_REG_OFS, align 4
  %307 = call i32 @ow_reg_add(%struct.map_info* %305, i32 %306)
  %308 = call { i32*, i32 } @map_read(%struct.map_info* %304, i32 %307)
  %309 = bitcast %struct.TYPE_7__* %29 to { i32*, i32 }*
  %310 = getelementptr inbounds { i32*, i32 }, { i32*, i32 }* %309, i32 0, i32 0
  %311 = extractvalue { i32*, i32 } %308, 0
  store i32* %311, i32** %310, align 8
  %312 = getelementptr inbounds { i32*, i32 }, { i32*, i32 }* %309, i32 0, i32 1
  %313 = extractvalue { i32*, i32 } %308, 1
  store i32 %313, i32* %312, align 8
  %314 = bitcast %struct.TYPE_7__* %20 to i8*
  %315 = bitcast %struct.TYPE_7__* %29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %314, i8* align 8 %315, i64 16, i1 false)
  %316 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %317 = load i32*, i32** %316, align 8
  %318 = getelementptr inbounds i32, i32* %317, i64 0
  %319 = load i32, i32* %318, align 4
  store i32 %319, i32* %23, align 4
  %320 = load %struct.pcm_int_data*, %struct.pcm_int_data** %25, align 8
  %321 = getelementptr inbounds %struct.pcm_int_data, %struct.pcm_int_data* %320, i32 0, i32 0
  %322 = load i32, i32* %321, align 4
  %323 = icmp eq i32 %322, 4
  br i1 %323, label %324, label %345

324:                                              ; preds = %303
  %325 = load %struct.map_info*, %struct.map_info** %7, align 8
  %326 = load %struct.map_info*, %struct.map_info** %7, align 8
  %327 = load i32, i32* @STATUS_REG_OFS, align 4
  %328 = call i32 @ow_reg_add(%struct.map_info* %326, i32 %327)
  %329 = add nsw i32 %328, 2
  %330 = call { i32*, i32 } @map_read(%struct.map_info* %325, i32 %329)
  %331 = bitcast %struct.TYPE_7__* %30 to { i32*, i32 }*
  %332 = getelementptr inbounds { i32*, i32 }, { i32*, i32 }* %331, i32 0, i32 0
  %333 = extractvalue { i32*, i32 } %330, 0
  store i32* %333, i32** %332, align 8
  %334 = getelementptr inbounds { i32*, i32 }, { i32*, i32 }* %331, i32 0, i32 1
  %335 = extractvalue { i32*, i32 } %330, 1
  store i32 %335, i32* %334, align 8
  %336 = bitcast %struct.TYPE_7__* %20 to i8*
  %337 = bitcast %struct.TYPE_7__* %30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %336, i8* align 8 %337, i64 16, i1 false)
  %338 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %339 = load i32*, i32** %338, align 8
  %340 = getelementptr inbounds i32, i32* %339, i64 0
  %341 = load i32, i32* %340, align 4
  %342 = shl i32 %341, 16
  %343 = load i32, i32* %23, align 4
  %344 = add nsw i32 %343, %342
  store i32 %344, i32* %23, align 4
  br label %345

345:                                              ; preds = %324, %303
  br label %346

346:                                              ; preds = %345
  %347 = load i32, i32* %23, align 4
  %348 = load i32, i32* %26, align 4
  %349 = and i32 %347, %348
  %350 = load i32, i32* %26, align 4
  %351 = icmp ne i32 %349, %350
  br i1 %351, label %303, label %352

352:                                              ; preds = %346
  %353 = load i32, i32* %23, align 4
  %354 = load i32, i32* %26, align 4
  %355 = and i32 %353, %354
  %356 = load i32, i32* %26, align 4
  %357 = icmp eq i32 %355, %356
  br i1 %357, label %358, label %359

358:                                              ; preds = %352
  br label %362

359:                                              ; preds = %352
  %360 = load i32, i32* @EIO, align 4
  %361 = sub nsw i32 0, %360
  br label %362

362:                                              ; preds = %359, %358
  %363 = phi i32 [ 0, %358 ], [ %361, %359 ]
  ret i32 %363
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @build_sr_ok_datamask(i32) #2

declare dso_local i32 @map_write(%struct.map_info*, i32*, i32, i32) #2

declare dso_local i32 @ow_reg_add(%struct.map_info*, i32) #2

declare dso_local { i32*, i32 } @map_read(%struct.map_info*, i32) #2

declare dso_local { i32*, i32 } @build_map_word(i32) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
