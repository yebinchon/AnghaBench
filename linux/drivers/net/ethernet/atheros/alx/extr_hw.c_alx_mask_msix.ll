; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/alx/extr_hw.c_alx_mask_msix.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/alx/extr_hw.c_alx_mask_msix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alx_hw = type { i32 }

@ALX_MSIX_ENTRY_BASE = common dso_local global i64 0, align 8
@PCI_MSIX_ENTRY_SIZE = common dso_local global i32 0, align 4
@PCI_MSIX_ENTRY_VECTOR_CTRL = common dso_local global i64 0, align 8
@PCI_MSIX_ENTRY_CTRL_MASKBIT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @alx_mask_msix(%struct.alx_hw* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.alx_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.alx_hw* %0, %struct.alx_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i64, i64* @ALX_MSIX_ENTRY_BASE, align 8
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @PCI_MSIX_ENTRY_SIZE, align 4
  %12 = mul nsw i32 %10, %11
  %13 = sext i32 %12 to i64
  %14 = add nsw i64 %9, %13
  %15 = load i64, i64* @PCI_MSIX_ENTRY_VECTOR_CTRL, align 8
  %16 = add nsw i64 %14, %15
  store i64 %16, i64* %7, align 8
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i64, i64* @PCI_MSIX_ENTRY_CTRL_MASKBIT, align 8
  br label %22

21:                                               ; preds = %3
  br label %22

22:                                               ; preds = %21, %19
  %23 = phi i64 [ %20, %19 ], [ 0, %21 ]
  store i64 %23, i64* %8, align 8
  %24 = load %struct.alx_hw*, %struct.alx_hw** %4, align 8
  %25 = load i64, i64* %7, align 8
  %26 = load i64, i64* %8, align 8
  %27 = call i32 @alx_write_mem32(%struct.alx_hw* %24, i64 %25, i64 %26)
  %28 = load %struct.alx_hw*, %struct.alx_hw** %4, align 8
  %29 = call i32 @alx_post_write(%struct.alx_hw* %28)
  ret void
}

declare dso_local i32 @alx_write_mem32(%struct.alx_hw*, i64, i64) #1

declare dso_local i32 @alx_post_write(%struct.alx_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
