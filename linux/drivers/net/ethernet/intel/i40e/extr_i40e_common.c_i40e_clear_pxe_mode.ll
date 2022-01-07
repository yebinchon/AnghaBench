; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_common.c_i40e_clear_pxe_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_common.c_i40e_clear_pxe_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_hw = type { i64 }

@I40E_GLLAN_RCTL_0 = common dso_local global i32 0, align 4
@I40E_GLLAN_RCTL_0_PXE_MODE_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i40e_clear_pxe_mode(%struct.i40e_hw* %0) #0 {
  %2 = alloca %struct.i40e_hw*, align 8
  %3 = alloca i32, align 4
  store %struct.i40e_hw* %0, %struct.i40e_hw** %2, align 8
  %4 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %5 = call i64 @i40e_check_asq_alive(%struct.i40e_hw* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %9 = call i32 @i40e_aq_clear_pxe_mode(%struct.i40e_hw* %8, i32* null)
  br label %10

10:                                               ; preds = %7, %1
  %11 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %12 = load i32, i32* @I40E_GLLAN_RCTL_0, align 4
  %13 = call i32 @rd32(%struct.i40e_hw* %11, i32 %12)
  store i32 %13, i32* %3, align 4
  %14 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %15 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %10
  %19 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %20 = load i32, i32* @I40E_GLLAN_RCTL_0, align 4
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* @I40E_GLLAN_RCTL_0_PXE_MODE_MASK, align 4
  %23 = xor i32 %22, -1
  %24 = and i32 %21, %23
  %25 = call i32 @wr32(%struct.i40e_hw* %19, i32 %20, i32 %24)
  br label %33

26:                                               ; preds = %10
  %27 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %28 = load i32, i32* @I40E_GLLAN_RCTL_0, align 4
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* @I40E_GLLAN_RCTL_0_PXE_MODE_MASK, align 4
  %31 = or i32 %29, %30
  %32 = call i32 @wr32(%struct.i40e_hw* %27, i32 %28, i32 %31)
  br label %33

33:                                               ; preds = %26, %18
  ret void
}

declare dso_local i64 @i40e_check_asq_alive(%struct.i40e_hw*) #1

declare dso_local i32 @i40e_aq_clear_pxe_mode(%struct.i40e_hw*, i32*) #1

declare dso_local i32 @rd32(%struct.i40e_hw*, i32) #1

declare dso_local i32 @wr32(%struct.i40e_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
