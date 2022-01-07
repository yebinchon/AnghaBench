; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss-vfe-4-7.c_vfe_global_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss-vfe-4-7.c_vfe_global_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfe_device = type { i64 }

@VFE_0_GLOBAL_RESET_CMD_IDLE_CGC = common dso_local global i32 0, align 4
@VFE_0_GLOBAL_RESET_CMD_DSP = common dso_local global i32 0, align 4
@VFE_0_GLOBAL_RESET_CMD_TESTGEN = common dso_local global i32 0, align 4
@VFE_0_GLOBAL_RESET_CMD_BUS_MISR = common dso_local global i32 0, align 4
@VFE_0_GLOBAL_RESET_CMD_PM = common dso_local global i32 0, align 4
@VFE_0_GLOBAL_RESET_CMD_REGISTER = common dso_local global i32 0, align 4
@VFE_0_GLOBAL_RESET_CMD_BUS_BDG = common dso_local global i32 0, align 4
@VFE_0_GLOBAL_RESET_CMD_BUS = common dso_local global i32 0, align 4
@VFE_0_GLOBAL_RESET_CMD_CAMIF = common dso_local global i32 0, align 4
@VFE_0_GLOBAL_RESET_CMD_CORE = common dso_local global i32 0, align 4
@VFE_0_IRQ_MASK_0 = common dso_local global i64 0, align 8
@VFE_0_GLOBAL_RESET_CMD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vfe_device*)* @vfe_global_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vfe_global_reset(%struct.vfe_device* %0) #0 {
  %2 = alloca %struct.vfe_device*, align 8
  %3 = alloca i32, align 4
  store %struct.vfe_device* %0, %struct.vfe_device** %2, align 8
  %4 = load i32, i32* @VFE_0_GLOBAL_RESET_CMD_IDLE_CGC, align 4
  %5 = load i32, i32* @VFE_0_GLOBAL_RESET_CMD_DSP, align 4
  %6 = or i32 %4, %5
  %7 = load i32, i32* @VFE_0_GLOBAL_RESET_CMD_TESTGEN, align 4
  %8 = or i32 %6, %7
  %9 = load i32, i32* @VFE_0_GLOBAL_RESET_CMD_BUS_MISR, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @VFE_0_GLOBAL_RESET_CMD_PM, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @VFE_0_GLOBAL_RESET_CMD_REGISTER, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @VFE_0_GLOBAL_RESET_CMD_BUS_BDG, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @VFE_0_GLOBAL_RESET_CMD_BUS, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @VFE_0_GLOBAL_RESET_CMD_CAMIF, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @VFE_0_GLOBAL_RESET_CMD_CORE, align 4
  %22 = or i32 %20, %21
  store i32 %22, i32* %3, align 4
  %23 = call i32 @BIT(i32 31)
  %24 = load %struct.vfe_device*, %struct.vfe_device** %2, align 8
  %25 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @VFE_0_IRQ_MASK_0, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @writel_relaxed(i32 %23, i64 %28)
  %30 = call i32 (...) @wmb()
  %31 = load i32, i32* %3, align 4
  %32 = load %struct.vfe_device*, %struct.vfe_device** %2, align 8
  %33 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @VFE_0_GLOBAL_RESET_CMD, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 @writel_relaxed(i32 %31, i64 %36)
  ret void
}

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @wmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
