; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_sriov.c_bnx2x_vf_igu_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_sriov.c_bnx2x_vf_igu_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.bnx2x_virtf = type { i32 }

@IGU_REG_VF_CONFIGURATION = common dso_local global i32 0, align 4
@IGU_VF_CONF_MSI_MSIX_EN = common dso_local global i32 0, align 4
@IGU_VF_CONF_SINGLE_ISR_EN = common dso_local global i32 0, align 4
@IGU_VF_CONF_FUNC_EN = common dso_local global i32 0, align 4
@IGU_VF_CONF_PARENT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*, %struct.bnx2x_virtf*)* @bnx2x_vf_igu_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_vf_igu_disable(%struct.bnx2x* %0, %struct.bnx2x_virtf* %1) #0 {
  %3 = alloca %struct.bnx2x*, align 8
  %4 = alloca %struct.bnx2x_virtf*, align 8
  %5 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %3, align 8
  store %struct.bnx2x_virtf* %1, %struct.bnx2x_virtf** %4, align 8
  %6 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %7 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %8 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %4, align 8
  %9 = getelementptr inbounds %struct.bnx2x_virtf, %struct.bnx2x_virtf* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @HW_VF_HANDLE(%struct.bnx2x* %7, i32 %10)
  %12 = call i32 @bnx2x_pretend_func(%struct.bnx2x* %6, i32 %11)
  %13 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %14 = load i32, i32* @IGU_REG_VF_CONFIGURATION, align 4
  %15 = call i32 @REG_RD(%struct.bnx2x* %13, i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* @IGU_VF_CONF_MSI_MSIX_EN, align 4
  %17 = load i32, i32* @IGU_VF_CONF_SINGLE_ISR_EN, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @IGU_VF_CONF_FUNC_EN, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @IGU_VF_CONF_PARENT_MASK, align 4
  %22 = or i32 %20, %21
  %23 = xor i32 %22, -1
  %24 = load i32, i32* %5, align 4
  %25 = and i32 %24, %23
  store i32 %25, i32* %5, align 4
  %26 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %27 = load i32, i32* @IGU_REG_VF_CONFIGURATION, align 4
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @REG_WR(%struct.bnx2x* %26, i32 %27, i32 %28)
  %30 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %31 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %32 = call i32 @BP_ABS_FUNC(%struct.bnx2x* %31)
  %33 = call i32 @bnx2x_pretend_func(%struct.bnx2x* %30, i32 %32)
  ret void
}

declare dso_local i32 @bnx2x_pretend_func(%struct.bnx2x*, i32) #1

declare dso_local i32 @HW_VF_HANDLE(%struct.bnx2x*, i32) #1

declare dso_local i32 @REG_RD(%struct.bnx2x*, i32) #1

declare dso_local i32 @REG_WR(%struct.bnx2x*, i32, i32) #1

declare dso_local i32 @BP_ABS_FUNC(%struct.bnx2x*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
