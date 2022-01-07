; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_hw_if.c_hinic_set_msix_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_hw_if.c_hinic_set_msix_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hinic_hwif = type { i64 }

@HINIC_PCI_MSIX_ENTRY_SIZE = common dso_local global i32 0, align 4
@HINIC_PCI_MSIX_ENTRY_VECTOR_CTRL = common dso_local global i64 0, align 8
@HINIC_PCI_MSIX_ENTRY_CTRL_MASKBIT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hinic_set_msix_state(%struct.hinic_hwif* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.hinic_hwif*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.hinic_hwif* %0, %struct.hinic_hwif** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @HINIC_PCI_MSIX_ENTRY_SIZE, align 4
  %11 = mul nsw i32 %9, %10
  %12 = sext i32 %11 to i64
  %13 = load i64, i64* @HINIC_PCI_MSIX_ENTRY_VECTOR_CTRL, align 8
  %14 = add nsw i64 %12, %13
  store i64 %14, i64* %7, align 8
  %15 = load %struct.hinic_hwif*, %struct.hinic_hwif** %4, align 8
  %16 = getelementptr inbounds %struct.hinic_hwif, %struct.hinic_hwif* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* %7, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i64 @readl(i64 %19)
  store i64 %20, i64* %8, align 8
  %21 = load i64, i64* @HINIC_PCI_MSIX_ENTRY_CTRL_MASKBIT, align 8
  %22 = xor i64 %21, -1
  %23 = load i64, i64* %8, align 8
  %24 = and i64 %23, %22
  store i64 %24, i64* %8, align 8
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %3
  %28 = load i64, i64* @HINIC_PCI_MSIX_ENTRY_CTRL_MASKBIT, align 8
  %29 = load i64, i64* %8, align 8
  %30 = or i64 %29, %28
  store i64 %30, i64* %8, align 8
  br label %31

31:                                               ; preds = %27, %3
  %32 = load i64, i64* %8, align 8
  %33 = load %struct.hinic_hwif*, %struct.hinic_hwif** %4, align 8
  %34 = getelementptr inbounds %struct.hinic_hwif, %struct.hinic_hwif* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* %7, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @writel(i64 %32, i64 %37)
  ret void
}

declare dso_local i64 @readl(i64) #1

declare dso_local i32 @writel(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
