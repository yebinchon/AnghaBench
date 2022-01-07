; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_main.c_nic_name.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_main.c_nic_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }

@OC_NAME = common dso_local global i8* null, align 8
@OC_NAME_BE = common dso_local global i8* null, align 8
@OC_NAME_LANCER = common dso_local global i8* null, align 8
@BE3_NAME = common dso_local global i8* null, align 8
@OC_NAME_SH = common dso_local global i8* null, align 8
@BE_NAME = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.pci_dev*)* @nic_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @nic_name(%struct.pci_dev* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.pci_dev*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  %4 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %5 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %17 [
    i32 133, label %7
    i32 132, label %9
    i32 131, label %11
    i32 130, label %11
    i32 134, label %13
    i32 129, label %15
    i32 128, label %15
  ]

7:                                                ; preds = %1
  %8 = load i8*, i8** @OC_NAME, align 8
  store i8* %8, i8** %2, align 8
  br label %19

9:                                                ; preds = %1
  %10 = load i8*, i8** @OC_NAME_BE, align 8
  store i8* %10, i8** %2, align 8
  br label %19

11:                                               ; preds = %1, %1
  %12 = load i8*, i8** @OC_NAME_LANCER, align 8
  store i8* %12, i8** %2, align 8
  br label %19

13:                                               ; preds = %1
  %14 = load i8*, i8** @BE3_NAME, align 8
  store i8* %14, i8** %2, align 8
  br label %19

15:                                               ; preds = %1, %1
  %16 = load i8*, i8** @OC_NAME_SH, align 8
  store i8* %16, i8** %2, align 8
  br label %19

17:                                               ; preds = %1
  %18 = load i8*, i8** @BE_NAME, align 8
  store i8* %18, i8** %2, align 8
  br label %19

19:                                               ; preds = %17, %15, %13, %11, %9, %7
  %20 = load i8*, i8** %2, align 8
  ret i8* %20
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
