; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_pci.c_ath10k_pci_dump_memory_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_pci.c_ath10k_pci_dump_memory_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32 }
%struct.ath10k_mem_region = type { i64, i64 }
%struct.ath10k_pci = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k*, %struct.ath10k_mem_region*, i32*)* @ath10k_pci_dump_memory_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_pci_dump_memory_reg(%struct.ath10k* %0, %struct.ath10k_mem_region* %1, i32* %2) #0 {
  %4 = alloca %struct.ath10k*, align 8
  %5 = alloca %struct.ath10k_mem_region*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.ath10k_pci*, align 8
  %8 = alloca i64, align 8
  store %struct.ath10k* %0, %struct.ath10k** %4, align 8
  store %struct.ath10k_mem_region* %1, %struct.ath10k_mem_region** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %10 = call %struct.ath10k_pci* @ath10k_pci_priv(%struct.ath10k* %9)
  store %struct.ath10k_pci* %10, %struct.ath10k_pci** %7, align 8
  store i64 0, i64* %8, align 8
  br label %11

11:                                               ; preds = %32, %3
  %12 = load i64, i64* %8, align 8
  %13 = load %struct.ath10k_mem_region*, %struct.ath10k_mem_region** %5, align 8
  %14 = getelementptr inbounds %struct.ath10k_mem_region, %struct.ath10k_mem_region* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp slt i64 %12, %15
  br i1 %16, label %17, label %35

17:                                               ; preds = %11
  %18 = load %struct.ath10k_pci*, %struct.ath10k_pci** %7, align 8
  %19 = getelementptr inbounds %struct.ath10k_pci, %struct.ath10k_pci* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.ath10k_mem_region*, %struct.ath10k_mem_region** %5, align 8
  %22 = getelementptr inbounds %struct.ath10k_mem_region, %struct.ath10k_mem_region* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = add nsw i64 %20, %23
  %25 = load i64, i64* %8, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i64 @ioread32(i64 %26)
  %28 = load i32*, i32** %6, align 8
  %29 = load i64, i64* %8, align 8
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  %31 = bitcast i32* %30 to i64*
  store i64 %27, i64* %31, align 8
  br label %32

32:                                               ; preds = %17
  %33 = load i64, i64* %8, align 8
  %34 = add nsw i64 %33, 4
  store i64 %34, i64* %8, align 8
  br label %11

35:                                               ; preds = %11
  %36 = load %struct.ath10k_mem_region*, %struct.ath10k_mem_region** %5, align 8
  %37 = getelementptr inbounds %struct.ath10k_mem_region, %struct.ath10k_mem_region* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = trunc i64 %38 to i32
  ret i32 %39
}

declare dso_local %struct.ath10k_pci* @ath10k_pci_priv(%struct.ath10k*) #1

declare dso_local i64 @ioread32(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
