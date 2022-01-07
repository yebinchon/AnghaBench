; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss-vfe-4-7.c_vfe_wm_line_based.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss-vfe-4-7.c_vfe_wm_line_based.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfe_device = type { i64 }
%struct.v4l2_pix_format_mplane = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vfe_device*, i32, %struct.v4l2_pix_format_mplane*, i32, i32)* @vfe_wm_line_based to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vfe_wm_line_based(%struct.vfe_device* %0, i32 %1, %struct.v4l2_pix_format_mplane* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.vfe_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.v4l2_pix_format_mplane*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.vfe_device* %0, %struct.vfe_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.v4l2_pix_format_mplane* %2, %struct.v4l2_pix_format_mplane** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %16 = load i32, i32* %10, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %65

18:                                               ; preds = %5
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %19 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %20 = load i32, i32* %9, align 4
  %21 = call i32 @vfe_get_wm_sizes(%struct.v4l2_pix_format_mplane* %19, i32 %20, i32* %12, i32* %13, i32* %14)
  %22 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %23 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %12, align 4
  %26 = call i32 @vfe_word_per_line_by_pixel(i32 %24, i32 %25)
  store i32 %26, i32* %15, align 4
  %27 = load i32, i32* %13, align 4
  %28 = sub nsw i32 %27, 1
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %15, align 4
  %30 = add nsw i32 %29, 3
  %31 = sdiv i32 %30, 4
  %32 = sub nsw i32 %31, 1
  %33 = shl i32 %32, 16
  %34 = load i32, i32* %11, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* %11, align 4
  %37 = load %struct.vfe_device*, %struct.vfe_device** %6, align 8
  %38 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i32, i32* %7, align 4
  %41 = call i64 @VFE_0_BUS_IMAGE_MASTER_n_WR_IMAGE_SIZE(i32 %40)
  %42 = add nsw i64 %39, %41
  %43 = call i32 @writel_relaxed(i32 %36, i64 %42)
  %44 = load i32, i32* %14, align 4
  %45 = call i32 @vfe_word_per_line_by_bytes(i32 %44)
  store i32 %45, i32* %15, align 4
  store i32 3, i32* %11, align 4
  %46 = load i32, i32* %13, align 4
  %47 = sub nsw i32 %46, 1
  %48 = shl i32 %47, 2
  %49 = load i32, i32* %11, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %11, align 4
  %51 = load i32, i32* %15, align 4
  %52 = add nsw i32 %51, 1
  %53 = sdiv i32 %52, 2
  %54 = shl i32 %53, 16
  %55 = load i32, i32* %11, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %11, align 4
  %57 = load i32, i32* %11, align 4
  %58 = load %struct.vfe_device*, %struct.vfe_device** %6, align 8
  %59 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i32, i32* %7, align 4
  %62 = call i64 @VFE_0_BUS_IMAGE_MASTER_n_WR_BUFFER_CFG(i32 %61)
  %63 = add nsw i64 %60, %62
  %64 = call i32 @writel_relaxed(i32 %57, i64 %63)
  br label %80

65:                                               ; preds = %5
  %66 = load %struct.vfe_device*, %struct.vfe_device** %6, align 8
  %67 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i32, i32* %7, align 4
  %70 = call i64 @VFE_0_BUS_IMAGE_MASTER_n_WR_IMAGE_SIZE(i32 %69)
  %71 = add nsw i64 %68, %70
  %72 = call i32 @writel_relaxed(i32 0, i64 %71)
  %73 = load %struct.vfe_device*, %struct.vfe_device** %6, align 8
  %74 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i32, i32* %7, align 4
  %77 = call i64 @VFE_0_BUS_IMAGE_MASTER_n_WR_BUFFER_CFG(i32 %76)
  %78 = add nsw i64 %75, %77
  %79 = call i32 @writel_relaxed(i32 0, i64 %78)
  br label %80

80:                                               ; preds = %65, %18
  ret void
}

declare dso_local i32 @vfe_get_wm_sizes(%struct.v4l2_pix_format_mplane*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @vfe_word_per_line_by_pixel(i32, i32) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i64 @VFE_0_BUS_IMAGE_MASTER_n_WR_IMAGE_SIZE(i32) #1

declare dso_local i32 @vfe_word_per_line_by_bytes(i32) #1

declare dso_local i64 @VFE_0_BUS_IMAGE_MASTER_n_WR_BUFFER_CFG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
