; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_txrx.c_i40e_force_wb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_txrx.c_i40e_force_wb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_vsi = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.i40e_q_vector = type { i32 }

@I40E_FLAG_MSIX_ENABLED = common dso_local global i32 0, align 4
@I40E_PFINT_DYN_CTLN_INTENA_MASK = common dso_local global i32 0, align 4
@I40E_PFINT_DYN_CTLN_ITR_INDX_MASK = common dso_local global i32 0, align 4
@I40E_PFINT_DYN_CTLN_SWINT_TRIG_MASK = common dso_local global i32 0, align 4
@I40E_PFINT_DYN_CTLN_SW_ITR_INDX_ENA_MASK = common dso_local global i32 0, align 4
@I40E_PFINT_DYN_CTL0_INTENA_MASK = common dso_local global i32 0, align 4
@I40E_PFINT_DYN_CTL0_ITR_INDX_MASK = common dso_local global i32 0, align 4
@I40E_PFINT_DYN_CTL0_SWINT_TRIG_MASK = common dso_local global i32 0, align 4
@I40E_PFINT_DYN_CTL0_SW_ITR_INDX_ENA_MASK = common dso_local global i32 0, align 4
@I40E_PFINT_DYN_CTL0 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i40e_force_wb(%struct.i40e_vsi* %0, %struct.i40e_q_vector* %1) #0 {
  %3 = alloca %struct.i40e_vsi*, align 8
  %4 = alloca %struct.i40e_q_vector*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.i40e_vsi* %0, %struct.i40e_vsi** %3, align 8
  store %struct.i40e_q_vector* %1, %struct.i40e_q_vector** %4, align 8
  %7 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %8 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @I40E_FLAG_MSIX_ENABLED, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %33

15:                                               ; preds = %2
  %16 = load i32, i32* @I40E_PFINT_DYN_CTLN_INTENA_MASK, align 4
  %17 = load i32, i32* @I40E_PFINT_DYN_CTLN_ITR_INDX_MASK, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @I40E_PFINT_DYN_CTLN_SWINT_TRIG_MASK, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @I40E_PFINT_DYN_CTLN_SW_ITR_INDX_ENA_MASK, align 4
  %22 = or i32 %20, %21
  store i32 %22, i32* %5, align 4
  %23 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %24 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load %struct.i40e_q_vector*, %struct.i40e_q_vector** %4, align 8
  %28 = getelementptr inbounds %struct.i40e_q_vector, %struct.i40e_q_vector* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @I40E_PFINT_DYN_CTLN(i32 %29)
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @wr32(i32* %26, i32 %30, i32 %31)
  br label %48

33:                                               ; preds = %2
  %34 = load i32, i32* @I40E_PFINT_DYN_CTL0_INTENA_MASK, align 4
  %35 = load i32, i32* @I40E_PFINT_DYN_CTL0_ITR_INDX_MASK, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @I40E_PFINT_DYN_CTL0_SWINT_TRIG_MASK, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @I40E_PFINT_DYN_CTL0_SW_ITR_INDX_ENA_MASK, align 4
  %40 = or i32 %38, %39
  store i32 %40, i32* %6, align 4
  %41 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %42 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i32, i32* @I40E_PFINT_DYN_CTL0, align 4
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @wr32(i32* %44, i32 %45, i32 %46)
  br label %48

48:                                               ; preds = %33, %15
  ret void
}

declare dso_local i32 @wr32(i32*, i32, i32) #1

declare dso_local i32 @I40E_PFINT_DYN_CTLN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
