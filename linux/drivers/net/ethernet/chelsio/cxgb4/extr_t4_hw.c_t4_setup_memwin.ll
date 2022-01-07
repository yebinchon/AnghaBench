; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_t4_hw.c_t4_setup_memwin.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_t4_hw.c_t4_setup_memwin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }

@PCIE_MEM_ACCESS_BASE_WIN_A = common dso_local global i32 0, align 4
@MEMWIN0_APERTURE = common dso_local global i32 0, align 4
@WINDOW_SHIFT_X = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @t4_setup_memwin(%struct.adapter* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.adapter*, %struct.adapter** %4, align 8
  %8 = load i32, i32* @PCIE_MEM_ACCESS_BASE_WIN_A, align 4
  %9 = load i32, i32* %6, align 4
  %10 = call i32 @PCIE_MEM_ACCESS_REG(i32 %8, i32 %9)
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @BIR_V(i32 0)
  %13 = or i32 %11, %12
  %14 = load i32, i32* @MEMWIN0_APERTURE, align 4
  %15 = call i64 @ilog2(i32 %14)
  %16 = load i64, i64* @WINDOW_SHIFT_X, align 8
  %17 = sub nsw i64 %15, %16
  %18 = call i32 @WINDOW_V(i64 %17)
  %19 = or i32 %13, %18
  %20 = call i32 @t4_write_reg(%struct.adapter* %7, i32 %10, i32 %19)
  %21 = load %struct.adapter*, %struct.adapter** %4, align 8
  %22 = load i32, i32* @PCIE_MEM_ACCESS_BASE_WIN_A, align 4
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @PCIE_MEM_ACCESS_REG(i32 %22, i32 %23)
  %25 = call i32 @t4_read_reg(%struct.adapter* %21, i32 %24)
  ret void
}

declare dso_local i32 @t4_write_reg(%struct.adapter*, i32, i32) #1

declare dso_local i32 @PCIE_MEM_ACCESS_REG(i32, i32) #1

declare dso_local i32 @BIR_V(i32) #1

declare dso_local i32 @WINDOW_V(i64) #1

declare dso_local i64 @ilog2(i32) #1

declare dso_local i32 @t4_read_reg(%struct.adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
