; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/marvell-ccic/extr_mcam-core.c_mcam_write_yuv_bases.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/marvell-ccic/extr_mcam-core.c_mcam_write_yuv_bases.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mcam_camera = type { %struct.v4l2_pix_format }
%struct.v4l2_pix_format = type { i32, i32, i32 }

@REG_Y0BAR = common dso_local global i64 0, align 8
@REG_U0BAR = common dso_local global i64 0, align 8
@REG_V0BAR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mcam_camera*, i32, i32)* @mcam_write_yuv_bases to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mcam_write_yuv_bases(%struct.mcam_camera* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mcam_camera*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.v4l2_pix_format*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.mcam_camera* %0, %struct.mcam_camera** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load %struct.mcam_camera*, %struct.mcam_camera** %4, align 8
  %13 = getelementptr inbounds %struct.mcam_camera, %struct.mcam_camera* %12, i32 0, i32 0
  store %struct.v4l2_pix_format* %13, %struct.v4l2_pix_format** %7, align 8
  %14 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %7, align 8
  %15 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %7, align 8
  %18 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = mul nsw i32 %16, %19
  store i32 %20, i32* %8, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %21 = load i32, i32* %6, align 4
  store i32 %21, i32* %9, align 4
  %22 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %7, align 8
  %23 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  switch i32 %24, label %41 [
    i32 129, label %25
    i32 128, label %33
  ]

25:                                               ; preds = %3
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* %8, align 4
  %28 = add nsw i32 %26, %27
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* %8, align 4
  %31 = sdiv i32 %30, 4
  %32 = add nsw i32 %29, %31
  store i32 %32, i32* %11, align 4
  br label %42

33:                                               ; preds = %3
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* %8, align 4
  %36 = add nsw i32 %34, %35
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* %8, align 4
  %39 = sdiv i32 %38, 4
  %40 = add nsw i32 %37, %39
  store i32 %40, i32* %10, align 4
  br label %42

41:                                               ; preds = %3
  br label %42

42:                                               ; preds = %41, %33, %25
  %43 = load %struct.mcam_camera*, %struct.mcam_camera** %4, align 8
  %44 = load i64, i64* @REG_Y0BAR, align 8
  %45 = load i32, i32* %5, align 4
  %46 = mul i32 %45, 4
  %47 = zext i32 %46 to i64
  %48 = add nsw i64 %44, %47
  %49 = load i32, i32* %9, align 4
  %50 = call i32 @mcam_reg_write(%struct.mcam_camera* %43, i64 %48, i32 %49)
  %51 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %7, align 8
  %52 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @mcam_fmt_is_planar(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %73

56:                                               ; preds = %42
  %57 = load %struct.mcam_camera*, %struct.mcam_camera** %4, align 8
  %58 = load i64, i64* @REG_U0BAR, align 8
  %59 = load i32, i32* %5, align 4
  %60 = mul i32 %59, 4
  %61 = zext i32 %60 to i64
  %62 = add nsw i64 %58, %61
  %63 = load i32, i32* %10, align 4
  %64 = call i32 @mcam_reg_write(%struct.mcam_camera* %57, i64 %62, i32 %63)
  %65 = load %struct.mcam_camera*, %struct.mcam_camera** %4, align 8
  %66 = load i64, i64* @REG_V0BAR, align 8
  %67 = load i32, i32* %5, align 4
  %68 = mul i32 %67, 4
  %69 = zext i32 %68 to i64
  %70 = add nsw i64 %66, %69
  %71 = load i32, i32* %11, align 4
  %72 = call i32 @mcam_reg_write(%struct.mcam_camera* %65, i64 %70, i32 %71)
  br label %73

73:                                               ; preds = %56, %42
  ret void
}

declare dso_local i32 @mcam_reg_write(%struct.mcam_camera*, i64, i32) #1

declare dso_local i64 @mcam_fmt_is_planar(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
