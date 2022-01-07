; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_pci.c___ath10k_pci_diag_read_hi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_pci.c___ath10k_pci_diag_read_hi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32 }

@.str = private unnamed_addr constant [61 x i8] c"failed to get memcpy hi address for firmware address %d: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"failed to memcpy firmware memory from %d (%d B): %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k*, i8*, i32, i32)* @__ath10k_pci_diag_read_hi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__ath10k_pci_diag_read_hi(%struct.ath10k* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ath10k*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* %8, align 4
  %14 = call i32 @host_interest_item_address(i32 %13)
  store i32 %14, i32* %10, align 4
  %15 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %16 = load i32, i32* %10, align 4
  %17 = call i32 @ath10k_pci_diag_read32(%struct.ath10k* %15, i32 %16, i32* %11)
  store i32 %17, i32* %12, align 4
  %18 = load i32, i32* %12, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %4
  %21 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* %12, align 4
  %24 = call i32 (%struct.ath10k*, i8*, i32, i32, ...) @ath10k_warn(%struct.ath10k* %21, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %23)
  %25 = load i32, i32* %12, align 4
  store i32 %25, i32* %5, align 4
  br label %42

26:                                               ; preds = %4
  %27 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %28 = load i32, i32* %11, align 4
  %29 = load i8*, i8** %7, align 8
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @ath10k_pci_diag_read_mem(%struct.ath10k* %27, i32 %28, i8* %29, i32 %30)
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* %12, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %26
  %35 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* %12, align 4
  %39 = call i32 (%struct.ath10k*, i8*, i32, i32, ...) @ath10k_warn(%struct.ath10k* %35, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %36, i32 %37, i32 %38)
  %40 = load i32, i32* %12, align 4
  store i32 %40, i32* %5, align 4
  br label %42

41:                                               ; preds = %26
  store i32 0, i32* %5, align 4
  br label %42

42:                                               ; preds = %41, %34, %20
  %43 = load i32, i32* %5, align 4
  ret i32 %43
}

declare dso_local i32 @host_interest_item_address(i32) #1

declare dso_local i32 @ath10k_pci_diag_read32(%struct.ath10k*, i32, i32*) #1

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*, i32, i32, ...) #1

declare dso_local i32 @ath10k_pci_diag_read_mem(%struct.ath10k*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
