; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_pci.c_ath10k_pci_dump_memory_sram.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_pci.c_ath10k_pci_dump_memory_sram.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32 }
%struct.ath10k_mem_region = type { i64, i64 }
%struct.ath10k_pci = type { i64 }

@QCA99X0_PCIE_BAR0_START_REG = common dso_local global i64 0, align 8
@QCA99X0_CPU_MEM_ADDR_REG = common dso_local global i64 0, align 8
@QCA99X0_CPU_MEM_DATA_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k*, %struct.ath10k_mem_region*, i32*)* @ath10k_pci_dump_memory_sram to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_pci_dump_memory_sram(%struct.ath10k* %0, %struct.ath10k_mem_region* %1, i32* %2) #0 {
  %4 = alloca %struct.ath10k*, align 8
  %5 = alloca %struct.ath10k_mem_region*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.ath10k_pci*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.ath10k* %0, %struct.ath10k** %4, align 8
  store %struct.ath10k_mem_region* %1, %struct.ath10k_mem_region** %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %11 = call %struct.ath10k_pci* @ath10k_pci_priv(%struct.ath10k* %10)
  store %struct.ath10k_pci* %11, %struct.ath10k_pci** %7, align 8
  %12 = load %struct.ath10k_pci*, %struct.ath10k_pci** %7, align 8
  %13 = getelementptr inbounds %struct.ath10k_pci, %struct.ath10k_pci* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @QCA99X0_PCIE_BAR0_START_REG, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i64 @ioread32(i64 %16)
  store i64 %17, i64* %8, align 8
  %18 = load %struct.ath10k_mem_region*, %struct.ath10k_mem_region** %5, align 8
  %19 = getelementptr inbounds %struct.ath10k_mem_region, %struct.ath10k_mem_region* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* %8, align 8
  %22 = add nsw i64 %21, %20
  store i64 %22, i64* %8, align 8
  store i64 0, i64* %9, align 8
  br label %23

23:                                               ; preds = %49, %3
  %24 = load i64, i64* %9, align 8
  %25 = load %struct.ath10k_mem_region*, %struct.ath10k_mem_region** %5, align 8
  %26 = getelementptr inbounds %struct.ath10k_mem_region, %struct.ath10k_mem_region* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp slt i64 %24, %27
  br i1 %28, label %29, label %52

29:                                               ; preds = %23
  %30 = load i64, i64* %8, align 8
  %31 = load i64, i64* %9, align 8
  %32 = add nsw i64 %30, %31
  %33 = load %struct.ath10k_pci*, %struct.ath10k_pci** %7, align 8
  %34 = getelementptr inbounds %struct.ath10k_pci, %struct.ath10k_pci* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @QCA99X0_CPU_MEM_ADDR_REG, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @iowrite32(i64 %32, i64 %37)
  %39 = load %struct.ath10k_pci*, %struct.ath10k_pci** %7, align 8
  %40 = getelementptr inbounds %struct.ath10k_pci, %struct.ath10k_pci* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @QCA99X0_CPU_MEM_DATA_REG, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i64 @ioread32(i64 %43)
  %45 = load i32*, i32** %6, align 8
  %46 = load i64, i64* %9, align 8
  %47 = getelementptr inbounds i32, i32* %45, i64 %46
  %48 = bitcast i32* %47 to i64*
  store i64 %44, i64* %48, align 8
  br label %49

49:                                               ; preds = %29
  %50 = load i64, i64* %9, align 8
  %51 = add nsw i64 %50, 4
  store i64 %51, i64* %9, align 8
  br label %23

52:                                               ; preds = %23
  %53 = load %struct.ath10k_mem_region*, %struct.ath10k_mem_region** %5, align 8
  %54 = getelementptr inbounds %struct.ath10k_mem_region, %struct.ath10k_mem_region* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = trunc i64 %55 to i32
  ret i32 %56
}

declare dso_local %struct.ath10k_pci* @ath10k_pci_priv(%struct.ath10k*) #1

declare dso_local i64 @ioread32(i64) #1

declare dso_local i32 @iowrite32(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
