; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss-vfe-4-7.c_vfe_set_scale_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss-vfe-4-7.c_vfe_set_scale_cfg.c"
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
  %31 = sub nsw i32 %30, 1
  store i32 %31, i32* %7, align 4
  %32 = load %struct.vfe_line*, %struct.vfe_line** %4, align 8
  %33 = getelementptr inbounds %struct.vfe_line, %struct.vfe_line* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = sub nsw i32 %35, 1
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = shl i32 %37, 16
  %39 = load i32, i32* %7, align 4
  %40 = or i32 %38, %39
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = load %struct.vfe_device*, %struct.vfe_device** %3, align 8
  %43 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @VFE_0_SCALE_ENC_Y_H_IMAGE_SIZE, align 8
  %46 = add nsw i64 %44, %45
  %47 = call i32 @writel_relaxed(i32 %41, i64 %46)
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @vfe_calc_interp_reso(i32 %48, i32 %49)
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* %9, align 4
  %53 = add nsw i32 14, %52
  %54 = shl i32 1, %53
  %55 = mul nsw i32 %51, %54
  %56 = load i32, i32* %8, align 4
  %57 = sdiv i32 %55, %56
  store i32 %57, i32* %10, align 4
  %58 = load i32, i32* %9, align 4
  %59 = shl i32 %58, 28
  %60 = load i32, i32* %10, align 4
  %61 = or i32 %59, %60
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* %6, align 4
  %63 = load %struct.vfe_device*, %struct.vfe_device** %3, align 8
  %64 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @VFE_0_SCALE_ENC_Y_H_PHASE, align 8
  %67 = add nsw i64 %65, %66
  %68 = call i32 @writel_relaxed(i32 %62, i64 %67)
  %69 = load %struct.vfe_line*, %struct.vfe_line** %4, align 8
  %70 = getelementptr inbounds %struct.vfe_line, %struct.vfe_line* %69, i32 0, i32 1
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %70, align 8
  %72 = load i64, i64* @MSM_VFE_PAD_SINK, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = sub nsw i32 %75, 1
  store i32 %76, i32* %7, align 4
  %77 = load %struct.vfe_line*, %struct.vfe_line** %4, align 8
  %78 = getelementptr inbounds %struct.vfe_line, %struct.vfe_line* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = sub nsw i32 %80, 1
  store i32 %81, i32* %8, align 4
  %82 = load i32, i32* %8, align 4
  %83 = shl i32 %82, 16
  %84 = load i32, i32* %7, align 4
  %85 = or i32 %83, %84
  store i32 %85, i32* %6, align 4
  %86 = load i32, i32* %6, align 4
  %87 = load %struct.vfe_device*, %struct.vfe_device** %3, align 8
  %88 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @VFE_0_SCALE_ENC_Y_V_IMAGE_SIZE, align 8
  %91 = add nsw i64 %89, %90
  %92 = call i32 @writel_relaxed(i32 %86, i64 %91)
  %93 = load i32, i32* %7, align 4
  %94 = load i32, i32* %8, align 4
  %95 = call i32 @vfe_calc_interp_reso(i32 %93, i32 %94)
  store i32 %95, i32* %9, align 4
  %96 = load i32, i32* %7, align 4
  %97 = load i32, i32* %9, align 4
  %98 = add nsw i32 14, %97
  %99 = shl i32 1, %98
  %100 = mul nsw i32 %96, %99
  %101 = load i32, i32* %8, align 4
  %102 = sdiv i32 %100, %101
  store i32 %102, i32* %10, align 4
  %103 = load i32, i32* %9, align 4
  %104 = shl i32 %103, 28
  %105 = load i32, i32* %10, align 4
  %106 = or i32 %104, %105
  store i32 %106, i32* %6, align 4
  %107 = load i32, i32* %6, align 4
  %108 = load %struct.vfe_device*, %struct.vfe_device** %3, align 8
  %109 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @VFE_0_SCALE_ENC_Y_V_PHASE, align 8
  %112 = add nsw i64 %110, %111
  %113 = call i32 @writel_relaxed(i32 %107, i64 %112)
  %114 = load %struct.vfe_device*, %struct.vfe_device** %3, align 8
  %115 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @VFE_0_SCALE_ENC_CBCR_CFG, align 8
  %118 = add nsw i64 %116, %117
  %119 = call i32 @writel_relaxed(i32 3, i64 %118)
  %120 = load %struct.vfe_line*, %struct.vfe_line** %4, align 8
  %121 = getelementptr inbounds %struct.vfe_line, %struct.vfe_line* %120, i32 0, i32 1
  %122 = load %struct.TYPE_11__*, %struct.TYPE_11__** %121, align 8
  %123 = load i64, i64* @MSM_VFE_PAD_SINK, align 8
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = sub nsw i32 %126, 1
  store i32 %127, i32* %7, align 4
  %128 = load %struct.vfe_line*, %struct.vfe_line** %4, align 8
  %129 = getelementptr inbounds %struct.vfe_line, %struct.vfe_line* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = sdiv i32 %131, 2
  %133 = sub nsw i32 %132, 1
  store i32 %133, i32* %8, align 4
  %134 = load i32, i32* %8, align 4
  %135 = shl i32 %134, 16
  %136 = load i32, i32* %7, align 4
  %137 = or i32 %135, %136
  store i32 %137, i32* %6, align 4
  %138 = load i32, i32* %6, align 4
  %139 = load %struct.vfe_device*, %struct.vfe_device** %3, align 8
  %140 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* @VFE_0_SCALE_ENC_CBCR_H_IMAGE_SIZE, align 8
  %143 = add nsw i64 %141, %142
  %144 = call i32 @writel_relaxed(i32 %138, i64 %143)
  %145 = load i32, i32* %7, align 4
  %146 = load i32, i32* %8, align 4
  %147 = call i32 @vfe_calc_interp_reso(i32 %145, i32 %146)
  store i32 %147, i32* %9, align 4
  %148 = load i32, i32* %7, align 4
  %149 = load i32, i32* %9, align 4
  %150 = add nsw i32 14, %149
  %151 = shl i32 1, %150
  %152 = mul nsw i32 %148, %151
  %153 = load i32, i32* %8, align 4
  %154 = sdiv i32 %152, %153
  store i32 %154, i32* %10, align 4
  %155 = load i32, i32* %9, align 4
  %156 = shl i32 %155, 28
  %157 = load i32, i32* %10, align 4
  %158 = or i32 %156, %157
  store i32 %158, i32* %6, align 4
  %159 = load i32, i32* %6, align 4
  %160 = load %struct.vfe_device*, %struct.vfe_device** %3, align 8
  %161 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = load i64, i64* @VFE_0_SCALE_ENC_CBCR_H_PHASE, align 8
  %164 = add nsw i64 %162, %163
  %165 = call i32 @writel_relaxed(i32 %159, i64 %164)
  %166 = load %struct.vfe_line*, %struct.vfe_line** %4, align 8
  %167 = getelementptr inbounds %struct.vfe_line, %struct.vfe_line* %166, i32 0, i32 1
  %168 = load %struct.TYPE_11__*, %struct.TYPE_11__** %167, align 8
  %169 = load i64, i64* @MSM_VFE_PAD_SINK, align 8
  %170 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %168, i64 %169
  %171 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = sub nsw i32 %172, 1
  store i32 %173, i32* %7, align 4
  %174 = load %struct.vfe_line*, %struct.vfe_line** %4, align 8
  %175 = getelementptr inbounds %struct.vfe_line, %struct.vfe_line* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = sub nsw i32 %177, 1
  store i32 %178, i32* %8, align 4
  %179 = load i32, i32* %5, align 4
  %180 = load i32, i32* @V4L2_PIX_FMT_NV12, align 4
  %181 = icmp eq i32 %179, %180
  br i1 %181, label %186, label %182

182:                                              ; preds = %2
  %183 = load i32, i32* %5, align 4
  %184 = load i32, i32* @V4L2_PIX_FMT_NV21, align 4
  %185 = icmp eq i32 %183, %184
  br i1 %185, label %186, label %193

186:                                              ; preds = %182, %2
  %187 = load %struct.vfe_line*, %struct.vfe_line** %4, align 8
  %188 = getelementptr inbounds %struct.vfe_line, %struct.vfe_line* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = sdiv i32 %190, 2
  %192 = sub nsw i32 %191, 1
  store i32 %192, i32* %8, align 4
  br label %193

193:                                              ; preds = %186, %182
  %194 = load i32, i32* %8, align 4
  %195 = shl i32 %194, 16
  %196 = load i32, i32* %7, align 4
  %197 = or i32 %195, %196
  store i32 %197, i32* %6, align 4
  %198 = load i32, i32* %6, align 4
  %199 = load %struct.vfe_device*, %struct.vfe_device** %3, align 8
  %200 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %199, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = load i64, i64* @VFE_0_SCALE_ENC_CBCR_V_IMAGE_SIZE, align 8
  %203 = add nsw i64 %201, %202
  %204 = call i32 @writel_relaxed(i32 %198, i64 %203)
  %205 = load i32, i32* %7, align 4
  %206 = load i32, i32* %8, align 4
  %207 = call i32 @vfe_calc_interp_reso(i32 %205, i32 %206)
  store i32 %207, i32* %9, align 4
  %208 = load i32, i32* %7, align 4
  %209 = load i32, i32* %9, align 4
  %210 = add nsw i32 14, %209
  %211 = shl i32 1, %210
  %212 = mul nsw i32 %208, %211
  %213 = load i32, i32* %8, align 4
  %214 = sdiv i32 %212, %213
  store i32 %214, i32* %10, align 4
  %215 = load i32, i32* %9, align 4
  %216 = shl i32 %215, 28
  %217 = load i32, i32* %10, align 4
  %218 = or i32 %216, %217
  store i32 %218, i32* %6, align 4
  %219 = load i32, i32* %6, align 4
  %220 = load %struct.vfe_device*, %struct.vfe_device** %3, align 8
  %221 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %220, i32 0, i32 0
  %222 = load i64, i64* %221, align 8
  %223 = load i64, i64* @VFE_0_SCALE_ENC_CBCR_V_PHASE, align 8
  %224 = add nsw i64 %222, %223
  %225 = call i32 @writel_relaxed(i32 %219, i64 %224)
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
