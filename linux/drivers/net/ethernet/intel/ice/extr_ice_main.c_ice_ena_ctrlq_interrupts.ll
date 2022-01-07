; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_main.c_ice_ena_ctrlq_interrupts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_main.c_ice_ena_ctrlq_interrupts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_hw = type { i32 }

@PFINT_OICR_CTL_MSIX_INDX_M = common dso_local global i32 0, align 4
@PFINT_OICR_CTL_CAUSE_ENA_M = common dso_local global i32 0, align 4
@PFINT_OICR_CTL = common dso_local global i32 0, align 4
@PFINT_FW_CTL_MSIX_INDX_M = common dso_local global i32 0, align 4
@PFINT_FW_CTL_CAUSE_ENA_M = common dso_local global i32 0, align 4
@PFINT_FW_CTL = common dso_local global i32 0, align 4
@PFINT_MBX_CTL_MSIX_INDX_M = common dso_local global i32 0, align 4
@PFINT_MBX_CTL_CAUSE_ENA_M = common dso_local global i32 0, align 4
@PFINT_MBX_CTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ice_hw*, i32)* @ice_ena_ctrlq_interrupts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ice_ena_ctrlq_interrupts(%struct.ice_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.ice_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ice_hw* %0, %struct.ice_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @PFINT_OICR_CTL_MSIX_INDX_M, align 4
  %8 = and i32 %6, %7
  %9 = load i32, i32* @PFINT_OICR_CTL_CAUSE_ENA_M, align 4
  %10 = or i32 %8, %9
  store i32 %10, i32* %5, align 4
  %11 = load %struct.ice_hw*, %struct.ice_hw** %3, align 8
  %12 = load i32, i32* @PFINT_OICR_CTL, align 4
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @wr32(%struct.ice_hw* %11, i32 %12, i32 %13)
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @PFINT_FW_CTL_MSIX_INDX_M, align 4
  %17 = and i32 %15, %16
  %18 = load i32, i32* @PFINT_FW_CTL_CAUSE_ENA_M, align 4
  %19 = or i32 %17, %18
  store i32 %19, i32* %5, align 4
  %20 = load %struct.ice_hw*, %struct.ice_hw** %3, align 8
  %21 = load i32, i32* @PFINT_FW_CTL, align 4
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @wr32(%struct.ice_hw* %20, i32 %21, i32 %22)
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @PFINT_MBX_CTL_MSIX_INDX_M, align 4
  %26 = and i32 %24, %25
  %27 = load i32, i32* @PFINT_MBX_CTL_CAUSE_ENA_M, align 4
  %28 = or i32 %26, %27
  store i32 %28, i32* %5, align 4
  %29 = load %struct.ice_hw*, %struct.ice_hw** %3, align 8
  %30 = load i32, i32* @PFINT_MBX_CTL, align 4
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @wr32(%struct.ice_hw* %29, i32 %30, i32 %31)
  %33 = load %struct.ice_hw*, %struct.ice_hw** %3, align 8
  %34 = call i32 @ice_flush(%struct.ice_hw* %33)
  ret void
}

declare dso_local i32 @wr32(%struct.ice_hw*, i32, i32) #1

declare dso_local i32 @ice_flush(%struct.ice_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
