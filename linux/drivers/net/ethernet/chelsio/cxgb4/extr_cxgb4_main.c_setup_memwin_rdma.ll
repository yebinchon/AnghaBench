; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_main.c_setup_memwin_rdma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_main.c_setup_memwin_rdma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i64 }

@PCI_BASE_ADDRESS_2 = common dso_local global i32 0, align 4
@PCI_BASE_ADDRESS_MEM_MASK = common dso_local global i32 0, align 4
@PCIE_MEM_ACCESS_BASE_WIN_A = common dso_local global i32 0, align 4
@PCIE_MEM_ACCESS_OFFSET_A = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*)* @setup_memwin_rdma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_memwin_rdma(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  %5 = load %struct.adapter*, %struct.adapter** %2, align 8
  %6 = getelementptr inbounds %struct.adapter, %struct.adapter* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %59

11:                                               ; preds = %1
  %12 = load %struct.adapter*, %struct.adapter** %2, align 8
  %13 = load i32, i32* @PCI_BASE_ADDRESS_2, align 4
  %14 = call i32 @t4_read_pcie_cfg4(%struct.adapter* %12, i32 %13)
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* @PCI_BASE_ADDRESS_MEM_MASK, align 4
  %16 = load i32, i32* %3, align 4
  %17 = and i32 %16, %15
  store i32 %17, i32* %3, align 4
  %18 = load %struct.adapter*, %struct.adapter** %2, align 8
  %19 = getelementptr inbounds %struct.adapter, %struct.adapter* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.adapter*, %struct.adapter** %2, align 8
  %22 = getelementptr inbounds %struct.adapter, %struct.adapter* %21, i32 0, i32 0
  %23 = call i64 @OCQ_WIN_OFFSET(i32 %20, %struct.TYPE_4__* %22)
  %24 = load i32, i32* %3, align 4
  %25 = sext i32 %24 to i64
  %26 = add nsw i64 %25, %23
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %3, align 4
  %28 = load %struct.adapter*, %struct.adapter** %2, align 8
  %29 = getelementptr inbounds %struct.adapter, %struct.adapter* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @roundup_pow_of_two(i64 %32)
  %34 = ashr i32 %33, 10
  store i32 %34, i32* %4, align 4
  %35 = load %struct.adapter*, %struct.adapter** %2, align 8
  %36 = load i32, i32* @PCIE_MEM_ACCESS_BASE_WIN_A, align 4
  %37 = call i32 @PCIE_MEM_ACCESS_REG(i32 %36, i32 3)
  %38 = load i32, i32* %3, align 4
  %39 = call i32 @BIR_V(i32 1)
  %40 = or i32 %38, %39
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @ilog2(i32 %41)
  %43 = call i32 @WINDOW_V(i32 %42)
  %44 = or i32 %40, %43
  %45 = call i32 @t4_write_reg(%struct.adapter* %35, i32 %37, i32 %44)
  %46 = load %struct.adapter*, %struct.adapter** %2, align 8
  %47 = load i32, i32* @PCIE_MEM_ACCESS_OFFSET_A, align 4
  %48 = call i32 @PCIE_MEM_ACCESS_REG(i32 %47, i32 3)
  %49 = load %struct.adapter*, %struct.adapter** %2, align 8
  %50 = getelementptr inbounds %struct.adapter, %struct.adapter* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @t4_write_reg(%struct.adapter* %46, i32 %48, i32 %53)
  %55 = load %struct.adapter*, %struct.adapter** %2, align 8
  %56 = load i32, i32* @PCIE_MEM_ACCESS_OFFSET_A, align 4
  %57 = call i32 @PCIE_MEM_ACCESS_REG(i32 %56, i32 3)
  %58 = call i32 @t4_read_reg(%struct.adapter* %55, i32 %57)
  br label %59

59:                                               ; preds = %11, %1
  ret void
}

declare dso_local i32 @t4_read_pcie_cfg4(%struct.adapter*, i32) #1

declare dso_local i64 @OCQ_WIN_OFFSET(i32, %struct.TYPE_4__*) #1

declare dso_local i32 @roundup_pow_of_two(i64) #1

declare dso_local i32 @t4_write_reg(%struct.adapter*, i32, i32) #1

declare dso_local i32 @PCIE_MEM_ACCESS_REG(i32, i32) #1

declare dso_local i32 @BIR_V(i32) #1

declare dso_local i32 @WINDOW_V(i32) #1

declare dso_local i32 @ilog2(i32) #1

declare dso_local i32 @t4_read_reg(%struct.adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
