; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_main.c_ice_ena_misc_vector.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_main.c_ice_ena_misc_vector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_pf = type { i32, %struct.ice_hw }
%struct.ice_hw = type { i32 }

@PFINT_OICR_ENA = common dso_local global i32 0, align 4
@PFINT_OICR = common dso_local global i32 0, align 4
@PFINT_OICR_ECC_ERR_M = common dso_local global i32 0, align 4
@PFINT_OICR_MAL_DETECT_M = common dso_local global i32 0, align 4
@PFINT_OICR_GRST_M = common dso_local global i32 0, align 4
@PFINT_OICR_PCI_EXCEPTION_M = common dso_local global i32 0, align 4
@PFINT_OICR_VFLR_M = common dso_local global i32 0, align 4
@PFINT_OICR_HMC_ERR_M = common dso_local global i32 0, align 4
@PFINT_OICR_PE_CRITERR_M = common dso_local global i32 0, align 4
@GLINT_DYN_CTL_SW_ITR_INDX_M = common dso_local global i32 0, align 4
@GLINT_DYN_CTL_INTENA_MSK_M = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ice_pf*)* @ice_ena_misc_vector to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ice_ena_misc_vector(%struct.ice_pf* %0) #0 {
  %2 = alloca %struct.ice_pf*, align 8
  %3 = alloca %struct.ice_hw*, align 8
  %4 = alloca i32, align 4
  store %struct.ice_pf* %0, %struct.ice_pf** %2, align 8
  %5 = load %struct.ice_pf*, %struct.ice_pf** %2, align 8
  %6 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %5, i32 0, i32 1
  store %struct.ice_hw* %6, %struct.ice_hw** %3, align 8
  %7 = load %struct.ice_hw*, %struct.ice_hw** %3, align 8
  %8 = load i32, i32* @PFINT_OICR_ENA, align 4
  %9 = call i32 @wr32(%struct.ice_hw* %7, i32 %8, i32 0)
  %10 = load %struct.ice_hw*, %struct.ice_hw** %3, align 8
  %11 = load i32, i32* @PFINT_OICR, align 4
  %12 = call i32 @rd32(%struct.ice_hw* %10, i32 %11)
  %13 = load i32, i32* @PFINT_OICR_ECC_ERR_M, align 4
  %14 = load i32, i32* @PFINT_OICR_MAL_DETECT_M, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @PFINT_OICR_GRST_M, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @PFINT_OICR_PCI_EXCEPTION_M, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @PFINT_OICR_VFLR_M, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @PFINT_OICR_HMC_ERR_M, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @PFINT_OICR_PE_CRITERR_M, align 4
  %25 = or i32 %23, %24
  store i32 %25, i32* %4, align 4
  %26 = load %struct.ice_hw*, %struct.ice_hw** %3, align 8
  %27 = load i32, i32* @PFINT_OICR_ENA, align 4
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @wr32(%struct.ice_hw* %26, i32 %27, i32 %28)
  %30 = load %struct.ice_hw*, %struct.ice_hw** %3, align 8
  %31 = load %struct.ice_pf*, %struct.ice_pf** %2, align 8
  %32 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @GLINT_DYN_CTL(i32 %33)
  %35 = load i32, i32* @GLINT_DYN_CTL_SW_ITR_INDX_M, align 4
  %36 = load i32, i32* @GLINT_DYN_CTL_INTENA_MSK_M, align 4
  %37 = or i32 %35, %36
  %38 = call i32 @wr32(%struct.ice_hw* %30, i32 %34, i32 %37)
  ret void
}

declare dso_local i32 @wr32(%struct.ice_hw*, i32, i32) #1

declare dso_local i32 @rd32(%struct.ice_hw*, i32) #1

declare dso_local i32 @GLINT_DYN_CTL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
