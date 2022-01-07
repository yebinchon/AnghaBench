; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispcsi2.c_csi2_if_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispcsi2.c_csi2_if_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isp_device = type { i32 }
%struct.isp_csi2_device = type { i32, %struct.isp_csi2_ctrl_cfg }
%struct.isp_csi2_ctrl_cfg = type { i64 }

@ISPCSI2_CTRL = common dso_local global i32 0, align 4
@ISPCSI2_CTRL_IF_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isp_device*, %struct.isp_csi2_device*, i64)* @csi2_if_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @csi2_if_enable(%struct.isp_device* %0, %struct.isp_csi2_device* %1, i64 %2) #0 {
  %4 = alloca %struct.isp_device*, align 8
  %5 = alloca %struct.isp_csi2_device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.isp_csi2_ctrl_cfg*, align 8
  store %struct.isp_device* %0, %struct.isp_device** %4, align 8
  store %struct.isp_csi2_device* %1, %struct.isp_csi2_device** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.isp_csi2_device*, %struct.isp_csi2_device** %5, align 8
  %9 = getelementptr inbounds %struct.isp_csi2_device, %struct.isp_csi2_device* %8, i32 0, i32 1
  store %struct.isp_csi2_ctrl_cfg* %9, %struct.isp_csi2_ctrl_cfg** %7, align 8
  %10 = load %struct.isp_device*, %struct.isp_device** %4, align 8
  %11 = load %struct.isp_csi2_device*, %struct.isp_csi2_device** %5, align 8
  %12 = getelementptr inbounds %struct.isp_csi2_device, %struct.isp_csi2_device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @ISPCSI2_CTRL, align 4
  %15 = load i32, i32* @ISPCSI2_CTRL_IF_EN, align 4
  %16 = load i64, i64* %6, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* @ISPCSI2_CTRL_IF_EN, align 4
  br label %21

20:                                               ; preds = %3
  br label %21

21:                                               ; preds = %20, %18
  %22 = phi i32 [ %19, %18 ], [ 0, %20 ]
  %23 = call i32 @isp_reg_clr_set(%struct.isp_device* %10, i32 %13, i32 %14, i32 %15, i32 %22)
  %24 = load i64, i64* %6, align 8
  %25 = load %struct.isp_csi2_ctrl_cfg*, %struct.isp_csi2_ctrl_cfg** %7, align 8
  %26 = getelementptr inbounds %struct.isp_csi2_ctrl_cfg, %struct.isp_csi2_ctrl_cfg* %25, i32 0, i32 0
  store i64 %24, i64* %26, align 8
  ret void
}

declare dso_local i32 @isp_reg_clr_set(%struct.isp_device*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
