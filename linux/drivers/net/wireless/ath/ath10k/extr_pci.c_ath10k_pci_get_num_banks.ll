; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_pci.c_ath10k_pci_get_num_banks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_pci.c_ath10k_pci_get_num_banks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.ath10k_pci = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@SOC_CHIP_ID_REV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"unknown number of banks, assuming 1\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k*)* @ath10k_pci_get_num_banks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_pci_get_num_banks(%struct.ath10k* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath10k*, align 8
  %4 = alloca %struct.ath10k_pci*, align 8
  store %struct.ath10k* %0, %struct.ath10k** %3, align 8
  %5 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %6 = call %struct.ath10k_pci* @ath10k_pci_priv(%struct.ath10k* %5)
  store %struct.ath10k_pci* %6, %struct.ath10k_pci** %4, align 8
  %7 = load %struct.ath10k_pci*, %struct.ath10k_pci** %4, align 8
  %8 = getelementptr inbounds %struct.ath10k_pci, %struct.ath10k_pci* %7, i32 0, i32 0
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %25 [
    i32 130, label %12
    i32 131, label %12
    i32 128, label %12
    i32 132, label %12
    i32 129, label %12
    i32 133, label %12
    i32 144, label %13
    i32 143, label %13
    i32 134, label %24
  ]

12:                                               ; preds = %1, %1, %1, %1, %1, %1
  store i32 1, i32* %2, align 4
  br label %28

13:                                               ; preds = %1, %1
  %14 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %15 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @SOC_CHIP_ID_REV, align 4
  %19 = call i32 @MS(i32 %17, i32 %18)
  switch i32 %19, label %23 [
    i32 142, label %20
    i32 141, label %20
    i32 139, label %20
    i32 138, label %20
    i32 140, label %21
    i32 137, label %22
    i32 136, label %22
    i32 135, label %22
  ]

20:                                               ; preds = %13, %13, %13, %13
  store i32 3, i32* %2, align 4
  br label %28

21:                                               ; preds = %13
  store i32 2, i32* %2, align 4
  br label %28

22:                                               ; preds = %13, %13, %13
  store i32 9, i32* %2, align 4
  br label %28

23:                                               ; preds = %13
  br label %25

24:                                               ; preds = %1
  store i32 9, i32* %2, align 4
  br label %28

25:                                               ; preds = %1, %23
  %26 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %27 = call i32 @ath10k_warn(%struct.ath10k* %26, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %28

28:                                               ; preds = %25, %24, %22, %21, %20, %12
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local %struct.ath10k_pci* @ath10k_pci_priv(%struct.ath10k*) #1

declare dso_local i32 @MS(i32, i32) #1

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
