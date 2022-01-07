; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss-vfe-4-1.c_vfe_set_clamp_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss-vfe-4-1.c_vfe_set_clamp_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfe_device = type { i64 }

@VFE_0_CLAMP_ENC_MAX_CFG_CH0 = common dso_local global i32 0, align 4
@VFE_0_CLAMP_ENC_MAX_CFG_CH1 = common dso_local global i32 0, align 4
@VFE_0_CLAMP_ENC_MAX_CFG_CH2 = common dso_local global i32 0, align 4
@VFE_0_CLAMP_ENC_MAX_CFG = common dso_local global i64 0, align 8
@VFE_0_CLAMP_ENC_MIN_CFG_CH0 = common dso_local global i32 0, align 4
@VFE_0_CLAMP_ENC_MIN_CFG_CH1 = common dso_local global i32 0, align 4
@VFE_0_CLAMP_ENC_MIN_CFG_CH2 = common dso_local global i32 0, align 4
@VFE_0_CLAMP_ENC_MIN_CFG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vfe_device*)* @vfe_set_clamp_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vfe_set_clamp_cfg(%struct.vfe_device* %0) #0 {
  %2 = alloca %struct.vfe_device*, align 8
  %3 = alloca i32, align 4
  store %struct.vfe_device* %0, %struct.vfe_device** %2, align 8
  %4 = load i32, i32* @VFE_0_CLAMP_ENC_MAX_CFG_CH0, align 4
  %5 = load i32, i32* @VFE_0_CLAMP_ENC_MAX_CFG_CH1, align 4
  %6 = or i32 %4, %5
  %7 = load i32, i32* @VFE_0_CLAMP_ENC_MAX_CFG_CH2, align 4
  %8 = or i32 %6, %7
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = load %struct.vfe_device*, %struct.vfe_device** %2, align 8
  %11 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @VFE_0_CLAMP_ENC_MAX_CFG, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @writel_relaxed(i32 %9, i64 %14)
  %16 = load i32, i32* @VFE_0_CLAMP_ENC_MIN_CFG_CH0, align 4
  %17 = load i32, i32* @VFE_0_CLAMP_ENC_MIN_CFG_CH1, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @VFE_0_CLAMP_ENC_MIN_CFG_CH2, align 4
  %20 = or i32 %18, %19
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* %3, align 4
  %22 = load %struct.vfe_device*, %struct.vfe_device** %2, align 8
  %23 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @VFE_0_CLAMP_ENC_MIN_CFG, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @writel_relaxed(i32 %21, i64 %26)
  ret void
}

declare dso_local i32 @writel_relaxed(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
