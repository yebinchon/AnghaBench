; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss-vfe-4-1.c_vfe_set_scale_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss-vfe-4-1.c_vfe_set_scale_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfe_device = type { i64 }
%struct.vfe_line = type { %struct.TYPE_12__, %struct.TYPE_11__*, %struct.TYPE_10__ }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@VFE_0_SCALE_ENC_Y_CFG = common dso_local global i64 0, align 8
@MSM_VFE_PAD_SINK = common dso_local global i64 0, align 8
@VFE_0_SCALE_ENC_Y_H_IMAGE_SIZE = common dso_local global i64 0, align 8
@VFE_0_SCALE_ENC_Y_H_PHASE = common dso_local global i64 0, align 8
@VFE_0_SCALE_ENC_Y_V_IMAGE_SIZE = common dso_local global i64 0, align 8
@VFE_0_SCALE_ENC_Y_V_PHASE = common dso_local global i64 0, align 8
@VFE_0_SCALE_ENC_CBCR_CFG = common dso_local global i64 0, align 8
@VFE_0_SCALE_ENC_CBCR_H_IMAGE_SIZE = common dso_local global i64 0, align 8
@VFE_0_SCALE_ENC_CBCR_H_PHASE = common dso_local global i64 0, align 8
@V4L2_PIX_FMT_NV12 = common dso_local global i32 0, align 4
@V4L2_PIX_FMT_NV21 = common dso_local global i32 0, align 4
@VFE_0_SCALE_ENC_CBCR_V_IMAGE_SIZE = common dso_local global i64 0, align 8
@VFE_0_SCALE_ENC_CBCR_V_PHASE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vfe_device*, %struct.vfe_line*)* @vfe_set_scale_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vfe_set_scale_cfg(%struct.vfe_device* %0, %struct.vfe_line* %1) #0 {
  %3 = alloca %struct.vfe_device*, align 8
  %4 = alloca %struct.vfe_line*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.vfe_device* %0, %struct.vfe_device** %3, align 8
  store %struct.vfe_line* %1, %struct.vfe_line** %4, align 8
  %11 = load %struct.vfe_line*, %struct.vfe_line** %4, align 8
  %12 = getelementptr inbounds %struct.vfe_line, %struct.vfe_line* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %5, align 4
  %18 = load %struct.vfe_device*, %struct.vfe_device** %3, align 8
  %19 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @VFE_0_SCALE_ENC_Y_CFG, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @writel_relaxed(i32 3, i64 %22)
  %24 = load %struct.vfe_line*, %struct.vfe_line** %4, align 8
  %25 = getelementptr inbounds %struct.vfe_line, %struct.vfe_line* %24, i32 0, i32 1
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %25, align 8
  %27 = load i64, i64* @MSM_VFE_PAD_SINK, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %7, align 4
  %31 = load %struct.vfe_line*, %struct.vfe_line** %4, align 8
  %32 = getelementptr inbounds %struct.vfe_line, %struct.vfe_line* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = shl i32 %35, 16
  %37 = load i32, i32* %7, align 4
  %38 = or i32 %36, %37
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = load %struct.vfe_device*, %struct.vfe_device** %3, align 8
  %41 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @VFE_0_SCALE_ENC_Y_H_IMAGE_SIZE, align 8
  %44 = add nsw i64 %42, %43
  %45 = call i32 @writel_relaxed(i32 %39, i64 %44)
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @vfe_calc_interp_reso(i32 %46, i32 %47)
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* %9, align 4
  %51 = add nsw i32 13, %50
  %52 = shl i32 1, %51
  %53 = mul nsw i32 %49, %52
  %54 = load i32, i32* %8, align 4
  %55 = sdiv i32 %53, %54
  store i32 %55, i32* %10, align 4
  %56 = load i32, i32* %9, align 4
  %57 = shl i32 %56, 20
  %58 = load i32, i32* %10, align 4
  %59 = or i32 %57, %58
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* %6, align 4
  %61 = load %struct.vfe_device*, %struct.vfe_device** %3, align 8
  %62 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @VFE_0_SCALE_ENC_Y_H_PHASE, align 8
  %65 = add nsw i64 %63, %64
  %66 = call i32 @writel_relaxed(i32 %60, i64 %65)
  %67 = load %struct.vfe_line*, %struct.vfe_line** %4, align 8
  %68 = getelementptr inbounds %struct.vfe_line, %struct.vfe_line* %67, i32 0, i32 1
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %68, align 8
  %70 = load i64, i64* @MSM_VFE_PAD_SINK, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  store i32 %73, i32* %7, align 4
  %74 = load %struct.vfe_line*, %struct.vfe_line** %4, align 8
  %75 = getelementptr inbounds %struct.vfe_line, %struct.vfe_line* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  store i32 %77, i32* %8, align 4
  %78 = load i32, i32* %8, align 4
  %79 = shl i32 %78, 16
  %80 = load i32, i32* %7, align 4
  %81 = or i32 %79, %80
  store i32 %81, i32* %6, align 4
  %82 = load i32, i32* %6, align 4
  %83 = load %struct.vfe_device*, %struct.vfe_device** %3, align 8
  %84 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @VFE_0_SCALE_ENC_Y_V_IMAGE_SIZE, align 8
  %87 = add nsw i64 %85, %86
  %88 = call i32 @writel_relaxed(i32 %82, i64 %87)
  %89 = load i32, i32* %7, align 4
  %90 = load i32, i32* %8, align 4
  %91 = call i32 @vfe_calc_interp_reso(i32 %89, i32 %90)
  store i32 %91, i32* %9, align 4
  %92 = load i32, i32* %7, align 4
  %93 = load i32, i32* %9, align 4
  %94 = add nsw i32 13, %93
  %95 = shl i32 1, %94
  %96 = mul nsw i32 %92, %95
  %97 = load i32, i32* %8, align 4
  %98 = sdiv i32 %96, %97
  store i32 %98, i32* %10, align 4
  %99 = load i32, i32* %9, align 4
  %100 = shl i32 %99, 20
  %101 = load i32, i32* %10, align 4
  %102 = or i32 %100, %101
  store i32 %102, i32* %6, align 4
  %103 = load i32, i32* %6, align 4
  %104 = load %struct.vfe_device*, %struct.vfe_device** %3, align 8
  %105 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @VFE_0_SCALE_ENC_Y_V_PHASE, align 8
  %108 = add nsw i64 %106, %107
  %109 = call i32 @writel_relaxed(i32 %103, i64 %108)
  %110 = load %struct.vfe_device*, %struct.vfe_device** %3, align 8
  %111 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @VFE_0_SCALE_ENC_CBCR_CFG, align 8
  %114 = add nsw i64 %112, %113
  %115 = call i32 @writel_relaxed(i32 3, i64 %114)
  %116 = load %struct.vfe_line*, %struct.vfe_line** %4, align 8
  %117 = getelementptr inbounds %struct.vfe_line, %struct.vfe_line* %116, i32 0, i32 1
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %117, align 8
  %119 = load i64, i64* @MSM_VFE_PAD_SINK, align 8
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  store i32 %122, i32* %7, align 4
  %123 = load %struct.vfe_line*, %struct.vfe_line** %4, align 8
  %124 = getelementptr inbounds %struct.vfe_line, %struct.vfe_line* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = sdiv i32 %126, 2
  store i32 %127, i32* %8, align 4
  %128 = load i32, i32* %8, align 4
  %129 = shl i32 %128, 16
  %130 = load i32, i32* %7, align 4
  %131 = or i32 %129, %130
  store i32 %131, i32* %6, align 4
  %132 = load i32, i32* %6, align 4
  %133 = load %struct.vfe_device*, %struct.vfe_device** %3, align 8
  %134 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @VFE_0_SCALE_ENC_CBCR_H_IMAGE_SIZE, align 8
  %137 = add nsw i64 %135, %136
  %138 = call i32 @writel_relaxed(i32 %132, i64 %137)
  %139 = load i32, i32* %7, align 4
  %140 = load i32, i32* %8, align 4
  %141 = call i32 @vfe_calc_interp_reso(i32 %139, i32 %140)
  store i32 %141, i32* %9, align 4
  %142 = load i32, i32* %7, align 4
  %143 = load i32, i32* %9, align 4
  %144 = add nsw i32 13, %143
  %145 = shl i32 1, %144
  %146 = mul nsw i32 %142, %145
  %147 = load i32, i32* %8, align 4
  %148 = sdiv i32 %146, %147
  store i32 %148, i32* %10, align 4
  %149 = load i32, i32* %9, align 4
  %150 = shl i32 %149, 20
  %151 = load i32, i32* %10, align 4
  %152 = or i32 %150, %151
  store i32 %152, i32* %6, align 4
  %153 = load i32, i32* %6, align 4
  %154 = load %struct.vfe_device*, %struct.vfe_device** %3, align 8
  %155 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = load i64, i64* @VFE_0_SCALE_ENC_CBCR_H_PHASE, align 8
  %158 = add nsw i64 %156, %157
  %159 = call i32 @writel_relaxed(i32 %153, i64 %158)
  %160 = load %struct.vfe_line*, %struct.vfe_line** %4, align 8
  %161 = getelementptr inbounds %struct.vfe_line, %struct.vfe_line* %160, i32 0, i32 1
  %162 = load %struct.TYPE_11__*, %struct.TYPE_11__** %161, align 8
  %163 = load i64, i64* @MSM_VFE_PAD_SINK, align 8
  %164 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %162, i64 %163
  %165 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  store i32 %166, i32* %7, align 4
  %167 = load %struct.vfe_line*, %struct.vfe_line** %4, align 8
  %168 = getelementptr inbounds %struct.vfe_line, %struct.vfe_line* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  store i32 %170, i32* %8, align 4
  %171 = load i32, i32* %5, align 4
  %172 = load i32, i32* @V4L2_PIX_FMT_NV12, align 4
  %173 = icmp eq i32 %171, %172
  br i1 %173, label %178, label %174

174:                                              ; preds = %2
  %175 = load i32, i32* %5, align 4
  %176 = load i32, i32* @V4L2_PIX_FMT_NV21, align 4
  %177 = icmp eq i32 %175, %176
  br i1 %177, label %178, label %184

178:                                              ; preds = %174, %2
  %179 = load %struct.vfe_line*, %struct.vfe_line** %4, align 8
  %180 = getelementptr inbounds %struct.vfe_line, %struct.vfe_line* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = sdiv i32 %182, 2
  store i32 %183, i32* %8, align 4
  br label %184

184:                                              ; preds = %178, %174
  %185 = load i32, i32* %8, align 4
  %186 = shl i32 %185, 16
  %187 = load i32, i32* %7, align 4
  %188 = or i32 %186, %187
  store i32 %188, i32* %6, align 4
  %189 = load i32, i32* %6, align 4
  %190 = load %struct.vfe_device*, %struct.vfe_device** %3, align 8
  %191 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %190, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  %193 = load i64, i64* @VFE_0_SCALE_ENC_CBCR_V_IMAGE_SIZE, align 8
  %194 = add nsw i64 %192, %193
  %195 = call i32 @writel_relaxed(i32 %189, i64 %194)
  %196 = load i32, i32* %7, align 4
  %197 = load i32, i32* %8, align 4
  %198 = call i32 @vfe_calc_interp_reso(i32 %196, i32 %197)
  store i32 %198, i32* %9, align 4
  %199 = load i32, i32* %7, align 4
  %200 = load i32, i32* %9, align 4
  %201 = add nsw i32 13, %200
  %202 = shl i32 1, %201
  %203 = mul nsw i32 %199, %202
  %204 = load i32, i32* %8, align 4
  %205 = sdiv i32 %203, %204
  store i32 %205, i32* %10, align 4
  %206 = load i32, i32* %9, align 4
  %207 = shl i32 %206, 20
  %208 = load i32, i32* %10, align 4
  %209 = or i32 %207, %208
  store i32 %209, i32* %6, align 4
  %210 = load i32, i32* %6, align 4
  %211 = load %struct.vfe_device*, %struct.vfe_device** %3, align 8
  %212 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %211, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  %214 = load i64, i64* @VFE_0_SCALE_ENC_CBCR_V_PHASE, align 8
  %215 = add nsw i64 %213, %214
  %216 = call i32 @writel_relaxed(i32 %210, i64 %215)
  ret void
}

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @vfe_calc_interp_reso(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
