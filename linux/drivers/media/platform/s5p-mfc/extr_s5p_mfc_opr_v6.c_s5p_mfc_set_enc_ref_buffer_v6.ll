; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc_opr_v6.c_s5p_mfc_set_enc_ref_buffer_v6.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc_opr_v6.c_s5p_mfc_set_enc_ref_buffer_v6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5p_mfc_ctx = type { i32, i64, i32, i64, i64, i64, i64, %struct.TYPE_2__, %struct.s5p_mfc_dev* }
%struct.TYPE_2__ = type { i64, i32 }
%struct.s5p_mfc_dev = type { i32, %struct.s5p_mfc_regs* }
%struct.s5p_mfc_regs = type { i64, i64, i64, i64, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [15 x i8] c"Buf1: %p (%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"Buf1: %zu, buf_size1: %d (ref frames %d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"Not enough memory has been allocated.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@cmd_host2risc = common dso_local global i32 0, align 4
@S5P_FIMV_CH_INIT_BUFS_V6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s5p_mfc_ctx*)* @s5p_mfc_set_enc_ref_buffer_v6 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5p_mfc_set_enc_ref_buffer_v6(%struct.s5p_mfc_ctx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.s5p_mfc_ctx*, align 8
  %4 = alloca %struct.s5p_mfc_dev*, align 8
  %5 = alloca %struct.s5p_mfc_regs*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.s5p_mfc_ctx* %0, %struct.s5p_mfc_ctx** %3, align 8
  %9 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %10 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %9, i32 0, i32 8
  %11 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %10, align 8
  store %struct.s5p_mfc_dev* %11, %struct.s5p_mfc_dev** %4, align 8
  %12 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %4, align 8
  %13 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %12, i32 0, i32 1
  %14 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %13, align 8
  store %struct.s5p_mfc_regs* %14, %struct.s5p_mfc_regs** %5, align 8
  %15 = call i32 (...) @mfc_debug_enter()
  %16 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %17 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %16, i32 0, i32 7
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %6, align 8
  %20 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %21 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %20, i32 0, i32 7
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %8, align 4
  %24 = load i64, i64* %6, align 8
  %25 = inttoptr i64 %24 to i8*
  %26 = load i32, i32* %8, align 4
  %27 = call i32 (i32, i8*, ...) @mfc_debug(i32 2, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %25, i32 %26)
  %28 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %4, align 8
  %29 = call i64 @IS_MFCV10(%struct.s5p_mfc_dev* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %128

31:                                               ; preds = %1
  store i32 0, i32* %7, align 4
  br label %32

32:                                               ; preds = %60, %31
  %33 = load i32, i32* %7, align 4
  %34 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %35 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp slt i32 %33, %36
  br i1 %37, label %38, label %63

38:                                               ; preds = %32
  %39 = load i64, i64* %6, align 8
  %40 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %5, align 8
  %41 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %40, i32 0, i32 7
  %42 = load i64, i64* %41, align 8
  %43 = load i32, i32* %7, align 4
  %44 = mul nsw i32 4, %43
  %45 = sext i32 %44 to i64
  %46 = add nsw i64 %42, %45
  %47 = call i32 @writel(i64 %39, i64 %46)
  %48 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %49 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %48, i32 0, i32 6
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* %6, align 8
  %52 = add i64 %51, %50
  store i64 %52, i64* %6, align 8
  %53 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %54 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %53, i32 0, i32 6
  %55 = load i64, i64* %54, align 8
  %56 = load i32, i32* %8, align 4
  %57 = sext i32 %56 to i64
  %58 = sub nsw i64 %57, %55
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %8, align 4
  br label %60

60:                                               ; preds = %38
  %61 = load i32, i32* %7, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %7, align 4
  br label %32

63:                                               ; preds = %32
  store i32 0, i32* %7, align 4
  br label %64

64:                                               ; preds = %92, %63
  %65 = load i32, i32* %7, align 4
  %66 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %67 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp slt i32 %65, %68
  br i1 %69, label %70, label %95

70:                                               ; preds = %64
  %71 = load i64, i64* %6, align 8
  %72 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %5, align 8
  %73 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %72, i32 0, i32 6
  %74 = load i64, i64* %73, align 8
  %75 = load i32, i32* %7, align 4
  %76 = mul nsw i32 4, %75
  %77 = sext i32 %76 to i64
  %78 = add nsw i64 %74, %77
  %79 = call i32 @writel(i64 %71, i64 %78)
  %80 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %81 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %80, i32 0, i32 5
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* %6, align 8
  %84 = add i64 %83, %82
  store i64 %84, i64* %6, align 8
  %85 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %86 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %85, i32 0, i32 5
  %87 = load i64, i64* %86, align 8
  %88 = load i32, i32* %8, align 4
  %89 = sext i32 %88 to i64
  %90 = sub nsw i64 %89, %87
  %91 = trunc i64 %90 to i32
  store i32 %91, i32* %8, align 4
  br label %92

92:                                               ; preds = %70
  %93 = load i32, i32* %7, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %7, align 4
  br label %64

95:                                               ; preds = %64
  store i32 0, i32* %7, align 4
  br label %96

96:                                               ; preds = %124, %95
  %97 = load i32, i32* %7, align 4
  %98 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %99 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = icmp slt i32 %97, %100
  br i1 %101, label %102, label %127

102:                                              ; preds = %96
  %103 = load i64, i64* %6, align 8
  %104 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %5, align 8
  %105 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %104, i32 0, i32 5
  %106 = load i64, i64* %105, align 8
  %107 = load i32, i32* %7, align 4
  %108 = mul nsw i32 4, %107
  %109 = sext i32 %108 to i64
  %110 = add nsw i64 %106, %109
  %111 = call i32 @writel(i64 %103, i64 %110)
  %112 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %113 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %112, i32 0, i32 4
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* %6, align 8
  %116 = add i64 %115, %114
  store i64 %116, i64* %6, align 8
  %117 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %118 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %117, i32 0, i32 4
  %119 = load i64, i64* %118, align 8
  %120 = load i32, i32* %8, align 4
  %121 = sext i32 %120 to i64
  %122 = sub nsw i64 %121, %119
  %123 = trunc i64 %122 to i32
  store i32 %123, i32* %8, align 4
  br label %124

124:                                              ; preds = %102
  %125 = load i32, i32* %7, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %7, align 4
  br label %96

127:                                              ; preds = %96
  br label %197

128:                                              ; preds = %1
  store i32 0, i32* %7, align 4
  br label %129

129:                                              ; preds = %193, %128
  %130 = load i32, i32* %7, align 4
  %131 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %132 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = icmp slt i32 %130, %133
  br i1 %134, label %135, label %196

135:                                              ; preds = %129
  %136 = load i64, i64* %6, align 8
  %137 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %5, align 8
  %138 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %137, i32 0, i32 7
  %139 = load i64, i64* %138, align 8
  %140 = load i32, i32* %7, align 4
  %141 = mul nsw i32 4, %140
  %142 = sext i32 %141 to i64
  %143 = add nsw i64 %139, %142
  %144 = call i32 @writel(i64 %136, i64 %143)
  %145 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %146 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %145, i32 0, i32 6
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* %6, align 8
  %149 = add i64 %148, %147
  store i64 %149, i64* %6, align 8
  %150 = load i64, i64* %6, align 8
  %151 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %5, align 8
  %152 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %151, i32 0, i32 6
  %153 = load i64, i64* %152, align 8
  %154 = load i32, i32* %7, align 4
  %155 = mul nsw i32 4, %154
  %156 = sext i32 %155 to i64
  %157 = add nsw i64 %153, %156
  %158 = call i32 @writel(i64 %150, i64 %157)
  %159 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %160 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %159, i32 0, i32 5
  %161 = load i64, i64* %160, align 8
  %162 = load i64, i64* %6, align 8
  %163 = add i64 %162, %161
  store i64 %163, i64* %6, align 8
  %164 = load i64, i64* %6, align 8
  %165 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %5, align 8
  %166 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %165, i32 0, i32 5
  %167 = load i64, i64* %166, align 8
  %168 = load i32, i32* %7, align 4
  %169 = mul nsw i32 4, %168
  %170 = sext i32 %169 to i64
  %171 = add nsw i64 %167, %170
  %172 = call i32 @writel(i64 %164, i64 %171)
  %173 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %174 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %173, i32 0, i32 4
  %175 = load i64, i64* %174, align 8
  %176 = load i64, i64* %6, align 8
  %177 = add i64 %176, %175
  store i64 %177, i64* %6, align 8
  %178 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %179 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %178, i32 0, i32 6
  %180 = load i64, i64* %179, align 8
  %181 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %182 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %181, i32 0, i32 5
  %183 = load i64, i64* %182, align 8
  %184 = add nsw i64 %180, %183
  %185 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %186 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %185, i32 0, i32 4
  %187 = load i64, i64* %186, align 8
  %188 = add nsw i64 %184, %187
  %189 = load i32, i32* %8, align 4
  %190 = sext i32 %189 to i64
  %191 = sub nsw i64 %190, %188
  %192 = trunc i64 %191 to i32
  store i32 %192, i32* %8, align 4
  br label %193

193:                                              ; preds = %135
  %194 = load i32, i32* %7, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %7, align 4
  br label %129

196:                                              ; preds = %129
  br label %197

197:                                              ; preds = %196, %127
  %198 = load i64, i64* %6, align 8
  %199 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %5, align 8
  %200 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %199, i32 0, i32 4
  %201 = load i64, i64* %200, align 8
  %202 = call i32 @writel(i64 %198, i64 %201)
  %203 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %204 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %203, i32 0, i32 1
  %205 = load i64, i64* %204, align 8
  %206 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %5, align 8
  %207 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %206, i32 0, i32 3
  %208 = load i64, i64* %207, align 8
  %209 = call i32 @writel(i64 %205, i64 %208)
  %210 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %211 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %210, i32 0, i32 1
  %212 = load i64, i64* %211, align 8
  %213 = load i64, i64* %6, align 8
  %214 = add i64 %213, %212
  store i64 %214, i64* %6, align 8
  %215 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %216 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %215, i32 0, i32 1
  %217 = load i64, i64* %216, align 8
  %218 = load i32, i32* %8, align 4
  %219 = sext i32 %218 to i64
  %220 = sub i64 %219, %217
  %221 = trunc i64 %220 to i32
  store i32 %221, i32* %8, align 4
  %222 = load i64, i64* %6, align 8
  %223 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %5, align 8
  %224 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %223, i32 0, i32 2
  %225 = load i64, i64* %224, align 8
  %226 = call i32 @writel(i64 %222, i64 %225)
  %227 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %228 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %227, i32 0, i32 2
  %229 = load i32, i32* %228, align 8
  %230 = ashr i32 %229, 1
  %231 = sext i32 %230 to i64
  %232 = load i64, i64* %6, align 8
  %233 = add i64 %232, %231
  store i64 %233, i64* %6, align 8
  %234 = load i64, i64* %6, align 8
  %235 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %5, align 8
  %236 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %235, i32 0, i32 1
  %237 = load i64, i64* %236, align 8
  %238 = call i32 @writel(i64 %234, i64 %237)
  %239 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %240 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %239, i32 0, i32 2
  %241 = load i32, i32* %240, align 8
  %242 = ashr i32 %241, 1
  %243 = sext i32 %242 to i64
  %244 = load i64, i64* %6, align 8
  %245 = add i64 %244, %243
  store i64 %245, i64* %6, align 8
  %246 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %247 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %246, i32 0, i32 2
  %248 = load i32, i32* %247, align 8
  %249 = load i32, i32* %8, align 4
  %250 = sub nsw i32 %249, %248
  store i32 %250, i32* %8, align 4
  %251 = load i64, i64* %6, align 8
  %252 = load i32, i32* %8, align 4
  %253 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %254 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 8
  %256 = call i32 (i32, i8*, ...) @mfc_debug(i32 2, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i64 %251, i32 %252, i32 %255)
  %257 = load i32, i32* %8, align 4
  %258 = icmp slt i32 %257, 0
  br i1 %258, label %259, label %263

259:                                              ; preds = %197
  %260 = call i32 (i32, i8*, ...) @mfc_debug(i32 2, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %261 = load i32, i32* @ENOMEM, align 4
  %262 = sub nsw i32 0, %261
  store i32 %262, i32* %2, align 4
  br label %279

263:                                              ; preds = %197
  %264 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %265 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %264, i32 0, i32 3
  %266 = load i64, i64* %265, align 8
  %267 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %5, align 8
  %268 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %267, i32 0, i32 0
  %269 = load i64, i64* %268, align 8
  %270 = call i32 @writel(i64 %266, i64 %269)
  %271 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %4, align 8
  %272 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 8
  %274 = load i32, i32* @cmd_host2risc, align 4
  %275 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %4, align 8
  %276 = load i32, i32* @S5P_FIMV_CH_INIT_BUFS_V6, align 4
  %277 = call i32 @s5p_mfc_hw_call(i32 %273, i32 %274, %struct.s5p_mfc_dev* %275, i32 %276, i32* null)
  %278 = call i32 (...) @mfc_debug_leave()
  store i32 0, i32* %2, align 4
  br label %279

279:                                              ; preds = %263, %259
  %280 = load i32, i32* %2, align 4
  ret i32 %280
}

declare dso_local i32 @mfc_debug_enter(...) #1

declare dso_local i32 @mfc_debug(i32, i8*, ...) #1

declare dso_local i64 @IS_MFCV10(%struct.s5p_mfc_dev*) #1

declare dso_local i32 @writel(i64, i64) #1

declare dso_local i32 @s5p_mfc_hw_call(i32, i32, %struct.s5p_mfc_dev*, i32, i32*) #1

declare dso_local i32 @mfc_debug_leave(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
