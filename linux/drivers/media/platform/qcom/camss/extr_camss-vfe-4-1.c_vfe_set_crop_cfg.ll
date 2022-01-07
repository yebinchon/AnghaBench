; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss-vfe-4-1.c_vfe_set_crop_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss-vfe-4-1.c_vfe_set_crop_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfe_device = type { i64 }
%struct.vfe_line = type { %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i32, i32, i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }

@VFE_0_CROP_ENC_Y_WIDTH = common dso_local global i64 0, align 8
@VFE_0_CROP_ENC_Y_HEIGHT = common dso_local global i64 0, align 8
@VFE_0_CROP_ENC_CBCR_WIDTH = common dso_local global i64 0, align 8
@V4L2_PIX_FMT_NV12 = common dso_local global i64 0, align 8
@V4L2_PIX_FMT_NV21 = common dso_local global i64 0, align 8
@VFE_0_CROP_ENC_CBCR_HEIGHT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vfe_device*, %struct.vfe_line*)* @vfe_set_crop_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vfe_set_crop_cfg(%struct.vfe_device* %0, %struct.vfe_line* %1) #0 {
  %3 = alloca %struct.vfe_device*, align 8
  %4 = alloca %struct.vfe_line*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.vfe_device* %0, %struct.vfe_device** %3, align 8
  store %struct.vfe_line* %1, %struct.vfe_line** %4, align 8
  %9 = load %struct.vfe_line*, %struct.vfe_line** %4, align 8
  %10 = getelementptr inbounds %struct.vfe_line, %struct.vfe_line* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %5, align 8
  %16 = load %struct.vfe_line*, %struct.vfe_line** %4, align 8
  %17 = getelementptr inbounds %struct.vfe_line, %struct.vfe_line* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %7, align 4
  %20 = load %struct.vfe_line*, %struct.vfe_line** %4, align 8
  %21 = getelementptr inbounds %struct.vfe_line, %struct.vfe_line* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.vfe_line*, %struct.vfe_line** %4, align 8
  %25 = getelementptr inbounds %struct.vfe_line, %struct.vfe_line* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %23, %27
  %29 = sub nsw i32 %28, 1
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %7, align 4
  %31 = shl i32 %30, 16
  %32 = load i32, i32* %8, align 4
  %33 = or i32 %31, %32
  %34 = sext i32 %33 to i64
  store i64 %34, i64* %6, align 8
  %35 = load i64, i64* %6, align 8
  %36 = load %struct.vfe_device*, %struct.vfe_device** %3, align 8
  %37 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @VFE_0_CROP_ENC_Y_WIDTH, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i32 @writel_relaxed(i64 %35, i64 %40)
  %42 = load %struct.vfe_line*, %struct.vfe_line** %4, align 8
  %43 = getelementptr inbounds %struct.vfe_line, %struct.vfe_line* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  store i32 %45, i32* %7, align 4
  %46 = load %struct.vfe_line*, %struct.vfe_line** %4, align 8
  %47 = getelementptr inbounds %struct.vfe_line, %struct.vfe_line* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.vfe_line*, %struct.vfe_line** %4, align 8
  %51 = getelementptr inbounds %struct.vfe_line, %struct.vfe_line* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = add nsw i32 %49, %53
  %55 = sub nsw i32 %54, 1
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %7, align 4
  %57 = shl i32 %56, 16
  %58 = load i32, i32* %8, align 4
  %59 = or i32 %57, %58
  %60 = sext i32 %59 to i64
  store i64 %60, i64* %6, align 8
  %61 = load i64, i64* %6, align 8
  %62 = load %struct.vfe_device*, %struct.vfe_device** %3, align 8
  %63 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @VFE_0_CROP_ENC_Y_HEIGHT, align 8
  %66 = add nsw i64 %64, %65
  %67 = call i32 @writel_relaxed(i64 %61, i64 %66)
  %68 = load %struct.vfe_line*, %struct.vfe_line** %4, align 8
  %69 = getelementptr inbounds %struct.vfe_line, %struct.vfe_line* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = sdiv i32 %71, 2
  store i32 %72, i32* %7, align 4
  %73 = load %struct.vfe_line*, %struct.vfe_line** %4, align 8
  %74 = getelementptr inbounds %struct.vfe_line, %struct.vfe_line* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = sdiv i32 %76, 2
  %78 = load %struct.vfe_line*, %struct.vfe_line** %4, align 8
  %79 = getelementptr inbounds %struct.vfe_line, %struct.vfe_line* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = sdiv i32 %81, 2
  %83 = add nsw i32 %77, %82
  %84 = sub nsw i32 %83, 1
  store i32 %84, i32* %8, align 4
  %85 = load i32, i32* %7, align 4
  %86 = shl i32 %85, 16
  %87 = load i32, i32* %8, align 4
  %88 = or i32 %86, %87
  %89 = sext i32 %88 to i64
  store i64 %89, i64* %6, align 8
  %90 = load i64, i64* %6, align 8
  %91 = load %struct.vfe_device*, %struct.vfe_device** %3, align 8
  %92 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @VFE_0_CROP_ENC_CBCR_WIDTH, align 8
  %95 = add nsw i64 %93, %94
  %96 = call i32 @writel_relaxed(i64 %90, i64 %95)
  %97 = load %struct.vfe_line*, %struct.vfe_line** %4, align 8
  %98 = getelementptr inbounds %struct.vfe_line, %struct.vfe_line* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  store i32 %100, i32* %7, align 4
  %101 = load %struct.vfe_line*, %struct.vfe_line** %4, align 8
  %102 = getelementptr inbounds %struct.vfe_line, %struct.vfe_line* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.vfe_line*, %struct.vfe_line** %4, align 8
  %106 = getelementptr inbounds %struct.vfe_line, %struct.vfe_line* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 4
  %109 = add nsw i32 %104, %108
  %110 = sub nsw i32 %109, 1
  store i32 %110, i32* %8, align 4
  %111 = load i64, i64* %5, align 8
  %112 = load i64, i64* @V4L2_PIX_FMT_NV12, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %118, label %114

114:                                              ; preds = %2
  %115 = load i64, i64* %5, align 8
  %116 = load i64, i64* @V4L2_PIX_FMT_NV21, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %118, label %136

118:                                              ; preds = %114, %2
  %119 = load %struct.vfe_line*, %struct.vfe_line** %4, align 8
  %120 = getelementptr inbounds %struct.vfe_line, %struct.vfe_line* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = sdiv i32 %122, 2
  store i32 %123, i32* %7, align 4
  %124 = load %struct.vfe_line*, %struct.vfe_line** %4, align 8
  %125 = getelementptr inbounds %struct.vfe_line, %struct.vfe_line* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = sdiv i32 %127, 2
  %129 = load %struct.vfe_line*, %struct.vfe_line** %4, align 8
  %130 = getelementptr inbounds %struct.vfe_line, %struct.vfe_line* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 4
  %133 = sdiv i32 %132, 2
  %134 = add nsw i32 %128, %133
  %135 = sub nsw i32 %134, 1
  store i32 %135, i32* %8, align 4
  br label %136

136:                                              ; preds = %118, %114
  %137 = load i32, i32* %7, align 4
  %138 = shl i32 %137, 16
  %139 = load i32, i32* %8, align 4
  %140 = or i32 %138, %139
  %141 = sext i32 %140 to i64
  store i64 %141, i64* %6, align 8
  %142 = load i64, i64* %6, align 8
  %143 = load %struct.vfe_device*, %struct.vfe_device** %3, align 8
  %144 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* @VFE_0_CROP_ENC_CBCR_HEIGHT, align 8
  %147 = add nsw i64 %145, %146
  %148 = call i32 @writel_relaxed(i64 %142, i64 %147)
  ret void
}

declare dso_local i32 @writel_relaxed(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
