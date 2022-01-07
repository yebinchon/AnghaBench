; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss-vfe-4-1.c_vfe_set_module_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss-vfe-4-1.c_vfe_set_module_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfe_device = type { i64 }

@VFE_0_MODULE_CFG_DEMUX = common dso_local global i32 0, align 4
@VFE_0_MODULE_CFG_CHROMA_UPSAMPLE = common dso_local global i32 0, align 4
@VFE_0_MODULE_CFG_SCALE_ENC = common dso_local global i32 0, align 4
@VFE_0_MODULE_CFG_CROP_ENC = common dso_local global i32 0, align 4
@VFE_0_MODULE_CFG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vfe_device*, i64)* @vfe_set_module_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vfe_set_module_cfg(%struct.vfe_device* %0, i64 %1) #0 {
  %3 = alloca %struct.vfe_device*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.vfe_device* %0, %struct.vfe_device** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i32, i32* @VFE_0_MODULE_CFG_DEMUX, align 4
  %7 = load i32, i32* @VFE_0_MODULE_CFG_CHROMA_UPSAMPLE, align 4
  %8 = or i32 %6, %7
  %9 = load i32, i32* @VFE_0_MODULE_CFG_SCALE_ENC, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @VFE_0_MODULE_CFG_CROP_ENC, align 4
  %12 = or i32 %10, %11
  store i32 %12, i32* %5, align 4
  %13 = load i64, i64* %4, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %2
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.vfe_device*, %struct.vfe_device** %3, align 8
  %18 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @VFE_0_MODULE_CFG, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @writel_relaxed(i32 %16, i64 %21)
  br label %30

23:                                               ; preds = %2
  %24 = load %struct.vfe_device*, %struct.vfe_device** %3, align 8
  %25 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @VFE_0_MODULE_CFG, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @writel_relaxed(i32 0, i64 %28)
  br label %30

30:                                               ; preds = %23, %15
  ret void
}

declare dso_local i32 @writel_relaxed(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
