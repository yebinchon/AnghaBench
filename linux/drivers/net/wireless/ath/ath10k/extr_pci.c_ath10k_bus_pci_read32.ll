; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_pci.c_ath10k_bus_pci_read32.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_pci.c_ath10k_bus_pci_read32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32 }
%struct.ath10k_pci = type { i64, i64 }

@.str = private unnamed_addr constant [71 x i8] c"refusing to read mmio out of bounds at 0x%08x - 0x%08zx (max 0x%08zx)\0A\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"failed to wake target for read32 at 0x%08x: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ath10k*, i64)* @ath10k_bus_pci_read32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ath10k_bus_pci_read32(%struct.ath10k* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.ath10k*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.ath10k_pci*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %10 = call %struct.ath10k_pci* @ath10k_pci_priv(%struct.ath10k* %9)
  store %struct.ath10k_pci* %10, %struct.ath10k_pci** %6, align 8
  %11 = load i64, i64* %5, align 8
  %12 = add i64 %11, 8
  %13 = load %struct.ath10k_pci*, %struct.ath10k_pci** %6, align 8
  %14 = getelementptr inbounds %struct.ath10k_pci, %struct.ath10k_pci* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ugt i64 %12, %15
  %17 = zext i1 %16 to i32
  %18 = call i64 @unlikely(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %2
  %21 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %22 = load i64, i64* %5, align 8
  %23 = load i64, i64* %5, align 8
  %24 = add i64 %23, 8
  %25 = trunc i64 %24 to i32
  %26 = load %struct.ath10k_pci*, %struct.ath10k_pci** %6, align 8
  %27 = getelementptr inbounds %struct.ath10k_pci, %struct.ath10k_pci* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i32 (%struct.ath10k*, i8*, i64, i32, ...) @ath10k_warn(%struct.ath10k* %21, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0), i64 %22, i32 %25, i64 %28)
  store i64 0, i64* %3, align 8
  br label %50

30:                                               ; preds = %2
  %31 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %32 = call i32 @ath10k_pci_wake(%struct.ath10k* %31)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %30
  %36 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %37 = load i64, i64* %5, align 8
  %38 = load i32, i32* %8, align 4
  %39 = call i32 (%struct.ath10k*, i8*, i64, i32, ...) @ath10k_warn(%struct.ath10k* %36, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i64 %37, i32 %38)
  store i64 4294967295, i64* %3, align 8
  br label %50

40:                                               ; preds = %30
  %41 = load %struct.ath10k_pci*, %struct.ath10k_pci** %6, align 8
  %42 = getelementptr inbounds %struct.ath10k_pci, %struct.ath10k_pci* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* %5, align 8
  %45 = add nsw i64 %43, %44
  %46 = call i64 @ioread32(i64 %45)
  store i64 %46, i64* %7, align 8
  %47 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %48 = call i32 @ath10k_pci_sleep(%struct.ath10k* %47)
  %49 = load i64, i64* %7, align 8
  store i64 %49, i64* %3, align 8
  br label %50

50:                                               ; preds = %40, %35, %20
  %51 = load i64, i64* %3, align 8
  ret i64 %51
}

declare dso_local %struct.ath10k_pci* @ath10k_pci_priv(%struct.ath10k*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*, i64, i32, ...) #1

declare dso_local i32 @ath10k_pci_wake(%struct.ath10k*) #1

declare dso_local i64 @ioread32(i64) #1

declare dso_local i32 @ath10k_pci_sleep(%struct.ath10k*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
