; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_pci.c_ath10k_pci_dump_memory_generic.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_pci.c_ath10k_pci_dump_memory_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32 }
%struct.ath10k_mem_region = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [38 x i8] c"failed to copy ramdump region %s: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k*, %struct.ath10k_mem_region*, i32*)* @ath10k_pci_dump_memory_generic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_pci_dump_memory_generic(%struct.ath10k* %0, %struct.ath10k_mem_region* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath10k*, align 8
  %6 = alloca %struct.ath10k_mem_region*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %5, align 8
  store %struct.ath10k_mem_region* %1, %struct.ath10k_mem_region** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load %struct.ath10k_mem_region*, %struct.ath10k_mem_region** %6, align 8
  %10 = getelementptr inbounds %struct.ath10k_mem_region, %struct.ath10k_mem_region* %9, i32 0, i32 3
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp sgt i64 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %3
  %15 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %16 = load %struct.ath10k_mem_region*, %struct.ath10k_mem_region** %6, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = load %struct.ath10k_mem_region*, %struct.ath10k_mem_region** %6, align 8
  %19 = getelementptr inbounds %struct.ath10k_mem_region, %struct.ath10k_mem_region* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @ath10k_pci_dump_memory_section(%struct.ath10k* %15, %struct.ath10k_mem_region* %16, i32* %17, i32 %20)
  store i32 %21, i32* %4, align 4
  br label %46

22:                                               ; preds = %3
  %23 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %24 = load %struct.ath10k_mem_region*, %struct.ath10k_mem_region** %6, align 8
  %25 = getelementptr inbounds %struct.ath10k_mem_region, %struct.ath10k_mem_region* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = load i32*, i32** %7, align 8
  %28 = load %struct.ath10k_mem_region*, %struct.ath10k_mem_region** %6, align 8
  %29 = getelementptr inbounds %struct.ath10k_mem_region, %struct.ath10k_mem_region* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @ath10k_pci_diag_read_mem(%struct.ath10k* %23, i32 %26, i32* %27, i32 %30)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %22
  %35 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %36 = load %struct.ath10k_mem_region*, %struct.ath10k_mem_region** %6, align 8
  %37 = getelementptr inbounds %struct.ath10k_mem_region, %struct.ath10k_mem_region* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @ath10k_warn(%struct.ath10k* %35, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %38, i32 %39)
  %41 = load i32, i32* %8, align 4
  store i32 %41, i32* %4, align 4
  br label %46

42:                                               ; preds = %22
  %43 = load %struct.ath10k_mem_region*, %struct.ath10k_mem_region** %6, align 8
  %44 = getelementptr inbounds %struct.ath10k_mem_region, %struct.ath10k_mem_region* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  store i32 %45, i32* %4, align 4
  br label %46

46:                                               ; preds = %42, %34, %14
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i32 @ath10k_pci_dump_memory_section(%struct.ath10k*, %struct.ath10k_mem_region*, i32*, i32) #1

declare dso_local i32 @ath10k_pci_diag_read_mem(%struct.ath10k*, i32, i32*, i32) #1

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
