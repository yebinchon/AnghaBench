; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/atmel/extr_pmecc.c_atmel_pmecc_create_user.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/atmel/extr_pmecc.c_atmel_pmecc_create_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_pmecc_user = type { i32, %struct.TYPE_5__, %struct.atmel_pmecc_gf_tables*, i32*, i32*, i32*, %struct.atmel_pmecc_user*, %struct.atmel_pmecc_user*, %struct.atmel_pmecc_user*, %struct.atmel_pmecc_user*, %struct.atmel_pmecc* }
%struct.TYPE_5__ = type { i32, i64, i64, i64 }
%struct.atmel_pmecc_gf_tables = type { i32 }
%struct.atmel_pmecc = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32* }
%struct.atmel_pmecc_user_req = type { %struct.TYPE_6__, i64 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PMECC_CFG_SECTOR1024 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.atmel_pmecc_user* @atmel_pmecc_create_user(%struct.atmel_pmecc* %0, %struct.atmel_pmecc_user_req* %1) #0 {
  %3 = alloca %struct.atmel_pmecc_user*, align 8
  %4 = alloca %struct.atmel_pmecc*, align 8
  %5 = alloca %struct.atmel_pmecc_user_req*, align 8
  %6 = alloca %struct.atmel_pmecc_user*, align 8
  %7 = alloca %struct.atmel_pmecc_gf_tables*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.atmel_pmecc* %0, %struct.atmel_pmecc** %4, align 8
  store %struct.atmel_pmecc_user_req* %1, %struct.atmel_pmecc_user_req** %5, align 8
  %11 = load %struct.atmel_pmecc*, %struct.atmel_pmecc** %4, align 8
  %12 = load %struct.atmel_pmecc_user_req*, %struct.atmel_pmecc_user_req** %5, align 8
  %13 = call i32 @atmel_pmecc_prepare_user_req(%struct.atmel_pmecc* %11, %struct.atmel_pmecc_user_req* %12)
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* %10, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* %10, align 4
  %18 = call %struct.atmel_pmecc_user* @ERR_PTR(i32 %17)
  store %struct.atmel_pmecc_user* %18, %struct.atmel_pmecc_user** %3, align 8
  br label %276

19:                                               ; preds = %2
  store i32 112, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = call i32 @ALIGN(i32 %20, i32 4)
  store i32 %21, i32* %9, align 4
  %22 = load %struct.atmel_pmecc_user_req*, %struct.atmel_pmecc_user_req** %5, align 8
  %23 = getelementptr inbounds %struct.atmel_pmecc_user_req, %struct.atmel_pmecc_user_req* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = mul nsw i32 2, %25
  %27 = add nsw i32 %26, 1
  %28 = sext i32 %27 to i64
  %29 = mul i64 %28, 4
  %30 = load %struct.atmel_pmecc_user_req*, %struct.atmel_pmecc_user_req** %5, align 8
  %31 = getelementptr inbounds %struct.atmel_pmecc_user_req, %struct.atmel_pmecc_user_req* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = add nsw i32 2, %33
  %35 = add nsw i32 %34, 2
  %36 = sext i32 %35 to i64
  %37 = mul i64 %29, %36
  %38 = load i32, i32* %9, align 4
  %39 = sext i32 %38 to i64
  %40 = add i64 %39, %37
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %9, align 4
  %42 = load %struct.atmel_pmecc_user_req*, %struct.atmel_pmecc_user_req** %5, align 8
  %43 = getelementptr inbounds %struct.atmel_pmecc_user_req, %struct.atmel_pmecc_user_req* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = add nsw i32 %45, 1
  %47 = sext i32 %46 to i64
  %48 = mul i64 %47, 4
  %49 = load i32, i32* %9, align 4
  %50 = sext i32 %49 to i64
  %51 = add i64 %50, %48
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* %9, align 4
  %54 = call i32 @ALIGN(i32 %53, i32 4)
  store i32 %54, i32* %9, align 4
  %55 = load %struct.atmel_pmecc_user_req*, %struct.atmel_pmecc_user_req** %5, align 8
  %56 = getelementptr inbounds %struct.atmel_pmecc_user_req, %struct.atmel_pmecc_user_req* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = add nsw i32 %58, 1
  %60 = sext i32 %59 to i64
  %61 = mul i64 %60, 4
  %62 = mul i64 %61, 3
  %63 = load i32, i32* %9, align 4
  %64 = sext i32 %63 to i64
  %65 = add i64 %64, %62
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %9, align 4
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* @GFP_KERNEL, align 4
  %69 = call %struct.atmel_pmecc_user* @kzalloc(i32 %67, i32 %68)
  store %struct.atmel_pmecc_user* %69, %struct.atmel_pmecc_user** %6, align 8
  %70 = load %struct.atmel_pmecc_user*, %struct.atmel_pmecc_user** %6, align 8
  %71 = icmp ne %struct.atmel_pmecc_user* %70, null
  br i1 %71, label %76, label %72

72:                                               ; preds = %19
  %73 = load i32, i32* @ENOMEM, align 4
  %74 = sub nsw i32 0, %73
  %75 = call %struct.atmel_pmecc_user* @ERR_PTR(i32 %74)
  store %struct.atmel_pmecc_user* %75, %struct.atmel_pmecc_user** %3, align 8
  br label %276

76:                                               ; preds = %19
  %77 = load %struct.atmel_pmecc*, %struct.atmel_pmecc** %4, align 8
  %78 = load %struct.atmel_pmecc_user*, %struct.atmel_pmecc_user** %6, align 8
  %79 = getelementptr inbounds %struct.atmel_pmecc_user, %struct.atmel_pmecc_user* %78, i32 0, i32 10
  store %struct.atmel_pmecc* %77, %struct.atmel_pmecc** %79, align 8
  %80 = load %struct.atmel_pmecc_user*, %struct.atmel_pmecc_user** %6, align 8
  %81 = getelementptr inbounds %struct.atmel_pmecc_user, %struct.atmel_pmecc_user* %80, i64 1
  %82 = call i64 @PTR_ALIGN(%struct.atmel_pmecc_user* %81, i32 4)
  %83 = inttoptr i64 %82 to %struct.atmel_pmecc_user*
  %84 = load %struct.atmel_pmecc_user*, %struct.atmel_pmecc_user** %6, align 8
  %85 = getelementptr inbounds %struct.atmel_pmecc_user, %struct.atmel_pmecc_user* %84, i32 0, i32 9
  store %struct.atmel_pmecc_user* %83, %struct.atmel_pmecc_user** %85, align 8
  %86 = load %struct.atmel_pmecc_user*, %struct.atmel_pmecc_user** %6, align 8
  %87 = getelementptr inbounds %struct.atmel_pmecc_user, %struct.atmel_pmecc_user* %86, i32 0, i32 9
  %88 = load %struct.atmel_pmecc_user*, %struct.atmel_pmecc_user** %87, align 8
  %89 = load %struct.atmel_pmecc_user_req*, %struct.atmel_pmecc_user_req** %5, align 8
  %90 = getelementptr inbounds %struct.atmel_pmecc_user_req, %struct.atmel_pmecc_user_req* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = mul nsw i32 2, %92
  %94 = add nsw i32 %93, 1
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.atmel_pmecc_user, %struct.atmel_pmecc_user* %88, i64 %95
  %97 = load %struct.atmel_pmecc_user*, %struct.atmel_pmecc_user** %6, align 8
  %98 = getelementptr inbounds %struct.atmel_pmecc_user, %struct.atmel_pmecc_user* %97, i32 0, i32 8
  store %struct.atmel_pmecc_user* %96, %struct.atmel_pmecc_user** %98, align 8
  %99 = load %struct.atmel_pmecc_user*, %struct.atmel_pmecc_user** %6, align 8
  %100 = getelementptr inbounds %struct.atmel_pmecc_user, %struct.atmel_pmecc_user* %99, i32 0, i32 8
  %101 = load %struct.atmel_pmecc_user*, %struct.atmel_pmecc_user** %100, align 8
  %102 = load %struct.atmel_pmecc_user_req*, %struct.atmel_pmecc_user_req** %5, align 8
  %103 = getelementptr inbounds %struct.atmel_pmecc_user_req, %struct.atmel_pmecc_user_req* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = mul nsw i32 2, %105
  %107 = add nsw i32 %106, 1
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.atmel_pmecc_user, %struct.atmel_pmecc_user* %101, i64 %108
  %110 = load %struct.atmel_pmecc_user*, %struct.atmel_pmecc_user** %6, align 8
  %111 = getelementptr inbounds %struct.atmel_pmecc_user, %struct.atmel_pmecc_user* %110, i32 0, i32 7
  store %struct.atmel_pmecc_user* %109, %struct.atmel_pmecc_user** %111, align 8
  %112 = load %struct.atmel_pmecc_user*, %struct.atmel_pmecc_user** %6, align 8
  %113 = getelementptr inbounds %struct.atmel_pmecc_user, %struct.atmel_pmecc_user* %112, i32 0, i32 7
  %114 = load %struct.atmel_pmecc_user*, %struct.atmel_pmecc_user** %113, align 8
  %115 = load %struct.atmel_pmecc_user_req*, %struct.atmel_pmecc_user_req** %5, align 8
  %116 = getelementptr inbounds %struct.atmel_pmecc_user_req, %struct.atmel_pmecc_user_req* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = add nsw i32 %118, 1
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.atmel_pmecc_user, %struct.atmel_pmecc_user* %114, i64 %120
  %122 = load %struct.atmel_pmecc_user*, %struct.atmel_pmecc_user** %6, align 8
  %123 = getelementptr inbounds %struct.atmel_pmecc_user, %struct.atmel_pmecc_user* %122, i32 0, i32 6
  store %struct.atmel_pmecc_user* %121, %struct.atmel_pmecc_user** %123, align 8
  %124 = load %struct.atmel_pmecc_user*, %struct.atmel_pmecc_user** %6, align 8
  %125 = getelementptr inbounds %struct.atmel_pmecc_user, %struct.atmel_pmecc_user* %124, i32 0, i32 6
  %126 = load %struct.atmel_pmecc_user*, %struct.atmel_pmecc_user** %125, align 8
  %127 = load %struct.atmel_pmecc_user_req*, %struct.atmel_pmecc_user_req** %5, align 8
  %128 = getelementptr inbounds %struct.atmel_pmecc_user_req, %struct.atmel_pmecc_user_req* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = mul nsw i32 2, %130
  %132 = add nsw i32 %131, 1
  %133 = load %struct.atmel_pmecc_user_req*, %struct.atmel_pmecc_user_req** %5, align 8
  %134 = getelementptr inbounds %struct.atmel_pmecc_user_req, %struct.atmel_pmecc_user_req* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = add nsw i32 %136, 2
  %138 = mul nsw i32 %132, %137
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.atmel_pmecc_user, %struct.atmel_pmecc_user* %126, i64 %139
  %141 = call i64 @PTR_ALIGN(%struct.atmel_pmecc_user* %140, i32 4)
  %142 = inttoptr i64 %141 to i32*
  %143 = load %struct.atmel_pmecc_user*, %struct.atmel_pmecc_user** %6, align 8
  %144 = getelementptr inbounds %struct.atmel_pmecc_user, %struct.atmel_pmecc_user* %143, i32 0, i32 5
  store i32* %142, i32** %144, align 8
  %145 = load %struct.atmel_pmecc_user*, %struct.atmel_pmecc_user** %6, align 8
  %146 = getelementptr inbounds %struct.atmel_pmecc_user, %struct.atmel_pmecc_user* %145, i32 0, i32 5
  %147 = load i32*, i32** %146, align 8
  %148 = load %struct.atmel_pmecc_user_req*, %struct.atmel_pmecc_user_req** %5, align 8
  %149 = getelementptr inbounds %struct.atmel_pmecc_user_req, %struct.atmel_pmecc_user_req* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %147, i64 %152
  %154 = getelementptr inbounds i32, i32* %153, i64 1
  %155 = load %struct.atmel_pmecc_user*, %struct.atmel_pmecc_user** %6, align 8
  %156 = getelementptr inbounds %struct.atmel_pmecc_user, %struct.atmel_pmecc_user* %155, i32 0, i32 3
  store i32* %154, i32** %156, align 8
  %157 = load %struct.atmel_pmecc_user*, %struct.atmel_pmecc_user** %6, align 8
  %158 = getelementptr inbounds %struct.atmel_pmecc_user, %struct.atmel_pmecc_user* %157, i32 0, i32 3
  %159 = load i32*, i32** %158, align 8
  %160 = load %struct.atmel_pmecc_user_req*, %struct.atmel_pmecc_user_req** %5, align 8
  %161 = getelementptr inbounds %struct.atmel_pmecc_user_req, %struct.atmel_pmecc_user_req* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32, i32* %159, i64 %164
  %166 = getelementptr inbounds i32, i32* %165, i64 1
  %167 = load %struct.atmel_pmecc_user*, %struct.atmel_pmecc_user** %6, align 8
  %168 = getelementptr inbounds %struct.atmel_pmecc_user, %struct.atmel_pmecc_user* %167, i32 0, i32 4
  store i32* %166, i32** %168, align 8
  %169 = load %struct.atmel_pmecc_user_req*, %struct.atmel_pmecc_user_req** %5, align 8
  %170 = call %struct.atmel_pmecc_gf_tables* @atmel_pmecc_get_gf_tables(%struct.atmel_pmecc_user_req* %169)
  store %struct.atmel_pmecc_gf_tables* %170, %struct.atmel_pmecc_gf_tables** %7, align 8
  %171 = load %struct.atmel_pmecc_gf_tables*, %struct.atmel_pmecc_gf_tables** %7, align 8
  %172 = call i64 @IS_ERR(%struct.atmel_pmecc_gf_tables* %171)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %179

174:                                              ; preds = %76
  %175 = load %struct.atmel_pmecc_user*, %struct.atmel_pmecc_user** %6, align 8
  %176 = call i32 @kfree(%struct.atmel_pmecc_user* %175)
  %177 = load %struct.atmel_pmecc_gf_tables*, %struct.atmel_pmecc_gf_tables** %7, align 8
  %178 = call %struct.atmel_pmecc_user* @ERR_CAST(%struct.atmel_pmecc_gf_tables* %177)
  store %struct.atmel_pmecc_user* %178, %struct.atmel_pmecc_user** %3, align 8
  br label %276

179:                                              ; preds = %76
  %180 = load %struct.atmel_pmecc_gf_tables*, %struct.atmel_pmecc_gf_tables** %7, align 8
  %181 = load %struct.atmel_pmecc_user*, %struct.atmel_pmecc_user** %6, align 8
  %182 = getelementptr inbounds %struct.atmel_pmecc_user, %struct.atmel_pmecc_user* %181, i32 0, i32 2
  store %struct.atmel_pmecc_gf_tables* %180, %struct.atmel_pmecc_gf_tables** %182, align 8
  %183 = load %struct.atmel_pmecc_user_req*, %struct.atmel_pmecc_user_req** %5, align 8
  %184 = getelementptr inbounds %struct.atmel_pmecc_user_req, %struct.atmel_pmecc_user_req* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = load %struct.atmel_pmecc_user_req*, %struct.atmel_pmecc_user_req** %5, align 8
  %188 = getelementptr inbounds %struct.atmel_pmecc_user_req, %struct.atmel_pmecc_user_req* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %188, i32 0, i32 2
  %190 = load i32, i32* %189, align 8
  %191 = sdiv i32 %186, %190
  %192 = load %struct.atmel_pmecc_user*, %struct.atmel_pmecc_user** %6, align 8
  %193 = getelementptr inbounds %struct.atmel_pmecc_user, %struct.atmel_pmecc_user* %192, i32 0, i32 0
  store i32 %191, i32* %193, align 8
  store i32 0, i32* %8, align 4
  br label %194

194:                                              ; preds = %219, %179
  %195 = load i32, i32* %8, align 4
  %196 = load %struct.atmel_pmecc*, %struct.atmel_pmecc** %4, align 8
  %197 = getelementptr inbounds %struct.atmel_pmecc, %struct.atmel_pmecc* %196, i32 0, i32 0
  %198 = load %struct.TYPE_4__*, %struct.TYPE_4__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = icmp slt i32 %195, %200
  br i1 %201, label %202, label %222

202:                                              ; preds = %194
  %203 = load %struct.atmel_pmecc*, %struct.atmel_pmecc** %4, align 8
  %204 = getelementptr inbounds %struct.atmel_pmecc, %struct.atmel_pmecc* %203, i32 0, i32 0
  %205 = load %struct.TYPE_4__*, %struct.TYPE_4__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %205, i32 0, i32 1
  %207 = load i32*, i32** %206, align 8
  %208 = load i32, i32* %8, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i32, i32* %207, i64 %209
  %211 = load i32, i32* %210, align 4
  %212 = load %struct.atmel_pmecc_user_req*, %struct.atmel_pmecc_user_req** %5, align 8
  %213 = getelementptr inbounds %struct.atmel_pmecc_user_req, %struct.atmel_pmecc_user_req* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = icmp eq i32 %211, %215
  br i1 %216, label %217, label %218

217:                                              ; preds = %202
  br label %222

218:                                              ; preds = %202
  br label %219

219:                                              ; preds = %218
  %220 = load i32, i32* %8, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %8, align 4
  br label %194

222:                                              ; preds = %217, %194
  %223 = load i32, i32* %8, align 4
  %224 = call i32 @PMECC_CFG_BCH_STRENGTH(i32 %223)
  %225 = load %struct.atmel_pmecc_user_req*, %struct.atmel_pmecc_user_req** %5, align 8
  %226 = getelementptr inbounds %struct.atmel_pmecc_user_req, %struct.atmel_pmecc_user_req* %225, i32 0, i32 0
  %227 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %226, i32 0, i32 2
  %228 = load i32, i32* %227, align 8
  %229 = call i32 @PMECC_CFG_NSECTORS(i32 %228)
  %230 = or i32 %224, %229
  %231 = load %struct.atmel_pmecc_user*, %struct.atmel_pmecc_user** %6, align 8
  %232 = getelementptr inbounds %struct.atmel_pmecc_user, %struct.atmel_pmecc_user* %231, i32 0, i32 1
  %233 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %232, i32 0, i32 0
  store i32 %230, i32* %233, align 8
  %234 = load %struct.atmel_pmecc_user_req*, %struct.atmel_pmecc_user_req** %5, align 8
  %235 = getelementptr inbounds %struct.atmel_pmecc_user_req, %struct.atmel_pmecc_user_req* %234, i32 0, i32 0
  %236 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %235, i32 0, i32 3
  %237 = load i32, i32* %236, align 4
  %238 = icmp eq i32 %237, 1024
  br i1 %238, label %239, label %246

239:                                              ; preds = %222
  %240 = load i32, i32* @PMECC_CFG_SECTOR1024, align 4
  %241 = load %struct.atmel_pmecc_user*, %struct.atmel_pmecc_user** %6, align 8
  %242 = getelementptr inbounds %struct.atmel_pmecc_user, %struct.atmel_pmecc_user* %241, i32 0, i32 1
  %243 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 8
  %245 = or i32 %244, %240
  store i32 %245, i32* %243, align 8
  br label %246

246:                                              ; preds = %239, %222
  %247 = load %struct.atmel_pmecc_user_req*, %struct.atmel_pmecc_user_req** %5, align 8
  %248 = getelementptr inbounds %struct.atmel_pmecc_user_req, %struct.atmel_pmecc_user_req* %247, i32 0, i32 1
  %249 = load i64, i64* %248, align 8
  %250 = sub nsw i64 %249, 1
  %251 = load %struct.atmel_pmecc_user*, %struct.atmel_pmecc_user** %6, align 8
  %252 = getelementptr inbounds %struct.atmel_pmecc_user, %struct.atmel_pmecc_user* %251, i32 0, i32 1
  %253 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %252, i32 0, i32 3
  store i64 %250, i64* %253, align 8
  %254 = load %struct.atmel_pmecc_user_req*, %struct.atmel_pmecc_user_req** %5, align 8
  %255 = getelementptr inbounds %struct.atmel_pmecc_user_req, %struct.atmel_pmecc_user_req* %254, i32 0, i32 0
  %256 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %255, i32 0, i32 4
  %257 = load i64, i64* %256, align 8
  %258 = load %struct.atmel_pmecc_user*, %struct.atmel_pmecc_user** %6, align 8
  %259 = getelementptr inbounds %struct.atmel_pmecc_user, %struct.atmel_pmecc_user* %258, i32 0, i32 1
  %260 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %259, i32 0, i32 2
  store i64 %257, i64* %260, align 8
  %261 = load %struct.atmel_pmecc_user_req*, %struct.atmel_pmecc_user_req** %5, align 8
  %262 = getelementptr inbounds %struct.atmel_pmecc_user_req, %struct.atmel_pmecc_user_req* %261, i32 0, i32 0
  %263 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %262, i32 0, i32 4
  %264 = load i64, i64* %263, align 8
  %265 = load %struct.atmel_pmecc_user_req*, %struct.atmel_pmecc_user_req** %5, align 8
  %266 = getelementptr inbounds %struct.atmel_pmecc_user_req, %struct.atmel_pmecc_user_req* %265, i32 0, i32 0
  %267 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %266, i32 0, i32 1
  %268 = load i32, i32* %267, align 4
  %269 = sext i32 %268 to i64
  %270 = add nsw i64 %264, %269
  %271 = sub nsw i64 %270, 1
  %272 = load %struct.atmel_pmecc_user*, %struct.atmel_pmecc_user** %6, align 8
  %273 = getelementptr inbounds %struct.atmel_pmecc_user, %struct.atmel_pmecc_user* %272, i32 0, i32 1
  %274 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %273, i32 0, i32 1
  store i64 %271, i64* %274, align 8
  %275 = load %struct.atmel_pmecc_user*, %struct.atmel_pmecc_user** %6, align 8
  store %struct.atmel_pmecc_user* %275, %struct.atmel_pmecc_user** %3, align 8
  br label %276

276:                                              ; preds = %246, %174, %72, %16
  %277 = load %struct.atmel_pmecc_user*, %struct.atmel_pmecc_user** %3, align 8
  ret %struct.atmel_pmecc_user* %277
}

declare dso_local i32 @atmel_pmecc_prepare_user_req(%struct.atmel_pmecc*, %struct.atmel_pmecc_user_req*) #1

declare dso_local %struct.atmel_pmecc_user* @ERR_PTR(i32) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local %struct.atmel_pmecc_user* @kzalloc(i32, i32) #1

declare dso_local i64 @PTR_ALIGN(%struct.atmel_pmecc_user*, i32) #1

declare dso_local %struct.atmel_pmecc_gf_tables* @atmel_pmecc_get_gf_tables(%struct.atmel_pmecc_user_req*) #1

declare dso_local i64 @IS_ERR(%struct.atmel_pmecc_gf_tables*) #1

declare dso_local i32 @kfree(%struct.atmel_pmecc_user*) #1

declare dso_local %struct.atmel_pmecc_user* @ERR_CAST(%struct.atmel_pmecc_gf_tables*) #1

declare dso_local i32 @PMECC_CFG_BCH_STRENGTH(i32) #1

declare dso_local i32 @PMECC_CFG_NSECTORS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
