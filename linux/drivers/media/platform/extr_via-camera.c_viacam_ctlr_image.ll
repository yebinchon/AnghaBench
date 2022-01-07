; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_via-camera.c_viacam_ctlr_image.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_via-camera.c_viacam_ctlr_image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.via_camera = type { i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i64 }
%struct.TYPE_3__ = type { i32, i32 }

@VCR_CAPINTC = common dso_local global i32 0, align 4
@VCR_CI_ENABLE = common dso_local global i32 0, align 4
@VCR_CI_CLKEN = common dso_local global i32 0, align 4
@VCR_HORRANGE = common dso_local global i32 0, align 4
@VCR_VERTRANGE = common dso_local global i32 0, align 4
@VCR_MAXDATA = common dso_local global i32 0, align 4
@VCR_MAXVBI = common dso_local global i32 0, align 4
@VCR_VSTRIDE = common dso_local global i32 0, align 4
@VCR_VS_STRIDE = common dso_local global i32 0, align 4
@VCR_CI_FLDINV = common dso_local global i32 0, align 4
@VCR_CI_VREFINV = common dso_local global i32 0, align 4
@VCR_CI_DIBOTH = common dso_local global i32 0, align 4
@VCR_CI_CCIR601_8 = common dso_local global i32 0, align 4
@VCR_CI_3BUFS = common dso_local global i32 0, align 4
@V4L2_PIX_FMT_YUYV = common dso_local global i64 0, align 8
@VCR_CI_YUYV = common dso_local global i32 0, align 4
@VCR_CI_UYVY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.via_camera*)* @viacam_ctlr_image to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @viacam_ctlr_image(%struct.via_camera* %0) #0 {
  %2 = alloca %struct.via_camera*, align 8
  %3 = alloca i32, align 4
  store %struct.via_camera* %0, %struct.via_camera** %2, align 8
  %4 = load %struct.via_camera*, %struct.via_camera** %2, align 8
  %5 = load i32, i32* @VCR_CAPINTC, align 4
  %6 = load i32, i32* @VCR_CI_ENABLE, align 4
  %7 = load i32, i32* @VCR_CI_CLKEN, align 4
  %8 = or i32 %6, %7
  %9 = xor i32 %8, -1
  %10 = call i32 @viacam_write_reg(%struct.via_camera* %4, i32 %5, i32 %9)
  %11 = load %struct.via_camera*, %struct.via_camera** %2, align 8
  %12 = load i32, i32* @VCR_HORRANGE, align 4
  %13 = call i32 @viacam_write_reg(%struct.via_camera* %11, i32 %12, i32 102760736)
  %14 = load %struct.via_camera*, %struct.via_camera** %2, align 8
  %15 = load i32, i32* @VCR_VERTRANGE, align 4
  %16 = call i32 @viacam_write_reg(%struct.via_camera* %14, i32 %15, i32 31326208)
  %17 = load %struct.via_camera*, %struct.via_camera** %2, align 8
  %18 = call i32 @viacam_set_scale(%struct.via_camera* %17)
  %19 = load %struct.via_camera*, %struct.via_camera** %2, align 8
  %20 = load i32, i32* @VCR_MAXDATA, align 4
  %21 = load %struct.via_camera*, %struct.via_camera** %2, align 8
  %22 = getelementptr inbounds %struct.via_camera, %struct.via_camera* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = shl i32 %24, 16
  %26 = load %struct.via_camera*, %struct.via_camera** %2, align 8
  %27 = getelementptr inbounds %struct.via_camera, %struct.via_camera* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = ashr i32 %29, 3
  %31 = or i32 %25, %30
  %32 = call i32 @viacam_write_reg(%struct.via_camera* %19, i32 %20, i32 %31)
  %33 = load %struct.via_camera*, %struct.via_camera** %2, align 8
  %34 = load i32, i32* @VCR_MAXVBI, align 4
  %35 = call i32 @viacam_write_reg(%struct.via_camera* %33, i32 %34, i32 0)
  %36 = load %struct.via_camera*, %struct.via_camera** %2, align 8
  %37 = load i32, i32* @VCR_VSTRIDE, align 4
  %38 = load %struct.via_camera*, %struct.via_camera** %2, align 8
  %39 = getelementptr inbounds %struct.via_camera, %struct.via_camera* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @VCR_VS_STRIDE, align 4
  %43 = and i32 %41, %42
  %44 = call i32 @viacam_write_reg(%struct.via_camera* %36, i32 %37, i32 %43)
  %45 = load i32, i32* @VCR_CI_CLKEN, align 4
  %46 = or i32 %45, 134217728
  %47 = load i32, i32* @VCR_CI_FLDINV, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @VCR_CI_VREFINV, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @VCR_CI_DIBOTH, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @VCR_CI_CCIR601_8, align 4
  %54 = or i32 %52, %53
  store i32 %54, i32* %3, align 4
  %55 = load %struct.via_camera*, %struct.via_camera** %2, align 8
  %56 = getelementptr inbounds %struct.via_camera, %struct.via_camera* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp eq i32 %57, 3
  br i1 %58, label %59, label %63

59:                                               ; preds = %1
  %60 = load i32, i32* @VCR_CI_3BUFS, align 4
  %61 = load i32, i32* %3, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %59, %1
  %64 = load %struct.via_camera*, %struct.via_camera** %2, align 8
  %65 = getelementptr inbounds %struct.via_camera, %struct.via_camera* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @V4L2_PIX_FMT_YUYV, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %74

70:                                               ; preds = %63
  %71 = load i32, i32* @VCR_CI_YUYV, align 4
  %72 = load i32, i32* %3, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %3, align 4
  br label %78

74:                                               ; preds = %63
  %75 = load i32, i32* @VCR_CI_UYVY, align 4
  %76 = load i32, i32* %3, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %3, align 4
  br label %78

78:                                               ; preds = %74, %70
  %79 = load %struct.via_camera*, %struct.via_camera** %2, align 8
  %80 = load i32, i32* @VCR_CAPINTC, align 4
  %81 = load i32, i32* %3, align 4
  %82 = call i32 @viacam_write_reg(%struct.via_camera* %79, i32 %80, i32 %81)
  ret void
}

declare dso_local i32 @viacam_write_reg(%struct.via_camera*, i32, i32) #1

declare dso_local i32 @viacam_set_scale(%struct.via_camera*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
