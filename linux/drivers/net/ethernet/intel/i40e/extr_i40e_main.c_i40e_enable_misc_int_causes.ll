; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_enable_misc_int_causes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_enable_misc_int_causes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_pf = type { i32, %struct.i40e_hw }
%struct.i40e_hw = type { i32 }

@I40E_PFINT_ICR0_ENA = common dso_local global i32 0, align 4
@I40E_PFINT_ICR0 = common dso_local global i32 0, align 4
@I40E_PFINT_ICR0_ENA_ECC_ERR_MASK = common dso_local global i32 0, align 4
@I40E_PFINT_ICR0_ENA_MAL_DETECT_MASK = common dso_local global i32 0, align 4
@I40E_PFINT_ICR0_ENA_GRST_MASK = common dso_local global i32 0, align 4
@I40E_PFINT_ICR0_ENA_PCI_EXCEPTION_MASK = common dso_local global i32 0, align 4
@I40E_PFINT_ICR0_ENA_GPIO_MASK = common dso_local global i32 0, align 4
@I40E_PFINT_ICR0_ENA_HMC_ERR_MASK = common dso_local global i32 0, align 4
@I40E_PFINT_ICR0_ENA_VFLR_MASK = common dso_local global i32 0, align 4
@I40E_PFINT_ICR0_ENA_ADMINQ_MASK = common dso_local global i32 0, align 4
@I40E_FLAG_IWARP_ENABLED = common dso_local global i32 0, align 4
@I40E_PFINT_ICR0_ENA_PE_CRITERR_MASK = common dso_local global i32 0, align 4
@I40E_FLAG_PTP = common dso_local global i32 0, align 4
@I40E_PFINT_ICR0_ENA_TIMESYNC_MASK = common dso_local global i32 0, align 4
@I40E_PFINT_DYN_CTL0 = common dso_local global i32 0, align 4
@I40E_PFINT_DYN_CTL0_SW_ITR_INDX_MASK = common dso_local global i32 0, align 4
@I40E_PFINT_DYN_CTL0_INTENA_MSK_MASK = common dso_local global i32 0, align 4
@I40E_PFINT_STAT_CTL0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i40e_pf*)* @i40e_enable_misc_int_causes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i40e_enable_misc_int_causes(%struct.i40e_pf* %0) #0 {
  %2 = alloca %struct.i40e_pf*, align 8
  %3 = alloca %struct.i40e_hw*, align 8
  %4 = alloca i32, align 4
  store %struct.i40e_pf* %0, %struct.i40e_pf** %2, align 8
  %5 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %6 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %5, i32 0, i32 1
  store %struct.i40e_hw* %6, %struct.i40e_hw** %3, align 8
  %7 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %8 = load i32, i32* @I40E_PFINT_ICR0_ENA, align 4
  %9 = call i32 @wr32(%struct.i40e_hw* %7, i32 %8, i32 0)
  %10 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %11 = load i32, i32* @I40E_PFINT_ICR0, align 4
  %12 = call i32 @rd32(%struct.i40e_hw* %10, i32 %11)
  %13 = load i32, i32* @I40E_PFINT_ICR0_ENA_ECC_ERR_MASK, align 4
  %14 = load i32, i32* @I40E_PFINT_ICR0_ENA_MAL_DETECT_MASK, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @I40E_PFINT_ICR0_ENA_GRST_MASK, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @I40E_PFINT_ICR0_ENA_PCI_EXCEPTION_MASK, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @I40E_PFINT_ICR0_ENA_GPIO_MASK, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @I40E_PFINT_ICR0_ENA_HMC_ERR_MASK, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @I40E_PFINT_ICR0_ENA_VFLR_MASK, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @I40E_PFINT_ICR0_ENA_ADMINQ_MASK, align 4
  %27 = or i32 %25, %26
  store i32 %27, i32* %4, align 4
  %28 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %29 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @I40E_FLAG_IWARP_ENABLED, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %1
  %35 = load i32, i32* @I40E_PFINT_ICR0_ENA_PE_CRITERR_MASK, align 4
  %36 = load i32, i32* %4, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %34, %1
  %39 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %40 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @I40E_FLAG_PTP, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %38
  %46 = load i32, i32* @I40E_PFINT_ICR0_ENA_TIMESYNC_MASK, align 4
  %47 = load i32, i32* %4, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %4, align 4
  br label %49

49:                                               ; preds = %45, %38
  %50 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %51 = load i32, i32* @I40E_PFINT_ICR0_ENA, align 4
  %52 = load i32, i32* %4, align 4
  %53 = call i32 @wr32(%struct.i40e_hw* %50, i32 %51, i32 %52)
  %54 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %55 = load i32, i32* @I40E_PFINT_DYN_CTL0, align 4
  %56 = load i32, i32* @I40E_PFINT_DYN_CTL0_SW_ITR_INDX_MASK, align 4
  %57 = load i32, i32* @I40E_PFINT_DYN_CTL0_INTENA_MSK_MASK, align 4
  %58 = or i32 %56, %57
  %59 = call i32 @wr32(%struct.i40e_hw* %54, i32 %55, i32 %58)
  %60 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %61 = load i32, i32* @I40E_PFINT_STAT_CTL0, align 4
  %62 = call i32 @wr32(%struct.i40e_hw* %60, i32 %61, i32 0)
  ret void
}

declare dso_local i32 @wr32(%struct.i40e_hw*, i32, i32) #1

declare dso_local i32 @rd32(%struct.i40e_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
