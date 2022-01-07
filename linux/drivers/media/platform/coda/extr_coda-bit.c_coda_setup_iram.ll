; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/coda/extr_coda-bit.c_coda_setup_iram.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/coda/extr_coda-bit.c_coda_setup_iram.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.coda_ctx = type { i64, %struct.coda_dev*, %struct.coda_iram_info }
%struct.coda_dev = type { %struct.TYPE_6__*, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.coda_iram_info = type { i32, i32, i8*, i8*, i8*, i8*, i8*, i32, i32 }
%struct.coda_q_data = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@CODA7_USE_HOST_DBK_ENABLE = common dso_local global i32 0, align 4
@CODA7_USE_HOST_BIT_ENABLE = common dso_local global i32 0, align 4
@CODA7_USE_HOST_IP_ENABLE = common dso_local global i32 0, align 4
@CODA7_USE_HOST_ME_ENABLE = common dso_local global i32 0, align 4
@CODA7_USE_DBK_ENABLE = common dso_local global i32 0, align 4
@CODA7_USE_BIT_ENABLE = common dso_local global i32 0, align 4
@CODA7_USE_IP_ENABLE = common dso_local global i32 0, align 4
@CODA7_USE_ME_ENABLE = common dso_local global i32 0, align 4
@CODA9_USE_HOST_DBK_ENABLE = common dso_local global i32 0, align 4
@CODA9_USE_DBK_ENABLE = common dso_local global i32 0, align 4
@CODA9_USE_HOST_BIT_ENABLE = common dso_local global i32 0, align 4
@CODA9_USE_HOST_IP_ENABLE = common dso_local global i32 0, align 4
@CODA_INST_ENCODER = common dso_local global i64 0, align 8
@V4L2_BUF_TYPE_VIDEO_OUTPUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"IRAM is smaller than the search ram size\0A\00", align 1
@CODA_INST_DECODER = common dso_local global i64 0, align 8
@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"IRAM smaller than needed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.coda_ctx*)* @coda_setup_iram to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @coda_setup_iram(%struct.coda_ctx* %0) #0 {
  %2 = alloca %struct.coda_ctx*, align 8
  %3 = alloca %struct.coda_iram_info*, align 8
  %4 = alloca %struct.coda_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.coda_q_data*, align 8
  %13 = alloca %struct.coda_q_data*, align 8
  store %struct.coda_ctx* %0, %struct.coda_ctx** %2, align 8
  %14 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %15 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %14, i32 0, i32 2
  store %struct.coda_iram_info* %15, %struct.coda_iram_info** %3, align 8
  %16 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %17 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %16, i32 0, i32 1
  %18 = load %struct.coda_dev*, %struct.coda_dev** %17, align 8
  store %struct.coda_dev* %18, %struct.coda_dev** %4, align 8
  %19 = load %struct.coda_iram_info*, %struct.coda_iram_info** %3, align 8
  %20 = call i32 @memset(%struct.coda_iram_info* %19, i32 0, i32 56)
  %21 = load %struct.coda_dev*, %struct.coda_dev** %4, align 8
  %22 = getelementptr inbounds %struct.coda_dev, %struct.coda_dev* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.coda_iram_info*, %struct.coda_iram_info** %3, align 8
  %26 = getelementptr inbounds %struct.coda_iram_info, %struct.coda_iram_info* %25, i32 0, i32 8
  store i32 %24, i32* %26, align 4
  %27 = load %struct.coda_dev*, %struct.coda_dev** %4, align 8
  %28 = getelementptr inbounds %struct.coda_dev, %struct.coda_dev* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.coda_iram_info*, %struct.coda_iram_info** %3, align 8
  %32 = getelementptr inbounds %struct.coda_iram_info, %struct.coda_iram_info* %31, i32 0, i32 7
  store i32 %30, i32* %32, align 8
  %33 = load %struct.coda_dev*, %struct.coda_dev** %4, align 8
  %34 = getelementptr inbounds %struct.coda_dev, %struct.coda_dev* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %1
  br label %311

39:                                               ; preds = %1
  %40 = load %struct.coda_dev*, %struct.coda_dev** %4, align 8
  %41 = getelementptr inbounds %struct.coda_dev, %struct.coda_dev* %40, i32 0, i32 0
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  switch i32 %44, label %73 [
    i32 128, label %45
    i32 130, label %50
    i32 129, label %63
  ]

45:                                               ; preds = %39
  %46 = load i32, i32* @CODA7_USE_HOST_DBK_ENABLE, align 4
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* @CODA7_USE_HOST_BIT_ENABLE, align 4
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* @CODA7_USE_HOST_IP_ENABLE, align 4
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* @CODA7_USE_HOST_ME_ENABLE, align 4
  store i32 %49, i32* %11, align 4
  br label %74

50:                                               ; preds = %39
  %51 = load i32, i32* @CODA7_USE_HOST_DBK_ENABLE, align 4
  %52 = load i32, i32* @CODA7_USE_DBK_ENABLE, align 4
  %53 = or i32 %51, %52
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* @CODA7_USE_HOST_BIT_ENABLE, align 4
  %55 = load i32, i32* @CODA7_USE_BIT_ENABLE, align 4
  %56 = or i32 %54, %55
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* @CODA7_USE_HOST_IP_ENABLE, align 4
  %58 = load i32, i32* @CODA7_USE_IP_ENABLE, align 4
  %59 = or i32 %57, %58
  store i32 %59, i32* %10, align 4
  %60 = load i32, i32* @CODA7_USE_HOST_ME_ENABLE, align 4
  %61 = load i32, i32* @CODA7_USE_ME_ENABLE, align 4
  %62 = or i32 %60, %61
  store i32 %62, i32* %11, align 4
  br label %74

63:                                               ; preds = %39
  %64 = load i32, i32* @CODA9_USE_HOST_DBK_ENABLE, align 4
  %65 = load i32, i32* @CODA9_USE_DBK_ENABLE, align 4
  %66 = or i32 %64, %65
  store i32 %66, i32* %8, align 4
  %67 = load i32, i32* @CODA9_USE_HOST_BIT_ENABLE, align 4
  %68 = load i32, i32* @CODA7_USE_BIT_ENABLE, align 4
  %69 = or i32 %67, %68
  store i32 %69, i32* %9, align 4
  %70 = load i32, i32* @CODA9_USE_HOST_IP_ENABLE, align 4
  %71 = load i32, i32* @CODA7_USE_IP_ENABLE, align 4
  %72 = or i32 %70, %71
  store i32 %72, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %74

73:                                               ; preds = %39
  br label %311

74:                                               ; preds = %63, %50, %45
  %75 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %76 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @CODA_INST_ENCODER, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %187

80:                                               ; preds = %74
  %81 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %82 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_OUTPUT, align 4
  %83 = call %struct.coda_q_data* @get_q_data(%struct.coda_ctx* %81, i32 %82)
  store %struct.coda_q_data* %83, %struct.coda_q_data** %12, align 8
  %84 = load %struct.coda_q_data*, %struct.coda_q_data** %12, align 8
  %85 = getelementptr inbounds %struct.coda_q_data, %struct.coda_q_data* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @DIV_ROUND_UP(i32 %87, i32 16)
  store i32 %88, i32* %7, align 4
  %89 = load i32, i32* %7, align 4
  %90 = mul nsw i32 %89, 128
  store i32 %90, i32* %6, align 4
  %91 = load i32, i32* %7, align 4
  %92 = mul nsw i32 %91, 64
  store i32 %92, i32* %5, align 4
  %93 = load %struct.coda_dev*, %struct.coda_dev** %4, align 8
  %94 = getelementptr inbounds %struct.coda_dev, %struct.coda_dev* %93, i32 0, i32 0
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = icmp eq i32 %97, 128
  br i1 %98, label %106, label %99

99:                                               ; preds = %80
  %100 = load %struct.coda_dev*, %struct.coda_dev** %4, align 8
  %101 = getelementptr inbounds %struct.coda_dev, %struct.coda_dev* %100, i32 0, i32 0
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = icmp eq i32 %104, 130
  br i1 %105, label %106, label %133

106:                                              ; preds = %99, %80
  %107 = load i32, i32* %7, align 4
  %108 = mul nsw i32 %107, 16
  %109 = mul nsw i32 %108, 36
  %110 = add nsw i32 %109, 2048
  %111 = call i32 @round_up(i32 %110, i32 1024)
  %112 = load %struct.coda_iram_info*, %struct.coda_iram_info** %3, align 8
  %113 = getelementptr inbounds %struct.coda_iram_info, %struct.coda_iram_info* %112, i32 0, i32 0
  store i32 %111, i32* %113, align 8
  %114 = load %struct.coda_iram_info*, %struct.coda_iram_info** %3, align 8
  %115 = load %struct.coda_iram_info*, %struct.coda_iram_info** %3, align 8
  %116 = getelementptr inbounds %struct.coda_iram_info, %struct.coda_iram_info* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = call i8* @coda_iram_alloc(%struct.coda_iram_info* %114, i32 %117)
  %119 = load %struct.coda_iram_info*, %struct.coda_iram_info** %3, align 8
  %120 = getelementptr inbounds %struct.coda_iram_info, %struct.coda_iram_info* %119, i32 0, i32 6
  store i8* %118, i8** %120, align 8
  %121 = load %struct.coda_iram_info*, %struct.coda_iram_info** %3, align 8
  %122 = getelementptr inbounds %struct.coda_iram_info, %struct.coda_iram_info* %121, i32 0, i32 6
  %123 = load i8*, i8** %122, align 8
  %124 = icmp ne i8* %123, null
  br i1 %124, label %127, label %125

125:                                              ; preds = %106
  %126 = call i32 @pr_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %258

127:                                              ; preds = %106
  %128 = load i32, i32* %11, align 4
  %129 = load %struct.coda_iram_info*, %struct.coda_iram_info** %3, align 8
  %130 = getelementptr inbounds %struct.coda_iram_info, %struct.coda_iram_info* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = or i32 %131, %128
  store i32 %132, i32* %130, align 4
  br label %133

133:                                              ; preds = %127, %99
  %134 = load %struct.coda_iram_info*, %struct.coda_iram_info** %3, align 8
  %135 = load i32, i32* %5, align 4
  %136 = call i8* @coda_iram_alloc(%struct.coda_iram_info* %134, i32 %135)
  %137 = load %struct.coda_iram_info*, %struct.coda_iram_info** %3, align 8
  %138 = getelementptr inbounds %struct.coda_iram_info, %struct.coda_iram_info* %137, i32 0, i32 5
  store i8* %136, i8** %138, align 8
  %139 = load %struct.coda_iram_info*, %struct.coda_iram_info** %3, align 8
  %140 = load i32, i32* %5, align 4
  %141 = call i8* @coda_iram_alloc(%struct.coda_iram_info* %139, i32 %140)
  %142 = load %struct.coda_iram_info*, %struct.coda_iram_info** %3, align 8
  %143 = getelementptr inbounds %struct.coda_iram_info, %struct.coda_iram_info* %142, i32 0, i32 4
  store i8* %141, i8** %143, align 8
  %144 = load %struct.coda_iram_info*, %struct.coda_iram_info** %3, align 8
  %145 = getelementptr inbounds %struct.coda_iram_info, %struct.coda_iram_info* %144, i32 0, i32 4
  %146 = load i8*, i8** %145, align 8
  %147 = icmp ne i8* %146, null
  br i1 %147, label %149, label %148

148:                                              ; preds = %133
  br label %258

149:                                              ; preds = %133
  %150 = load i32, i32* %8, align 4
  %151 = load %struct.coda_iram_info*, %struct.coda_iram_info** %3, align 8
  %152 = getelementptr inbounds %struct.coda_iram_info, %struct.coda_iram_info* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = or i32 %153, %150
  store i32 %154, i32* %152, align 4
  %155 = load %struct.coda_iram_info*, %struct.coda_iram_info** %3, align 8
  %156 = load i32, i32* %6, align 4
  %157 = call i8* @coda_iram_alloc(%struct.coda_iram_info* %155, i32 %156)
  %158 = load %struct.coda_iram_info*, %struct.coda_iram_info** %3, align 8
  %159 = getelementptr inbounds %struct.coda_iram_info, %struct.coda_iram_info* %158, i32 0, i32 3
  store i8* %157, i8** %159, align 8
  %160 = load %struct.coda_iram_info*, %struct.coda_iram_info** %3, align 8
  %161 = getelementptr inbounds %struct.coda_iram_info, %struct.coda_iram_info* %160, i32 0, i32 3
  %162 = load i8*, i8** %161, align 8
  %163 = icmp ne i8* %162, null
  br i1 %163, label %165, label %164

164:                                              ; preds = %149
  br label %258

165:                                              ; preds = %149
  %166 = load i32, i32* %9, align 4
  %167 = load %struct.coda_iram_info*, %struct.coda_iram_info** %3, align 8
  %168 = getelementptr inbounds %struct.coda_iram_info, %struct.coda_iram_info* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = or i32 %169, %166
  store i32 %170, i32* %168, align 4
  %171 = load %struct.coda_iram_info*, %struct.coda_iram_info** %3, align 8
  %172 = load i32, i32* %6, align 4
  %173 = call i8* @coda_iram_alloc(%struct.coda_iram_info* %171, i32 %172)
  %174 = load %struct.coda_iram_info*, %struct.coda_iram_info** %3, align 8
  %175 = getelementptr inbounds %struct.coda_iram_info, %struct.coda_iram_info* %174, i32 0, i32 2
  store i8* %173, i8** %175, align 8
  %176 = load %struct.coda_iram_info*, %struct.coda_iram_info** %3, align 8
  %177 = getelementptr inbounds %struct.coda_iram_info, %struct.coda_iram_info* %176, i32 0, i32 2
  %178 = load i8*, i8** %177, align 8
  %179 = icmp ne i8* %178, null
  br i1 %179, label %181, label %180

180:                                              ; preds = %165
  br label %258

181:                                              ; preds = %165
  %182 = load i32, i32* %10, align 4
  %183 = load %struct.coda_iram_info*, %struct.coda_iram_info** %3, align 8
  %184 = getelementptr inbounds %struct.coda_iram_info, %struct.coda_iram_info* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = or i32 %185, %182
  store i32 %186, i32* %184, align 4
  br label %257

187:                                              ; preds = %74
  %188 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %189 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %188, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = load i64, i64* @CODA_INST_DECODER, align 8
  %192 = icmp eq i64 %190, %191
  br i1 %192, label %193, label %256

193:                                              ; preds = %187
  %194 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %195 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 4
  %196 = call %struct.coda_q_data* @get_q_data(%struct.coda_ctx* %194, i32 %195)
  store %struct.coda_q_data* %196, %struct.coda_q_data** %13, align 8
  %197 = load %struct.coda_q_data*, %struct.coda_q_data** %13, align 8
  %198 = getelementptr inbounds %struct.coda_q_data, %struct.coda_q_data* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = call i32 @DIV_ROUND_UP(i32 %199, i32 16)
  store i32 %200, i32* %7, align 4
  %201 = load i32, i32* %7, align 4
  %202 = mul nsw i32 %201, 128
  store i32 %202, i32* %6, align 4
  %203 = load %struct.coda_iram_info*, %struct.coda_iram_info** %3, align 8
  %204 = load i32, i32* %6, align 4
  %205 = call i8* @coda_iram_alloc(%struct.coda_iram_info* %203, i32 %204)
  %206 = load %struct.coda_iram_info*, %struct.coda_iram_info** %3, align 8
  %207 = getelementptr inbounds %struct.coda_iram_info, %struct.coda_iram_info* %206, i32 0, i32 5
  store i8* %205, i8** %207, align 8
  %208 = load %struct.coda_iram_info*, %struct.coda_iram_info** %3, align 8
  %209 = load i32, i32* %6, align 4
  %210 = call i8* @coda_iram_alloc(%struct.coda_iram_info* %208, i32 %209)
  %211 = load %struct.coda_iram_info*, %struct.coda_iram_info** %3, align 8
  %212 = getelementptr inbounds %struct.coda_iram_info, %struct.coda_iram_info* %211, i32 0, i32 4
  store i8* %210, i8** %212, align 8
  %213 = load %struct.coda_iram_info*, %struct.coda_iram_info** %3, align 8
  %214 = getelementptr inbounds %struct.coda_iram_info, %struct.coda_iram_info* %213, i32 0, i32 4
  %215 = load i8*, i8** %214, align 8
  %216 = icmp ne i8* %215, null
  br i1 %216, label %218, label %217

217:                                              ; preds = %193
  br label %258

218:                                              ; preds = %193
  %219 = load i32, i32* %8, align 4
  %220 = load %struct.coda_iram_info*, %struct.coda_iram_info** %3, align 8
  %221 = getelementptr inbounds %struct.coda_iram_info, %struct.coda_iram_info* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 4
  %223 = or i32 %222, %219
  store i32 %223, i32* %221, align 4
  %224 = load %struct.coda_iram_info*, %struct.coda_iram_info** %3, align 8
  %225 = load i32, i32* %6, align 4
  %226 = call i8* @coda_iram_alloc(%struct.coda_iram_info* %224, i32 %225)
  %227 = load %struct.coda_iram_info*, %struct.coda_iram_info** %3, align 8
  %228 = getelementptr inbounds %struct.coda_iram_info, %struct.coda_iram_info* %227, i32 0, i32 3
  store i8* %226, i8** %228, align 8
  %229 = load %struct.coda_iram_info*, %struct.coda_iram_info** %3, align 8
  %230 = getelementptr inbounds %struct.coda_iram_info, %struct.coda_iram_info* %229, i32 0, i32 3
  %231 = load i8*, i8** %230, align 8
  %232 = icmp ne i8* %231, null
  br i1 %232, label %234, label %233

233:                                              ; preds = %218
  br label %258

234:                                              ; preds = %218
  %235 = load i32, i32* %9, align 4
  %236 = load %struct.coda_iram_info*, %struct.coda_iram_info** %3, align 8
  %237 = getelementptr inbounds %struct.coda_iram_info, %struct.coda_iram_info* %236, i32 0, i32 1
  %238 = load i32, i32* %237, align 4
  %239 = or i32 %238, %235
  store i32 %239, i32* %237, align 4
  %240 = load %struct.coda_iram_info*, %struct.coda_iram_info** %3, align 8
  %241 = load i32, i32* %6, align 4
  %242 = call i8* @coda_iram_alloc(%struct.coda_iram_info* %240, i32 %241)
  %243 = load %struct.coda_iram_info*, %struct.coda_iram_info** %3, align 8
  %244 = getelementptr inbounds %struct.coda_iram_info, %struct.coda_iram_info* %243, i32 0, i32 2
  store i8* %242, i8** %244, align 8
  %245 = load %struct.coda_iram_info*, %struct.coda_iram_info** %3, align 8
  %246 = getelementptr inbounds %struct.coda_iram_info, %struct.coda_iram_info* %245, i32 0, i32 2
  %247 = load i8*, i8** %246, align 8
  %248 = icmp ne i8* %247, null
  br i1 %248, label %250, label %249

249:                                              ; preds = %234
  br label %258

250:                                              ; preds = %234
  %251 = load i32, i32* %10, align 4
  %252 = load %struct.coda_iram_info*, %struct.coda_iram_info** %3, align 8
  %253 = getelementptr inbounds %struct.coda_iram_info, %struct.coda_iram_info* %252, i32 0, i32 1
  %254 = load i32, i32* %253, align 4
  %255 = or i32 %254, %251
  store i32 %255, i32* %253, align 4
  br label %256

256:                                              ; preds = %250, %187
  br label %257

257:                                              ; preds = %256, %181
  br label %258

258:                                              ; preds = %257, %249, %233, %217, %180, %164, %148, %125
  %259 = load %struct.coda_iram_info*, %struct.coda_iram_info** %3, align 8
  %260 = getelementptr inbounds %struct.coda_iram_info, %struct.coda_iram_info* %259, i32 0, i32 1
  %261 = load i32, i32* %260, align 4
  %262 = load i32, i32* @CODA7_USE_HOST_IP_ENABLE, align 4
  %263 = and i32 %261, %262
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %268, label %265

265:                                              ; preds = %258
  %266 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %267 = call i32 @coda_dbg(i32 1, %struct.coda_ctx* %266, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %268

268:                                              ; preds = %265, %258
  %269 = load %struct.coda_dev*, %struct.coda_dev** %4, align 8
  %270 = getelementptr inbounds %struct.coda_dev, %struct.coda_dev* %269, i32 0, i32 0
  %271 = load %struct.TYPE_6__*, %struct.TYPE_6__** %270, align 8
  %272 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 4
  %274 = icmp eq i32 %273, 128
  br i1 %274, label %282, label %275

275:                                              ; preds = %268
  %276 = load %struct.coda_dev*, %struct.coda_dev** %4, align 8
  %277 = getelementptr inbounds %struct.coda_dev, %struct.coda_dev* %276, i32 0, i32 0
  %278 = load %struct.TYPE_6__*, %struct.TYPE_6__** %277, align 8
  %279 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %278, i32 0, i32 0
  %280 = load i32, i32* %279, align 4
  %281 = icmp eq i32 %280, 130
  br i1 %281, label %282, label %311

282:                                              ; preds = %275, %268
  %283 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %284 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %283, i32 0, i32 0
  %285 = load i64, i64* %284, align 8
  %286 = load i64, i64* @CODA_INST_DECODER, align 8
  %287 = icmp eq i64 %285, %286
  br i1 %287, label %288, label %297

288:                                              ; preds = %282
  %289 = load i32, i32* @CODA7_USE_HOST_IP_ENABLE, align 4
  %290 = load i32, i32* @CODA7_USE_IP_ENABLE, align 4
  %291 = or i32 %289, %290
  %292 = xor i32 %291, -1
  %293 = load %struct.coda_iram_info*, %struct.coda_iram_info** %3, align 8
  %294 = getelementptr inbounds %struct.coda_iram_info, %struct.coda_iram_info* %293, i32 0, i32 1
  %295 = load i32, i32* %294, align 4
  %296 = and i32 %295, %292
  store i32 %296, i32* %294, align 4
  br label %310

297:                                              ; preds = %282
  %298 = load i32, i32* @CODA7_USE_HOST_IP_ENABLE, align 4
  %299 = load i32, i32* @CODA7_USE_HOST_DBK_ENABLE, align 4
  %300 = or i32 %298, %299
  %301 = load i32, i32* @CODA7_USE_IP_ENABLE, align 4
  %302 = or i32 %300, %301
  %303 = load i32, i32* @CODA7_USE_DBK_ENABLE, align 4
  %304 = or i32 %302, %303
  %305 = xor i32 %304, -1
  %306 = load %struct.coda_iram_info*, %struct.coda_iram_info** %3, align 8
  %307 = getelementptr inbounds %struct.coda_iram_info, %struct.coda_iram_info* %306, i32 0, i32 1
  %308 = load i32, i32* %307, align 4
  %309 = and i32 %308, %305
  store i32 %309, i32* %307, align 4
  br label %310

310:                                              ; preds = %297, %288
  br label %311

311:                                              ; preds = %38, %73, %310, %275
  ret void
}

declare dso_local i32 @memset(%struct.coda_iram_info*, i32, i32) #1

declare dso_local %struct.coda_q_data* @get_q_data(%struct.coda_ctx*, i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @round_up(i32, i32) #1

declare dso_local i8* @coda_iram_alloc(%struct.coda_iram_info*, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @coda_dbg(i32, %struct.coda_ctx*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
