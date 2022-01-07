; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc_opr_v6.c_s5p_mfc_set_enc_params_hevc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc_opr_v6.c_s5p_mfc_set_enc_params_hevc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5p_mfc_ctx = type { i32, i32, %struct.s5p_mfc_enc_params, %struct.s5p_mfc_dev* }
%struct.s5p_mfc_enc_params = type { i32, i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.s5p_mfc_hevc_enc_params }
%struct.s5p_mfc_hevc_enc_params = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32, i32 }
%struct.s5p_mfc_dev = type { %struct.s5p_mfc_regs* }
%struct.s5p_mfc_regs = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@FRAME_DELTA_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s5p_mfc_ctx*)* @s5p_mfc_set_enc_params_hevc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5p_mfc_set_enc_params_hevc(%struct.s5p_mfc_ctx* %0) #0 {
  %2 = alloca %struct.s5p_mfc_ctx*, align 8
  %3 = alloca %struct.s5p_mfc_dev*, align 8
  %4 = alloca %struct.s5p_mfc_regs*, align 8
  %5 = alloca %struct.s5p_mfc_enc_params*, align 8
  %6 = alloca %struct.s5p_mfc_hevc_enc_params*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.s5p_mfc_ctx* %0, %struct.s5p_mfc_ctx** %2, align 8
  %9 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %10 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %9, i32 0, i32 3
  %11 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %10, align 8
  store %struct.s5p_mfc_dev* %11, %struct.s5p_mfc_dev** %3, align 8
  %12 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %13 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %12, i32 0, i32 0
  %14 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %13, align 8
  store %struct.s5p_mfc_regs* %14, %struct.s5p_mfc_regs** %4, align 8
  %15 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %16 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %15, i32 0, i32 2
  store %struct.s5p_mfc_enc_params* %16, %struct.s5p_mfc_enc_params** %5, align 8
  %17 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %18 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %17, i32 0, i32 3
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store %struct.s5p_mfc_hevc_enc_params* %19, %struct.s5p_mfc_hevc_enc_params** %6, align 8
  store i32 0, i32* %7, align 4
  %20 = call i32 (...) @mfc_debug_enter()
  %21 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %22 = call i32 @s5p_mfc_set_enc_params(%struct.s5p_mfc_ctx* %21)
  %23 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %4, align 8
  %24 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %23, i32 0, i32 12
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @readl(i64 %25)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = and i32 %27, -196609
  store i32 %28, i32* %7, align 4
  %29 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %30 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = shl i32 %31, 16
  %33 = load i32, i32* %7, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %4, align 8
  %37 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %36, i32 0, i32 12
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @writel(i32 %35, i64 %38)
  %40 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %41 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp eq i32 %42, 3840
  br i1 %43, label %44, label %54

44:                                               ; preds = %1
  %45 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %46 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = icmp eq i32 %47, 2160
  br i1 %48, label %49, label %54

49:                                               ; preds = %44
  %50 = load %struct.s5p_mfc_hevc_enc_params*, %struct.s5p_mfc_hevc_enc_params** %6, align 8
  %51 = getelementptr inbounds %struct.s5p_mfc_hevc_enc_params, %struct.s5p_mfc_hevc_enc_params* %50, i32 0, i32 0
  store i32 51, i32* %51, align 8
  %52 = load %struct.s5p_mfc_hevc_enc_params*, %struct.s5p_mfc_hevc_enc_params** %6, align 8
  %53 = getelementptr inbounds %struct.s5p_mfc_hevc_enc_params, %struct.s5p_mfc_hevc_enc_params* %52, i32 0, i32 1
  store i32 0, i32* %53, align 4
  br label %54

54:                                               ; preds = %49, %44, %1
  store i32 0, i32* %7, align 4
  %55 = load %struct.s5p_mfc_hevc_enc_params*, %struct.s5p_mfc_hevc_enc_params** %6, align 8
  %56 = getelementptr inbounds %struct.s5p_mfc_hevc_enc_params, %struct.s5p_mfc_hevc_enc_params* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = and i32 %57, 3
  %59 = load i32, i32* %7, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* %7, align 4
  %62 = and i32 %61, -65281
  store i32 %62, i32* %7, align 4
  %63 = load %struct.s5p_mfc_hevc_enc_params*, %struct.s5p_mfc_hevc_enc_params** %6, align 8
  %64 = getelementptr inbounds %struct.s5p_mfc_hevc_enc_params, %struct.s5p_mfc_hevc_enc_params* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = shl i32 %65, 8
  %67 = load i32, i32* %7, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %7, align 4
  %69 = load %struct.s5p_mfc_hevc_enc_params*, %struct.s5p_mfc_hevc_enc_params** %6, align 8
  %70 = getelementptr inbounds %struct.s5p_mfc_hevc_enc_params, %struct.s5p_mfc_hevc_enc_params* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = shl i32 %71, 16
  %73 = load i32, i32* %7, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %7, align 4
  %75 = load i32, i32* %7, align 4
  %76 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %4, align 8
  %77 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %76, i32 0, i32 11
  %78 = load i64, i64* %77, align 8
  %79 = call i32 @writel(i32 %75, i64 %78)
  %80 = load %struct.s5p_mfc_hevc_enc_params*, %struct.s5p_mfc_hevc_enc_params** %6, align 8
  %81 = getelementptr inbounds %struct.s5p_mfc_hevc_enc_params, %struct.s5p_mfc_hevc_enc_params* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  switch i32 %82, label %96 [
    i32 130, label %83
    i32 128, label %86
    i32 129, label %91
  ]

83:                                               ; preds = %54
  %84 = load %struct.s5p_mfc_hevc_enc_params*, %struct.s5p_mfc_hevc_enc_params** %6, align 8
  %85 = getelementptr inbounds %struct.s5p_mfc_hevc_enc_params, %struct.s5p_mfc_hevc_enc_params* %84, i32 0, i32 4
  store i32 1, i32* %85, align 8
  br label %96

86:                                               ; preds = %54
  %87 = load %struct.s5p_mfc_hevc_enc_params*, %struct.s5p_mfc_hevc_enc_params** %6, align 8
  %88 = getelementptr inbounds %struct.s5p_mfc_hevc_enc_params, %struct.s5p_mfc_hevc_enc_params* %87, i32 0, i32 4
  store i32 0, i32* %88, align 8
  %89 = load %struct.s5p_mfc_hevc_enc_params*, %struct.s5p_mfc_hevc_enc_params** %6, align 8
  %90 = getelementptr inbounds %struct.s5p_mfc_hevc_enc_params, %struct.s5p_mfc_hevc_enc_params* %89, i32 0, i32 5
  store i32 1, i32* %90, align 4
  br label %96

91:                                               ; preds = %54
  %92 = load %struct.s5p_mfc_hevc_enc_params*, %struct.s5p_mfc_hevc_enc_params** %6, align 8
  %93 = getelementptr inbounds %struct.s5p_mfc_hevc_enc_params, %struct.s5p_mfc_hevc_enc_params* %92, i32 0, i32 4
  store i32 0, i32* %93, align 8
  %94 = load %struct.s5p_mfc_hevc_enc_params*, %struct.s5p_mfc_hevc_enc_params** %6, align 8
  %95 = getelementptr inbounds %struct.s5p_mfc_hevc_enc_params, %struct.s5p_mfc_hevc_enc_params* %94, i32 0, i32 5
  store i32 0, i32* %95, align 4
  br label %96

96:                                               ; preds = %54, %91, %86, %83
  store i32 0, i32* %7, align 4
  %97 = load %struct.s5p_mfc_hevc_enc_params*, %struct.s5p_mfc_hevc_enc_params** %6, align 8
  %98 = getelementptr inbounds %struct.s5p_mfc_hevc_enc_params, %struct.s5p_mfc_hevc_enc_params* %97, i32 0, i32 6
  %99 = load i32, i32* %98, align 8
  %100 = and i32 %99, 1
  %101 = load i32, i32* %7, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* %7, align 4
  %103 = load %struct.s5p_mfc_hevc_enc_params*, %struct.s5p_mfc_hevc_enc_params** %6, align 8
  %104 = getelementptr inbounds %struct.s5p_mfc_hevc_enc_params, %struct.s5p_mfc_hevc_enc_params* %103, i32 0, i32 7
  %105 = load i32, i32* %104, align 4
  %106 = sub nsw i32 %105, 1
  %107 = shl i32 %106, 2
  %108 = load i32, i32* %7, align 4
  %109 = or i32 %108, %107
  store i32 %109, i32* %7, align 4
  %110 = load %struct.s5p_mfc_hevc_enc_params*, %struct.s5p_mfc_hevc_enc_params** %6, align 8
  %111 = getelementptr inbounds %struct.s5p_mfc_hevc_enc_params, %struct.s5p_mfc_hevc_enc_params* %110, i32 0, i32 8
  %112 = load i32, i32* %111, align 8
  %113 = and i32 %112, 3
  %114 = shl i32 %113, 3
  %115 = load i32, i32* %7, align 4
  %116 = or i32 %115, %114
  store i32 %116, i32* %7, align 4
  %117 = load %struct.s5p_mfc_hevc_enc_params*, %struct.s5p_mfc_hevc_enc_params** %6, align 8
  %118 = getelementptr inbounds %struct.s5p_mfc_hevc_enc_params, %struct.s5p_mfc_hevc_enc_params* %117, i32 0, i32 9
  %119 = load i32, i32* %118, align 4
  %120 = and i32 %119, 1
  %121 = shl i32 %120, 5
  %122 = load i32, i32* %7, align 4
  %123 = or i32 %122, %121
  store i32 %123, i32* %7, align 4
  %124 = load %struct.s5p_mfc_hevc_enc_params*, %struct.s5p_mfc_hevc_enc_params** %6, align 8
  %125 = getelementptr inbounds %struct.s5p_mfc_hevc_enc_params, %struct.s5p_mfc_hevc_enc_params* %124, i32 0, i32 10
  %126 = load i32, i32* %125, align 8
  %127 = and i32 %126, 1
  %128 = shl i32 %127, 6
  %129 = load i32, i32* %7, align 4
  %130 = or i32 %129, %128
  store i32 %130, i32* %7, align 4
  %131 = load %struct.s5p_mfc_hevc_enc_params*, %struct.s5p_mfc_hevc_enc_params** %6, align 8
  %132 = getelementptr inbounds %struct.s5p_mfc_hevc_enc_params, %struct.s5p_mfc_hevc_enc_params* %131, i32 0, i32 11
  %133 = load i32, i32* %132, align 4
  %134 = and i32 %133, 1
  %135 = shl i32 %134, 7
  %136 = load i32, i32* %7, align 4
  %137 = or i32 %136, %135
  store i32 %137, i32* %7, align 4
  %138 = load %struct.s5p_mfc_hevc_enc_params*, %struct.s5p_mfc_hevc_enc_params** %6, align 8
  %139 = getelementptr inbounds %struct.s5p_mfc_hevc_enc_params, %struct.s5p_mfc_hevc_enc_params* %138, i32 0, i32 4
  %140 = load i32, i32* %139, align 8
  %141 = and i32 %140, 1
  %142 = shl i32 %141, 8
  %143 = load i32, i32* %7, align 4
  %144 = or i32 %143, %142
  store i32 %144, i32* %7, align 4
  %145 = load %struct.s5p_mfc_hevc_enc_params*, %struct.s5p_mfc_hevc_enc_params** %6, align 8
  %146 = getelementptr inbounds %struct.s5p_mfc_hevc_enc_params, %struct.s5p_mfc_hevc_enc_params* %145, i32 0, i32 5
  %147 = load i32, i32* %146, align 4
  %148 = and i32 %147, 1
  %149 = shl i32 %148, 9
  %150 = load i32, i32* %7, align 4
  %151 = or i32 %150, %149
  store i32 %151, i32* %7, align 4
  %152 = load %struct.s5p_mfc_hevc_enc_params*, %struct.s5p_mfc_hevc_enc_params** %6, align 8
  %153 = getelementptr inbounds %struct.s5p_mfc_hevc_enc_params, %struct.s5p_mfc_hevc_enc_params* %152, i32 0, i32 12
  %154 = load i32, i32* %153, align 8
  %155 = and i32 %154, 1
  %156 = shl i32 %155, 10
  %157 = load i32, i32* %7, align 4
  %158 = or i32 %157, %156
  store i32 %158, i32* %7, align 4
  %159 = load %struct.s5p_mfc_hevc_enc_params*, %struct.s5p_mfc_hevc_enc_params** %6, align 8
  %160 = getelementptr inbounds %struct.s5p_mfc_hevc_enc_params, %struct.s5p_mfc_hevc_enc_params* %159, i32 0, i32 13
  %161 = load i32, i32* %160, align 4
  %162 = and i32 %161, 1
  %163 = shl i32 %162, 11
  %164 = load i32, i32* %7, align 4
  %165 = or i32 %164, %163
  store i32 %165, i32* %7, align 4
  %166 = load %struct.s5p_mfc_hevc_enc_params*, %struct.s5p_mfc_hevc_enc_params** %6, align 8
  %167 = getelementptr inbounds %struct.s5p_mfc_hevc_enc_params, %struct.s5p_mfc_hevc_enc_params* %166, i32 0, i32 14
  %168 = load i32, i32* %167, align 8
  %169 = and i32 %168, 1
  %170 = shl i32 %169, 13
  %171 = load i32, i32* %7, align 4
  %172 = or i32 %171, %170
  store i32 %172, i32* %7, align 4
  %173 = load %struct.s5p_mfc_hevc_enc_params*, %struct.s5p_mfc_hevc_enc_params** %6, align 8
  %174 = getelementptr inbounds %struct.s5p_mfc_hevc_enc_params, %struct.s5p_mfc_hevc_enc_params* %173, i32 0, i32 15
  %175 = load i32, i32* %174, align 4
  %176 = and i32 %175, 1
  %177 = shl i32 %176, 14
  %178 = load i32, i32* %7, align 4
  %179 = or i32 %178, %177
  store i32 %179, i32* %7, align 4
  %180 = load %struct.s5p_mfc_hevc_enc_params*, %struct.s5p_mfc_hevc_enc_params** %6, align 8
  %181 = getelementptr inbounds %struct.s5p_mfc_hevc_enc_params, %struct.s5p_mfc_hevc_enc_params* %180, i32 0, i32 16
  %182 = load i32, i32* %181, align 8
  %183 = and i32 %182, 1
  %184 = shl i32 %183, 15
  %185 = load i32, i32* %7, align 4
  %186 = or i32 %185, %184
  store i32 %186, i32* %7, align 4
  %187 = load %struct.s5p_mfc_hevc_enc_params*, %struct.s5p_mfc_hevc_enc_params** %6, align 8
  %188 = getelementptr inbounds %struct.s5p_mfc_hevc_enc_params, %struct.s5p_mfc_hevc_enc_params* %187, i32 0, i32 17
  %189 = load i32, i32* %188, align 4
  %190 = and i32 %189, 1
  %191 = shl i32 %190, 16
  %192 = load i32, i32* %7, align 4
  %193 = or i32 %192, %191
  store i32 %193, i32* %7, align 4
  %194 = load %struct.s5p_mfc_hevc_enc_params*, %struct.s5p_mfc_hevc_enc_params** %6, align 8
  %195 = getelementptr inbounds %struct.s5p_mfc_hevc_enc_params, %struct.s5p_mfc_hevc_enc_params* %194, i32 0, i32 18
  %196 = load i32, i32* %195, align 8
  %197 = and i32 %196, 1
  %198 = shl i32 %197, 17
  %199 = load i32, i32* %7, align 4
  %200 = or i32 %199, %198
  store i32 %200, i32* %7, align 4
  %201 = load %struct.s5p_mfc_hevc_enc_params*, %struct.s5p_mfc_hevc_enc_params** %6, align 8
  %202 = getelementptr inbounds %struct.s5p_mfc_hevc_enc_params, %struct.s5p_mfc_hevc_enc_params* %201, i32 0, i32 19
  %203 = load i32, i32* %202, align 4
  %204 = and i32 %203, 7
  %205 = shl i32 %204, 18
  %206 = load i32, i32* %7, align 4
  %207 = or i32 %206, %205
  store i32 %207, i32* %7, align 4
  %208 = load %struct.s5p_mfc_hevc_enc_params*, %struct.s5p_mfc_hevc_enc_params** %6, align 8
  %209 = getelementptr inbounds %struct.s5p_mfc_hevc_enc_params, %struct.s5p_mfc_hevc_enc_params* %208, i32 0, i32 20
  %210 = load i32, i32* %209, align 8
  %211 = and i32 %210, 1
  %212 = shl i32 %211, 23
  %213 = load i32, i32* %7, align 4
  %214 = or i32 %213, %212
  store i32 %214, i32* %7, align 4
  %215 = load %struct.s5p_mfc_hevc_enc_params*, %struct.s5p_mfc_hevc_enc_params** %6, align 8
  %216 = getelementptr inbounds %struct.s5p_mfc_hevc_enc_params, %struct.s5p_mfc_hevc_enc_params* %215, i32 0, i32 21
  %217 = load i32, i32* %216, align 4
  %218 = shl i32 %217, 26
  %219 = load i32, i32* %7, align 4
  %220 = or i32 %219, %218
  store i32 %220, i32* %7, align 4
  %221 = load i32, i32* %7, align 4
  %222 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %4, align 8
  %223 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %222, i32 0, i32 10
  %224 = load i64, i64* %223, align 8
  %225 = call i32 @writel(i32 %221, i64 %224)
  %226 = load %struct.s5p_mfc_hevc_enc_params*, %struct.s5p_mfc_hevc_enc_params** %6, align 8
  %227 = getelementptr inbounds %struct.s5p_mfc_hevc_enc_params, %struct.s5p_mfc_hevc_enc_params* %226, i32 0, i32 8
  %228 = load i32, i32* %227, align 8
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %242

230:                                              ; preds = %96
  store i32 0, i32* %7, align 4
  %231 = load %struct.s5p_mfc_hevc_enc_params*, %struct.s5p_mfc_hevc_enc_params** %6, align 8
  %232 = getelementptr inbounds %struct.s5p_mfc_hevc_enc_params, %struct.s5p_mfc_hevc_enc_params* %231, i32 0, i32 22
  %233 = load i32, i32* %232, align 8
  %234 = and i32 %233, 65535
  %235 = load i32, i32* %7, align 4
  %236 = or i32 %235, %234
  store i32 %236, i32* %7, align 4
  %237 = load i32, i32* %7, align 4
  %238 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %4, align 8
  %239 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %238, i32 0, i32 9
  %240 = load i64, i64* %239, align 8
  %241 = call i32 @writel(i32 %237, i64 %240)
  br label %242

242:                                              ; preds = %230, %96
  %243 = load %struct.s5p_mfc_hevc_enc_params*, %struct.s5p_mfc_hevc_enc_params** %6, align 8
  %244 = getelementptr inbounds %struct.s5p_mfc_hevc_enc_params, %struct.s5p_mfc_hevc_enc_params* %243, i32 0, i32 4
  %245 = load i32, i32* %244, align 8
  %246 = and i32 %245, 1
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %269, label %248

248:                                              ; preds = %242
  store i32 0, i32* %7, align 4
  %249 = load %struct.s5p_mfc_hevc_enc_params*, %struct.s5p_mfc_hevc_enc_params** %6, align 8
  %250 = getelementptr inbounds %struct.s5p_mfc_hevc_enc_params, %struct.s5p_mfc_hevc_enc_params* %249, i32 0, i32 23
  %251 = load i32, i32* %250, align 4
  %252 = load i32, i32* %7, align 4
  %253 = or i32 %252, %251
  store i32 %253, i32* %7, align 4
  %254 = load i32, i32* %7, align 4
  %255 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %4, align 8
  %256 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %255, i32 0, i32 8
  %257 = load i64, i64* %256, align 8
  %258 = call i32 @writel(i32 %254, i64 %257)
  store i32 0, i32* %7, align 4
  %259 = load %struct.s5p_mfc_hevc_enc_params*, %struct.s5p_mfc_hevc_enc_params** %6, align 8
  %260 = getelementptr inbounds %struct.s5p_mfc_hevc_enc_params, %struct.s5p_mfc_hevc_enc_params* %259, i32 0, i32 24
  %261 = load i32, i32* %260, align 8
  %262 = load i32, i32* %7, align 4
  %263 = or i32 %262, %261
  store i32 %263, i32* %7, align 4
  %264 = load i32, i32* %7, align 4
  %265 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %4, align 8
  %266 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %265, i32 0, i32 7
  %267 = load i64, i64* %266, align 8
  %268 = call i32 @writel(i32 %264, i64 %267)
  br label %269

269:                                              ; preds = %248, %242
  %270 = load %struct.s5p_mfc_hevc_enc_params*, %struct.s5p_mfc_hevc_enc_params** %6, align 8
  %271 = getelementptr inbounds %struct.s5p_mfc_hevc_enc_params, %struct.s5p_mfc_hevc_enc_params* %270, i32 0, i32 25
  %272 = load i32, i32* %271, align 4
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %351

274:                                              ; preds = %269
  store i32 0, i32* %7, align 4
  %275 = load %struct.s5p_mfc_hevc_enc_params*, %struct.s5p_mfc_hevc_enc_params** %6, align 8
  %276 = getelementptr inbounds %struct.s5p_mfc_hevc_enc_params, %struct.s5p_mfc_hevc_enc_params* %275, i32 0, i32 26
  %277 = load i32, i32* %276, align 8
  %278 = and i32 %277, 1
  %279 = shl i32 %278, 3
  %280 = load i32, i32* %7, align 4
  %281 = or i32 %280, %279
  store i32 %281, i32* %7, align 4
  %282 = load %struct.s5p_mfc_hevc_enc_params*, %struct.s5p_mfc_hevc_enc_params** %6, align 8
  %283 = getelementptr inbounds %struct.s5p_mfc_hevc_enc_params, %struct.s5p_mfc_hevc_enc_params* %282, i32 0, i32 25
  %284 = load i32, i32* %283, align 4
  %285 = and i32 %284, 7
  %286 = load i32, i32* %7, align 4
  %287 = or i32 %286, %285
  store i32 %287, i32* %7, align 4
  %288 = load i32, i32* %7, align 4
  %289 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %4, align 8
  %290 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %289, i32 0, i32 6
  %291 = load i64, i64* %290, align 8
  %292 = call i32 @writel(i32 %288, i64 %291)
  %293 = load %struct.s5p_mfc_hevc_enc_params*, %struct.s5p_mfc_hevc_enc_params** %6, align 8
  %294 = getelementptr inbounds %struct.s5p_mfc_hevc_enc_params, %struct.s5p_mfc_hevc_enc_params* %293, i32 0, i32 13
  %295 = load i32, i32* %294, align 4
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %297, label %321

297:                                              ; preds = %274
  store i32 0, i32* %8, align 4
  br label %298

298:                                              ; preds = %317, %297
  %299 = load i32, i32* %8, align 4
  %300 = icmp slt i32 %299, 7
  br i1 %300, label %301, label %320

301:                                              ; preds = %298
  %302 = load %struct.s5p_mfc_hevc_enc_params*, %struct.s5p_mfc_hevc_enc_params** %6, align 8
  %303 = getelementptr inbounds %struct.s5p_mfc_hevc_enc_params, %struct.s5p_mfc_hevc_enc_params* %302, i32 0, i32 27
  %304 = load i32*, i32** %303, align 8
  %305 = load i32, i32* %8, align 4
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds i32, i32* %304, i64 %306
  %308 = load i32, i32* %307, align 4
  %309 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %4, align 8
  %310 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %309, i32 0, i32 5
  %311 = load i64, i64* %310, align 8
  %312 = load i32, i32* %8, align 4
  %313 = mul nsw i32 %312, 4
  %314 = sext i32 %313 to i64
  %315 = add nsw i64 %311, %314
  %316 = call i32 @writel(i32 %308, i64 %315)
  br label %317

317:                                              ; preds = %301
  %318 = load i32, i32* %8, align 4
  %319 = add nsw i32 %318, 1
  store i32 %319, i32* %8, align 4
  br label %298

320:                                              ; preds = %298
  br label %321

321:                                              ; preds = %320, %274
  %322 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %323 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %322, i32 0, i32 2
  %324 = load i64, i64* %323, align 8
  %325 = icmp ne i64 %324, 0
  br i1 %325, label %326, label %350

326:                                              ; preds = %321
  store i32 0, i32* %8, align 4
  br label %327

327:                                              ; preds = %346, %326
  %328 = load i32, i32* %8, align 4
  %329 = icmp slt i32 %328, 7
  br i1 %329, label %330, label %349

330:                                              ; preds = %327
  %331 = load %struct.s5p_mfc_hevc_enc_params*, %struct.s5p_mfc_hevc_enc_params** %6, align 8
  %332 = getelementptr inbounds %struct.s5p_mfc_hevc_enc_params, %struct.s5p_mfc_hevc_enc_params* %331, i32 0, i32 28
  %333 = load i32*, i32** %332, align 8
  %334 = load i32, i32* %8, align 4
  %335 = sext i32 %334 to i64
  %336 = getelementptr inbounds i32, i32* %333, i64 %335
  %337 = load i32, i32* %336, align 4
  %338 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %4, align 8
  %339 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %338, i32 0, i32 4
  %340 = load i64, i64* %339, align 8
  %341 = load i32, i32* %8, align 4
  %342 = mul nsw i32 %341, 4
  %343 = sext i32 %342 to i64
  %344 = add nsw i64 %340, %343
  %345 = call i32 @writel(i32 %337, i64 %344)
  br label %346

346:                                              ; preds = %330
  %347 = load i32, i32* %8, align 4
  %348 = add nsw i32 %347, 1
  store i32 %348, i32* %8, align 4
  br label %327

349:                                              ; preds = %327
  br label %350

350:                                              ; preds = %349, %321
  br label %351

351:                                              ; preds = %350, %269
  %352 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %4, align 8
  %353 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %352, i32 0, i32 3
  %354 = load i64, i64* %353, align 8
  %355 = call i32 @readl(i64 %354)
  store i32 %355, i32* %7, align 4
  %356 = load i32, i32* %7, align 4
  %357 = and i32 %356, -257
  store i32 %357, i32* %7, align 4
  %358 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %359 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %358, i32 0, i32 1
  %360 = load i32, i32* %359, align 4
  %361 = shl i32 %360, 8
  %362 = load i32, i32* %7, align 4
  %363 = or i32 %362, %361
  store i32 %363, i32* %7, align 4
  %364 = load i32, i32* %7, align 4
  %365 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %4, align 8
  %366 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %365, i32 0, i32 3
  %367 = load i64, i64* %366, align 8
  %368 = call i32 @writel(i32 %364, i64 %367)
  %369 = load i32, i32* %7, align 4
  %370 = and i32 %369, -256
  store i32 %370, i32* %7, align 4
  %371 = load %struct.s5p_mfc_hevc_enc_params*, %struct.s5p_mfc_hevc_enc_params** %6, align 8
  %372 = getelementptr inbounds %struct.s5p_mfc_hevc_enc_params, %struct.s5p_mfc_hevc_enc_params* %371, i32 0, i32 29
  %373 = load i32, i32* %372, align 8
  %374 = load i32, i32* %7, align 4
  %375 = or i32 %374, %373
  store i32 %375, i32* %7, align 4
  %376 = load i32, i32* %7, align 4
  %377 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %4, align 8
  %378 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %377, i32 0, i32 3
  %379 = load i64, i64* %378, align 8
  %380 = call i32 @writel(i32 %376, i64 %379)
  %381 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %382 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %381, i32 0, i32 2
  %383 = load i64, i64* %382, align 8
  %384 = icmp ne i64 %383, 0
  br i1 %384, label %385, label %404

385:                                              ; preds = %351
  store i32 0, i32* %7, align 4
  %386 = load i32, i32* %7, align 4
  %387 = and i32 %386, 65535
  store i32 %387, i32* %7, align 4
  %388 = load %struct.s5p_mfc_hevc_enc_params*, %struct.s5p_mfc_hevc_enc_params** %6, align 8
  %389 = getelementptr inbounds %struct.s5p_mfc_hevc_enc_params, %struct.s5p_mfc_hevc_enc_params* %388, i32 0, i32 30
  %390 = load i32, i32* %389, align 4
  %391 = shl i32 %390, 16
  %392 = load i32, i32* %7, align 4
  %393 = or i32 %392, %391
  store i32 %393, i32* %7, align 4
  %394 = load i32, i32* %7, align 4
  %395 = and i32 %394, -65536
  store i32 %395, i32* %7, align 4
  %396 = load i32, i32* @FRAME_DELTA_DEFAULT, align 4
  %397 = load i32, i32* %7, align 4
  %398 = or i32 %397, %396
  store i32 %398, i32* %7, align 4
  %399 = load i32, i32* %7, align 4
  %400 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %4, align 8
  %401 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %400, i32 0, i32 2
  %402 = load i64, i64* %401, align 8
  %403 = call i32 @writel(i32 %399, i64 %402)
  br label %404

404:                                              ; preds = %385, %351
  store i32 0, i32* %7, align 4
  %405 = load i32, i32* %7, align 4
  %406 = and i32 %405, -65281
  store i32 %406, i32* %7, align 4
  %407 = load %struct.s5p_mfc_hevc_enc_params*, %struct.s5p_mfc_hevc_enc_params** %6, align 8
  %408 = getelementptr inbounds %struct.s5p_mfc_hevc_enc_params, %struct.s5p_mfc_hevc_enc_params* %407, i32 0, i32 31
  %409 = load i32, i32* %408, align 8
  %410 = shl i32 %409, 8
  %411 = load i32, i32* %7, align 4
  %412 = or i32 %411, %410
  store i32 %412, i32* %7, align 4
  %413 = load i32, i32* %7, align 4
  %414 = and i32 %413, -256
  store i32 %414, i32* %7, align 4
  %415 = load %struct.s5p_mfc_hevc_enc_params*, %struct.s5p_mfc_hevc_enc_params** %6, align 8
  %416 = getelementptr inbounds %struct.s5p_mfc_hevc_enc_params, %struct.s5p_mfc_hevc_enc_params* %415, i32 0, i32 32
  %417 = load i32, i32* %416, align 4
  %418 = load i32, i32* %7, align 4
  %419 = or i32 %418, %417
  store i32 %419, i32* %7, align 4
  %420 = load i32, i32* %7, align 4
  %421 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %4, align 8
  %422 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %421, i32 0, i32 1
  %423 = load i64, i64* %422, align 8
  %424 = call i32 @writel(i32 %420, i64 %423)
  %425 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %4, align 8
  %426 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %425, i32 0, i32 0
  %427 = load i64, i64* %426, align 8
  %428 = call i32 @writel(i32 0, i64 %427)
  %429 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %430 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %429, i32 0, i32 2
  %431 = load i64, i64* %430, align 8
  %432 = icmp ne i64 %431, 0
  br i1 %432, label %467, label %433

433:                                              ; preds = %404
  %434 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %435 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %434, i32 0, i32 1
  %436 = load i32, i32* %435, align 4
  %437 = icmp ne i32 %436, 0
  br i1 %437, label %467, label %438

438:                                              ; preds = %433
  store i32 0, i32* %7, align 4
  %439 = load i32, i32* %7, align 4
  %440 = and i32 %439, -16711681
  store i32 %440, i32* %7, align 4
  %441 = load %struct.s5p_mfc_hevc_enc_params*, %struct.s5p_mfc_hevc_enc_params** %6, align 8
  %442 = getelementptr inbounds %struct.s5p_mfc_hevc_enc_params, %struct.s5p_mfc_hevc_enc_params* %441, i32 0, i32 33
  %443 = load i32, i32* %442, align 8
  %444 = shl i32 %443, 16
  %445 = load i32, i32* %7, align 4
  %446 = or i32 %445, %444
  store i32 %446, i32* %7, align 4
  %447 = load i32, i32* %7, align 4
  %448 = and i32 %447, -65281
  store i32 %448, i32* %7, align 4
  %449 = load %struct.s5p_mfc_hevc_enc_params*, %struct.s5p_mfc_hevc_enc_params** %6, align 8
  %450 = getelementptr inbounds %struct.s5p_mfc_hevc_enc_params, %struct.s5p_mfc_hevc_enc_params* %449, i32 0, i32 34
  %451 = load i32, i32* %450, align 4
  %452 = shl i32 %451, 8
  %453 = load i32, i32* %7, align 4
  %454 = or i32 %453, %452
  store i32 %454, i32* %7, align 4
  %455 = load i32, i32* %7, align 4
  %456 = and i32 %455, -256
  store i32 %456, i32* %7, align 4
  %457 = load %struct.s5p_mfc_hevc_enc_params*, %struct.s5p_mfc_hevc_enc_params** %6, align 8
  %458 = getelementptr inbounds %struct.s5p_mfc_hevc_enc_params, %struct.s5p_mfc_hevc_enc_params* %457, i32 0, i32 29
  %459 = load i32, i32* %458, align 8
  %460 = load i32, i32* %7, align 4
  %461 = or i32 %460, %459
  store i32 %461, i32* %7, align 4
  %462 = load i32, i32* %7, align 4
  %463 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %4, align 8
  %464 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %463, i32 0, i32 0
  %465 = load i64, i64* %464, align 8
  %466 = call i32 @writel(i32 %462, i64 %465)
  br label %467

467:                                              ; preds = %438, %433, %404
  %468 = call i32 (...) @mfc_debug_leave()
  ret i32 0
}

declare dso_local i32 @mfc_debug_enter(...) #1

declare dso_local i32 @s5p_mfc_set_enc_params(%struct.s5p_mfc_ctx*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @mfc_debug_leave(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
