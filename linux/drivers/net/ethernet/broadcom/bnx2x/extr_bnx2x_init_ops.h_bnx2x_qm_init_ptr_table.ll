; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_init_ops.h_bnx2x_qm_init_ptr_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_init_ops.h_bnx2x_qm_init_ptr_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }

@QM_REG_BASEADDR = common dso_local global i32 0, align 4
@QM_REG_PTRTBL = common dso_local global i32 0, align 4
@QM_REG_BASEADDR_EXT_A = common dso_local global i32 0, align 4
@QM_REG_PTRTBL_EXT_A = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*, i32, i32)* @bnx2x_qm_init_ptr_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_qm_init_ptr_table(%struct.bnx2x* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.bnx2x*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  %8 = call i32 @QM_INIT(i32 %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %3
  br label %30

11:                                               ; preds = %3
  %12 = load i32, i32* %6, align 4
  switch i32 %12, label %30 [
    i32 129, label %13
    i32 128, label %13
    i32 130, label %29
  ]

13:                                               ; preds = %11, %11
  %14 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @QM_REG_BASEADDR, align 4
  %17 = load i32, i32* @QM_REG_PTRTBL, align 4
  %18 = call i32 @bnx2x_qm_set_ptr_table(%struct.bnx2x* %14, i32 %15, i32 %16, i32 %17)
  %19 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %20 = call i32 @CHIP_IS_E1H(%struct.bnx2x* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %13
  %23 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @QM_REG_BASEADDR_EXT_A, align 4
  %26 = load i32, i32* @QM_REG_PTRTBL_EXT_A, align 4
  %27 = call i32 @bnx2x_qm_set_ptr_table(%struct.bnx2x* %23, i32 %24, i32 %25, i32 %26)
  br label %28

28:                                               ; preds = %22, %13
  br label %30

29:                                               ; preds = %11
  br label %30

30:                                               ; preds = %10, %11, %29, %28
  ret void
}

declare dso_local i32 @QM_INIT(i32) #1

declare dso_local i32 @bnx2x_qm_set_ptr_table(%struct.bnx2x*, i32, i32, i32) #1

declare dso_local i32 @CHIP_IS_E1H(%struct.bnx2x*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
