; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss-vfe-4-7.c_vfe_set_realign_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss-vfe-4-7.c_vfe_set_realign_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfe_device = type { i64 }
%struct.vfe_line = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

@VFE_0_MODULE_ZOOM_EN_REALIGN_BUF = common dso_local global i64 0, align 8
@V4L2_PIX_FMT_YUYV = common dso_local global i64 0, align 8
@V4L2_PIX_FMT_YVYU = common dso_local global i64 0, align 8
@V4L2_PIX_FMT_VYUY = common dso_local global i64 0, align 8
@V4L2_PIX_FMT_UYVY = common dso_local global i64 0, align 8
@VFE_0_MODULE_ZOOM_EN = common dso_local global i32 0, align 4
@VFE_0_REALIGN_BUF_CFG_HSUB_ENABLE = common dso_local global i64 0, align 8
@VFE_0_REALIGN_BUF_CFG_CR_ODD_PIXEL = common dso_local global i64 0, align 8
@VFE_0_REALIGN_BUF_CFG_CB_ODD_PIXEL = common dso_local global i64 0, align 8
@VFE_0_REALIGN_BUF_CFG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vfe_device*, %struct.vfe_line*, i64)* @vfe_set_realign_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vfe_set_realign_cfg(%struct.vfe_device* %0, %struct.vfe_line* %1, i64 %2) #0 {
  %4 = alloca %struct.vfe_device*, align 8
  %5 = alloca %struct.vfe_line*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.vfe_device* %0, %struct.vfe_device** %4, align 8
  store %struct.vfe_line* %1, %struct.vfe_line** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load %struct.vfe_line*, %struct.vfe_line** %5, align 8
  %10 = getelementptr inbounds %struct.vfe_line, %struct.vfe_line* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %7, align 8
  %16 = load i64, i64* @VFE_0_MODULE_ZOOM_EN_REALIGN_BUF, align 8
  store i64 %16, i64* %8, align 8
  %17 = load i64, i64* %7, align 8
  %18 = load i64, i64* @V4L2_PIX_FMT_YUYV, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %33

20:                                               ; preds = %3
  %21 = load i64, i64* %7, align 8
  %22 = load i64, i64* @V4L2_PIX_FMT_YVYU, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %33

24:                                               ; preds = %20
  %25 = load i64, i64* %7, align 8
  %26 = load i64, i64* @V4L2_PIX_FMT_VYUY, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %24
  %29 = load i64, i64* %7, align 8
  %30 = load i64, i64* @V4L2_PIX_FMT_UYVY, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  br label %71

33:                                               ; preds = %28, %24, %20, %3
  %34 = load i64, i64* %6, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %33
  %37 = load %struct.vfe_device*, %struct.vfe_device** %4, align 8
  %38 = load i32, i32* @VFE_0_MODULE_ZOOM_EN, align 4
  %39 = load i64, i64* %8, align 8
  %40 = call i32 @vfe_reg_set(%struct.vfe_device* %37, i32 %38, i64 %39)
  br label %46

41:                                               ; preds = %33
  %42 = load %struct.vfe_device*, %struct.vfe_device** %4, align 8
  %43 = load i32, i32* @VFE_0_MODULE_ZOOM_EN, align 4
  %44 = load i64, i64* %8, align 8
  %45 = call i32 @vfe_reg_clr(%struct.vfe_device* %42, i32 %43, i64 %44)
  br label %71

46:                                               ; preds = %36
  %47 = load i64, i64* @VFE_0_REALIGN_BUF_CFG_HSUB_ENABLE, align 8
  store i64 %47, i64* %8, align 8
  %48 = load i64, i64* %7, align 8
  %49 = load i64, i64* @V4L2_PIX_FMT_UYVY, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %55, label %51

51:                                               ; preds = %46
  %52 = load i64, i64* %7, align 8
  %53 = load i64, i64* @V4L2_PIX_FMT_YUYV, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %51, %46
  %56 = load i64, i64* @VFE_0_REALIGN_BUF_CFG_CR_ODD_PIXEL, align 8
  %57 = load i64, i64* %8, align 8
  %58 = or i64 %57, %56
  store i64 %58, i64* %8, align 8
  br label %63

59:                                               ; preds = %51
  %60 = load i64, i64* @VFE_0_REALIGN_BUF_CFG_CB_ODD_PIXEL, align 8
  %61 = load i64, i64* %8, align 8
  %62 = or i64 %61, %60
  store i64 %62, i64* %8, align 8
  br label %63

63:                                               ; preds = %59, %55
  %64 = load i64, i64* %8, align 8
  %65 = load %struct.vfe_device*, %struct.vfe_device** %4, align 8
  %66 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @VFE_0_REALIGN_BUF_CFG, align 8
  %69 = add nsw i64 %67, %68
  %70 = call i32 @writel_relaxed(i64 %64, i64 %69)
  br label %71

71:                                               ; preds = %63, %41, %32
  ret void
}

declare dso_local i32 @vfe_reg_set(%struct.vfe_device*, i32, i64) #1

declare dso_local i32 @vfe_reg_clr(%struct.vfe_device*, i32, i64) #1

declare dso_local i32 @writel_relaxed(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
